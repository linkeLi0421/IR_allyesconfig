; ModuleID = '/llk/IR_all_yes/net/netlabel/netlabel_unlabeled.c_pt.bc'
source_filename = "../net/netlabel/netlabel_unlabeled.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netlbl_unlhsh_iface = type { i32, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.netlbl_unlhsh_tbl = type { ptr, i32 }
%struct.netlbl_unlhsh_addr4 = type { i32, %struct.netlbl_af4list, %struct.callback_head }
%struct.netlbl_af4list = type { i32, i32, i32, %struct.list_head }
%struct.netlbl_unlhsh_addr6 = type { i32, %struct.netlbl_af6list, %struct.callback_head }
%struct.netlbl_af6list = type { %struct.in6_addr, %struct.in6_addr, i32, %struct.list_head }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon.146 }
%struct.anon.146 = type { %struct.anon.147, i32 }
%struct.anon.147 = type { ptr, i32 }
%struct.netlbl_audit = type { i32, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.netlbl_dom_map = type { ptr, i16, %struct.netlbl_dommap_def, i32, %struct.list_head, %struct.callback_head }
%struct.netlbl_dommap_def = type { i32, %union.anon.148 }
%union.anon.148 = type { ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.netlbl_unlhsh_walk_arg = type { ptr, ptr, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@netlbl_unlhsh_def = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@netlbl_unlhsh_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/netlabel/netlabel_unlabeled.c\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@netlabel_mgmt_protocount = external dso_local global %struct.atomic_t, align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" sec_obj=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" res=%u\00", [24 x i8] zeroinitializer }, align 32
@netlbl_unlhsh_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_unlabel_gnl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"NLBL_UNLBL\00\00\00\00\00\00", i32 3, i32 7, i32 0, i8 0, i8 0, i8 8, i8 0, ptr @netlbl_unlabel_genl_policy, ptr null, ptr null, ptr null, ptr @netlbl_unlabel_genl_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@netlbl_unlhsh_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@netlbl_unlhsh = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@netlbl_unlhsh_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @netlbl_unlhsh_netdev_handler, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@netlbl_unlabel_getattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlabel_unlabel_acceptflg = internal global { i8, [31 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@netlbl_unlhsh_search_iface.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_unlhsh_search_iface.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@netlbl_unlhsh_hash.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_unlhsh_add_iface.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_unlhsh_add_iface.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__af4list_valid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netlabel/netlabel_addrlist.h\00", [63 x i8] zeroinitializer }, align 32
@__af6list_valid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_unlabel_genl_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 4, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 4, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.91 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@netlbl_unlabel_genl_ops = internal constant { [8 x %struct.genl_small_ops], [32 x i8] } { [8 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @netlbl_unlabel_staticadd, ptr null, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_unlabel_staticremove, ptr null, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr null, ptr @netlbl_unlabel_staticlist, i8 5, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @netlbl_unlabel_staticadddef, ptr null, i8 6, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_unlabel_staticremovedef, ptr null, i8 7, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr null, ptr @netlbl_unlabel_staticlistdef, i8 8, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @netlbl_unlabel_accept, ptr null, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_unlabel_list, ptr null, i8 2, i8 0, i8 0, i8 3 }], [32 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@netlbl_unlabel_staticlist.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_unlabel_staticlist.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_unlabel_staticlist.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@netlbl_unlabel_staticlistdef.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"netlbl_unlhsh_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" unlbl_accept=%u old=%u\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"netlbl_unlhsh_def\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 106, i32 42 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 395, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 444, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 447, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"netlbl_unlhsh_lock\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"netlbl_unlhsh\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 105, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [30 x i8] c"netlbl_unlhsh_netdev_notifier\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1400, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"netlabel_unlabel_acceptflg\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 109, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 210, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [36 x i8] c"../net/netlabel/netlabel_addrlist.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 76, i32 7 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"netlbl_unlabel_genl_policy\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 115, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"netlbl_unlabel_genl_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1309, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 991, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 102, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [37 x i8] c"../net/netlabel/netlabel_unlabeled.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 745, i32 6 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @netlbl_unlhsh_def, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @netlbl_unlhsh_lock, ptr @netlbl_unlhsh, ptr @netlbl_unlhsh_netdev_notifier, ptr @netlabel_unlabel_acceptflg, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @netlbl_unlabel_genl_policy, ptr @netlbl_unlabel_genl_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_unlhsh_def to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_unlhsh_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_unlhsh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_unlhsh_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlabel_unlabel_acceptflg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_unlabel_genl_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_unlabel_genl_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_unlhsh_add(ptr noundef %net, ptr noundef %dev_name, ptr noundef %addr, ptr noundef %mask, i32 noundef %addr_len, i32 noundef %secid, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  %secctx = alloca ptr, align 4
  %secctx_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx) #11
  %0 = ptrtoint ptr %secctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %secctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx_len) #11
  %1 = ptrtoint ptr %secctx_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %secctx_len, align 4, !annotation !74
  %2 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %addr_len, label %entry.cleanup_crit_edge [
    i32 4, label %entry.if.end_crit_edge
    i32 16, label %entry.if.end_crit_edge116
  ]

entry.if.end_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge116
  %3 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %cmp2.not = icmp eq ptr %dev_name, null
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %rcu_read_lock.exit
  %call = tail call ptr @dev_get_by_name_rcu(ptr noundef %net, ptr noundef nonnull %dev_name) #11
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then3.unlhsh_add_return_crit_edge, label %if.end6

if.then3.unlhsh_add_return_crit_edge:             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_add_return

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %ifindex7 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %ifindex7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex7, align 4
  %call8 = tail call fastcc ptr @netlbl_unlhsh_search_iface(i32 noundef %8)
  br label %if.end21

if.else:                                          ; preds = %rcu_read_lock.exit
  %9 = load volatile ptr, ptr @netlbl_unlhsh_def, align 4
  %call10 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.lhs.true11, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true11:                                  ; preds = %if.else
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.if.end21_crit_edge, label %land.lhs.true14

land.lhs.true11.if.end21_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %.b84 = load i1, ptr @netlbl_unlhsh_add.__warned, align 1
  br i1 %.b84, label %land.lhs.true14.if.end21_crit_edge, label %if.then16

land.lhs.true14.if.end21_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlhsh_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 395, ptr noundef nonnull @.str.1) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %land.lhs.true14.if.end21_crit_edge, %land.lhs.true11.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.end6
  %ifindex.0 = phi i32 [ %8, %if.end6 ], [ 0, %if.then16 ], [ 0, %land.lhs.true14.if.end21_crit_edge ], [ 0, %land.lhs.true11.if.end21_crit_edge ], [ 0, %if.else.if.end21_crit_edge ]
  %iface.0 = phi ptr [ %call8, %if.end6 ], [ %9, %if.then16 ], [ %9, %land.lhs.true14.if.end21_crit_edge ], [ %9, %land.lhs.true11.if.end21_crit_edge ], [ %9, %if.else.if.end21_crit_edge ]
  %cmp22 = icmp eq ptr %iface.0, null
  br i1 %cmp22, label %if.then23, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 40) #14
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then23.unlhsh_add_return_crit_edge, label %if.end.i

if.then23.unlhsh_add_return_crit_edge:            ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_add_return

if.end.i:                                         ; preds = %if.then23
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ifindex.0, ptr %call7.i.i.i, align 8
  %addr4_list.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %addr4_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %addr4_list.i, ptr %addr4_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %addr4_list.i, ptr %prev.i.i, align 8
  %addr6_list.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %addr6_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %addr6_list.i, ptr %addr6_list.i, align 4
  %prev.i101.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i101.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %addr6_list.i, ptr %prev.i101.i, align 8
  %valid.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %valid.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex.0)
  %cmp2.i = icmp sgt i32 %ifindex.0, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  %17 = load volatile ptr, ptr @netlbl_unlhsh, align 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_unlhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then3.i.netlbl_unlhsh_hash.exit.i_crit_edge

if.then3.i.netlbl_unlhsh_hash.exit.i_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_hash.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then3.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.netlbl_unlhsh_hash.exit.i_crit_edge

lor.lhs.false.i.i.netlbl_unlhsh_hash.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_hash.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.netlbl_unlhsh_hash.exit.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.netlbl_unlhsh_hash.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_hash.exit.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @netlbl_unlhsh_hash.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true6.i.i.netlbl_unlhsh_hash.exit.i_crit_edge, label %if.then.i.i

land.lhs.true6.i.i.netlbl_unlhsh_hash.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_hash.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlhsh_hash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #11
  br label %netlbl_unlhsh_hash.exit.i

netlbl_unlhsh_hash.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true6.i.i.netlbl_unlhsh_hash.exit.i_crit_edge, %land.lhs.true.i.i.netlbl_unlhsh_hash.exit.i_crit_edge, %lor.lhs.false.i.i.netlbl_unlhsh_hash.exit.i_crit_edge, %if.then3.i.netlbl_unlhsh_hash.exit.i_crit_edge
  %size.i.i = getelementptr inbounds %struct.netlbl_unlhsh_tbl, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %19, -1
  %and.i.i = and i32 %sub.i.i, %ifindex.0
  %call5.i = tail call fastcc ptr @netlbl_unlhsh_search_iface(i32 noundef %ifindex.0) #11
  %cmp6.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.not.i, label %if.end8.i, label %netlbl_unlhsh_hash.exit.i.add_iface_failure.i_crit_edge

netlbl_unlhsh_hash.exit.i.add_iface_failure.i_crit_edge: ; preds = %netlbl_unlhsh_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_iface_failure.i

if.end8.i:                                        ; preds = %netlbl_unlhsh_hash.exit.i
  %list.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 4
  %20 = load volatile ptr, ptr @netlbl_unlhsh, align 4
  %call.i.i85 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_unlhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %tobool.not.i86 = icmp eq i32 %call.i.i85, 0
  br i1 %tobool.not.i86, label %lor.lhs.false.i, label %if.end8.i.do.end20.i_crit_edge

if.end8.i.do.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %call11.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i87, label %lor.lhs.false.i.do.end20.i_crit_edge

lor.lhs.false.i.do.end20.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i

land.lhs.true.i87:                                ; preds = %lor.lhs.false.i
  %call13.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i87.do.end20.i_crit_edge, label %land.lhs.true15.i

land.lhs.true.i87.do.end20.i_crit_edge:           ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i87
  %.b100.i = load i1, ptr @netlbl_unlhsh_add_iface.__warned, align 1
  br i1 %.b100.i, label %land.lhs.true15.i.do.end20.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlhsh_add_iface.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 332, ptr noundef nonnull @.str.1) #11
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %land.lhs.true15.i.do.end20.i_crit_edge, %land.lhs.true.i87.do.end20.i_crit_edge, %lor.lhs.false.i.do.end20.i_crit_edge, %if.end8.i.do.end20.i_crit_edge
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %22, i32 %and.i.i
  %prev.i102.i = getelementptr %struct.list_head, ptr %22, i32 %and.i.i, i32 1
  %23 = ptrtoint ptr %prev.i102.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i102.i, align 4
  %call.i.i103.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %24, ptr noundef %arrayidx.i) #11
  br i1 %call.i.i103.i, label %if.end.i.i.i, label %do.end20.i.netlbl_unlhsh_add_iface.exit_crit_edge

do.end20.i.netlbl_unlhsh_add_iface.exit_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_add_iface.exit

if.end.i.i.i:                                     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i, ptr %list.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %24, align 4
  %28 = ptrtoint ptr %prev.i102.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list.i, ptr %prev.i102.i, align 4
  br label %netlbl_unlhsh_add_iface.exit

if.else.i:                                        ; preds = %if.end.i
  %list22.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %list22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list22.i, ptr %list22.i, align 8
  %prev.i104.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i104.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list22.i, ptr %prev.i104.i, align 4
  %31 = load volatile ptr, ptr @netlbl_unlhsh_def, align 4
  %call.i105.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_unlhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool29.not.i = icmp eq i32 %call.i105.i, 0
  br i1 %tobool29.not.i, label %lor.lhs.false30.i, label %if.else.i.do.end41.i_crit_edge

if.else.i.do.end41.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41.i

lor.lhs.false30.i:                                ; preds = %if.else.i
  %call31.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true33.i, label %lor.lhs.false30.i.do.end41.i_crit_edge

lor.lhs.false30.i.do.end41.i_crit_edge:           ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41.i

land.lhs.true33.i:                                ; preds = %lor.lhs.false30.i
  %call34.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true33.i.do.end41.i_crit_edge, label %land.lhs.true36.i

land.lhs.true33.i.do.end41.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41.i

land.lhs.true36.i:                                ; preds = %land.lhs.true33.i
  %.b9899.i = load i1, ptr @netlbl_unlhsh_add_iface.__warned.8, align 1
  br i1 %.b9899.i, label %land.lhs.true36.i.do.end41.i_crit_edge, label %if.then38.i

land.lhs.true36.i.do.end41.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41.i

if.then38.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlhsh_add_iface.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @.str.1) #11
  br label %do.end41.i

do.end41.i:                                       ; preds = %if.then38.i, %land.lhs.true36.i.do.end41.i_crit_edge, %land.lhs.true33.i.do.end41.i_crit_edge, %lor.lhs.false30.i.do.end41.i_crit_edge, %if.else.i.do.end41.i_crit_edge
  %cmp43.not.i = icmp eq ptr %31, null
  br i1 %cmp43.not.i, label %do.body46.i, label %do.end41.i.add_iface_failure.i_crit_edge

do.end41.i.add_iface_failure.i_crit_edge:         ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_iface_failure.i

do.body46.i:                                      ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  store volatile ptr %call7.i.i.i, ptr @netlbl_unlhsh_def, align 4
  br label %netlbl_unlhsh_add_iface.exit

add_iface_failure.i:                              ; preds = %do.end41.i.add_iface_failure.i_crit_edge, %netlbl_unlhsh_hash.exit.i.add_iface_failure.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %unlhsh_add_return

netlbl_unlhsh_add_iface.exit:                     ; preds = %do.body46.i, %if.end.i.i.i, %do.end20.i.netlbl_unlhsh_add_iface.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  br label %if.end28

if.end28:                                         ; preds = %netlbl_unlhsh_add_iface.exit, %if.end21.if.end28_crit_edge
  %iface.1 = phi ptr [ %call7.i.i.i, %netlbl_unlhsh_add_iface.exit ], [ %iface.0, %if.end21.if.end28_crit_edge ]
  %call29 = tail call ptr @netlbl_audit_start_common(i32 noundef 1416, ptr noundef %audit_info) #11
  %32 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %addr_len, label %if.end28.unlhsh_add_return_crit_edge [
    i32 4, label %sw.bb
    i32 16, label %sw.bb35
  ]

if.end28.unlhsh_add_return_crit_edge:             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_add_return

sw.bb:                                            ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i88 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 2848, i32 noundef 32) #14
  %cmp.i89 = icmp eq ptr %call7.i.i.i88, null
  br i1 %cmp.i89, label %sw.bb.netlbl_unlhsh_add_addr4.exit_crit_edge, label %if.end.i93

sw.bb.netlbl_unlhsh_add_addr4.exit_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_add_addr4.exit

if.end.i93:                                       ; preds = %sw.bb
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr, align 4
  %36 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask, align 4
  %and.i = and i32 %37, %35
  %list.i90 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, ptr %call7.i.i.i88, i32 0, i32 1
  %38 = ptrtoint ptr %list.i90 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i, ptr %list.i90, align 4
  %mask6.i = getelementptr inbounds %struct.netlbl_unlhsh_addr4, ptr %call7.i.i.i88, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %mask6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %mask6.i, align 8
  %valid.i91 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, ptr %call7.i.i.i88, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %valid.i91 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %valid.i91, align 4
  %41 = ptrtoint ptr %call7.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %secid, ptr %call7.i.i.i88, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %addr4_list.i92 = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.1, i32 0, i32 1
  %call10.i = tail call i32 @netlbl_af4list_add(ptr noundef %list.i90, ptr noundef %addr4_list.i92) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.not.i, label %if.end.i93.netlbl_unlhsh_add_addr4.exit_crit_edge, label %if.then12.i

if.end.i93.netlbl_unlhsh_add_addr4.exit_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_add_addr4.exit

if.then12.i:                                      ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i88) #11
  br label %netlbl_unlhsh_add_addr4.exit

netlbl_unlhsh_add_addr4.exit:                     ; preds = %if.then12.i, %if.end.i93.netlbl_unlhsh_add_addr4.exit_crit_edge, %sw.bb.netlbl_unlhsh_add_addr4.exit_crit_edge
  %retval.0.i94 = phi i32 [ -12, %sw.bb.netlbl_unlhsh_add_addr4.exit_crit_edge ], [ %call10.i, %if.then12.i ], [ 0, %if.end.i93.netlbl_unlhsh_add_addr4.exit_crit_edge ]
  %cmp31.not = icmp eq ptr %call29, null
  br i1 %cmp31.not, label %netlbl_unlhsh_add_addr4.exit.sw.epilog_crit_edge, label %if.then32

netlbl_unlhsh_add_addr4.exit.sw.epilog_crit_edge: ; preds = %netlbl_unlhsh_add_addr4.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then32:                                        ; preds = %netlbl_unlhsh_add_addr4.exit
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr, align 4
  %44 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask, align 4
  tail call void @netlbl_af4list_audit_addr(ptr noundef nonnull %call29, i32 noundef 1, ptr noundef %dev_name, i32 noundef %43, i32 noundef %45) #11
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i95 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 2848, i32 noundef 56) #14
  %cmp.i96 = icmp eq ptr %call7.i.i.i95, null
  br i1 %cmp.i96, label %sw.bb35.netlbl_unlhsh_add_addr6.exit_crit_edge, label %if.end.i101

sw.bb35.netlbl_unlhsh_add_addr6.exit_crit_edge:   ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_add_addr6.exit

if.end.i101:                                      ; preds = %sw.bb35
  %list.i97 = getelementptr inbounds %struct.netlbl_unlhsh_addr6, ptr %call7.i.i.i95, i32 0, i32 1
  %47 = call ptr @memcpy(ptr %list.i97, ptr %addr, i32 16)
  %48 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask, align 4
  %50 = ptrtoint ptr %list.i97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %list.i97, align 4
  %and.i98 = and i32 %51, %49
  store i32 %and.i98, ptr %list.i97, align 4
  %arrayidx8.i = getelementptr [4 x i32], ptr %mask, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx12.i = getelementptr %struct.netlbl_unlhsh_addr6, ptr %call7.i.i.i95, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx12.i, align 8
  %and13.i = and i32 %55, %53
  store i32 %and13.i, ptr %arrayidx12.i, align 8
  %arrayidx15.i = getelementptr [4 x i32], ptr %mask, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx19.i = getelementptr %struct.netlbl_unlhsh_addr6, ptr %call7.i.i.i95, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx19.i, align 4
  %and20.i = and i32 %59, %57
  store i32 %and20.i, ptr %arrayidx19.i, align 4
  %arrayidx22.i = getelementptr [4 x i32], ptr %mask, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx22.i, align 4
  %arrayidx26.i = getelementptr %struct.netlbl_unlhsh_addr6, ptr %call7.i.i.i95, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx26.i, align 8
  %and27.i = and i32 %63, %61
  store i32 %and27.i, ptr %arrayidx26.i, align 8
  %mask29.i = getelementptr inbounds %struct.netlbl_unlhsh_addr6, ptr %call7.i.i.i95, i32 0, i32 1, i32 1
  %64 = call ptr @memcpy(ptr %mask29.i, ptr %mask, i32 16)
  %valid.i99 = getelementptr inbounds %struct.netlbl_unlhsh_addr6, ptr %call7.i.i.i95, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %valid.i99 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %valid.i99, align 4
  %66 = ptrtoint ptr %call7.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %secid, ptr %call7.i.i.i95, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %addr6_list.i100 = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.1, i32 0, i32 2
  %call33.i = tail call i32 @netlbl_af6list_add(ptr noundef %list.i97, ptr noundef %addr6_list.i100) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.not.i = icmp eq i32 %call33.i, 0
  br i1 %cmp34.not.i, label %if.end.i101.netlbl_unlhsh_add_addr6.exit_crit_edge, label %if.then35.i

