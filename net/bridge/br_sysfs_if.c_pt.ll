; ModuleID = '/llk/IR_all_yes/net/bridge/br_sysfs_if.c_pt.bc'
source_filename = "../net/bridge/br_sysfs_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysfs_ops = type { ptr, ptr }
%struct.brport_attribute = type { %struct.attribute, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.93, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.93 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.148, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.148 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.149, %union.anon.150, i16, i16 }
%union.anon.149 = type { %struct.in6_addr }
%union.anon.150 = type { %struct.in6_addr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@brport_sysfs_ops = dso_local constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @brport_show, ptr @brport_store }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@brport_attrs = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @brport_attr_path_cost, ptr @brport_attr_priority, ptr @brport_attr_port_id, ptr @brport_attr_port_no, ptr @brport_attr_designated_root, ptr @brport_attr_designated_bridge, ptr @brport_attr_designated_port, ptr @brport_attr_designated_cost, ptr @brport_attr_state, ptr @brport_attr_change_ack, ptr @brport_attr_config_pending, ptr @brport_attr_message_age_timer, ptr @brport_attr_forward_delay_timer, ptr @brport_attr_hold_timer, ptr @brport_attr_flush, ptr @brport_attr_hairpin_mode, ptr @brport_attr_bpdu_guard, ptr @brport_attr_root_block, ptr @brport_attr_learning, ptr @brport_attr_unicast_flood, ptr @brport_attr_multicast_router, ptr @brport_attr_multicast_fast_leave, ptr @brport_attr_multicast_to_unicast, ptr @brport_attr_proxyarp, ptr @brport_attr_proxyarp_wifi, ptr @brport_attr_multicast_flood, ptr @brport_attr_broadcast_flood, ptr @brport_attr_group_fwd_mask, ptr @brport_attr_neigh_suppress, ptr @brport_attr_isolated, ptr @brport_attr_backup_port, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to rename link %s to %s\00", [33 x i8] zeroinitializer }, align 32
@brport_attr_path_cost = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_path_cost, ptr @br_stp_set_path_cost, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_priority = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_priority, ptr @br_stp_set_port_priority, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_port_id = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_port_id, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_port_no = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_port_no, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_designated_root = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_designated_root, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_designated_bridge = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_designated_bridge, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_designated_port = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_designated_port, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_designated_cost = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_designated_cost, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_state = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_port_state, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_change_ack = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_change_ack, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_config_pending = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_config_pending, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_message_age_timer = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_message_age_timer, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_forward_delay_timer = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_forward_delay_timer, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_hold_timer = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_hold_timer, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_flush = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.19, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_flush, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_hairpin_mode = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_hairpin_mode, ptr @store_hairpin_mode, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_bpdu_guard = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bpdu_guard, ptr @store_bpdu_guard, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_root_block = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_root_block, ptr @store_root_block, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_learning = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_learning, ptr @store_learning, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_unicast_flood = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_unicast_flood, ptr @store_unicast_flood, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_multicast_router = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_multicast_router, ptr @store_multicast_router, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_multicast_fast_leave = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_multicast_fast_leave, ptr @store_multicast_fast_leave, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_multicast_to_unicast = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_multicast_to_unicast, ptr @store_multicast_to_unicast, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_proxyarp = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_proxyarp, ptr @store_proxyarp, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_proxyarp_wifi = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_proxyarp_wifi, ptr @store_proxyarp_wifi, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_multicast_flood = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_multicast_flood, ptr @store_multicast_flood, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_broadcast_flood = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_broadcast_flood, ptr @store_broadcast_flood, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_group_fwd_mask = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_group_fwd_mask, ptr @store_group_fwd_mask, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_neigh_suppress = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_neigh_suppress, ptr @store_neigh_suppress, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_isolated = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_isolated, ptr @store_isolated, ptr null }, [32 x i8] zeroinitializer }, align 32
@brport_attr_backup_port = internal constant { %struct.brport_attribute, [32 x i8] } { %struct.brport_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_backup_port, ptr null, ptr @store_backup_port }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path_cost\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priority\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port_id\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port_no\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"designated_root\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"designated_bridge\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"designated_port\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"designated_cost\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"change_ack\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config_pending\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"message_age_timer\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"forward_delay_timer\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hold_timer\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hairpin_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bpdu_guard\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"root_block\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"learning\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unicast_flood\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"multicast_router\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"multicast_fast_leave\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"multicast_to_unicast\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"proxyarp\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"proxyarp_wifi\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"multicast_flood\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"broadcast_flood\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"group_fwd_mask\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"neigh_suppress\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isolated\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"backup_port\00", [20 x i8] zeroinitializer }, align 32
@show_backup_port.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/bridge/br_sysfs_if.c\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"brport_sysfs_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 360, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 377, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"brport_attrs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 262, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 406, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"brport_attr_path_cost\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"brport_attr_priority\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"brport_attr_port_id\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"brport_attr_port_no\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"brport_attr_designated_root\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"brport_attr_designated_bridge\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"brport_attr_designated_port\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"brport_attr_designated_cost\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"brport_attr_state\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"brport_attr_change_ack\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"brport_attr_config_pending\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"brport_attr_message_age_timer\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [32 x i8] c"brport_attr_forward_delay_timer\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [23 x i8] c"brport_attr_hold_timer\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"brport_attr_flush\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"brport_attr_hairpin_mode\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"brport_attr_bpdu_guard\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"brport_attr_root_block\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"brport_attr_learning\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"brport_attr_unicast_flood\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [29 x i8] c"brport_attr_multicast_router\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [33 x i8] c"brport_attr_multicast_fast_leave\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [33 x i8] c"brport_attr_multicast_to_unicast\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"brport_attr_proxyarp\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"brport_attr_proxyarp_wifi\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"brport_attr_multicast_flood\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [28 x i8] c"brport_attr_broadcast_flood\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [27 x i8] c"brport_attr_group_fwd_mask\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"brport_attr_neigh_suppress\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"brport_attr_isolated\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [24 x i8] c"brport_attr_backup_port\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 89, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 86, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 97, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 128, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 126, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 135, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 104, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 110, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 116, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 122, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 153, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 141, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 147, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 160, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 158, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 167, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 174, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 181, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 232, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 74, i32 23 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 233, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 234, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 235, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 236, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 255, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 258, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 259, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 237, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 238, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 239, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 240, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 197, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 185, i32 22 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 241, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 242, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 230, i32 8 }
@___asan_gen_.260 = private constant [28 x i8] c"../net/bridge/br_sysfs_if.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 206, i32 13 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 695, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 723, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @brport_sysfs_ops, ptr @.str, ptr @brport_attrs, ptr @.str.1, ptr @brport_attr_path_cost, ptr @brport_attr_priority, ptr @brport_attr_port_id, ptr @brport_attr_port_no, ptr @brport_attr_designated_root, ptr @brport_attr_designated_bridge, ptr @brport_attr_designated_port, ptr @brport_attr_designated_cost, ptr @brport_attr_state, ptr @brport_attr_change_ack, ptr @brport_attr_config_pending, ptr @brport_attr_message_age_timer, ptr @brport_attr_forward_delay_timer, ptr @brport_attr_hold_timer, ptr @brport_attr_flush, ptr @brport_attr_hairpin_mode, ptr @brport_attr_bpdu_guard, ptr @brport_attr_root_block, ptr @brport_attr_learning, ptr @brport_attr_unicast_flood, ptr @brport_attr_multicast_router, ptr @brport_attr_multicast_fast_leave, ptr @brport_attr_multicast_to_unicast, ptr @brport_attr_proxyarp, ptr @brport_attr_proxyarp_wifi, ptr @brport_attr_multicast_flood, ptr @brport_attr_broadcast_flood, ptr @brport_attr_group_fwd_mask, ptr @brport_attr_neigh_suppress, ptr @brport_attr_isolated, ptr @brport_attr_backup_port, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attrs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_path_cost to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_priority to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_port_id to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_port_no to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_designated_root to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_designated_bridge to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_designated_port to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_designated_cost to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_state to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_change_ack to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_config_pending to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_message_age_timer to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_forward_delay_timer to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_hold_timer to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_flush to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_hairpin_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_bpdu_guard to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_root_block to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_learning to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_unicast_flood to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_multicast_router to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_multicast_fast_leave to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_multicast_to_unicast to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_proxyarp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_proxyarp_wifi to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_multicast_flood to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_broadcast_flood to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_group_fwd_mask to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_neigh_suppress to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_isolated to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_attr_backup_port to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brport_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.brport_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3 = getelementptr i8, ptr %kobj, i32 -216
  %call = tail call i32 %1(ptr noundef %add.ptr3, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brport_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %kobj, i32 -216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #11
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !132
  %dev = getelementptr i8, ptr %kobj, i32 -212
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns, align 4
  %call4 = tail call zeroext i1 @ns_capable(ptr noundef %6, i32 noundef 12) #11
  br i1 %call4, label %if.end, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @rtnl_trylock() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #11
  br label %cleanup35

if.end8:                                          ; preds = %if.end
  %store_raw = getelementptr inbounds %struct.brport_attribute, ptr %attr, i32 0, i32 3
  %13 = ptrtoint ptr %store_raw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %store_raw, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then10.out_unlock_crit_edge, label %cleanup.thread

if.then10.out_unlock_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

cleanup.thread:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr3, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %16) #11
  %17 = ptrtoint ptr %store_raw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %store_raw, align 4
  %call16 = tail call i32 %18(ptr noundef %add.ptr3, ptr noundef nonnull %call11) #11
  %19 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr3, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %20) #11
  tail call void @kfree(ptr noundef nonnull %call11) #11
  br label %if.end31