if.end.i101.netlbl_unlhsh_add_addr6.exit_crit_edge: ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_add_addr6.exit

if.then35.i:                                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i95) #11
  br label %netlbl_unlhsh_add_addr6.exit

netlbl_unlhsh_add_addr6.exit:                     ; preds = %if.then35.i, %if.end.i101.netlbl_unlhsh_add_addr6.exit_crit_edge, %sw.bb35.netlbl_unlhsh_add_addr6.exit_crit_edge
  %retval.0.i102 = phi i32 [ -12, %sw.bb35.netlbl_unlhsh_add_addr6.exit_crit_edge ], [ 0, %if.then35.i ], [ 0, %if.end.i101.netlbl_unlhsh_add_addr6.exit_crit_edge ]
  %cmp37.not = icmp eq ptr %call29, null
  br i1 %cmp37.not, label %netlbl_unlhsh_add_addr6.exit.sw.epilog_crit_edge, label %if.then38

netlbl_unlhsh_add_addr6.exit.sw.epilog_crit_edge: ; preds = %netlbl_unlhsh_add_addr6.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then38:                                        ; preds = %netlbl_unlhsh_add_addr6.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netlbl_af6list_audit_addr(ptr noundef nonnull %call29, i32 noundef 1, ptr noundef %dev_name, ptr noundef %addr, ptr noundef %mask) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then38, %netlbl_unlhsh_add_addr6.exit.sw.epilog_crit_edge, %if.then32, %netlbl_unlhsh_add_addr4.exit.sw.epilog_crit_edge
  %ret_val.0 = phi i32 [ %retval.0.i94, %if.then32 ], [ %retval.0.i94, %netlbl_unlhsh_add_addr4.exit.sw.epilog_crit_edge ], [ %retval.0.i102, %if.then38 ], [ %retval.0.i102, %netlbl_unlhsh_add_addr6.exit.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %cmp40 = icmp eq i32 %ret_val.0, 0
  br i1 %cmp40, label %if.then41, label %sw.epilog.unlhsh_add_return_crit_edge

sw.epilog.unlhsh_add_return_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_add_return

if.then41:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netlabel_mgmt_protocount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @netlabel_mgmt_protocount, i32 1, i32 3, i32 1) #11
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netlabel_mgmt_protocount, ptr nonnull @netlabel_mgmt_protocount, i32 1, ptr nonnull elementtype(i32) @netlabel_mgmt_protocount) #11, !srcloc !78
  br label %unlhsh_add_return

unlhsh_add_return:                                ; preds = %if.then41, %sw.epilog.unlhsh_add_return_crit_edge, %if.end28.unlhsh_add_return_crit_edge, %add_iface_failure.i, %if.then23.unlhsh_add_return_crit_edge, %if.then3.unlhsh_add_return_crit_edge
  %audit_buf.0 = phi ptr [ %call29, %if.then41 ], [ %call29, %sw.epilog.unlhsh_add_return_crit_edge ], [ null, %if.then3.unlhsh_add_return_crit_edge ], [ null, %add_iface_failure.i ], [ null, %if.then23.unlhsh_add_return_crit_edge ], [ %call29, %if.end28.unlhsh_add_return_crit_edge ]
  %ret_val.1 = phi i32 [ 0, %if.then41 ], [ %ret_val.0, %sw.epilog.unlhsh_add_return_crit_edge ], [ -19, %if.then3.unlhsh_add_return_crit_edge ], [ -12, %add_iface_failure.i ], [ -12, %if.then23.unlhsh_add_return_crit_edge ], [ -22, %if.end28.unlhsh_add_return_crit_edge ]
  %call.i103 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i103, label %unlhsh_add_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i106

unlhsh_add_return.rcu_read_unlock.exit_crit_edge: ; preds = %unlhsh_add_return
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i106:                               ; preds = %unlhsh_add_return
  %call1.i104 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool.not.i105 = icmp eq i32 %call1.i104, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i108

land.lhs.true.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i108:                              ; preds = %land.lhs.true.i106
  %.b4.i107 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i107, label %land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge, label %if.then.i109

land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i109:                                     ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i109, %land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i106.rcu_read_unlock.exit_crit_edge, %unlhsh_add_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %68 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i110 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i110 to ptr
  %preempt_count.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i111, align 4
  %sub.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i111, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %cmp43.not = icmp eq ptr %audit_buf.0, null
  br i1 %cmp43.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.then44

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then44:                                        ; preds = %rcu_read_unlock.exit
  %call45 = call i32 @security_secid_to_secctx(i32 noundef %secid, ptr noundef nonnull %secctx, ptr noundef nonnull %secctx_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.then44.if.end48_crit_edge

if.then44.if.end48_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %secctx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %secctx, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %audit_buf.0, ptr noundef nonnull @.str.2, ptr noundef %73) #11
  %74 = ptrtoint ptr %secctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %secctx, align 4
  %76 = ptrtoint ptr %secctx_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %secctx_len, align 4
  call void @security_release_secctx(ptr noundef %75, i32 noundef %77) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then44.if.end48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.1)
  %cmp49 = icmp eq i32 %ret_val.1, 0
  %cond = zext i1 %cmp49 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %audit_buf.0, ptr noundef nonnull @.str.3, i32 noundef %cond) #11
  call void @audit_log_end(ptr noundef nonnull %audit_buf.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret_val.1, %if.end48 ], [ %ret_val.1, %rcu_read_unlock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx_len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @netlbl_unlhsh_search_iface(i32 noundef %ifindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @netlbl_unlhsh, align 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_unlhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.netlbl_unlhsh_hash.exit_crit_edge

entry.netlbl_unlhsh_hash.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_hash.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.netlbl_unlhsh_hash.exit_crit_edge

lor.lhs.false.i.netlbl_unlhsh_hash.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_hash.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.netlbl_unlhsh_hash.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.netlbl_unlhsh_hash.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_hash.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @netlbl_unlhsh_hash.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.netlbl_unlhsh_hash.exit_crit_edge, label %if.then.i

land.lhs.true6.i.netlbl_unlhsh_hash.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_hash.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlhsh_hash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #11
  br label %netlbl_unlhsh_hash.exit

netlbl_unlhsh_hash.exit:                          ; preds = %if.then.i, %land.lhs.true6.i.netlbl_unlhsh_hash.exit_crit_edge, %land.lhs.true.i.netlbl_unlhsh_hash.exit_crit_edge, %lor.lhs.false.i.netlbl_unlhsh_hash.exit_crit_edge, %entry.netlbl_unlhsh_hash.exit_crit_edge
  %size.i = getelementptr inbounds %struct.netlbl_unlhsh_tbl, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %2, -1
  %and.i = and i32 %sub.i, %ifindex
  %3 = load volatile ptr, ptr @netlbl_unlhsh, align 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_unlhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %netlbl_unlhsh_hash.exit.do.end10_crit_edge

netlbl_unlhsh_hash.exit.do.end10_crit_edge:       ; preds = %netlbl_unlhsh_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

lor.lhs.false:                                    ; preds = %netlbl_unlhsh_hash.exit
  %call3 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b57 = load i1, ptr @netlbl_unlhsh_search_iface.__warned, align 1
  br i1 %.b57, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlhsh_search_iface.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @.str.1) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %netlbl_unlhsh_hash.exit.do.end10_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %5, i32 %and.i
  %call.i58 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_unlhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool14.not = icmp eq i32 %call.i58, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %do.end10.do.end26_crit_edge

do.end10.do.end26_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

land.lhs.true15:                                  ; preds = %do.end10
  %call16 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %land.lhs.true15.do.end26_crit_edge

land.lhs.true15.do.end26_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true18.do.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b5556 = load i1, ptr @netlbl_unlhsh_search_iface.__warned.6, align 1
  br i1 %.b5556, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlhsh_search_iface.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.7) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true18.do.end26_crit_edge, %land.lhs.true15.do.end26_crit_edge, %do.end10.do.end26_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn59 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not61 = icmp eq ptr %.pn59, %arrayidx
  br i1 %cmp.not61, label %do.end26.cleanup_crit_edge, label %do.end26.for.body_crit_edge

do.end26.for.body_crit_edge:                      ; preds = %do.end26
  br label %for.body

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end26.for.body_crit_edge
  %.pn62 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn59, %do.end26.for.body_crit_edge ]
  %valid = getelementptr i8, ptr %.pn62, i32 -4
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool32.not = icmp eq i32 %8, 0
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %land.lhs.true33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true33:                                  ; preds = %for.body
  %iter.063 = getelementptr i8, ptr %.pn62, i32 -24
  %9 = ptrtoint ptr %iter.063 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iter.063, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %ifindex)
  %cmp35 = icmp eq i32 %10, %ifindex
  br i1 %cmp35, label %cleanup.loopexit.split.loop.exit65, label %land.lhs.true33.for.inc_crit_edge

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn62, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.loopexit.split.loop.exit65:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  %iter.063.le = getelementptr i8, ptr %.pn62, i32 -24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit65, %for.inc.cleanup_crit_edge, %do.end26.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end26.cleanup_crit_edge ], [ %iter.063.le, %cleanup.loopexit.split.loop.exit65 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_audit_start_common(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_af4list_audit_addr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_af6list_audit_addr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_release_secctx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_unlhsh_remove(ptr noundef %net, ptr noundef %dev_name, ptr noundef %addr, ptr noundef %mask, i32 noundef %addr_len, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  %secctx.i48 = alloca ptr, align 4
  %secctx_len.i49 = alloca i32, align 4
  %secctx.i = alloca ptr, align 4
  %secctx_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %addr_len, label %entry.cleanup_crit_edge [
    i32 4, label %entry.if.end_crit_edge
    i32 16, label %entry.if.end_crit_edge102
  ]

entry.if.end_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge102
  %1 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %cmp2.not = icmp eq ptr %dev_name, null
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %rcu_read_lock.exit
  %call = tail call ptr @dev_get_by_name_rcu(ptr noundef %net, ptr noundef nonnull %dev_name) #11
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then3.unlhsh_remove_return_crit_edge, label %if.end6

if.then3.unlhsh_remove_return_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_remove_return

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  %call7 = tail call fastcc ptr @netlbl_unlhsh_search_iface(i32 noundef %6)
  br label %if.end20

if.else:                                          ; preds = %rcu_read_lock.exit
  %7 = load volatile ptr, ptr @netlbl_unlhsh_def, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %land.lhs.true10, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true10:                                  ; preds = %if.else
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.if.end20_crit_edge, label %land.lhs.true13

land.lhs.true10.if.end20_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b45 = load i1, ptr @netlbl_unlhsh_remove.__warned, align 1
  br i1 %.b45, label %land.lhs.true13.if.end20_crit_edge, label %if.then15

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlhsh_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 650, ptr noundef nonnull @.str.1) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %land.lhs.true13.if.end20_crit_edge, %land.lhs.true10.if.end20_crit_edge, %if.else.if.end20_crit_edge, %if.end6
  %iface.0 = phi ptr [ %call7, %if.end6 ], [ %7, %if.then15 ], [ %7, %land.lhs.true13.if.end20_crit_edge ], [ %7, %land.lhs.true10.if.end20_crit_edge ], [ %7, %if.else.if.end20_crit_edge ]
  %cmp21 = icmp eq ptr %iface.0, null
  br i1 %cmp21, label %if.end20.unlhsh_remove_return_crit_edge, label %if.end23

if.end20.unlhsh_remove_return_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_remove_return

if.end23:                                         ; preds = %if.end20
  %8 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %addr_len, label %if.end23.unlhsh_remove_return_crit_edge [
    i32 4, label %sw.bb
    i32 16, label %sw.bb25
  ]

if.end23.unlhsh_remove_return_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_remove_return

sw.bb:                                            ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx.i) #11
  %9 = ptrtoint ptr %secctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %secctx.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx_len.i) #11
  %10 = ptrtoint ptr %secctx_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %secctx_len.i, align 4, !annotation !74
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %addr4_list.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 1
  %call.i46 = tail call ptr @netlbl_af4list_remove(i32 noundef %12, i32 noundef %14, ptr noundef %addr4_list.i) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %cmp.not.i = icmp eq ptr %call.i46, null
  %add.ptr.i = getelementptr i8, ptr %call.i46, i32 -4
  %entry1.0.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %call3.i = tail call ptr @netlbl_audit_start_common(i32 noundef 1417, ptr noundef %audit_info) #11
  %cmp4.not.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.not.i, label %sw.bb.if.end17.i_crit_edge, label %if.then5.i

sw.bb.if.end17.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then5.i:                                       ; preds = %sw.bb
  %15 = ptrtoint ptr %iface.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iface.0, align 4
  %call6.i = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %16) #11
  %cmp7.not.i = icmp eq ptr %call6.i, null
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 4
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  tail call void @netlbl_af4list_audit_addr(ptr noundef nonnull %call3.i, i32 noundef 1, ptr noundef %call6.i, i32 noundef %18, i32 noundef %20) #11
  br i1 %cmp7.not.i, label %if.then5.i.dev_put.exit.i_crit_edge, label %do.body1.i.i

if.then5.i.dev_put.exit.i_crit_edge:              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit.i

do.body1.i.i:                                     ; preds = %if.then5.i
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 118
  %22 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add13.i.i = add i32 %33, -1
  store i32 %add13.i.i, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !82

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #11, !srcloc !83
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i.i, %if.then5.i.dev_put.exit.i_crit_edge
  %cmp10.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %cmp10.not.i, label %dev_put.exit.i.if.end14.i_crit_edge, label %land.lhs.true.i47

dev_put.exit.i.if.end14.i_crit_edge:              ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

land.lhs.true.i47:                                ; preds = %dev_put.exit.i
  %35 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %entry1.0.i, align 4
  %call11.i = call i32 @security_secid_to_secctx(i32 noundef %36, ptr noundef nonnull %secctx.i, ptr noundef nonnull %secctx_len.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %land.lhs.true.i47.if.end14.i_crit_edge

land.lhs.true.i47.if.end14.i_crit_edge:           ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then13.i:                                      ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %secctx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %secctx.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call3.i, ptr noundef nonnull @.str.2, ptr noundef %38) #11
  %39 = ptrtoint ptr %secctx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %secctx.i, align 4
  %41 = ptrtoint ptr %secctx_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %secctx_len.i, align 4
  call void @security_release_secctx(ptr noundef %40, i32 noundef %42) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %land.lhs.true.i47.if.end14.i_crit_edge, %dev_put.exit.i.if.end14.i_crit_edge
  %not.cmp10.not.i = xor i1 %cmp10.not.i, true
  %cond16.i = zext i1 %not.cmp10.not.i to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call3.i, ptr noundef nonnull @.str.3, i32 noundef %cond16.i) #11
  call void @audit_log_end(ptr noundef nonnull %call3.i) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end14.i, %sw.bb.if.end17.i_crit_edge
  %cmp18.i = icmp eq ptr %entry1.0.i, null
  br i1 %cmp18.i, label %if.end17.i.netlbl_unlhsh_remove_addr4.exit_crit_edge, label %do.end.i

if.end17.i.netlbl_unlhsh_remove_addr4.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_remove_addr4.exit

do.end.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %rcu.i = getelementptr inbounds %struct.netlbl_unlhsh_addr4, ptr %entry1.0.i, i32 0, i32 2
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #11
  br label %netlbl_unlhsh_remove_addr4.exit

netlbl_unlhsh_remove_addr4.exit:                  ; preds = %do.end.i, %if.end17.i.netlbl_unlhsh_remove_addr4.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ -2, %if.end17.i.netlbl_unlhsh_remove_addr4.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx_len.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx.i) #11
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx.i48) #11
  %43 = ptrtoint ptr %secctx.i48 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %secctx.i48, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx_len.i49) #11
  %44 = ptrtoint ptr %secctx_len.i49 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %secctx_len.i49, align 4, !annotation !74
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %addr6_list.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 2
  %call.i50 = tail call ptr @netlbl_af6list_remove(ptr noundef %addr, ptr noundef %mask, ptr noundef %addr6_list.i) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %cmp.not.i51 = icmp eq ptr %call.i50, null
  %add.ptr.i52 = getelementptr i8, ptr %call.i50, i32 -4
  %entry1.0.i53 = select i1 %cmp.not.i51, ptr null, ptr %add.ptr.i52
  %call2.i = tail call ptr @netlbl_audit_start_common(i32 noundef 1417, ptr noundef %audit_info) #11
  %cmp3.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.not.i, label %sw.bb25.if.end14.i68_crit_edge, label %if.then4.i

sw.bb25.if.end14.i68_crit_edge:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i68

if.then4.i:                                       ; preds = %sw.bb25
  %45 = ptrtoint ptr %iface.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iface.0, align 4
  %call5.i = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %46) #11
  %cmp6.not.i = icmp eq ptr %call5.i, null
  tail call void @netlbl_af6list_audit_addr(ptr noundef nonnull %call2.i, i32 noundef 1, ptr noundef %call5.i, ptr noundef %addr, ptr noundef %mask) #11
  br i1 %cmp6.not.i, label %if.then4.i.dev_put.exit.i66_crit_edge, label %do.body1.i.i62

if.then4.i.dev_put.exit.i66_crit_edge:            ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit.i66

do.body1.i.i62:                                   ; preds = %if.then4.i
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i.i54 = getelementptr inbounds %struct.net_device, ptr %call5.i, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i.i54, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i55 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i55 to ptr
  %cpu.i.i56 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i.i56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i.i56, align 4
  %arrayidx.i.i57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i57, align 4
  %add.i.i58 = add i32 %56, %50
  %57 = inttoptr i32 %add.i.i58 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i.i59 = add i32 %59, -1
  store i32 %add13.i.i59, ptr %57, align 4
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i.i60 = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i60)
  %tobool24.not.i.i61 = icmp eq i32 %and.i.i.i.i60, 0
  br i1 %tobool24.not.i.i61, label %if.then28.i.i63, label %do.body1.i.i62.do.end30.i.i64_crit_edge, !prof !82

do.body1.i.i62.do.end30.i.i64_crit_edge:          ; preds = %do.body1.i.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i.i64

if.then28.i.i63:                                  ; preds = %do.body1.i.i62
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i.i64

do.end30.i.i64:                                   ; preds = %if.then28.i.i63, %do.body1.i.i62.do.end30.i.i64_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #11, !srcloc !83
  br label %dev_put.exit.i66

dev_put.exit.i66:                                 ; preds = %do.end30.i.i64, %if.then4.i.dev_put.exit.i66_crit_edge
  %cmp7.not.i65 = icmp eq ptr %entry1.0.i53, null
  br i1 %cmp7.not.i65, label %dev_put.exit.i66.if.end11.i_crit_edge, label %land.lhs.true.i67

dev_put.exit.i66.if.end11.i_crit_edge:            ; preds = %dev_put.exit.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

land.lhs.true.i67:                                ; preds = %dev_put.exit.i66
  %61 = ptrtoint ptr %entry1.0.i53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %entry1.0.i53, align 4
  %call8.i = call i32 @security_secid_to_secctx(i32 noundef %62, ptr noundef nonnull %secctx.i48, ptr noundef nonnull %secctx_len.i49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %land.lhs.true.i67.if.end11.i_crit_edge

land.lhs.true.i67.if.end11.i_crit_edge:           ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then10.i:                                      ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %secctx.i48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %secctx.i48, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.2, ptr noundef %64) #11
  %65 = ptrtoint ptr %secctx.i48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %secctx.i48, align 4
  %67 = ptrtoint ptr %secctx_len.i49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %secctx_len.i49, align 4
  call void @security_release_secctx(ptr noundef %66, i32 noundef %68) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %land.lhs.true.i67.if.end11.i_crit_edge, %dev_put.exit.i66.if.end11.i_crit_edge
  %not.cmp7.not.i = xor i1 %cmp7.not.i65, true
  %cond13.i = zext i1 %not.cmp7.not.i to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.3, i32 noundef %cond13.i) #11
  call void @audit_log_end(ptr noundef nonnull %call2.i) #11
  br label %if.end14.i68

if.end14.i68:                                     ; preds = %if.end11.i, %sw.bb25.if.end14.i68_crit_edge
  %cmp15.i = icmp eq ptr %entry1.0.i53, null
  br i1 %cmp15.i, label %if.end14.i68.netlbl_unlhsh_remove_addr6.exit_crit_edge, label %do.end.i70

if.end14.i68.netlbl_unlhsh_remove_addr6.exit_crit_edge: ; preds = %if.end14.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %netlbl_unlhsh_remove_addr6.exit

do.end.i70:                                       ; preds = %if.end14.i68
  call void @__sanitizer_cov_trace_pc() #13
  %rcu.i69 = getelementptr inbounds %struct.netlbl_unlhsh_addr6, ptr %entry1.0.i53, i32 0, i32 2
  call void @kvfree_call_rcu(ptr noundef %rcu.i69, ptr noundef nonnull inttoptr (i32 48 to ptr)) #11
  br label %netlbl_unlhsh_remove_addr6.exit

netlbl_unlhsh_remove_addr6.exit:                  ; preds = %do.end.i70, %if.end14.i68.netlbl_unlhsh_remove_addr6.exit_crit_edge
  %retval.0.i71 = phi i32 [ 0, %do.end.i70 ], [ -2, %if.end14.i68.netlbl_unlhsh_remove_addr6.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx_len.i49) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx.i48) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %netlbl_unlhsh_remove_addr6.exit, %netlbl_unlhsh_remove_addr4.exit
  %ret_val.0 = phi i32 [ %retval.0.i71, %netlbl_unlhsh_remove_addr6.exit ], [ %retval.0.i, %netlbl_unlhsh_remove_addr4.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %cmp27 = icmp eq i32 %ret_val.0, 0
  br i1 %cmp27, label %if.then28, label %sw.epilog.unlhsh_remove_return_crit_edge

sw.epilog.unlhsh_remove_return_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_remove_return

if.then28:                                        ; preds = %sw.epilog
  call void @_raw_spin_lock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %addr4_list.i72 = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 1
  %69 = ptrtoint ptr %addr4_list.i72 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %addr4_list.i72, align 4
  %cmp.not19.i.i = icmp eq ptr %70, %addr4_list.i72
  br i1 %cmp.not19.i.i, label %if.then28.for.end.i_crit_edge, label %if.then28.land.rhs.i.i_crit_edge

if.then28.land.rhs.i.i_crit_edge:                 ; preds = %if.then28
  br label %land.rhs.i.i

if.then28.for.end.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

land.rhs.i.i:                                     ; preds = %do.end9.i.i.land.rhs.i.i_crit_edge, %if.then28.land.rhs.i.i_crit_edge
  %i.020.i.i = phi ptr [ %74, %do.end9.i.i.land.rhs.i.i_crit_edge ], [ %70, %if.then28.land.rhs.i.i_crit_edge ]
  %valid.i.i = getelementptr i8, ptr %i.020.i.i, i32 -4
  %71 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %valid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %__af4list_valid_rcu.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %73 = ptrtoint ptr %i.020.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %i.020.i.i, align 4
  %call.i.i73 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %tobool3.not.i.i = icmp eq i32 %call.i.i73, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %while.body.i.i.do.end9.i.i_crit_edge

while.body.i.i.do.end9.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %call4.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.do.end9.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.do.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b18.i.i = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i.i, label %land.lhs.true6.i.i.do.end9.i.i_crit_edge, label %if.then.i.i

land.lhs.true6.i.i.do.end9.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 76, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true6.i.i.do.end9.i.i_crit_edge, %land.lhs.true.i.i.do.end9.i.i_crit_edge, %while.body.i.i.do.end9.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %74, %addr4_list.i72
  br i1 %cmp.not.i.i, label %do.end9.i.i.for.end.i_crit_edge, label %do.end9.i.i.land.rhs.i.i_crit_edge

do.end9.i.i.land.rhs.i.i_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

do.end9.i.i.for.end.i_crit_edge:                  ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

__af4list_valid_rcu.exit.i:                       ; preds = %land.rhs.i.i
  %cmp.not.i74 = icmp eq ptr %i.020.i.i, %addr4_list.i72
  br i1 %cmp.not.i74, label %__af4list_valid_rcu.exit.i.for.end.i_crit_edge, label %__af4list_valid_rcu.exit.i.unlhsh_condremove_failure.i_crit_edge

__af4list_valid_rcu.exit.i.unlhsh_condremove_failure.i_crit_edge: ; preds = %__af4list_valid_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_condremove_failure.i

__af4list_valid_rcu.exit.i.for.end.i_crit_edge:   ; preds = %__af4list_valid_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %__af4list_valid_rcu.exit.i.for.end.i_crit_edge, %do.end9.i.i.for.end.i_crit_edge, %if.then28.for.end.i_crit_edge
  %addr6_list.i75 = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 2
  %75 = ptrtoint ptr %addr6_list.i75 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %addr6_list.i75, align 4
  %cmp.not19.i42.i = icmp eq ptr %76, %addr6_list.i75
  br i1 %cmp.not19.i42.i, label %for.end.i.for.end20.i_crit_edge, label %for.end.i.land.rhs.i46.i_crit_edge

for.end.i.land.rhs.i46.i_crit_edge:               ; preds = %for.end.i
  br label %land.rhs.i46.i

for.end.i.for.end20.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end20.i

land.rhs.i46.i:                                   ; preds = %do.end9.i57.i.land.rhs.i46.i_crit_edge, %for.end.i.land.rhs.i46.i_crit_edge
  %i.020.i43.i = phi ptr [ %80, %do.end9.i57.i.land.rhs.i46.i_crit_edge ], [ %76, %for.end.i.land.rhs.i46.i_crit_edge ]
  %valid.i44.i = getelementptr i8, ptr %i.020.i43.i, i32 -4
  %77 = ptrtoint ptr %valid.i44.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %valid.i44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i45.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i45.i, label %while.body.i49.i, label %__af6list_valid_rcu.exit.i

while.body.i49.i:                                 ; preds = %land.rhs.i46.i
  %79 = ptrtoint ptr %i.020.i43.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %i.020.i43.i, align 4
  %call.i47.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool3.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool3.not.i48.i, label %land.lhs.true.i52.i, label %while.body.i49.i.do.end9.i57.i_crit_edge

while.body.i49.i.do.end9.i57.i_crit_edge:         ; preds = %while.body.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i57.i

land.lhs.true.i52.i:                              ; preds = %while.body.i49.i
  %call4.i50.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i50.i)
  %tobool5.not.i51.i = icmp eq i32 %call4.i50.i, 0
  br i1 %tobool5.not.i51.i, label %land.lhs.true.i52.i.do.end9.i57.i_crit_edge, label %land.lhs.true6.i54.i

land.lhs.true.i52.i.do.end9.i57.i_crit_edge:      ; preds = %land.lhs.true.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i57.i

land.lhs.true6.i54.i:                             ; preds = %land.lhs.true.i52.i
  %.b18.i53.i = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i53.i, label %land.lhs.true6.i54.i.do.end9.i57.i_crit_edge, label %if.then.i55.i

land.lhs.true6.i54.i.do.end9.i57.i_crit_edge:     ; preds = %land.lhs.true6.i54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i57.i

if.then.i55.i:                                    ; preds = %land.lhs.true6.i54.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 143, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i57.i

do.end9.i57.i:                                    ; preds = %if.then.i55.i, %land.lhs.true6.i54.i.do.end9.i57.i_crit_edge, %land.lhs.true.i52.i.do.end9.i57.i_crit_edge, %while.body.i49.i.do.end9.i57.i_crit_edge
  %cmp.not.i56.i = icmp eq ptr %80, %addr6_list.i75
  br i1 %cmp.not.i56.i, label %do.end9.i57.i.for.end20.i_crit_edge, label %do.end9.i57.i.land.rhs.i46.i_crit_edge

do.end9.i57.i.land.rhs.i46.i_crit_edge:           ; preds = %do.end9.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i46.i

do.end9.i57.i.for.end20.i_crit_edge:              ; preds = %do.end9.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end20.i

__af6list_valid_rcu.exit.i:                       ; preds = %land.rhs.i46.i
  %cmp13.not.i = icmp eq ptr %i.020.i43.i, %addr6_list.i75
  br i1 %cmp13.not.i, label %__af6list_valid_rcu.exit.i.for.end20.i_crit_edge, label %__af6list_valid_rcu.exit.i.unlhsh_condremove_failure.i_crit_edge

__af6list_valid_rcu.exit.i.unlhsh_condremove_failure.i_crit_edge: ; preds = %__af6list_valid_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlhsh_condremove_failure.i

__af6list_valid_rcu.exit.i.for.end20.i_crit_edge: ; preds = %__af6list_valid_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end20.i

for.end20.i:                                      ; preds = %__af6list_valid_rcu.exit.i.for.end20.i_crit_edge, %do.end9.i57.i.for.end20.i_crit_edge, %for.end.i.for.end20.i_crit_edge
  %valid.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 3
  %81 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %valid.i, align 4
  %82 = ptrtoint ptr %iface.0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iface.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp21.i = icmp sgt i32 %83, 0
  br i1 %cmp21.i, label %if.then.i76, label %do.body25.i

if.then.i76:                                      ; preds = %for.end20.i
  %list22.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list22.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i76.list_del_rcu.exit.i_crit_edge

if.then.i76.list_del_rcu.exit.i_crit_edge:        ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i, align 4
  %86 = ptrtoint ptr %list22.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %list22.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.i76.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end.i

do.body25.i:                                      ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  store volatile ptr null, ptr @netlbl_unlhsh_def, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body25.i, %list_del_rcu.exit.i
  call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %rcu.i77 = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0, i32 0, i32 5
  call void @call_rcu(ptr noundef %rcu.i77, ptr noundef nonnull @netlbl_unlhsh_free_iface) #11
  br label %netlbl_unlhsh_condremove_iface.exit

unlhsh_condremove_failure.i:                      ; preds = %__af6list_valid_rcu.exit.i.unlhsh_condremove_failure.i_crit_edge, %__af4list_valid_rcu.exit.i.unlhsh_condremove_failure.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  br label %netlbl_unlhsh_condremove_iface.exit

netlbl_unlhsh_condremove_iface.exit:              ; preds = %unlhsh_condremove_failure.i, %if.end.i
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netlabel_mgmt_protocount, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @netlabel_mgmt_protocount, i32 1, i32 3, i32 1) #11
  %91 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netlabel_mgmt_protocount, ptr nonnull @netlabel_mgmt_protocount, i32 1, ptr nonnull elementtype(i32) @netlabel_mgmt_protocount) #11, !srcloc !84
  br label %unlhsh_remove_return

unlhsh_remove_return:                             ; preds = %netlbl_unlhsh_condremove_iface.exit, %sw.epilog.unlhsh_remove_return_crit_edge, %if.end23.unlhsh_remove_return_crit_edge, %if.end20.unlhsh_remove_return_crit_edge, %if.then3.unlhsh_remove_return_crit_edge
  %ret_val.1 = phi i32 [ 0, %netlbl_unlhsh_condremove_iface.exit ], [ %ret_val.0, %sw.epilog.unlhsh_remove_return_crit_edge ], [ -19, %if.then3.unlhsh_remove_return_crit_edge ], [ -2, %if.end20.unlhsh_remove_return_crit_edge ], [ -22, %if.end23.unlhsh_remove_return_crit_edge ]
  %call.i78 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i78, label %unlhsh_remove_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

unlhsh_remove_return.rcu_read_unlock.exit_crit_edge: ; preds = %unlhsh_remove_return
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %unlhsh_remove_return
  %call1.i79 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %unlhsh_remove_return.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %92 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i85 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.1, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_unlabel_genl_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @netlbl_unlabel_gnl_family) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_unlabel_init(i32 noundef %size) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %cmp1 = icmp eq ptr %call7.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %shl = shl nuw i32 1, %size
  %size4 = getelementptr inbounds %struct.netlbl_unlhsh_tbl, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl, ptr %size4, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 8) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !82

kcalloc.exit.thread:                              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call7.i, align 8
  br label %if.then9

if.end7.i.i:                                      ; preds = %if.end3
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #15
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %call7.i, align 8
  %cmp8 = icmp eq ptr %call8.i.i, null
  br i1 %cmp8, label %if.end7.i.i.if.then9_crit_edge, label %for.cond.preheader

if.end7.i.i.if.then9_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1262.not = icmp eq i32 %8, 0
  br i1 %cmp1262.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then9:                                         ; preds = %if.end7.i.i.if.then9_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %iter.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i, align 8
  %arrayidx = getelementptr %struct.list_head, ptr %10, i32 %iter.063
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.list_head, ptr %10, i32 %iter.063, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw i32 %iter.063, 1
  %13 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size4, align 4
  %cmp12 = icmp ult i32 %inc, %14
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  store volatile ptr %call7.i, ptr @netlbl_unlhsh, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %call47 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @netlbl_unlhsh_netdev_notifier) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_unlabel_getattr(ptr nocapture noundef readonly %skb, i16 noundef zeroext %family, ptr nocapture noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %4 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_iif, align 8
  %call = tail call fastcc ptr @netlbl_unlhsh_search_iface(i32 noundef %5)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %rcu_read_lock.exit.lor.lhs.false_crit_edge

rcu_read_lock.exit.lor.lhs.false_crit_edge:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.then:                                          ; preds = %rcu_read_lock.exit
  %6 = load volatile ptr, ptr @netlbl_unlhsh_def, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true5

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b74 = load i1, ptr @netlbl_unlabel_getattr.__warned, align 1
  br i1 %.b74, label %land.lhs.true5.if.end11_crit_edge, label %if.then7

land.lhs.true5.if.end11_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlabel_getattr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1466, ptr noundef nonnull @.str.1) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true5.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %cmp12 = icmp eq ptr %6, null
  br i1 %cmp12, label %if.end11.unlabel_getattr_nolabel_crit_edge, label %if.end11.lor.lhs.false_crit_edge

if.end11.lor.lhs.false_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.end11.unlabel_getattr_nolabel_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_getattr_nolabel

lor.lhs.false:                                    ; preds = %if.end11.lor.lhs.false_crit_edge, %rcu_read_lock.exit.lor.lhs.false_crit_edge
  %iface.0108 = phi ptr [ %6, %if.end11.lor.lhs.false_crit_edge ], [ %call, %rcu_read_lock.exit.lor.lhs.false_crit_edge ]
  %valid = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0108, i32 0, i32 3
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %lor.lhs.false.unlabel_getattr_nolabel_crit_edge, label %if.end15

lor.lhs.false.unlabel_getattr_nolabel_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_getattr_nolabel

if.end15:                                         ; preds = %lor.lhs.false
  %9 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %family, label %if.end15.unlabel_getattr_nolabel_crit_edge [
    i16 10, label %land.lhs.true18
    i16 2, label %if.end15.sw.bb_crit_edge
  ]

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end15.unlabel_getattr_nolabel_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_getattr_nolabel

land.lhs.true18:                                  ; preds = %if.end15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp21 = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp21, label %land.lhs.true18.sw.bb_crit_edge, label %sw.bb35

land.lhs.true18.sw.bb_crit_edge:                  ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %land.lhs.true18.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge
  %head.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i78, align 8
  %network_header.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i79 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i.i79, align 4
  %conv.i.i80 = zext i16 %18 to i32
  %add.ptr.i.i81 = getelementptr i8, ptr %16, i32 %conv.i.i80
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i81, i32 0, i32 8
  %19 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saddr, align 4
  %addr4_list = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0108, i32 0, i32 1
  %call27 = tail call ptr @netlbl_af4list_search(i32 noundef %20, ptr noundef %addr4_list) #11
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %sw.bb.unlabel_getattr_nolabel_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.unlabel_getattr_nolabel_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_getattr_nolabel

sw.bb35:                                          ; preds = %land.lhs.true18
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %23 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i84 = zext i16 %24 to i32
  %add.ptr.i.i85 = getelementptr i8, ptr %22, i32 %conv.i.i84
  %saddr37 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i85, i32 0, i32 5
  %addr6_list = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %iface.0108, i32 0, i32 2
  %call38 = tail call ptr @netlbl_af6list_search(ptr noundef %saddr37, ptr noundef %addr6_list) #11
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %sw.bb35.unlabel_getattr_nolabel_crit_edge, label %sw.bb35.sw.epilog_crit_edge

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb35.unlabel_getattr_nolabel_crit_edge:        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_getattr_nolabel

sw.epilog:                                        ; preds = %sw.bb35.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call38.sink = phi ptr [ %call27, %sw.bb.sw.epilog_crit_edge ], [ %call38, %sw.bb35.sw.epilog_crit_edge ]
  %add.ptr45 = getelementptr i8, ptr %call38.sink, i32 -4
  %25 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr45, align 4
  %secid48 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %secid48 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %secid48, align 4
  %call.i86 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i86, label %sw.epilog.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i89

sw.epilog.rcu_read_unlock.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i89:                                ; preds = %sw.epilog
  %call1.i87 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, label %if.then.i92

land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i92, %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, %sw.epilog.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %28 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i93 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i94, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %32 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %secattr, align 4
  %or = or i32 %33, 16
  store i32 %or, ptr %secattr, align 4
  br label %cleanup58.sink.split

unlabel_getattr_nolabel:                          ; preds = %sw.bb35.unlabel_getattr_nolabel_crit_edge, %sw.bb.unlabel_getattr_nolabel_crit_edge, %if.end15.unlabel_getattr_nolabel_crit_edge, %lor.lhs.false.unlabel_getattr_nolabel_crit_edge, %if.end11.unlabel_getattr_nolabel_crit_edge
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i95, label %unlabel_getattr_nolabel.rcu_read_unlock.exit105_crit_edge, label %land.lhs.true.i98

unlabel_getattr_nolabel.rcu_read_unlock.exit105_crit_edge: ; preds = %unlabel_getattr_nolabel
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit105

land.lhs.true.i98:                                ; preds = %unlabel_getattr_nolabel
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit105

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit105

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit105

rcu_read_unlock.exit105:                          ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge, %unlabel_getattr_nolabel.rcu_read_unlock.exit105_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %34 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i102 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i104 = add i32 %37, -1
  store volatile i32 %sub.i.i.i104, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %38 = load i8, ptr @netlabel_unlabel_acceptflg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp53 = icmp eq i8 %38, 0
  br i1 %cmp53, label %rcu_read_unlock.exit105.cleanup58_crit_edge, label %rcu_read_unlock.exit105.cleanup58.sink.split_crit_edge

rcu_read_unlock.exit105.cleanup58.sink.split_crit_edge: ; preds = %rcu_read_unlock.exit105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58.sink.split

rcu_read_unlock.exit105.cleanup58_crit_edge:      ; preds = %rcu_read_unlock.exit105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58