if.else:                                          ; preds = %if.end8
  %store = getelementptr inbounds %struct.brport_attribute, ptr %attr, i32 0, i32 2
  %21 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %store, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %if.else.out_unlock_crit_edge, label %if.then20

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then20:                                        ; preds = %if.else
  %call21 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %endp, i32 noundef 0) #11
  %23 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %endp, align 4
  %cmp = icmp eq ptr %24, %buf
  br i1 %cmp, label %if.then20.out_unlock_crit_edge, label %if.end23

if.then20.out_unlock_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end23:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr3, align 8
  call void @_raw_spin_lock_bh(ptr noundef %26) #11
  %27 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %store, align 4
  %call27 = call i32 %28(ptr noundef %add.ptr3, i32 noundef %call21) #11
  %29 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr3, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %30) #11
  br label %if.end31

if.end31:                                         ; preds = %if.end23, %cleanup.thread
  %ret.1 = phi i32 [ %call27, %if.end23 ], [ %call16, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool32.not = icmp eq i32 %ret.1, 0
  br i1 %tobool32.not, label %if.then33, label %if.end31.out_unlock_crit_edge

if.end31.out_unlock_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef %add.ptr3) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then33, %if.end31.out_unlock_crit_edge, %if.then20.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %if.then10.out_unlock_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end31.out_unlock_crit_edge ], [ %count, %if.then33 ], [ -22, %if.then20.out_unlock_crit_edge ], [ -12, %if.then10.out_unlock_crit_edge ], [ -22, %if.else.out_unlock_crit_edge ]
  call void @rtnl_unlock() #11
  br label %cleanup35