cleanup58.sink.split:                             ; preds = %rcu_read_unlock.exit105.cleanup58.sink.split_crit_edge, %rcu_read_unlock.exit
  %type57 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 1
  %39 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %type57, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %cleanup58.sink.split, %rcu_read_unlock.exit105.cleanup58_crit_edge
  %retval.0 = phi i32 [ -42, %rcu_read_unlock.exit105.cleanup58_crit_edge ], [ 0, %cleanup58.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af4list_search(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af6list_search(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_unlabel_defconf() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #11
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !74
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !74
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !74
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 36) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %family, align 4
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %def, align 8
  %call2 = call i32 @netlbl_domhsh_add_default(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %audit_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = load i8, ptr @netlabel_unlabel_acceptflg, align 1
  store i8 1, ptr @netlabel_unlabel_acceptflg, align 1
  %call.i = call ptr @netlbl_audit_start_common(i32 noundef 1406, ptr noundef nonnull %audit_info) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.end5.cleanup_crit_edge, label %if.then.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i = zext i8 %10 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef %conv1.i) #11
  call void @audit_log_end(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_current_getsecid_subj(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_add_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_af4list_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_af6list_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af4list_remove(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af6list_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netlbl_unlhsh_free_iface(ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr4_list = getelementptr i8, ptr %entry1, i32 -28
  %0 = ptrtoint ptr %addr4_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr4_list, align 4
  %cmp.not8.i = icmp eq ptr %1, %addr4_list
  br i1 %cmp.not8.i, label %entry.__af4list_valid.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.__af4list_valid.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %i.09.i = phi ptr [ %5, %while.body.i.land.rhs.i_crit_edge ], [ %1, %entry.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.09.i, i32 -4
  %2 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %while.body.i, label %land.rhs.i.__af4list_valid.exit_crit_edge

land.rhs.i.__af4list_valid.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit

while.body.i:                                     ; preds = %land.rhs.i
  %4 = ptrtoint ptr %i.09.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i.09.i, align 4
  %cmp.not.i = icmp eq ptr %5, %addr4_list
  br i1 %cmp.not.i, label %while.body.i.__af4list_valid.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.body.i.__af4list_valid.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit

__af4list_valid.exit:                             ; preds = %while.body.i.__af4list_valid.exit_crit_edge, %land.rhs.i.__af4list_valid.exit_crit_edge, %entry.__af4list_valid.exit_crit_edge
  %i.0.lcssa.i = phi ptr [ %addr4_list, %entry.__af4list_valid.exit_crit_edge ], [ %i.09.i, %land.rhs.i.__af4list_valid.exit_crit_edge ], [ %addr4_list, %while.body.i.__af4list_valid.exit_crit_edge ]
  %6 = ptrtoint ptr %i.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i.0.lcssa.i, align 4
  %cmp.not8.i54 = icmp eq ptr %7, %addr4_list
  br i1 %cmp.not8.i54, label %__af4list_valid.exit.__af4list_valid.exit63_crit_edge, label %__af4list_valid.exit.land.rhs.i58_crit_edge

__af4list_valid.exit.land.rhs.i58_crit_edge:      ; preds = %__af4list_valid.exit
  br label %land.rhs.i58

__af4list_valid.exit.__af4list_valid.exit63_crit_edge: ; preds = %__af4list_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit63

land.rhs.i58:                                     ; preds = %while.body.i60.land.rhs.i58_crit_edge, %__af4list_valid.exit.land.rhs.i58_crit_edge
  %i.09.i55 = phi ptr [ %11, %while.body.i60.land.rhs.i58_crit_edge ], [ %7, %__af4list_valid.exit.land.rhs.i58_crit_edge ]
  %valid.i56 = getelementptr i8, ptr %i.09.i55, i32 -4
  %8 = ptrtoint ptr %valid.i56 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %valid.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i57 = icmp eq i32 %9, 0
  br i1 %tobool.not.i57, label %while.body.i60, label %land.rhs.i58.__af4list_valid.exit63_crit_edge

land.rhs.i58.__af4list_valid.exit63_crit_edge:    ; preds = %land.rhs.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit63

while.body.i60:                                   ; preds = %land.rhs.i58
  %10 = ptrtoint ptr %i.09.i55 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i.09.i55, align 4
  %cmp.not.i59 = icmp eq ptr %11, %addr4_list
  br i1 %cmp.not.i59, label %while.body.i60.__af4list_valid.exit63_crit_edge, label %while.body.i60.land.rhs.i58_crit_edge

while.body.i60.land.rhs.i58_crit_edge:            ; preds = %while.body.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i58

while.body.i60.__af4list_valid.exit63_crit_edge:  ; preds = %while.body.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit63

__af4list_valid.exit63:                           ; preds = %while.body.i60.__af4list_valid.exit63_crit_edge, %land.rhs.i58.__af4list_valid.exit63_crit_edge, %__af4list_valid.exit.__af4list_valid.exit63_crit_edge
  %i.0.lcssa.i61 = phi ptr [ %addr4_list, %__af4list_valid.exit.__af4list_valid.exit63_crit_edge ], [ %i.09.i55, %land.rhs.i58.__af4list_valid.exit63_crit_edge ], [ %addr4_list, %while.body.i60.__af4list_valid.exit63_crit_edge ]
  %cmp.not103 = icmp eq ptr %i.0.lcssa.i, %addr4_list
  br i1 %cmp.not103, label %__af4list_valid.exit63.for.end_crit_edge, label %__af4list_valid.exit63.for.body_crit_edge

__af4list_valid.exit63.for.body_crit_edge:        ; preds = %__af4list_valid.exit63
  br label %for.body

__af4list_valid.exit63.for.end_crit_edge:         ; preds = %__af4list_valid.exit63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %__af4list_valid.exit73.for.body_crit_edge, %__af4list_valid.exit63.for.body_crit_edge
  %i.0.lcssa.i.pn105 = phi ptr [ %i.0.lcssa.i61.pn104, %__af4list_valid.exit73.for.body_crit_edge ], [ %i.0.lcssa.i, %__af4list_valid.exit63.for.body_crit_edge ]
  %i.0.lcssa.i61.pn104 = phi ptr [ %i.0.lcssa.i71, %__af4list_valid.exit73.for.body_crit_edge ], [ %i.0.lcssa.i61, %__af4list_valid.exit63.for.body_crit_edge ]
  %iter4.0 = getelementptr i8, ptr %i.0.lcssa.i.pn105, i32 -12
  tail call void @netlbl_af4list_remove_entry(ptr noundef %iter4.0) #11
  %add.ptr10 = getelementptr i8, ptr %i.0.lcssa.i.pn105, i32 -16
  tail call void @kfree(ptr noundef %add.ptr10) #11
  %12 = ptrtoint ptr %i.0.lcssa.i61.pn104 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i.0.lcssa.i61.pn104, align 4
  %cmp.not8.i64 = icmp eq ptr %13, %addr4_list
  br i1 %cmp.not8.i64, label %for.body.__af4list_valid.exit73_crit_edge, label %for.body.land.rhs.i68_crit_edge

for.body.land.rhs.i68_crit_edge:                  ; preds = %for.body
  br label %land.rhs.i68

for.body.__af4list_valid.exit73_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit73

land.rhs.i68:                                     ; preds = %while.body.i70.land.rhs.i68_crit_edge, %for.body.land.rhs.i68_crit_edge
  %i.09.i65 = phi ptr [ %17, %while.body.i70.land.rhs.i68_crit_edge ], [ %13, %for.body.land.rhs.i68_crit_edge ]
  %valid.i66 = getelementptr i8, ptr %i.09.i65, i32 -4
  %14 = ptrtoint ptr %valid.i66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %valid.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i67 = icmp eq i32 %15, 0
  br i1 %tobool.not.i67, label %while.body.i70, label %land.rhs.i68.__af4list_valid.exit73_crit_edge

land.rhs.i68.__af4list_valid.exit73_crit_edge:    ; preds = %land.rhs.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit73

while.body.i70:                                   ; preds = %land.rhs.i68
  %16 = ptrtoint ptr %i.09.i65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i.09.i65, align 4
  %cmp.not.i69 = icmp eq ptr %17, %addr4_list
  br i1 %cmp.not.i69, label %while.body.i70.__af4list_valid.exit73_crit_edge, label %while.body.i70.land.rhs.i68_crit_edge

while.body.i70.land.rhs.i68_crit_edge:            ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i68

while.body.i70.__af4list_valid.exit73_crit_edge:  ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af4list_valid.exit73

__af4list_valid.exit73:                           ; preds = %while.body.i70.__af4list_valid.exit73_crit_edge, %land.rhs.i68.__af4list_valid.exit73_crit_edge, %for.body.__af4list_valid.exit73_crit_edge
  %i.0.lcssa.i71 = phi ptr [ %addr4_list, %for.body.__af4list_valid.exit73_crit_edge ], [ %i.09.i65, %land.rhs.i68.__af4list_valid.exit73_crit_edge ], [ %addr4_list, %while.body.i70.__af4list_valid.exit73_crit_edge ]
  %cmp.not = icmp eq ptr %i.0.lcssa.i61.pn104, %addr4_list
  br i1 %cmp.not, label %__af4list_valid.exit73.for.end_crit_edge, label %__af4list_valid.exit73.for.body_crit_edge

__af4list_valid.exit73.for.body_crit_edge:        ; preds = %__af4list_valid.exit73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

__af4list_valid.exit73.for.end_crit_edge:         ; preds = %__af4list_valid.exit73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %__af4list_valid.exit73.for.end_crit_edge, %__af4list_valid.exit63.for.end_crit_edge
  %addr6_list = getelementptr i8, ptr %entry1, i32 -20
  %18 = ptrtoint ptr %addr6_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr6_list, align 4
  %cmp.not8.i74 = icmp eq ptr %19, %addr6_list
  br i1 %cmp.not8.i74, label %for.end.__af6list_valid.exit_crit_edge, label %for.end.land.rhs.i78_crit_edge

for.end.land.rhs.i78_crit_edge:                   ; preds = %for.end
  br label %land.rhs.i78

for.end.__af6list_valid.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit

land.rhs.i78:                                     ; preds = %while.body.i80.land.rhs.i78_crit_edge, %for.end.land.rhs.i78_crit_edge
  %i.09.i75 = phi ptr [ %23, %while.body.i80.land.rhs.i78_crit_edge ], [ %19, %for.end.land.rhs.i78_crit_edge ]
  %valid.i76 = getelementptr i8, ptr %i.09.i75, i32 -4
  %20 = ptrtoint ptr %valid.i76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %valid.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i77 = icmp eq i32 %21, 0
  br i1 %tobool.not.i77, label %while.body.i80, label %land.rhs.i78.__af6list_valid.exit_crit_edge

land.rhs.i78.__af6list_valid.exit_crit_edge:      ; preds = %land.rhs.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit

while.body.i80:                                   ; preds = %land.rhs.i78
  %22 = ptrtoint ptr %i.09.i75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i.09.i75, align 4
  %cmp.not.i79 = icmp eq ptr %23, %addr6_list
  br i1 %cmp.not.i79, label %while.body.i80.__af6list_valid.exit_crit_edge, label %while.body.i80.land.rhs.i78_crit_edge

while.body.i80.land.rhs.i78_crit_edge:            ; preds = %while.body.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i78

while.body.i80.__af6list_valid.exit_crit_edge:    ; preds = %while.body.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit

__af6list_valid.exit:                             ; preds = %while.body.i80.__af6list_valid.exit_crit_edge, %land.rhs.i78.__af6list_valid.exit_crit_edge, %for.end.__af6list_valid.exit_crit_edge
  %i.0.lcssa.i81 = phi ptr [ %addr6_list, %for.end.__af6list_valid.exit_crit_edge ], [ %i.09.i75, %land.rhs.i78.__af6list_valid.exit_crit_edge ], [ %addr6_list, %while.body.i80.__af6list_valid.exit_crit_edge ]
  %24 = ptrtoint ptr %i.0.lcssa.i81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i.0.lcssa.i81, align 4
  %cmp.not8.i83 = icmp eq ptr %25, %addr6_list
  br i1 %cmp.not8.i83, label %__af6list_valid.exit.__af6list_valid.exit92_crit_edge, label %__af6list_valid.exit.land.rhs.i87_crit_edge

__af6list_valid.exit.land.rhs.i87_crit_edge:      ; preds = %__af6list_valid.exit
  br label %land.rhs.i87

__af6list_valid.exit.__af6list_valid.exit92_crit_edge: ; preds = %__af6list_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit92

land.rhs.i87:                                     ; preds = %while.body.i89.land.rhs.i87_crit_edge, %__af6list_valid.exit.land.rhs.i87_crit_edge
  %i.09.i84 = phi ptr [ %29, %while.body.i89.land.rhs.i87_crit_edge ], [ %25, %__af6list_valid.exit.land.rhs.i87_crit_edge ]
  %valid.i85 = getelementptr i8, ptr %i.09.i84, i32 -4
  %26 = ptrtoint ptr %valid.i85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %valid.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i86 = icmp eq i32 %27, 0
  br i1 %tobool.not.i86, label %while.body.i89, label %land.rhs.i87.__af6list_valid.exit92_crit_edge

land.rhs.i87.__af6list_valid.exit92_crit_edge:    ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit92

while.body.i89:                                   ; preds = %land.rhs.i87
  %28 = ptrtoint ptr %i.09.i84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i.09.i84, align 4
  %cmp.not.i88 = icmp eq ptr %29, %addr6_list
  br i1 %cmp.not.i88, label %while.body.i89.__af6list_valid.exit92_crit_edge, label %while.body.i89.land.rhs.i87_crit_edge

while.body.i89.land.rhs.i87_crit_edge:            ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i87

while.body.i89.__af6list_valid.exit92_crit_edge:  ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit92

__af6list_valid.exit92:                           ; preds = %while.body.i89.__af6list_valid.exit92_crit_edge, %land.rhs.i87.__af6list_valid.exit92_crit_edge, %__af6list_valid.exit.__af6list_valid.exit92_crit_edge
  %i.0.lcssa.i90 = phi ptr [ %addr6_list, %__af6list_valid.exit.__af6list_valid.exit92_crit_edge ], [ %i.09.i84, %land.rhs.i87.__af6list_valid.exit92_crit_edge ], [ %addr6_list, %while.body.i89.__af6list_valid.exit92_crit_edge ]
  %cmp25.not106 = icmp eq ptr %i.0.lcssa.i81, %addr6_list
  br i1 %cmp25.not106, label %__af6list_valid.exit92.for.end35_crit_edge, label %__af6list_valid.exit92.for.body26_crit_edge

__af6list_valid.exit92.for.body26_crit_edge:      ; preds = %__af6list_valid.exit92
  br label %for.body26

__af6list_valid.exit92.for.end35_crit_edge:       ; preds = %__af6list_valid.exit92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end35

for.body26:                                       ; preds = %__af6list_valid.exit102.for.body26_crit_edge, %__af6list_valid.exit92.for.body26_crit_edge
  %i.0.lcssa.i81.pn108 = phi ptr [ %i.0.lcssa.i90.pn107, %__af6list_valid.exit102.for.body26_crit_edge ], [ %i.0.lcssa.i81, %__af6list_valid.exit92.for.body26_crit_edge ]
  %i.0.lcssa.i90.pn107 = phi ptr [ %i.0.lcssa.i100, %__af6list_valid.exit102.for.body26_crit_edge ], [ %i.0.lcssa.i90, %__af6list_valid.exit92.for.body26_crit_edge ]
  %iter6.0 = getelementptr i8, ptr %i.0.lcssa.i81.pn108, i32 -36
  tail call void @netlbl_af6list_remove_entry(ptr noundef %iter6.0) #11
  %add.ptr29 = getelementptr i8, ptr %i.0.lcssa.i81.pn108, i32 -40
  tail call void @kfree(ptr noundef %add.ptr29) #11
  %30 = ptrtoint ptr %i.0.lcssa.i90.pn107 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i.0.lcssa.i90.pn107, align 4
  %cmp.not8.i93 = icmp eq ptr %31, %addr6_list
  br i1 %cmp.not8.i93, label %for.body26.__af6list_valid.exit102_crit_edge, label %for.body26.land.rhs.i97_crit_edge

for.body26.land.rhs.i97_crit_edge:                ; preds = %for.body26
  br label %land.rhs.i97

for.body26.__af6list_valid.exit102_crit_edge:     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit102

land.rhs.i97:                                     ; preds = %while.body.i99.land.rhs.i97_crit_edge, %for.body26.land.rhs.i97_crit_edge
  %i.09.i94 = phi ptr [ %35, %while.body.i99.land.rhs.i97_crit_edge ], [ %31, %for.body26.land.rhs.i97_crit_edge ]
  %valid.i95 = getelementptr i8, ptr %i.09.i94, i32 -4
  %32 = ptrtoint ptr %valid.i95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %valid.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i96 = icmp eq i32 %33, 0
  br i1 %tobool.not.i96, label %while.body.i99, label %land.rhs.i97.__af6list_valid.exit102_crit_edge

land.rhs.i97.__af6list_valid.exit102_crit_edge:   ; preds = %land.rhs.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit102

while.body.i99:                                   ; preds = %land.rhs.i97
  %34 = ptrtoint ptr %i.09.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i.09.i94, align 4
  %cmp.not.i98 = icmp eq ptr %35, %addr6_list
  br i1 %cmp.not.i98, label %while.body.i99.__af6list_valid.exit102_crit_edge, label %while.body.i99.land.rhs.i97_crit_edge

while.body.i99.land.rhs.i97_crit_edge:            ; preds = %while.body.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i97

while.body.i99.__af6list_valid.exit102_crit_edge: ; preds = %while.body.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %__af6list_valid.exit102

__af6list_valid.exit102:                          ; preds = %while.body.i99.__af6list_valid.exit102_crit_edge, %land.rhs.i97.__af6list_valid.exit102_crit_edge, %for.body26.__af6list_valid.exit102_crit_edge
  %i.0.lcssa.i100 = phi ptr [ %addr6_list, %for.body26.__af6list_valid.exit102_crit_edge ], [ %i.09.i94, %land.rhs.i97.__af6list_valid.exit102_crit_edge ], [ %addr6_list, %while.body.i99.__af6list_valid.exit102_crit_edge ]
  %cmp25.not = icmp eq ptr %i.0.lcssa.i90.pn107, %addr6_list
  br i1 %cmp25.not, label %__af6list_valid.exit102.for.end35_crit_edge, label %__af6list_valid.exit102.for.body26_crit_edge

__af6list_valid.exit102.for.body26_crit_edge:     ; preds = %__af6list_valid.exit102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26

__af6list_valid.exit102.for.end35_crit_edge:      ; preds = %__af6list_valid.exit102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end35

for.end35:                                        ; preds = %__af6list_valid.exit102.for.end35_crit_edge, %__af6list_valid.exit92.for.end35_crit_edge
  %add.ptr = getelementptr i8, ptr %entry1, i32 -32
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_af4list_remove_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_af6list_remove_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlabel_staticadd(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %secid = alloca i32, align 4
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #11
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #11
  %1 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %audit_info, align 4, !annotation !74
  %2 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !74
  %4 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !74
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %7, i32 6
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %7, i32 4
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %lor.lhs.false4.lor.end_crit_edge, label %lor.rhs

lor.lhs.false4.lor.end_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9 = getelementptr ptr, ptr %7, i32 5
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %15, null
  %phi.cast = zext i1 %tobool10.not to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4.lor.end_crit_edge
  %16 = phi i32 [ 1, %lor.lhs.false4.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %arrayidx12 = getelementptr ptr, ptr %7, i32 2
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %lor.end.lor.end19_crit_edge, label %lor.rhs14

lor.end.lor.end19_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end19

lor.rhs14:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx16 = getelementptr ptr, ptr %7, i32 3
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %20, null
  %phi.cast56 = zext i1 %tobool17.not to i32
  br label %lor.end19

lor.end19:                                        ; preds = %lor.rhs14, %lor.end.lor.end19_crit_edge
  %21 = phi i32 [ 1, %lor.end.lor.end19_crit_edge ], [ %phi.cast56, %lor.rhs14 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %21)
  %tobool21.not = icmp eq i32 %16, %21
  br i1 %tobool21.not, label %lor.end19.cleanup_crit_edge, label %if.end

lor.end19.cleanup_crit_edge:                      ; preds = %lor.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.end19
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #11
  %22 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 121
  %26 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %2, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 122
  %28 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sessionid.i.i, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %4, align 4
  %31 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr ptr, ptr %32, i32 5
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %36, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %34, align 2
  %conv.i.i = zext i16 %38 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp eq i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.then.i.if.end23_crit_edge, label %land.lhs.true6.i

if.then.i.if.end23_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true6.i:                                 ; preds = %if.then.i
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %36, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp10.not.i = icmp eq i16 %38, %40
  br i1 %cmp10.not.i, label %land.lhs.true6.i.if.end23_crit_edge, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true6.i.if.end23_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %arrayidx19.i = getelementptr ptr, ptr %32, i32 2
  %41 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx19.i, align 4
  %tobool20.not.i = icmp eq ptr %42, null
  br i1 %tobool20.not.i, label %if.else.i.cleanup_crit_edge, label %if.then21.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.i:                                      ; preds = %if.else.i
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 2
  %conv.i63.i = zext i16 %44 to i32
  %sub.i64.i = add nsw i32 %conv.i63.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i64.i)
  %cmp25.not.i = icmp eq i32 %sub.i64.i, 16
  br i1 %cmp25.not.i, label %if.then21.i.if.end23_crit_edge, label %land.lhs.true26.i

if.then21.i.if.end23_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true26.i:                                ; preds = %if.then21.i
  %arrayidx28.i = getelementptr ptr, ptr %32, i32 3
  %45 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx28.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %48)
  %cmp30.not.i = icmp eq i16 %44, %48
  br i1 %cmp30.not.i, label %land.lhs.true26.i.if.end23_crit_edge, label %land.lhs.true26.i.cleanup_crit_edge

land.lhs.true26.i.cleanup_crit_edge:              ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true26.i.if.end23_crit_edge:             ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true26.i.if.end23_crit_edge, %if.then21.i.if.end23_crit_edge, %land.lhs.true6.i.if.end23_crit_edge, %if.then.i.if.end23_crit_edge
  %sub.i64.sink.i = phi i32 [ %sub.i.i, %land.lhs.true6.i.if.end23_crit_edge ], [ 4, %if.then.i.if.end23_crit_edge ], [ %sub.i64.i, %land.lhs.true26.i.if.end23_crit_edge ], [ 16, %if.then21.i.if.end23_crit_edge ]
  %.sink70.i = phi i32 [ 4, %land.lhs.true6.i.if.end23_crit_edge ], [ 4, %if.then.i.if.end23_crit_edge ], [ 2, %land.lhs.true26.i.if.end23_crit_edge ], [ 2, %if.then21.i.if.end23_crit_edge ]
  %.sink69.i = phi i32 [ 5, %land.lhs.true6.i.if.end23_crit_edge ], [ 5, %if.then.i.if.end23_crit_edge ], [ 3, %land.lhs.true26.i.if.end23_crit_edge ], [ 3, %if.then21.i.if.end23_crit_edge ]
  %arrayidx34.i = getelementptr ptr, ptr %32, i32 %.sink70.i
  %49 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx34.i, align 4
  %arrayidx37.i = getelementptr ptr, ptr %32, i32 %.sink69.i
  %51 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx37.i, align 4
  %arrayidx25 = getelementptr ptr, ptr %32, i32 6
  %53 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx25, align 4
  %arrayidx28 = getelementptr ptr, ptr %32, i32 7
  %55 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx28, align 4
  %add.ptr.i57 = getelementptr i8, ptr %56, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %56, align 2
  %conv.i = zext i16 %58 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call33 = call i32 @security_secctx_to_secid(ptr noundef %add.ptr.i57, i32 noundef %sub.i, ptr noundef nonnull %secid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end36, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %54, i32 4
  %add.ptr.i68.i = getelementptr i8, ptr %52, i32 4
  %add.ptr.i67.i = getelementptr i8, ptr %50, i32 4
  %59 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %secid, align 4
  %call37 = call i32 @netlbl_unlhsh_add(ptr noundef nonnull @init_net, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i67.i, ptr noundef %add.ptr.i68.i, i32 noundef %sub.i64.sink.i, i32 noundef %60, ptr noundef nonnull %audit_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end23.cleanup_crit_edge, %land.lhs.true26.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %lor.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ -22, %lor.end19.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call33, %if.end23.cleanup_crit_edge ], [ -22, %land.lhs.true6.i.cleanup_crit_edge ], [ -22, %land.lhs.true26.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlabel_staticremove(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #11
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !74
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !74
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !74
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %6, i32 4
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %lor.lhs.false.lor.end_crit_edge, label %lor.rhs

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5 = getelementptr ptr, ptr %6, i32 5
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %12, null
  %phi.cast = zext i1 %tobool6.not to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge
  %13 = phi i32 [ 1, %lor.lhs.false.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %arrayidx8 = getelementptr ptr, ptr %6, i32 2
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %lor.end.lor.end15_crit_edge, label %lor.rhs10

lor.end.lor.end15_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end15

lor.rhs10:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12 = getelementptr ptr, ptr %6, i32 3
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %17, null
  %phi.cast36 = zext i1 %tobool13.not to i32
  br label %lor.end15

lor.end15:                                        ; preds = %lor.rhs10, %lor.end.lor.end15_crit_edge
  %18 = phi i32 [ 1, %lor.end.lor.end15_crit_edge ], [ %phi.cast36, %lor.rhs10 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %18)
  %tobool17.not = icmp eq i32 %13, %18
  br i1 %tobool17.not, label %lor.end15.cleanup_crit_edge, label %if.end

lor.end15.cleanup_crit_edge:                      ; preds = %lor.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.end15
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #11
  %19 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 121
  %23 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %1, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 122
  %25 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sessionid.i.i, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %3, align 4
  %28 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %29, i32 4
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr ptr, ptr %29, i32 5
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %31, align 2
  %conv.i.i = zext i16 %35 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp eq i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.then.i.if.end19_crit_edge, label %land.lhs.true6.i

if.then.i.if.end19_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true6.i:                                 ; preds = %if.then.i
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %33, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp10.not.i = icmp eq i16 %35, %37
  br i1 %cmp10.not.i, label %land.lhs.true6.i.if.end19_crit_edge, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true6.i.if.end19_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %arrayidx19.i = getelementptr ptr, ptr %29, i32 2
  %38 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx19.i, align 4
  %tobool20.not.i = icmp eq ptr %39, null
  br i1 %tobool20.not.i, label %if.else.i.cleanup_crit_edge, label %if.then21.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.i:                                      ; preds = %if.else.i
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  %conv.i63.i = zext i16 %41 to i32
  %sub.i64.i = add nsw i32 %conv.i63.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i64.i)
  %cmp25.not.i = icmp eq i32 %sub.i64.i, 16
  br i1 %cmp25.not.i, label %if.then21.i.if.end19_crit_edge, label %land.lhs.true26.i

if.then21.i.if.end19_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true26.i:                                ; preds = %if.then21.i
  %arrayidx28.i = getelementptr ptr, ptr %29, i32 3
  %42 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx28.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %45)
  %cmp30.not.i = icmp eq i16 %41, %45
  br i1 %cmp30.not.i, label %land.lhs.true26.i.if.end19_crit_edge, label %land.lhs.true26.i.cleanup_crit_edge

land.lhs.true26.i.cleanup_crit_edge:              ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true26.i.if.end19_crit_edge:             ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true26.i.if.end19_crit_edge, %if.then21.i.if.end19_crit_edge, %land.lhs.true6.i.if.end19_crit_edge, %if.then.i.if.end19_crit_edge
  %sub.i64.sink.i = phi i32 [ %sub.i.i, %land.lhs.true6.i.if.end19_crit_edge ], [ 4, %if.then.i.if.end19_crit_edge ], [ %sub.i64.i, %land.lhs.true26.i.if.end19_crit_edge ], [ 16, %if.then21.i.if.end19_crit_edge ]
  %.sink70.i = phi i32 [ 4, %land.lhs.true6.i.if.end19_crit_edge ], [ 4, %if.then.i.if.end19_crit_edge ], [ 2, %land.lhs.true26.i.if.end19_crit_edge ], [ 2, %if.then21.i.if.end19_crit_edge ]
  %.sink69.i = phi i32 [ 5, %land.lhs.true6.i.if.end19_crit_edge ], [ 5, %if.then.i.if.end19_crit_edge ], [ 3, %land.lhs.true26.i.if.end19_crit_edge ], [ 3, %if.then21.i.if.end19_crit_edge ]
  %arrayidx34.i = getelementptr ptr, ptr %29, i32 %.sink70.i
  %46 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx34.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %47, i32 4
  %arrayidx37.i = getelementptr ptr, ptr %29, i32 %.sink69.i
  %48 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx37.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %49, i32 4
  %arrayidx21 = getelementptr ptr, ptr %29, i32 6
  %50 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx21, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 4
  %call23 = call i32 @netlbl_unlhsh_remove(ptr noundef nonnull @init_net, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i67.i, ptr noundef %add.ptr.i68.i, i32 noundef %sub.i64.sink.i, ptr noundef nonnull %audit_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %land.lhs.true26.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %lor.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end19 ], [ -22, %lor.end15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true6.i.cleanup_crit_edge ], [ -22, %land.lhs.true26.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlabel_staticlist(ptr noundef %skb, ptr noundef %cb) #0 align 64 {
entry:
  %cb_arg = alloca %struct.netlbl_unlhsh_walk_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cb_arg) #11
  %0 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, ptr %cb_arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, ptr %cb_arg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  %11 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cb, ptr %cb_arg, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %skb, ptr %0, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %13 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nlmsg_seq, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.for.cond.preheader_crit_edge, label %land.lhs.true.i

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.cond.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.for.cond.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.for.cond.preheader_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then.i, %land.lhs.true2.i.for.cond.preheader_crit_edge, %land.lhs.true.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.end116, %for.cond.preheader
  %skip_addr6.0 = phi i32 [ %skip_addr6.1.lcssa, %for.end116 ], [ %10, %for.cond.preheader ]
  %iter_bkt.0 = phi i32 [ %inc118, %for.end116 ], [ %4, %for.cond.preheader ]
  %skip_addr4.0 = phi i32 [ %skip_addr4.1.lcssa, %for.end116 ], [ %8, %for.cond.preheader ]
  %skip_chain.0 = phi i32 [ 0, %for.end116 ], [ %6, %for.cond.preheader ]
  %22 = load volatile ptr, ptr @netlbl_unlhsh, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.do.end11_crit_edge

for.cond.do.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

land.lhs.true:                                    ; preds = %for.cond
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b165 = load i1, ptr @netlbl_unlabel_staticlist.__warned, align 1
  br i1 %.b165, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlabel_staticlist.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1183, ptr noundef nonnull @.str.1) #11
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %for.cond.do.end11_crit_edge
  %size = getelementptr inbounds %struct.netlbl_unlhsh_tbl, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_bkt.0, i32 %24)
  %cmp = icmp ult i32 %iter_bkt.0, %24
  br i1 %cmp, label %for.body, label %do.end11.unlabel_staticlist_return_crit_edge

do.end11.unlabel_staticlist_return_crit_edge:     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlist_return

for.body:                                         ; preds = %do.end11
  %25 = load volatile ptr, ptr @netlbl_unlhsh, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.body.do.end28_crit_edge

for.body.do.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.body
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b161164 = load i1, ptr @netlbl_unlabel_staticlist.__warned.11, align 1
  br i1 %.b161164, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlabel_staticlist.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1185, ptr noundef nonnull @.str.1) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.body.do.end28_crit_edge
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %arrayidx30 = getelementptr %struct.list_head, ptr %27, i32 %iter_bkt.0
  %call32 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %do.end28.do.end42_crit_edge

do.end28.do.end42_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

land.lhs.true34:                                  ; preds = %do.end28
  %call35 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true34.do.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %.b162163 = load i1, ptr @netlbl_unlabel_staticlist.__warned.12, align 1
  br i1 %.b162163, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlabel_staticlist.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1186, ptr noundef nonnull @.str.7) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true34.do.end42_crit_edge, %do.end28.do.end42_crit_edge
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn256 = load volatile ptr, ptr %arrayidx30, align 4
  %cmp49.not258 = icmp eq ptr %.pn256, %arrayidx30
  br i1 %cmp49.not258, label %do.end42.for.end116_crit_edge, label %do.end42.for.body50_crit_edge

do.end42.for.body50_crit_edge:                    ; preds = %do.end42
  br label %for.body50

do.end42.for.end116_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end116

for.body50:                                       ; preds = %for.inc106.for.body50_crit_edge, %do.end42.for.body50_crit_edge
  %.pn262 = phi ptr [ %.pn, %for.inc106.for.body50_crit_edge ], [ %.pn256, %do.end42.for.body50_crit_edge ]
  %skip_addr4.1261 = phi i32 [ %skip_addr4.2, %for.inc106.for.body50_crit_edge ], [ %skip_addr4.0, %do.end42.for.body50_crit_edge ]
  %iter_chain.1260 = phi i32 [ %iter_chain.2, %for.inc106.for.body50_crit_edge ], [ 0, %do.end42.for.body50_crit_edge ]
  %skip_addr6.1259 = phi i32 [ %skip_addr6.2, %for.inc106.for.body50_crit_edge ], [ %skip_addr6.0, %do.end42.for.body50_crit_edge ]
  %iface.0263 = getelementptr i8, ptr %.pn262, i32 -24
  %valid = getelementptr i8, ptr %.pn262, i32 -4
  %29 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool51.not = icmp eq i32 %30, 0
  br i1 %tobool51.not, label %for.body50.for.inc106_crit_edge, label %lor.lhs.false

for.body50.for.inc106_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

lor.lhs.false:                                    ; preds = %for.body50
  %inc = add i32 %iter_chain.1260, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_chain.1260, i32 %skip_chain.0)
  %cmp52 = icmp ult i32 %iter_chain.1260, %skip_chain.0
  br i1 %cmp52, label %lor.lhs.false.for.inc106_crit_edge, label %if.end54

lor.lhs.false.for.inc106_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

if.end54:                                         ; preds = %lor.lhs.false
  %addr4_list = getelementptr i8, ptr %.pn262, i32 -20
  %31 = ptrtoint ptr %addr4_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr4_list, align 4
  %cmp.not19.i = icmp eq ptr %32, %addr4_list
  br i1 %cmp.not19.i, label %if.end54.for.end_crit_edge, label %if.end54.land.rhs.i_crit_edge

if.end54.land.rhs.i_crit_edge:                    ; preds = %if.end54
  br label %land.rhs.i

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.i:                                       ; preds = %do.end9.i.land.rhs.i_crit_edge, %if.end54.land.rhs.i_crit_edge
  %i.020.i = phi ptr [ %36, %do.end9.i.land.rhs.i_crit_edge ], [ %32, %if.end54.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.020.i, i32 -4
  %33 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i166 = icmp eq i32 %34, 0
  br i1 %tobool.not.i166, label %while.body.i, label %__af4list_valid_rcu.exit

while.body.i:                                     ; preds = %land.rhs.i
  %35 = ptrtoint ptr %i.020.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %i.020.i, align 4
  %call.i167 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool3.not.i = icmp eq i32 %call.i167, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i168, label %while.body.i.do.end9.i_crit_edge

while.body.i.do.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

land.lhs.true.i168:                               ; preds = %while.body.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i168.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i168.do.end9.i_crit_edge:           ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i168
  %.b18.i = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i169

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

if.then.i169:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 76, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i169, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i168.do.end9.i_crit_edge, %while.body.i.do.end9.i_crit_edge
  %cmp.not.i = icmp eq ptr %36, %addr4_list
  br i1 %cmp.not.i, label %do.end9.i.for.end_crit_edge, label %do.end9.i.land.rhs.i_crit_edge

do.end9.i.land.rhs.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

do.end9.i.for.end_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

__af4list_valid_rcu.exit:                         ; preds = %land.rhs.i
  %cmp61.not248 = icmp eq ptr %i.020.i, %addr4_list
  br i1 %cmp61.not248, label %__af4list_valid_rcu.exit.for.end_crit_edge, label %__af4list_valid_rcu.exit.for.body62_crit_edge

__af4list_valid_rcu.exit.for.body62_crit_edge:    ; preds = %__af4list_valid_rcu.exit
  br label %for.body62

__af4list_valid_rcu.exit.for.end_crit_edge:       ; preds = %__af4list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body62:                                       ; preds = %__af4list_valid_rcu.exit188.for.body62_crit_edge, %__af4list_valid_rcu.exit.for.body62_crit_edge
  %iter_addr4.2251 = phi i32 [ %inc63, %__af4list_valid_rcu.exit188.for.body62_crit_edge ], [ 0, %__af4list_valid_rcu.exit.for.body62_crit_edge ]
  %i.0.lcssa.i.pn249 = phi ptr [ %i.020.i171, %__af4list_valid_rcu.exit188.for.body62_crit_edge ], [ %i.020.i, %__af4list_valid_rcu.exit.for.body62_crit_edge ]
  %inc63 = add i32 %iter_addr4.2251, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_addr4.2251, i32 %skip_addr4.1261)
  %cmp64 = icmp ult i32 %iter_addr4.2251, %skip_addr4.1261
  br i1 %cmp64, label %for.body62.for.inc_crit_edge, label %if.end66

for.body62.for.inc_crit_edge:                     ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end66:                                         ; preds = %for.body62
  %add.ptr69 = getelementptr i8, ptr %i.0.lcssa.i.pn249, i32 -16
  %call70 = call fastcc i32 @netlbl_unlabel_staticlist_gen(i32 noundef 5, ptr noundef %iface.0263, ptr noundef %add.ptr69, ptr noundef null, ptr noundef nonnull %cb_arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end66.unlabel_staticlist_return_crit_edge, label %if.end66.for.inc_crit_edge

if.end66.for.inc_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end66.unlabel_staticlist_return_crit_edge:     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlist_return

for.inc:                                          ; preds = %if.end66.for.inc_crit_edge, %for.body62.for.inc_crit_edge
  %37 = ptrtoint ptr %i.0.lcssa.i.pn249 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i.0.lcssa.i.pn249, align 4
  %cmp.not19.i170 = icmp eq ptr %38, %addr4_list
  br i1 %cmp.not19.i170, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs.i174_crit_edge

for.inc.land.rhs.i174_crit_edge:                  ; preds = %for.inc
  br label %land.rhs.i174

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.i174:                                    ; preds = %do.end9.i185.land.rhs.i174_crit_edge, %for.inc.land.rhs.i174_crit_edge
  %i.020.i171 = phi ptr [ %42, %do.end9.i185.land.rhs.i174_crit_edge ], [ %38, %for.inc.land.rhs.i174_crit_edge ]
  %valid.i172 = getelementptr i8, ptr %i.020.i171, i32 -4
  %39 = ptrtoint ptr %valid.i172 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %valid.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i173 = icmp eq i32 %40, 0
  br i1 %tobool.not.i173, label %while.body.i177, label %__af4list_valid_rcu.exit188

while.body.i177:                                  ; preds = %land.rhs.i174
  %41 = ptrtoint ptr %i.020.i171 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %i.020.i171, align 4
  %call.i175 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool3.not.i176 = icmp eq i32 %call.i175, 0
  br i1 %tobool3.not.i176, label %land.lhs.true.i180, label %while.body.i177.do.end9.i185_crit_edge

while.body.i177.do.end9.i185_crit_edge:           ; preds = %while.body.i177
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i185

land.lhs.true.i180:                               ; preds = %while.body.i177
  %call4.i178 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i178)
  %tobool5.not.i179 = icmp eq i32 %call4.i178, 0
  br i1 %tobool5.not.i179, label %land.lhs.true.i180.do.end9.i185_crit_edge, label %land.lhs.true6.i182

land.lhs.true.i180.do.end9.i185_crit_edge:        ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i185

land.lhs.true6.i182:                              ; preds = %land.lhs.true.i180
  %.b18.i181 = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i181, label %land.lhs.true6.i182.do.end9.i185_crit_edge, label %if.then.i183

land.lhs.true6.i182.do.end9.i185_crit_edge:       ; preds = %land.lhs.true6.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i185

if.then.i183:                                     ; preds = %land.lhs.true6.i182
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 76, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i185

do.end9.i185:                                     ; preds = %if.then.i183, %land.lhs.true6.i182.do.end9.i185_crit_edge, %land.lhs.true.i180.do.end9.i185_crit_edge, %while.body.i177.do.end9.i185_crit_edge
  %cmp.not.i184 = icmp eq ptr %42, %addr4_list
  br i1 %cmp.not.i184, label %do.end9.i185.for.end_crit_edge, label %do.end9.i185.land.rhs.i174_crit_edge

do.end9.i185.land.rhs.i174_crit_edge:             ; preds = %do.end9.i185
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i174

do.end9.i185.for.end_crit_edge:                   ; preds = %do.end9.i185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

__af4list_valid_rcu.exit188:                      ; preds = %land.rhs.i174
  %cmp61.not = icmp eq ptr %i.020.i171, %addr4_list
  br i1 %cmp61.not, label %__af4list_valid_rcu.exit188.for.end_crit_edge, label %__af4list_valid_rcu.exit188.for.body62_crit_edge

__af4list_valid_rcu.exit188.for.body62_crit_edge: ; preds = %__af4list_valid_rcu.exit188
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body62

__af4list_valid_rcu.exit188.for.end_crit_edge:    ; preds = %__af4list_valid_rcu.exit188
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %__af4list_valid_rcu.exit188.for.end_crit_edge, %do.end9.i185.for.end_crit_edge, %for.inc.for.end_crit_edge, %__af4list_valid_rcu.exit.for.end_crit_edge, %do.end9.i.for.end_crit_edge, %if.end54.for.end_crit_edge
  %addr6_list = getelementptr i8, ptr %.pn262, i32 -12
  %43 = ptrtoint ptr %addr6_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr6_list, align 4
  %cmp.not19.i189 = icmp eq ptr %44, %addr6_list
  br i1 %cmp.not19.i189, label %for.end.for.inc106_crit_edge, label %for.end.land.rhs.i193_crit_edge

for.end.land.rhs.i193_crit_edge:                  ; preds = %for.end
  br label %land.rhs.i193

for.end.for.inc106_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

land.rhs.i193:                                    ; preds = %do.end9.i204.land.rhs.i193_crit_edge, %for.end.land.rhs.i193_crit_edge
  %i.020.i190 = phi ptr [ %48, %do.end9.i204.land.rhs.i193_crit_edge ], [ %44, %for.end.land.rhs.i193_crit_edge ]
  %valid.i191 = getelementptr i8, ptr %i.020.i190, i32 -4
  %45 = ptrtoint ptr %valid.i191 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %valid.i191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i192 = icmp eq i32 %46, 0
  br i1 %tobool.not.i192, label %while.body.i196, label %__af6list_valid_rcu.exit

while.body.i196:                                  ; preds = %land.rhs.i193
  %47 = ptrtoint ptr %i.020.i190 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %i.020.i190, align 4
  %call.i194 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool3.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool3.not.i195, label %land.lhs.true.i199, label %while.body.i196.do.end9.i204_crit_edge

while.body.i196.do.end9.i204_crit_edge:           ; preds = %while.body.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i204

land.lhs.true.i199:                               ; preds = %while.body.i196
  %call4.i197 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i197)
  %tobool5.not.i198 = icmp eq i32 %call4.i197, 0
  br i1 %tobool5.not.i198, label %land.lhs.true.i199.do.end9.i204_crit_edge, label %land.lhs.true6.i201

land.lhs.true.i199.do.end9.i204_crit_edge:        ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i204

land.lhs.true6.i201:                              ; preds = %land.lhs.true.i199
  %.b18.i200 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i200, label %land.lhs.true6.i201.do.end9.i204_crit_edge, label %if.then.i202

land.lhs.true6.i201.do.end9.i204_crit_edge:       ; preds = %land.lhs.true6.i201
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i204

if.then.i202:                                     ; preds = %land.lhs.true6.i201
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 143, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i204

do.end9.i204:                                     ; preds = %if.then.i202, %land.lhs.true6.i201.do.end9.i204_crit_edge, %land.lhs.true.i199.do.end9.i204_crit_edge, %while.body.i196.do.end9.i204_crit_edge
  %cmp.not.i203 = icmp eq ptr %48, %addr6_list
  br i1 %cmp.not.i203, label %do.end9.i204.for.inc106_crit_edge, label %do.end9.i204.land.rhs.i193_crit_edge

do.end9.i204.land.rhs.i193_crit_edge:             ; preds = %do.end9.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i193

do.end9.i204.for.inc106_crit_edge:                ; preds = %do.end9.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

__af6list_valid_rcu.exit:                         ; preds = %land.rhs.i193
  %cmp85.not252 = icmp eq ptr %i.020.i190, %addr6_list
  br i1 %cmp85.not252, label %__af6list_valid_rcu.exit.for.inc106_crit_edge, label %__af6list_valid_rcu.exit.for.body86_crit_edge

__af6list_valid_rcu.exit.for.body86_crit_edge:    ; preds = %__af6list_valid_rcu.exit
  br label %for.body86

__af6list_valid_rcu.exit.for.inc106_crit_edge:    ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

for.body86:                                       ; preds = %__af6list_valid_rcu.exit225.for.body86_crit_edge, %__af6list_valid_rcu.exit.for.body86_crit_edge
  %iter_addr6.2255 = phi i32 [ %inc87, %__af6list_valid_rcu.exit225.for.body86_crit_edge ], [ 0, %__af6list_valid_rcu.exit.for.body86_crit_edge ]
  %i.0.lcssa.i205.pn253 = phi ptr [ %i.020.i208, %__af6list_valid_rcu.exit225.for.body86_crit_edge ], [ %i.020.i190, %__af6list_valid_rcu.exit.for.body86_crit_edge ]
  %inc87 = add i32 %iter_addr6.2255, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_addr6.2255, i32 %skip_addr6.1259)
  %cmp88 = icmp ult i32 %iter_addr6.2255, %skip_addr6.1259
  br i1 %cmp88, label %for.body86.for.inc100_crit_edge, label %if.end90

for.body86.for.inc100_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc100

if.end90:                                         ; preds = %for.body86
  %add.ptr93 = getelementptr i8, ptr %i.0.lcssa.i205.pn253, i32 -40
  %call94 = call fastcc i32 @netlbl_unlabel_staticlist_gen(i32 noundef 5, ptr noundef %iface.0263, ptr noundef null, ptr noundef %add.ptr93, ptr noundef nonnull %cb_arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.end90.unlabel_staticlist_return_crit_edge, label %if.end90.for.inc100_crit_edge

if.end90.for.inc100_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc100

if.end90.unlabel_staticlist_return_crit_edge:     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlist_return

for.inc100:                                       ; preds = %if.end90.for.inc100_crit_edge, %for.body86.for.inc100_crit_edge
  %49 = ptrtoint ptr %i.0.lcssa.i205.pn253 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i.0.lcssa.i205.pn253, align 4
  %cmp.not19.i207 = icmp eq ptr %50, %addr6_list
  br i1 %cmp.not19.i207, label %for.inc100.for.inc106_crit_edge, label %for.inc100.land.rhs.i211_crit_edge

for.inc100.land.rhs.i211_crit_edge:               ; preds = %for.inc100
  br label %land.rhs.i211

for.inc100.for.inc106_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

land.rhs.i211:                                    ; preds = %do.end9.i222.land.rhs.i211_crit_edge, %for.inc100.land.rhs.i211_crit_edge
  %i.020.i208 = phi ptr [ %54, %do.end9.i222.land.rhs.i211_crit_edge ], [ %50, %for.inc100.land.rhs.i211_crit_edge ]
  %valid.i209 = getelementptr i8, ptr %i.020.i208, i32 -4
  %51 = ptrtoint ptr %valid.i209 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %valid.i209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i210 = icmp eq i32 %52, 0
  br i1 %tobool.not.i210, label %while.body.i214, label %__af6list_valid_rcu.exit225

while.body.i214:                                  ; preds = %land.rhs.i211
  %53 = ptrtoint ptr %i.020.i208 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %i.020.i208, align 4
  %call.i212 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %tobool3.not.i213 = icmp eq i32 %call.i212, 0
  br i1 %tobool3.not.i213, label %land.lhs.true.i217, label %while.body.i214.do.end9.i222_crit_edge

while.body.i214.do.end9.i222_crit_edge:           ; preds = %while.body.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i222

land.lhs.true.i217:                               ; preds = %while.body.i214
  %call4.i215 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i215)
  %tobool5.not.i216 = icmp eq i32 %call4.i215, 0
  br i1 %tobool5.not.i216, label %land.lhs.true.i217.do.end9.i222_crit_edge, label %land.lhs.true6.i219

land.lhs.true.i217.do.end9.i222_crit_edge:        ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i222

land.lhs.true6.i219:                              ; preds = %land.lhs.true.i217
  %.b18.i218 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i218, label %land.lhs.true6.i219.do.end9.i222_crit_edge, label %if.then.i220

land.lhs.true6.i219.do.end9.i222_crit_edge:       ; preds = %land.lhs.true6.i219
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i222

if.then.i220:                                     ; preds = %land.lhs.true6.i219
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 143, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i222

do.end9.i222:                                     ; preds = %if.then.i220, %land.lhs.true6.i219.do.end9.i222_crit_edge, %land.lhs.true.i217.do.end9.i222_crit_edge, %while.body.i214.do.end9.i222_crit_edge
  %cmp.not.i221 = icmp eq ptr %54, %addr6_list
  br i1 %cmp.not.i221, label %do.end9.i222.for.inc106_crit_edge, label %do.end9.i222.land.rhs.i211_crit_edge

do.end9.i222.land.rhs.i211_crit_edge:             ; preds = %do.end9.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i211

do.end9.i222.for.inc106_crit_edge:                ; preds = %do.end9.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

__af6list_valid_rcu.exit225:                      ; preds = %land.rhs.i211
  %cmp85.not = icmp eq ptr %i.020.i208, %addr6_list
  br i1 %cmp85.not, label %__af6list_valid_rcu.exit225.for.inc106_crit_edge, label %__af6list_valid_rcu.exit225.for.body86_crit_edge

__af6list_valid_rcu.exit225.for.body86_crit_edge: ; preds = %__af6list_valid_rcu.exit225
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body86

__af6list_valid_rcu.exit225.for.inc106_crit_edge: ; preds = %__af6list_valid_rcu.exit225
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

for.inc106:                                       ; preds = %__af6list_valid_rcu.exit225.for.inc106_crit_edge, %do.end9.i222.for.inc106_crit_edge, %for.inc100.for.inc106_crit_edge, %__af6list_valid_rcu.exit.for.inc106_crit_edge, %do.end9.i204.for.inc106_crit_edge, %for.end.for.inc106_crit_edge, %lor.lhs.false.for.inc106_crit_edge, %for.body50.for.inc106_crit_edge
  %skip_addr6.2 = phi i32 [ %skip_addr6.1259, %lor.lhs.false.for.inc106_crit_edge ], [ %skip_addr6.1259, %for.body50.for.inc106_crit_edge ], [ 0, %__af6list_valid_rcu.exit.for.inc106_crit_edge ], [ 0, %for.end.for.inc106_crit_edge ], [ 0, %do.end9.i222.for.inc106_crit_edge ], [ 0, %__af6list_valid_rcu.exit225.for.inc106_crit_edge ], [ 0, %for.inc100.for.inc106_crit_edge ], [ 0, %do.end9.i204.for.inc106_crit_edge ]
  %iter_chain.2 = phi i32 [ %inc, %lor.lhs.false.for.inc106_crit_edge ], [ %iter_chain.1260, %for.body50.for.inc106_crit_edge ], [ %inc, %__af6list_valid_rcu.exit.for.inc106_crit_edge ], [ %inc, %for.end.for.inc106_crit_edge ], [ %inc, %do.end9.i222.for.inc106_crit_edge ], [ %inc, %__af6list_valid_rcu.exit225.for.inc106_crit_edge ], [ %inc, %for.inc100.for.inc106_crit_edge ], [ %inc, %do.end9.i204.for.inc106_crit_edge ]
  %skip_addr4.2 = phi i32 [ %skip_addr4.1261, %lor.lhs.false.for.inc106_crit_edge ], [ %skip_addr4.1261, %for.body50.for.inc106_crit_edge ], [ 0, %__af6list_valid_rcu.exit.for.inc106_crit_edge ], [ 0, %for.end.for.inc106_crit_edge ], [ 0, %do.end9.i222.for.inc106_crit_edge ], [ 0, %__af6list_valid_rcu.exit225.for.inc106_crit_edge ], [ 0, %for.inc100.for.inc106_crit_edge ], [ 0, %do.end9.i204.for.inc106_crit_edge ]
  %55 = ptrtoint ptr %.pn262 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load volatile ptr, ptr %.pn262, align 4
  %cmp49.not = icmp eq ptr %.pn, %arrayidx30
  br i1 %cmp49.not, label %for.inc106.for.end116_crit_edge, label %for.inc106.for.body50_crit_edge

for.inc106.for.body50_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body50

for.inc106.for.end116_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end116

for.end116:                                       ; preds = %for.inc106.for.end116_crit_edge, %do.end42.for.end116_crit_edge
  %skip_addr6.1.lcssa = phi i32 [ %skip_addr6.0, %do.end42.for.end116_crit_edge ], [ %skip_addr6.2, %for.inc106.for.end116_crit_edge ]
  %skip_addr4.1.lcssa = phi i32 [ %skip_addr4.0, %do.end42.for.end116_crit_edge ], [ %skip_addr4.2, %for.inc106.for.end116_crit_edge ]
  %inc118 = add i32 %iter_bkt.0, 1
  br label %for.cond

unlabel_staticlist_return:                        ; preds = %if.end90.unlabel_staticlist_return_crit_edge, %if.end66.unlabel_staticlist_return_crit_edge, %do.end11.unlabel_staticlist_return_crit_edge
  %iter_addr6.4 = phi i32 [ %iter_addr6.2255, %if.end90.unlabel_staticlist_return_crit_edge ], [ 0, %if.end66.unlabel_staticlist_return_crit_edge ], [ 0, %do.end11.unlabel_staticlist_return_crit_edge ]
  %iter_addr4.4 = phi i32 [ 0, %if.end90.unlabel_staticlist_return_crit_edge ], [ %iter_addr4.2251, %if.end66.unlabel_staticlist_return_crit_edge ], [ 0, %do.end11.unlabel_staticlist_return_crit_edge ]
  %iter_chain.3 = phi i32 [ %iter_chain.1260, %if.end90.unlabel_staticlist_return_crit_edge ], [ %iter_chain.1260, %if.end66.unlabel_staticlist_return_crit_edge ], [ 0, %do.end11.unlabel_staticlist_return_crit_edge ]
  %call.i226 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i226, label %unlabel_staticlist_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i229

unlabel_staticlist_return.rcu_read_unlock.exit_crit_edge: ; preds = %unlabel_staticlist_return
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i229:                               ; preds = %unlabel_staticlist_return
  %call1.i227 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i227)
  %tobool.not.i228 = icmp eq i32 %call1.i227, 0
  br i1 %tobool.not.i228, label %land.lhs.true.i229.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i231

land.lhs.true.i229.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i229
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i231:                              ; preds = %land.lhs.true.i229
  %.b4.i230 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i230, label %land.lhs.true2.i231.rcu_read_unlock.exit_crit_edge, label %if.then.i232

land.lhs.true2.i231.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i232:                                     ; preds = %land.lhs.true2.i231
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i232, %land.lhs.true2.i231.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i229.rcu_read_unlock.exit_crit_edge, %unlabel_staticlist_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %56 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i233 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i233 to ptr
  %preempt_count.i.i.i.i234 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i234 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i234, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i234, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %iter_bkt.0, ptr %2, align 4
  %61 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %iter_chain.3, ptr %arrayidx1, align 4
  %62 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %iter_addr4.4, ptr %arrayidx2, align 4
  %63 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %iter_addr6.4, ptr %arrayidx3, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cb_arg) #11
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlabel_staticadddef(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %secid = alloca i32, align 4
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #11
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #11
  %1 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %audit_info, align 4, !annotation !74
  %2 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !74
  %4 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !74
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %7, i32 4
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %lor.lhs.false.lor.end_crit_edge, label %lor.rhs

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5 = getelementptr ptr, ptr %7, i32 5
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %13, null
  %phi.cast = zext i1 %tobool6.not to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge
  %14 = phi i32 [ 1, %lor.lhs.false.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %arrayidx8 = getelementptr ptr, ptr %7, i32 2
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %lor.end.lor.end15_crit_edge, label %lor.rhs10

lor.end.lor.end15_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end15

lor.rhs10:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12 = getelementptr ptr, ptr %7, i32 3
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %18, null
  %phi.cast46 = zext i1 %tobool13.not to i32
  br label %lor.end15

lor.end15:                                        ; preds = %lor.rhs10, %lor.end.lor.end15_crit_edge
  %19 = phi i32 [ 1, %lor.end.lor.end15_crit_edge ], [ %phi.cast46, %lor.rhs10 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %19)
  %tobool17.not = icmp eq i32 %14, %19
  br i1 %tobool17.not, label %lor.end15.cleanup_crit_edge, label %if.end

lor.end15.cleanup_crit_edge:                      ; preds = %lor.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.end15
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #11
  %20 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 121
  %24 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %2, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 122
  %26 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sessionid.i.i, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %4, align 4
  %29 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %30, i32 4
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr ptr, ptr %30, i32 5
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %34, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %32, align 2
  %conv.i.i = zext i16 %36 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp eq i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.then.i.if.end19_crit_edge, label %land.lhs.true6.i

if.then.i.if.end19_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true6.i:                                 ; preds = %if.then.i
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %34, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp10.not.i = icmp eq i16 %36, %38
  br i1 %cmp10.not.i, label %land.lhs.true6.i.if.end19_crit_edge, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true6.i.if.end19_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %arrayidx19.i = getelementptr ptr, ptr %30, i32 2
  %39 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx19.i, align 4
  %tobool20.not.i = icmp eq ptr %40, null
  br i1 %tobool20.not.i, label %if.else.i.cleanup_crit_edge, label %if.then21.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.i:                                      ; preds = %if.else.i
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 2
  %conv.i63.i = zext i16 %42 to i32
  %sub.i64.i = add nsw i32 %conv.i63.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i64.i)
  %cmp25.not.i = icmp eq i32 %sub.i64.i, 16
  br i1 %cmp25.not.i, label %if.then21.i.if.end19_crit_edge, label %land.lhs.true26.i

if.then21.i.if.end19_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true26.i:                                ; preds = %if.then21.i
  %arrayidx28.i = getelementptr ptr, ptr %30, i32 3
  %43 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx28.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %46)
  %cmp30.not.i = icmp eq i16 %42, %46
  br i1 %cmp30.not.i, label %land.lhs.true26.i.if.end19_crit_edge, label %land.lhs.true26.i.cleanup_crit_edge

land.lhs.true26.i.cleanup_crit_edge:              ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true26.i.if.end19_crit_edge:             ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true26.i.if.end19_crit_edge, %if.then21.i.if.end19_crit_edge, %land.lhs.true6.i.if.end19_crit_edge, %if.then.i.if.end19_crit_edge
  %sub.i64.sink.i = phi i32 [ %sub.i.i, %land.lhs.true6.i.if.end19_crit_edge ], [ 4, %if.then.i.if.end19_crit_edge ], [ %sub.i64.i, %land.lhs.true26.i.if.end19_crit_edge ], [ 16, %if.then21.i.if.end19_crit_edge ]
  %.sink70.i = phi i32 [ 4, %land.lhs.true6.i.if.end19_crit_edge ], [ 4, %if.then.i.if.end19_crit_edge ], [ 2, %land.lhs.true26.i.if.end19_crit_edge ], [ 2, %if.then21.i.if.end19_crit_edge ]
  %.sink69.i = phi i32 [ 5, %land.lhs.true6.i.if.end19_crit_edge ], [ 5, %if.then.i.if.end19_crit_edge ], [ 3, %land.lhs.true26.i.if.end19_crit_edge ], [ 3, %if.then21.i.if.end19_crit_edge ]
  %arrayidx34.i = getelementptr ptr, ptr %30, i32 %.sink70.i
  %47 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx34.i, align 4
  %arrayidx37.i = getelementptr ptr, ptr %30, i32 %.sink69.i
  %49 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx37.i, align 4
  %arrayidx21 = getelementptr ptr, ptr %30, i32 7
  %51 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx21, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %52, align 2
  %conv.i = zext i16 %54 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call26 = call i32 @security_secctx_to_secid(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull %secid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end29, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i68.i = getelementptr i8, ptr %50, i32 4
  %add.ptr.i67.i = getelementptr i8, ptr %48, i32 4
  %55 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %secid, align 4
  %call30 = call i32 @netlbl_unlhsh_add(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %add.ptr.i67.i, ptr noundef %add.ptr.i68.i, i32 noundef %sub.i64.sink.i, i32 noundef %56, ptr noundef nonnull %audit_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end19.cleanup_crit_edge, %land.lhs.true26.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %lor.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end29 ], [ -22, %lor.end15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call26, %if.end19.cleanup_crit_edge ], [ -22, %land.lhs.true6.i.cleanup_crit_edge ], [ -22, %land.lhs.true26.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlabel_staticremovedef(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #11
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !74
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !74
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !74
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx2 = getelementptr ptr, ptr %6, i32 5
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %10, null
  %phi.cast = zext i1 %tobool3.not to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %11 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %arrayidx5 = getelementptr ptr, ptr %6, i32 2
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %lor.end.lor.end12_crit_edge, label %lor.rhs7

lor.end.lor.end12_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end12

lor.rhs7:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9 = getelementptr ptr, ptr %6, i32 3
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %15, null
  %phi.cast27 = zext i1 %tobool10.not to i32
  br label %lor.end12

lor.end12:                                        ; preds = %lor.rhs7, %lor.end.lor.end12_crit_edge
  %16 = phi i32 [ 1, %lor.end.lor.end12_crit_edge ], [ %phi.cast27, %lor.rhs7 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %16)
  %tobool14.not = icmp eq i32 %11, %16
  br i1 %tobool14.not, label %lor.end12.cleanup_crit_edge, label %if.end

lor.end12.cleanup_crit_edge:                      ; preds = %lor.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.end12
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #11
  %17 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 121
  %21 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %1, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 122
  %23 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sessionid.i.i, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %3, align 4
  %26 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %27, i32 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr ptr, ptr %27, i32 5
  %30 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %31, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %29, align 2
  %conv.i.i = zext i16 %33 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp eq i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.then.i.if.end16_crit_edge, label %land.lhs.true6.i

if.then.i.if.end16_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true6.i:                                 ; preds = %if.then.i
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %31, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp10.not.i = icmp eq i16 %33, %35
  br i1 %cmp10.not.i, label %land.lhs.true6.i.if.end16_crit_edge, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true6.i.if.end16_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %arrayidx19.i = getelementptr ptr, ptr %27, i32 2
  %36 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx19.i, align 4
  %tobool20.not.i = icmp eq ptr %37, null
  br i1 %tobool20.not.i, label %if.else.i.cleanup_crit_edge, label %if.then21.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.i:                                      ; preds = %if.else.i
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 2
  %conv.i63.i = zext i16 %39 to i32
  %sub.i64.i = add nsw i32 %conv.i63.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i64.i)
  %cmp25.not.i = icmp eq i32 %sub.i64.i, 16
  br i1 %cmp25.not.i, label %if.then21.i.if.end16_crit_edge, label %land.lhs.true26.i

if.then21.i.if.end16_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true26.i:                                ; preds = %if.then21.i
  %arrayidx28.i = getelementptr ptr, ptr %27, i32 3
  %40 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx28.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %43)
  %cmp30.not.i = icmp eq i16 %39, %43
  br i1 %cmp30.not.i, label %land.lhs.true26.i.if.end16_crit_edge, label %land.lhs.true26.i.cleanup_crit_edge

land.lhs.true26.i.cleanup_crit_edge:              ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true26.i.if.end16_crit_edge:             ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true26.i.if.end16_crit_edge, %if.then21.i.if.end16_crit_edge, %land.lhs.true6.i.if.end16_crit_edge, %if.then.i.if.end16_crit_edge
  %sub.i64.sink.i = phi i32 [ %sub.i.i, %land.lhs.true6.i.if.end16_crit_edge ], [ 4, %if.then.i.if.end16_crit_edge ], [ %sub.i64.i, %land.lhs.true26.i.if.end16_crit_edge ], [ 16, %if.then21.i.if.end16_crit_edge ]
  %.sink70.i = phi i32 [ 4, %land.lhs.true6.i.if.end16_crit_edge ], [ 4, %if.then.i.if.end16_crit_edge ], [ 2, %land.lhs.true26.i.if.end16_crit_edge ], [ 2, %if.then21.i.if.end16_crit_edge ]
  %.sink69.i = phi i32 [ 5, %land.lhs.true6.i.if.end16_crit_edge ], [ 5, %if.then.i.if.end16_crit_edge ], [ 3, %land.lhs.true26.i.if.end16_crit_edge ], [ 3, %if.then21.i.if.end16_crit_edge ]
  %arrayidx34.i = getelementptr ptr, ptr %27, i32 %.sink70.i
  %44 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx34.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %45, i32 4
  %arrayidx37.i = getelementptr ptr, ptr %27, i32 %.sink69.i
  %46 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx37.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %47, i32 4
  %call17 = call i32 @netlbl_unlhsh_remove(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %add.ptr.i67.i, ptr noundef %add.ptr.i68.i, i32 noundef %sub.i64.sink.i, ptr noundef nonnull %audit_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true26.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %lor.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -22, %lor.end12.cleanup_crit_edge ], [ -22, %land.lhs.true6.i.cleanup_crit_edge ], [ -22, %land.lhs.true26.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlabel_staticlistdef(ptr noundef %skb, ptr noundef %cb) #0 align 64 {
entry:
  %cb_arg = alloca %struct.netlbl_unlhsh_walk_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cb_arg) #11
  %0 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, ptr %cb_arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, ptr %cb_arg, i32 0, i32 2
  %2 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %cb_arg, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %skb, ptr %0, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %4 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %13 = load volatile ptr, ptr @netlbl_unlhsh_def, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b83 = load i1, ptr @netlbl_unlabel_staticlistdef.__warned, align 1
  br i1 %.b83, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @netlbl_unlabel_staticlistdef.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1267, ptr noundef nonnull @.str.1) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %cmp = icmp eq ptr %13, null
  br i1 %cmp, label %do.end8.unlabel_staticlistdef_return_crit_edge, label %lor.lhs.false