cleanup35:                                        ; preds = %out_unlock, %if.then6, %entry.cleanup35_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_unlock ], [ -513, %if.then6 ], [ -1, %entry.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_sysfs_addif(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %kobj = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 22
  %dev = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  %call = tail call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %dev2, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr ptr, ptr %a.031, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %5, %for.cond.for.body_crit_edge ], [ @brport_attr_path_cost, %entry.for.body_crit_edge ]
  %a.031 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ @brport_attrs, %entry.for.body_crit_edge ]
  %call.i = tail call i32 @sysfs_create_file_ns(ptr noundef %kobj, ptr noundef nonnull %6, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %sysfs_name = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 29
  %dev10 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev10, align 4
  %call12 = tail call i32 @strlcpy(ptr noundef %sysfs_name, ptr noundef %8, i32 noundef 16) #11
  %ifobj = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 42
  %9 = ptrtoint ptr %ifobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ifobj, align 4
  %call16 = tail call i32 @sysfs_create_link(ptr noundef %10, ptr noundef %kobj, ptr noundef %sysfs_name) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_sysfs_renameif(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %sysfs_name = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 29
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @strncmp(ptr noundef %sysfs_name, ptr noundef %3, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifobj = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 42
  %4 = ptrtoint ptr %ifobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ifobj, align 4
  %kobj = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 22
  %call.i = tail call i32 @sysfs_rename_link_ns(ptr noundef %5, ptr noundef %kobj, ptr noundef %sysfs_name, ptr noundef %3, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev11 = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef %sysfs_name, ptr noundef %9) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call22 = tail call i32 @strlcpy(ptr noundef %sysfs_name, ptr noundef %11, i32 noundef 16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ %call.i, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_ifinfo_notify(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_path_cost(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %path_cost = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 16
  %0 = ptrtoint ptr %path_cost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %path_cost, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_path_cost(ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_priority(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_port_priority(ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_id(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port_id, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_no(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %0 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port_no, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_designated_root(ptr noundef %p, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %designated_root = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 14
  %call = tail call i32 @br_show_bridge_id(ptr noundef %buf, ptr noundef %designated_root) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_show_bridge_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_designated_bridge(ptr noundef %p, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %designated_bridge = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 15
  %call = tail call i32 @br_show_bridge_id(ptr noundef %buf, ptr noundef %designated_bridge) #11
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_designated_port(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %designated_port = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %0 = ptrtoint ptr %designated_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %designated_port, align 8
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_designated_cost(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %designated_cost = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 17
  %0 = ptrtoint ptr %designated_cost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %designated_cost, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_state(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_change_ack(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %topology_change_ack = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 10
  %0 = ptrtoint ptr %topology_change_ack to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %topology_change_ack, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_config_pending(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config_pending = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %config_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config_pending, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_message_age_timer(ptr noundef %p, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %message_age_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 21
  %call = tail call i32 @br_timer_value(ptr noundef %message_age_timer) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_timer_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_forward_delay_timer(ptr noundef %p, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %forward_delay_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 19
  %call = tail call i32 @br_timer_value(ptr noundef %forward_delay_timer) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_hold_timer(ptr noundef %p, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hold_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 20
  %call = tail call i32 @br_timer_value(ptr noundef %hold_timer) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_flush(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  tail call void @br_fdb_delete_by_port(ptr noundef %1, ptr noundef %p, i16 noundef zeroext 0, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_delete_by_port(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_hairpin_mode(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_hairpin_mode(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp ne i32 %v, 0
  %and.i = and i32 %2, -2
  %masksel = zext i1 %tobool.not.i to i32
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 1, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 1) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_switchdev_set_port_flag(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_port_flags_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_bpdu_guard(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_bpdu_guard(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -3
  %masksel = select i1 %tobool.not.i, i32 0, i32 2
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 2, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 2) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_root_block(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 2
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_root_block(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -5
  %masksel = select i1 %tobool.not.i, i32 0, i32 4
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 4, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 4) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_learning(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 5
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_learning(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -33
  %masksel = select i1 %tobool.not.i, i32 0, i32 32
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 32, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 32) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_unicast_flood(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 6
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_unicast_flood(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -65
  %masksel = select i1 %tobool.not.i, i32 0, i32 64
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 64, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 64) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_multicast_router(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_router = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 24, i32 8
  %0 = ptrtoint ptr %multicast_router to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multicast_router, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_multicast_router(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_ctx = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 24
  %call = tail call i32 @br_multicast_set_port_router(ptr noundef %multicast_ctx, i32 noundef %v) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_port_router(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_multicast_fast_leave(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 3
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_multicast_fast_leave(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -9
  %masksel = select i1 %tobool.not.i, i32 0, i32 8
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 8, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 8) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_multicast_to_unicast(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 12
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_multicast_to_unicast(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -4097
  %masksel = select i1 %tobool.not.i, i32 0, i32 4096
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 4096, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 4096) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_proxyarp(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 8
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_proxyarp(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -257
  %masksel = select i1 %tobool.not.i, i32 0, i32 256
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 256, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 256) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_proxyarp_wifi(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 10
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_proxyarp_wifi(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -1025
  %masksel = select i1 %tobool.not.i, i32 0, i32 1024
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 1024, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 1024) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_multicast_flood(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 11
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_multicast_flood(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -2049
  %masksel = select i1 %tobool.not.i, i32 0, i32 2048
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 2048, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 2048) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_broadcast_flood(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 14
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_broadcast_flood(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -16385
  %masksel = select i1 %tobool.not.i, i32 0, i32 16384
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 16384, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 16384) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_group_fwd_mask(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %group_fwd_mask = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 34
  %0 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %group_fwd_mask, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @store_group_fwd_mask(ptr nocapture noundef writeonly %p, i32 noundef %v) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %v, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %v to i16
  %group_fwd_mask = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 34
  %0 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %group_fwd_mask, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_neigh_suppress(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 15
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_neigh_suppress(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -32769
  %masksel = select i1 %tobool.not.i, i32 0, i32 32768
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 32768, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 32768) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_isolated(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 16
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_isolated(ptr noundef %p, i32 noundef %v) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #11
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool.not.i = icmp eq i32 %v, 0
  %and.i = and i32 %2, -65537
  %masksel = select i1 %tobool.not.i, i32 0, i32 65536
  %flags.0.i = or i32 %and.i, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %2)
  %cmp.not.i = icmp eq i32 %flags.0.i, %2
  br i1 %cmp.not.i, label %entry.store_flag.exit_crit_edge, label %if.then3.i

entry.store_flag.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %store_flag.exit

if.then3.i:                                       ; preds = %entry
  %call.i = call i32 @br_switchdev_set_port_flag(ptr noundef %p, i32 noundef %flags.0.i, i32 noundef 65536, ptr noundef nonnull %extack.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %6) #14
  br label %store_flag.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  call void @br_port_flags_change(ptr noundef %p, i32 noundef 65536) #11
  br label %store_flag.exit

store_flag.exit:                                  ; preds = %if.end6.i, %if.then5.i, %entry.store_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.end6.i ], [ 0, %entry.store_flag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_backup_port(ptr noundef %p, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %backup_port = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %backup_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %backup_port, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @show_backup_port.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @show_backup_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 206, ptr noundef nonnull @.str.39) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end12_crit_edge, label %if.then10

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, ptr noundef %7)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end7.if.end12_crit_edge
  %ret.0 = phi i32 [ %call11, %if.then10 ], [ 0, %do.end7.if.end12_crit_edge ]
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i15, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end12
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !134
  %8 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i.i22 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_backup_port(ptr noundef %p, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strchr(ptr noundef %buf, i32 noundef 10)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %call, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %char0 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp.not = icmp eq i8 %char0, 0
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %call4 = tail call ptr @__dev_get_by_name(ptr noundef %5, ptr noundef %buf) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %backup_dev.0 = phi ptr [ %call4, %if.then2.if.end8_crit_edge ], [ null, %if.end.if.end8_crit_edge ]
  %call9 = tail call i32 @nbp_backup_change(ptr noundef %p, ptr noundef %backup_dev.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -2, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nbp_backup_change(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_rename_link_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121}
!llvm.named.register.sp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @brport_sysfs_ops, !1, !"brport_sysfs_ops", i1 false, i1 false}
!1 = !{!"../net/bridge/br_sysfs_if.c", i32 360, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bridge/br_sysfs_if.c", i32 377, i32 5}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/bridge/br_sysfs_if.c", i32 406, i32 26}
!6 = !{ptr @brport_attrs, !7, !"brport_attrs", i1 false, i1 false}
!7 = !{!"../net/bridge/br_sysfs_if.c", i32 262, i32 39}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bridge/br_sysfs_if.c", i32 89, i32 8}
!10 = !{ptr @brport_attr_path_cost, !9, !"brport_attr_path_cost", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/bridge/br_sysfs_if.c", i32 86, i32 22}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bridge/br_sysfs_if.c", i32 97, i32 8}
!15 = !{ptr @brport_attr_priority, !14, !"brport_attr_priority", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bridge/br_sysfs_if.c", i32 128, i32 8}
!18 = !{ptr @brport_attr_port_id, !17, !"brport_attr_port_id", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bridge/br_sysfs_if.c", i32 126, i32 22}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bridge/br_sysfs_if.c", i32 135, i32 8}
!23 = !{ptr @brport_attr_port_no, !22, !"brport_attr_port_no", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/bridge/br_sysfs_if.c", i32 104, i32 8}
!26 = !{ptr @brport_attr_designated_root, !25, !"brport_attr_designated_root", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bridge/br_sysfs_if.c", i32 110, i32 8}
!29 = !{ptr @brport_attr_designated_bridge, !28, !"brport_attr_designated_bridge", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bridge/br_sysfs_if.c", i32 116, i32 8}
!32 = !{ptr @brport_attr_designated_port, !31, !"brport_attr_designated_port", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/bridge/br_sysfs_if.c", i32 122, i32 8}
!35 = !{ptr @brport_attr_designated_cost, !34, !"brport_attr_designated_cost", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/bridge/br_sysfs_if.c", i32 153, i32 8}
!38 = !{ptr @brport_attr_state, !37, !"brport_attr_state", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/bridge/br_sysfs_if.c", i32 141, i32 8}
!41 = !{ptr @brport_attr_change_ack, !40, !"brport_attr_change_ack", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bridge/br_sysfs_if.c", i32 147, i32 8}
!44 = !{ptr @brport_attr_config_pending, !43, !"brport_attr_config_pending", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/bridge/br_sysfs_if.c", i32 160, i32 8}
!47 = !{ptr @brport_attr_message_age_timer, !46, !"brport_attr_message_age_timer", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/bridge/br_sysfs_if.c", i32 158, i32 22}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/bridge/br_sysfs_if.c", i32 167, i32 8}
!52 = !{ptr @brport_attr_forward_delay_timer, !51, !"brport_attr_forward_delay_timer", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/bridge/br_sysfs_if.c", i32 174, i32 8}
!55 = !{ptr @brport_attr_hold_timer, !54, !"brport_attr_hold_timer", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/bridge/br_sysfs_if.c", i32 181, i32 8}
!58 = !{ptr @brport_attr_flush, !57, !"brport_attr_flush", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/bridge/br_sysfs_if.c", i32 232, i32 1}
!61 = !{ptr @brport_attr_hairpin_mode, !60, !"brport_attr_hairpin_mode", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/bridge/br_sysfs_if.c", i32 74, i32 23}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/bridge/br_sysfs_if.c", i32 233, i32 1}
!66 = !{ptr @brport_attr_bpdu_guard, !65, !"brport_attr_bpdu_guard", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/bridge/br_sysfs_if.c", i32 234, i32 1}
!69 = !{ptr @brport_attr_root_block, !68, !"brport_attr_root_block", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bridge/br_sysfs_if.c", i32 235, i32 1}
!72 = !{ptr @brport_attr_learning, !71, !"brport_attr_learning", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/bridge/br_sysfs_if.c", i32 236, i32 1}
!75 = !{ptr @brport_attr_unicast_flood, !74, !"brport_attr_unicast_flood", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/bridge/br_sysfs_if.c", i32 255, i32 8}
!78 = !{ptr @brport_attr_multicast_router, !77, !"brport_attr_multicast_router", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/bridge/br_sysfs_if.c", i32 258, i32 1}
!81 = !{ptr @brport_attr_multicast_fast_leave, !80, !"brport_attr_multicast_fast_leave", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/bridge/br_sysfs_if.c", i32 259, i32 1}
!84 = !{ptr @brport_attr_multicast_to_unicast, !83, !"brport_attr_multicast_to_unicast", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/bridge/br_sysfs_if.c", i32 237, i32 1}
!87 = !{ptr @brport_attr_proxyarp, !86, !"brport_attr_proxyarp", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/bridge/br_sysfs_if.c", i32 238, i32 1}
!90 = !{ptr @brport_attr_proxyarp_wifi, !89, !"brport_attr_proxyarp_wifi", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/bridge/br_sysfs_if.c", i32 239, i32 1}
!93 = !{ptr @brport_attr_multicast_flood, !92, !"brport_attr_multicast_flood", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/bridge/br_sysfs_if.c", i32 240, i32 1}
!96 = !{ptr @brport_attr_broadcast_flood, !95, !"brport_attr_broadcast_flood", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/bridge/br_sysfs_if.c", i32 197, i32 8}
!99 = !{ptr @brport_attr_group_fwd_mask, !98, !"brport_attr_group_fwd_mask", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/bridge/br_sysfs_if.c", i32 185, i32 22}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bridge/br_sysfs_if.c", i32 241, i32 1}
!104 = !{ptr @brport_attr_neigh_suppress, !103, !"brport_attr_neigh_suppress", i1 false, i1 false}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/bridge/br_sysfs_if.c", i32 242, i32 1}
!107 = !{ptr @brport_attr_isolated, !106, !"brport_attr_isolated", i1 false, i1 false}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/bridge/br_sysfs_if.c", i32 230, i32 8}
!110 = !{ptr @brport_attr_backup_port, !109, !"brport_attr_backup_port", i1 false, i1 false}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../net/bridge/br_sysfs_if.c", i32 206, i32 13}
!113 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!117 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!121 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!122 = !{!"sp"}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"auto-init"}
!133 = !{i64 2149635529}
!134 = !{i64 2149635795}