do.end8.unlabel_staticlistdef_return_crit_edge:   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

lor.lhs.false:                                    ; preds = %do.end8
  %valid = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %lor.lhs.false.unlabel_staticlistdef_return_crit_edge, label %if.end12

lor.lhs.false.unlabel_staticlistdef_return_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

if.end12:                                         ; preds = %lor.lhs.false
  %addr4_list = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %addr4_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr4_list, align 4
  %cmp.not19.i = icmp eq ptr %17, %addr4_list
  br i1 %cmp.not19.i, label %if.end12.for.end_crit_edge, label %if.end12.land.rhs.i_crit_edge

if.end12.land.rhs.i_crit_edge:                    ; preds = %if.end12
  br label %land.rhs.i

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.i:                                       ; preds = %do.end9.i.land.rhs.i_crit_edge, %if.end12.land.rhs.i_crit_edge
  %i.020.i = phi ptr [ %21, %do.end9.i.land.rhs.i_crit_edge ], [ %17, %if.end12.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.020.i, i32 -4
  %18 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i84 = icmp eq i32 %19, 0
  br i1 %tobool.not.i84, label %while.body.i, label %__af4list_valid_rcu.exit

while.body.i:                                     ; preds = %land.rhs.i
  %20 = ptrtoint ptr %i.020.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %i.020.i, align 4
  %call.i85 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool3.not.i = icmp eq i32 %call.i85, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i86, label %while.body.i.do.end9.i_crit_edge

while.body.i.do.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

land.lhs.true.i86:                                ; preds = %while.body.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i86.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i86.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i86
  %.b18.i = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i87

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

if.then.i87:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 76, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i87, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i86.do.end9.i_crit_edge, %while.body.i.do.end9.i_crit_edge
  %cmp.not.i = icmp eq ptr %21, %addr4_list
  br i1 %cmp.not.i, label %do.end9.i.for.end_crit_edge, label %do.end9.i.land.rhs.i_crit_edge

do.end9.i.land.rhs.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

do.end9.i.for.end_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

__af4list_valid_rcu.exit:                         ; preds = %land.rhs.i
  %cmp16.not155 = icmp eq ptr %i.020.i, %addr4_list
  br i1 %cmp16.not155, label %__af4list_valid_rcu.exit.for.end_crit_edge, label %for.body.lr.ph

__af4list_valid_rcu.exit.for.end_crit_edge:       ; preds = %__af4list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %__af4list_valid_rcu.exit
  %22 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %__af4list_valid_rcu.exit106.for.body_crit_edge, %for.body.lr.ph
  %iter_addr4.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__af4list_valid_rcu.exit106.for.body_crit_edge ]
  %i.0.lcssa.i.pn156 = phi ptr [ %i.020.i, %for.body.lr.ph ], [ %i.020.i89, %__af4list_valid_rcu.exit106.for.body_crit_edge ]
  %inc = add i32 %iter_addr4.0158, 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_addr4.0158, i32 %24)
  %cmp17 = icmp ult i32 %iter_addr4.0158, %24
  br i1 %cmp17, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %i.0.lcssa.i.pn156, i32 -16
  %call21 = call fastcc i32 @netlbl_unlabel_staticlist_gen(i32 noundef 8, ptr noundef nonnull %13, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull %cb_arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.unlabel_staticlistdef_return_crit_edge, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end19.unlabel_staticlistdef_return_crit_edge:  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %i.0.lcssa.i.pn156 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i.0.lcssa.i.pn156, align 4
  %cmp.not19.i88 = icmp eq ptr %26, %addr4_list
  br i1 %cmp.not19.i88, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs.i92_crit_edge

for.inc.land.rhs.i92_crit_edge:                   ; preds = %for.inc
  br label %land.rhs.i92

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.i92:                                     ; preds = %do.end9.i103.land.rhs.i92_crit_edge, %for.inc.land.rhs.i92_crit_edge
  %i.020.i89 = phi ptr [ %30, %do.end9.i103.land.rhs.i92_crit_edge ], [ %26, %for.inc.land.rhs.i92_crit_edge ]
  %valid.i90 = getelementptr i8, ptr %i.020.i89, i32 -4
  %27 = ptrtoint ptr %valid.i90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %valid.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i91 = icmp eq i32 %28, 0
  br i1 %tobool.not.i91, label %while.body.i95, label %__af4list_valid_rcu.exit106

while.body.i95:                                   ; preds = %land.rhs.i92
  %29 = ptrtoint ptr %i.020.i89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %i.020.i89, align 4
  %call.i93 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool3.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool3.not.i94, label %land.lhs.true.i98, label %while.body.i95.do.end9.i103_crit_edge

while.body.i95.do.end9.i103_crit_edge:            ; preds = %while.body.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i103

land.lhs.true.i98:                                ; preds = %while.body.i95
  %call4.i96 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i96)
  %tobool5.not.i97 = icmp eq i32 %call4.i96, 0
  br i1 %tobool5.not.i97, label %land.lhs.true.i98.do.end9.i103_crit_edge, label %land.lhs.true6.i100

land.lhs.true.i98.do.end9.i103_crit_edge:         ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i103

land.lhs.true6.i100:                              ; preds = %land.lhs.true.i98
  %.b18.i99 = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i99, label %land.lhs.true6.i100.do.end9.i103_crit_edge, label %if.then.i101

land.lhs.true6.i100.do.end9.i103_crit_edge:       ; preds = %land.lhs.true6.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i103

if.then.i101:                                     ; preds = %land.lhs.true6.i100
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 76, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i103

do.end9.i103:                                     ; preds = %if.then.i101, %land.lhs.true6.i100.do.end9.i103_crit_edge, %land.lhs.true.i98.do.end9.i103_crit_edge, %while.body.i95.do.end9.i103_crit_edge
  %cmp.not.i102 = icmp eq ptr %30, %addr4_list
  br i1 %cmp.not.i102, label %do.end9.i103.for.end_crit_edge, label %do.end9.i103.land.rhs.i92_crit_edge

do.end9.i103.land.rhs.i92_crit_edge:              ; preds = %do.end9.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i92

do.end9.i103.for.end_crit_edge:                   ; preds = %do.end9.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

__af4list_valid_rcu.exit106:                      ; preds = %land.rhs.i92
  %cmp16.not = icmp eq ptr %i.020.i89, %addr4_list
  br i1 %cmp16.not, label %__af4list_valid_rcu.exit106.for.end_crit_edge, label %__af4list_valid_rcu.exit106.for.body_crit_edge

__af4list_valid_rcu.exit106.for.body_crit_edge:   ; preds = %__af4list_valid_rcu.exit106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

__af4list_valid_rcu.exit106.for.end_crit_edge:    ; preds = %__af4list_valid_rcu.exit106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %__af4list_valid_rcu.exit106.for.end_crit_edge, %do.end9.i103.for.end_crit_edge, %for.inc.for.end_crit_edge, %__af4list_valid_rcu.exit.for.end_crit_edge, %do.end9.i.for.end_crit_edge, %if.end12.for.end_crit_edge
  %iter_addr4.0.lcssa = phi i32 [ 0, %__af4list_valid_rcu.exit.for.end_crit_edge ], [ 0, %if.end12.for.end_crit_edge ], [ %inc, %do.end9.i103.for.end_crit_edge ], [ %inc, %__af4list_valid_rcu.exit106.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ 0, %do.end9.i.for.end_crit_edge ]
  %addr6_list = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %13, i32 0, i32 2
  %31 = ptrtoint ptr %addr6_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr6_list, align 4
  %cmp.not19.i107 = icmp eq ptr %32, %addr6_list
  br i1 %cmp.not19.i107, label %for.end.unlabel_staticlistdef_return_crit_edge, label %for.end.land.rhs.i111_crit_edge

for.end.land.rhs.i111_crit_edge:                  ; preds = %for.end
  br label %land.rhs.i111

for.end.unlabel_staticlistdef_return_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

land.rhs.i111:                                    ; preds = %do.end9.i122.land.rhs.i111_crit_edge, %for.end.land.rhs.i111_crit_edge
  %i.020.i108 = phi ptr [ %36, %do.end9.i122.land.rhs.i111_crit_edge ], [ %32, %for.end.land.rhs.i111_crit_edge ]
  %valid.i109 = getelementptr i8, ptr %i.020.i108, i32 -4
  %33 = ptrtoint ptr %valid.i109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %valid.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i110 = icmp eq i32 %34, 0
  br i1 %tobool.not.i110, label %while.body.i114, label %__af6list_valid_rcu.exit

while.body.i114:                                  ; preds = %land.rhs.i111
  %35 = ptrtoint ptr %i.020.i108 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %i.020.i108, align 4
  %call.i112 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool3.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool3.not.i113, label %land.lhs.true.i117, label %while.body.i114.do.end9.i122_crit_edge

while.body.i114.do.end9.i122_crit_edge:           ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i122

land.lhs.true.i117:                               ; preds = %while.body.i114
  %call4.i115 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i115)
  %tobool5.not.i116 = icmp eq i32 %call4.i115, 0
  br i1 %tobool5.not.i116, label %land.lhs.true.i117.do.end9.i122_crit_edge, label %land.lhs.true6.i119

land.lhs.true.i117.do.end9.i122_crit_edge:        ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i122

land.lhs.true6.i119:                              ; preds = %land.lhs.true.i117
  %.b18.i118 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i118, label %land.lhs.true6.i119.do.end9.i122_crit_edge, label %if.then.i120

land.lhs.true6.i119.do.end9.i122_crit_edge:       ; preds = %land.lhs.true6.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i122

if.then.i120:                                     ; preds = %land.lhs.true6.i119
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 143, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i122

do.end9.i122:                                     ; preds = %if.then.i120, %land.lhs.true6.i119.do.end9.i122_crit_edge, %land.lhs.true.i117.do.end9.i122_crit_edge, %while.body.i114.do.end9.i122_crit_edge
  %cmp.not.i121 = icmp eq ptr %36, %addr6_list
  br i1 %cmp.not.i121, label %do.end9.i122.unlabel_staticlistdef_return_crit_edge, label %do.end9.i122.land.rhs.i111_crit_edge

do.end9.i122.land.rhs.i111_crit_edge:             ; preds = %do.end9.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i111

do.end9.i122.unlabel_staticlistdef_return_crit_edge: ; preds = %do.end9.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

__af6list_valid_rcu.exit:                         ; preds = %land.rhs.i111
  %cmp35.not159 = icmp eq ptr %i.020.i108, %addr6_list
  br i1 %cmp35.not159, label %__af6list_valid_rcu.exit.unlabel_staticlistdef_return_crit_edge, label %for.body36.lr.ph

__af6list_valid_rcu.exit.unlabel_staticlistdef_return_crit_edge: ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

for.body36.lr.ph:                                 ; preds = %__af6list_valid_rcu.exit
  %arrayidx38 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  br label %for.body36

for.body36:                                       ; preds = %__af6list_valid_rcu.exit143.for.body36_crit_edge, %for.body36.lr.ph
  %iter_addr6.0162 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc37, %__af6list_valid_rcu.exit143.for.body36_crit_edge ]
  %i.0.lcssa.i123.pn160 = phi ptr [ %i.020.i108, %for.body36.lr.ph ], [ %i.020.i126, %__af6list_valid_rcu.exit143.for.body36_crit_edge ]
  %inc37 = add i32 %iter_addr6.0162, 1
  %37 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_addr6.0162, i32 %38)
  %cmp39 = icmp ult i32 %iter_addr6.0162, %38
  br i1 %cmp39, label %for.body36.for.inc50_crit_edge, label %if.end41

for.body36.for.inc50_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc50

if.end41:                                         ; preds = %for.body36
  %add.ptr44 = getelementptr i8, ptr %i.0.lcssa.i123.pn160, i32 -40
  %call45 = call fastcc i32 @netlbl_unlabel_staticlist_gen(i32 noundef 8, ptr noundef nonnull %13, ptr noundef null, ptr noundef %add.ptr44, ptr noundef nonnull %cb_arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end41.unlabel_staticlistdef_return_crit_edge, label %if.end41.for.inc50_crit_edge

if.end41.for.inc50_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc50

if.end41.unlabel_staticlistdef_return_crit_edge:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

for.inc50:                                        ; preds = %if.end41.for.inc50_crit_edge, %for.body36.for.inc50_crit_edge
  %39 = ptrtoint ptr %i.0.lcssa.i123.pn160 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i.0.lcssa.i123.pn160, align 4
  %cmp.not19.i125 = icmp eq ptr %40, %addr6_list
  br i1 %cmp.not19.i125, label %for.inc50.unlabel_staticlistdef_return_crit_edge, label %for.inc50.land.rhs.i129_crit_edge

for.inc50.land.rhs.i129_crit_edge:                ; preds = %for.inc50
  br label %land.rhs.i129

for.inc50.unlabel_staticlistdef_return_crit_edge: ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

land.rhs.i129:                                    ; preds = %do.end9.i140.land.rhs.i129_crit_edge, %for.inc50.land.rhs.i129_crit_edge
  %i.020.i126 = phi ptr [ %44, %do.end9.i140.land.rhs.i129_crit_edge ], [ %40, %for.inc50.land.rhs.i129_crit_edge ]
  %valid.i127 = getelementptr i8, ptr %i.020.i126, i32 -4
  %41 = ptrtoint ptr %valid.i127 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %valid.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i128 = icmp eq i32 %42, 0
  br i1 %tobool.not.i128, label %while.body.i132, label %__af6list_valid_rcu.exit143

while.body.i132:                                  ; preds = %land.rhs.i129
  %43 = ptrtoint ptr %i.020.i126 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %i.020.i126, align 4
  %call.i130 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool3.not.i131 = icmp eq i32 %call.i130, 0
  br i1 %tobool3.not.i131, label %land.lhs.true.i135, label %while.body.i132.do.end9.i140_crit_edge

while.body.i132.do.end9.i140_crit_edge:           ; preds = %while.body.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i140

land.lhs.true.i135:                               ; preds = %while.body.i132
  %call4.i133 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i133)
  %tobool5.not.i134 = icmp eq i32 %call4.i133, 0
  br i1 %tobool5.not.i134, label %land.lhs.true.i135.do.end9.i140_crit_edge, label %land.lhs.true6.i137

land.lhs.true.i135.do.end9.i140_crit_edge:        ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i140

land.lhs.true6.i137:                              ; preds = %land.lhs.true.i135
  %.b18.i136 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i136, label %land.lhs.true6.i137.do.end9.i140_crit_edge, label %if.then.i138

land.lhs.true6.i137.do.end9.i140_crit_edge:       ; preds = %land.lhs.true6.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i140

if.then.i138:                                     ; preds = %land.lhs.true6.i137
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 143, ptr noundef nonnull @.str.1) #11
  br label %do.end9.i140

do.end9.i140:                                     ; preds = %if.then.i138, %land.lhs.true6.i137.do.end9.i140_crit_edge, %land.lhs.true.i135.do.end9.i140_crit_edge, %while.body.i132.do.end9.i140_crit_edge
  %cmp.not.i139 = icmp eq ptr %44, %addr6_list
  br i1 %cmp.not.i139, label %do.end9.i140.unlabel_staticlistdef_return_crit_edge, label %do.end9.i140.land.rhs.i129_crit_edge

do.end9.i140.land.rhs.i129_crit_edge:             ; preds = %do.end9.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i129

do.end9.i140.unlabel_staticlistdef_return_crit_edge: ; preds = %do.end9.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

__af6list_valid_rcu.exit143:                      ; preds = %land.rhs.i129
  %cmp35.not = icmp eq ptr %i.020.i126, %addr6_list
  br i1 %cmp35.not, label %__af6list_valid_rcu.exit143.unlabel_staticlistdef_return_crit_edge, label %__af6list_valid_rcu.exit143.for.body36_crit_edge

__af6list_valid_rcu.exit143.for.body36_crit_edge: ; preds = %__af6list_valid_rcu.exit143
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body36

__af6list_valid_rcu.exit143.unlabel_staticlistdef_return_crit_edge: ; preds = %__af6list_valid_rcu.exit143
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlabel_staticlistdef_return

unlabel_staticlistdef_return:                     ; preds = %__af6list_valid_rcu.exit143.unlabel_staticlistdef_return_crit_edge, %do.end9.i140.unlabel_staticlistdef_return_crit_edge, %for.inc50.unlabel_staticlistdef_return_crit_edge, %if.end41.unlabel_staticlistdef_return_crit_edge, %__af6list_valid_rcu.exit.unlabel_staticlistdef_return_crit_edge, %do.end9.i122.unlabel_staticlistdef_return_crit_edge, %for.end.unlabel_staticlistdef_return_crit_edge, %if.end19.unlabel_staticlistdef_return_crit_edge, %lor.lhs.false.unlabel_staticlistdef_return_crit_edge, %do.end8.unlabel_staticlistdef_return_crit_edge
  %iter_addr6.1 = phi i32 [ 0, %do.end8.unlabel_staticlistdef_return_crit_edge ], [ 0, %lor.lhs.false.unlabel_staticlistdef_return_crit_edge ], [ 0, %__af6list_valid_rcu.exit.unlabel_staticlistdef_return_crit_edge ], [ 0, %for.end.unlabel_staticlistdef_return_crit_edge ], [ %inc37, %do.end9.i140.unlabel_staticlistdef_return_crit_edge ], [ %inc37, %for.inc50.unlabel_staticlistdef_return_crit_edge ], [ %inc37, %__af6list_valid_rcu.exit143.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr6.0162, %if.end41.unlabel_staticlistdef_return_crit_edge ], [ 0, %do.end9.i122.unlabel_staticlistdef_return_crit_edge ], [ 0, %if.end19.unlabel_staticlistdef_return_crit_edge ]
  %iter_addr4.1 = phi i32 [ 0, %do.end8.unlabel_staticlistdef_return_crit_edge ], [ 0, %lor.lhs.false.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr4.0.lcssa, %__af6list_valid_rcu.exit.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr4.0.lcssa, %for.end.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr4.0.lcssa, %do.end9.i140.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr4.0.lcssa, %if.end41.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr4.0.lcssa, %__af6list_valid_rcu.exit143.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr4.0.lcssa, %for.inc50.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr4.0.lcssa, %do.end9.i122.unlabel_staticlistdef_return_crit_edge ], [ %iter_addr4.0158, %if.end19.unlabel_staticlistdef_return_crit_edge ]
  %call.i144 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i144, label %unlabel_staticlistdef_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i147

unlabel_staticlistdef_return.rcu_read_unlock.exit_crit_edge: ; preds = %unlabel_staticlistdef_return
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i147:                               ; preds = %unlabel_staticlistdef_return
  %call1.i145 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i145)
  %tobool.not.i146 = icmp eq i32 %call1.i145, 0
  br i1 %tobool.not.i146, label %land.lhs.true.i147.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i149

land.lhs.true.i147.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i149:                              ; preds = %land.lhs.true.i147
  %.b4.i148 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i148, label %land.lhs.true2.i149.rcu_read_unlock.exit_crit_edge, label %if.then.i150

land.lhs.true2.i149.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i149
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i150:                                     ; preds = %land.lhs.true2.i149
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i150, %land.lhs.true2.i149.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i147.rcu_read_unlock.exit_crit_edge, %unlabel_staticlistdef_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %45 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i.i.i.i151 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i151 to ptr
  %preempt_count.i.i.i.i152 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i152, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i152, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %49 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %iter_addr4.1, ptr %49, align 4
  %arrayidx57 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %iter_addr6.1, ptr %arrayidx57, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cb_arg) #11
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlabel_accept(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #11
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !74
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !74
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !74
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %switch = icmp ult i8 %10, 2
  br i1 %switch, label %if.then7, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #11
  %11 = call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 121
  %15 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %1, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 122
  %17 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sessionid.i.i, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %3, align 4
  %20 = load i8, ptr @netlabel_unlabel_acceptflg, align 1
  store i8 %10, ptr @netlabel_unlabel_acceptflg, align 1
  %call.i = call ptr @netlbl_audit_start_common(i32 noundef 1406, ptr noundef nonnull %audit_info) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.then7.cleanup_crit_edge, label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %10 to i32
  %conv1.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.15, i32 noundef %conv.i, i32 noundef %conv1.i) #11
  call void @audit_log_end(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlabel_list(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.list_failure_crit_edge, label %if.end

entry.list_failure_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_failure

if.end:                                           ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid.i, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @netlbl_unlabel_gnl_family, i32 noundef 0, i8 noundef zeroext 2) #11
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %if.end.list_failure_crit_edge, label %if.end4

if.end.list_failure_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_failure

if.end4:                                          ; preds = %if.end
  %4 = load i8, ptr @netlabel_unlabel_acceptflg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #11
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i, align 1
  %call.i20 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp6.not = icmp eq i32 %call.i20, 0
  br i1 %cmp6.not, label %if.end8, label %if.end4.list_failure_crit_edge

if.end4.list_failure_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_failure

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %9 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_net.i.i, align 4
  %11 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 21
  %13 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %14, ptr noundef nonnull %call.i.i, i32 noundef %12, i32 noundef 64) #11
  %15 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #11
  br label %cleanup

list_failure:                                     ; preds = %if.end4.list_failure_crit_edge, %if.end.list_failure_crit_edge, %entry.list_failure_crit_edge
  %ret_val.0 = phi i32 [ -22, %entry.list_failure_crit_edge ], [ %call.i20, %if.end4.list_failure_crit_edge ], [ -12, %if.end.list_failure_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %list_failure, %if.end8
  %retval.0 = phi i32 [ %ret_val.0, %list_failure ], [ %15, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secctx_to_secid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlbl_unlabel_staticlist_gen(i32 noundef %cmd, ptr nocapture noundef readonly %iface, ptr noundef readonly %addr4, ptr noundef %addr6, ptr nocapture noundef %arg) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i106 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %secctx = alloca ptr, align 4
  %secctx_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx) #11
  %0 = ptrtoint ptr %secctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %secctx, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx_len) #11
  %1 = ptrtoint ptr %secctx_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %secctx_len, align 4, !annotation !74
  %skb = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid, align 4
  %seq = getelementptr inbounds %struct.netlbl_unlhsh_walk_arg, ptr %arg, i32 0, i32 2
  %10 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq, align 4
  %conv = trunc i32 %cmd to i8
  %call = tail call ptr @genlmsg_put(ptr noundef %3, i32 noundef %9, i32 noundef %11, ptr noundef nonnull @netlbl_unlabel_gnl_family, i32 noundef 2, i8 noundef zeroext %conv) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup68

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3 = icmp sgt i32 %13, 0
  br i1 %cmp3, label %if.then5, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %call7 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %13) #11
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then5.if.then.i_crit_edge, label %do.body1.i

if.then5.if.then.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body1.i:                                       ; preds = %if.then5
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %call.i = tail call i32 @strlen(ptr noundef nonnull %call7) #16
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %15, i32 noundef 6, i32 noundef %add.i, ptr noundef nonnull %call7) #11
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !80
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 118
  %17 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcpu_refcnt.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !64) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i105 = add i32 %25, %19
  %26 = inttoptr i32 %add.i105 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add13.i = add i32 %28, -1
  store i32 %add13.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %and.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !82

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #11, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp12.not = icmp eq i32 %call1.i, 0
  br i1 %cmp12.not, label %dev_put.exit.if.end16_crit_edge, label %dev_put.exit.if.then.i_crit_edge

dev_put.exit.if.then.i_crit_edge:                 ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

dev_put.exit.if.end16_crit_edge:                  ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %dev_put.exit.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %addr4, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  %list = getelementptr inbounds %struct.netlbl_unlhsh_addr4, ptr %addr4, i32 0, i32 1
  %30 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %list, align 4
  %32 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %34 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %33, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp22.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp22.not, label %if.end25, label %if.then18.if.then.i_crit_edge

if.then18.if.then.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end25:                                         ; preds = %if.then18
  %mask = getelementptr inbounds %struct.netlbl_unlhsh_addr4, ptr %addr4, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask, align 4
  %37 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i106) #11
  %39 = ptrtoint ptr %tmp.i.i106 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %tmp.i.i106, align 4
  %call.i.i107 = call i32 @nla_put(ptr noundef %38, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i.i106) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i106) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp31.not = icmp eq i32 %call.i.i107, 0
  br i1 %cmp31.not, label %if.end25.if.end53_crit_edge, label %if.end25.if.then.i_crit_edge

if.end25.if.then.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end25.if.end53_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.else:                                          ; preds = %if.end16
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb, align 4
  %list37 = getelementptr inbounds %struct.netlbl_unlhsh_addr6, ptr %addr6, i32 0, i32 1
  %call.i108 = tail call i32 @nla_put(ptr noundef %41, i32 noundef 2, i32 noundef 16, ptr noundef %list37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp40.not = icmp eq i32 %call.i108, 0
  br i1 %cmp40.not, label %if.end43, label %if.else.if.then.i_crit_edge

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end43:                                         ; preds = %if.else
  %42 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb, align 4
  %mask46 = getelementptr inbounds %struct.netlbl_unlhsh_addr6, ptr %addr6, i32 0, i32 1, i32 1
  %call.i109 = tail call i32 @nla_put(ptr noundef %43, i32 noundef 3, i32 noundef 16, ptr noundef %mask46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp48.not = icmp eq i32 %call.i109, 0
  br i1 %cmp48.not, label %if.end43.if.end53_crit_edge, label %if.end43.if.then.i_crit_edge

if.end43.if.then.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end53:                                         ; preds = %if.end43.if.end53_crit_edge, %if.end25.if.end53_crit_edge
  %secid.1.in = phi ptr [ %addr4, %if.end25.if.end53_crit_edge ], [ %addr6, %if.end43.if.end53_crit_edge ]
  %44 = ptrtoint ptr %secid.1.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %secid.1 = load i32, ptr %secid.1.in, align 4
  %call54 = call i32 @security_secid_to_secctx(i32 noundef %secid.1, ptr noundef nonnull %secctx, ptr noundef nonnull %secctx_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end58, label %if.end53.if.then.i_crit_edge

if.end53.if.then.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end58:                                         ; preds = %if.end53
  %45 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skb, align 4
  %47 = ptrtoint ptr %secctx_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %secctx_len, align 4
  %49 = ptrtoint ptr %secctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %secctx, align 4
  %call60 = call i32 @nla_put(ptr noundef %46, i32 noundef 7, i32 noundef %48, ptr noundef %50) #11
  %51 = ptrtoint ptr %secctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %secctx, align 4
  %53 = ptrtoint ptr %secctx_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %secctx_len, align 4
  call void @security_release_secctx(ptr noundef %52, i32 noundef %54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.end64, label %if.end58.if.then.i_crit_edge

if.end58.if.then.i_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %seq, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %seq, align 4
  %57 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb, align 4
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %61 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup68

if.then.i:                                        ; preds = %if.end58.if.then.i_crit_edge, %if.end53.if.then.i_crit_edge, %if.end43.if.then.i_crit_edge, %if.else.if.then.i_crit_edge, %if.end25.if.then.i_crit_edge, %if.then18.if.then.i_crit_edge, %dev_put.exit.if.then.i_crit_edge, %if.then5.if.then.i_crit_edge
  %ret_val.1.ph = phi i32 [ -19, %if.then5.if.then.i_crit_edge ], [ %call.i109, %if.end43.if.then.i_crit_edge ], [ %call.i108, %if.else.if.then.i_crit_edge ], [ %call60, %if.end58.if.then.i_crit_edge ], [ %call54, %if.end53.if.then.i_crit_edge ], [ %call1.i, %dev_put.exit.if.then.i_crit_edge ], [ %call.i.i107, %if.end25.if.then.i_crit_edge ], [ %call.i.i, %if.then18.if.then.i_crit_edge ]
  %62 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb, align 4
  %add.ptr1.i111 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i111, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup68_crit_edge, label %if.then.i.i.i

if.then.i.cleanup68_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup68

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %65, %add.ptr1.i111
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !82

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %66 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i111 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %63, i32 noundef %sub.ptr.sub.i.i.i) #11
  br label %cleanup68

cleanup68:                                        ; preds = %if.end.i.i.i, %if.then.i.cleanup68_crit_edge, %if.end64, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ %ret_val.1.ph, %if.then.i.cleanup68_crit_edge ], [ %ret_val.1.ph, %if.end.i.i.i ], [ -12, %entry.cleanup68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx_len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_unlhsh_netdev_handler(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp eq ptr %3, @init_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  %or.cond = and i1 %cmp, %cmp.i
  br i1 %or.cond, label %if.then3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %call4 = tail call fastcc ptr @netlbl_unlhsh_search_iface(i32 noundef %5)
  %cmp5.not = icmp eq ptr %call4, null
  br i1 %cmp5.not, label %if.then3.if.end10.thread23_crit_edge, label %land.lhs.true

if.then3.if.end10.thread23_crit_edge:             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.thread23

land.lhs.true:                                    ; preds = %if.then3
  %valid = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call4, i32 0, i32 3
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end10.thread23_crit_edge, label %if.then7

land.lhs.true.if.end10.thread23_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.thread23

if.then7:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %valid, align 4
  %list = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call4, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then7.if.then12_crit_edge

if.then7.if.then12_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call4, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %if.then12

if.end10.thread23:                                ; preds = %land.lhs.true.if.end10.thread23_crit_edge, %if.then3.if.end10.thread23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  br label %cleanup

if.then12:                                        ; preds = %if.end.i.i, %if.then7.if.then12_crit_edge
  %prev.i = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call4, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_unlhsh_lock) #11
  %rcu = getelementptr inbounds %struct.netlbl_unlhsh_iface, ptr %call4, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @netlbl_unlhsh_free_iface) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.thread23, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !27, !29, !31, !33, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 395, i32 11}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 444, i32 32}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 447, i32 31}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 650, i32 11}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 1466, i32 11}
!12 = !{ptr @netlbl_unlhsh, !13, !"netlbl_unlhsh", i1 false, i1 false}
!13 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 105, i32 40}
!14 = !{ptr @netlbl_unlhsh_def, !15, !"netlbl_unlhsh_def", i1 false, i1 false}
!15 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 106, i32 42}
!16 = !{ptr @netlabel_unlabel_acceptflg, !17, !"netlabel_unlabel_acceptflg", i1 false, i1 false}
!17 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 109, i32 11}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 209, i32 14}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 210, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 188, i32 20}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 332, i32 10}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 335, i32 7}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/netlabel/netlabel_addrlist.h", i32 76, i32 7}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/netlabel/netlabel_addrlist.h", i32 143, i32 7}
!41 = !{ptr @netlbl_unlabel_gnl_family, !42, !"netlbl_unlabel_gnl_family", i1 false, i1 false}
!42 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 1368, i32 27}
!43 = !{ptr @netlbl_unlabel_genl_policy, !44, !"netlbl_unlabel_genl_policy", i1 false, i1 false}
!44 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 115, i32 32}
!45 = !{ptr @netlbl_unlabel_genl_ops, !46, !"netlbl_unlabel_genl_ops", i1 false, i1 false}
!46 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 1309, i32 36}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 1183, i32 18}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 1185, i32 16}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 1186, i32 3}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/net/netlink.h", i32 991, i32 3}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 1267, i32 10}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 102, i32 8}
!59 = !{ptr @netlbl_unlhsh_lock, !58, !"netlbl_unlhsh_lock", i1 false, i1 false}
!60 = !{ptr @netlbl_unlhsh_netdev_notifier, !61, !"netlbl_unlhsh_netdev_notifier", i1 false, i1 false}
!61 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 1400, i32 30}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netlabel/netlabel_unlabeled.c", i32 745, i32 6}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2149175389}
!76 = !{i64 2150399577}
!77 = !{i64 2157570880}
!78 = !{i64 2148196734, i64 2148196760, i64 2148196789, i64 2148196823, i64 2148196854, i64 2148196877}
!79 = !{i64 2149175655}
!80 = !{i64 650061, i64 650122}
!81 = !{i64 652793}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 653078}
!84 = !{i64 2148199199, i64 2148199225, i64 2148199254, i64 2148199288, i64 2148199319, i64 2148199342}
!85 = !{i64 2157660076}
