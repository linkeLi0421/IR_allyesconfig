; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.168] }
%struct.anon.168 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.152 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.152 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.169 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_lag = type { i8, i32, i8, [2 x i8], %struct.kref, [2 x %struct.lag_func], %struct.lag_tracker, ptr, %struct.delayed_work, %struct.notifier_block, %struct.lag_mp, %struct.mlx5_lag_port_sel }
%struct.kref = type { %struct.refcount_struct }
%struct.lag_func = type { ptr, ptr }
%struct.lag_tracker = type { i32, [2 x %struct.netdev_lag_lower_state_info], i8, i32 }
%struct.netdev_lag_lower_state_info = type { i8 }
%struct.lag_mp = type { %struct.notifier_block, ptr, ptr }
%struct.mlx5_lag_port_sel = type { [1 x i32], i8, %struct.mlx5_lag_ttc, %struct.mlx5_lag_ttc }
%struct.mlx5_lag_ttc = type { ptr, [11 x ptr] }
%struct.fib_entry_notifier_info = type { %struct.fib_notifier_info, i32, i32, ptr, i8, i8, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.callback_head = type { ptr, ptr }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.94, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.94 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.mlx5_fib_event_work = type { %struct.work_struct, ptr, i32, %union.anon.177 }
%union.anon.177 = type { %struct.fib_entry_notifier_info }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.92 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.92 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.96, %struct.list_head, ptr }
%union.anon.96 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.list_head, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
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
%union.anon.119 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx5_lag_mp\00", [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c\00", [47 x i8] zeroinitializer }, align 32
@mlx5_lag_init_fib_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&fib_work->work)\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_lag_fib_route_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 163, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): Multipath offload require two ports of the same HCA\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_lag_fib_route_event\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_lag_fib_route_event._entry_ptr = internal global ptr @mlx5_lag_fib_route_event._entry, section ".printk_index", align 4
@nexthop_num_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mlx5_lag_set_port_affinity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 79, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Invalid affinity port %d\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_lag_set_port_affinity\00", [37 x i8] zeroinitializer }, align 32
@mlx5_lag_set_port_affinity._entry_ptr = internal global ptr @mlx5_lag_set_port_affinity._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 332, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 468, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 241, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 244, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 162, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 295, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 78, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @mlx5_lag_fib_route_event._entry, ptr @mlx5_lag_fib_route_event._entry_ptr, ptr @mlx5_lag_set_port_affinity._entry, ptr @mlx5_lag_set_port_affinity._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mlx5_lag_init_fib_work.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_lag_init_fib_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_lag_fib_route_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_lag_set_port_affinity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_lag_is_multipath(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lag.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 30
  %0 = ptrtoint ptr %lag.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i = icmp ne i8 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool.i, %land.rhs ]
  ret i1 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlx5_lag_mp_reset(ptr nocapture noundef writeonly %ldev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mfi = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %mfi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mfi, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_lag_mp_init(ptr noundef %ldev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lag_mp = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 10
  %mfi = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %mfi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mfi, align 4
  %1 = ptrtoint ptr %lag_mp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lag_mp, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #10
  %wq = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 10, i32 2
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %wq, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %lag_mp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlx5_lag_fib_event, ptr %lag_mp, align 4
  %call8 = tail call i32 @register_fib_notifier(ptr noundef nonnull @init_net, ptr noundef %lag_mp, ptr noundef nonnull @mlx5_lag_fib_event_flush, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %if.then10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %6) #10
  %7 = ptrtoint ptr %lag_mp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %lag_mp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call8, %if.then10 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_lag_fib_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %nb, i32 -160
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr3, align 4
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not.i = icmp eq i8 %4, 0
  br i1 %tobool.i.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %5 = and i8 %3, 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i13.i = icmp eq i8 %5, 0
  %6 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i14.i = icmp ne i8 %6, 0
  %or.cond.i = or i1 %tobool.i13.i, %tobool.i14.i
  br i1 %or.cond.i, label %mlx5_lag_multipath_check_prereq.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5_lag_multipath_check_prereq.exit:             ; preds = %if.end.i
  %pf.i = getelementptr i8, ptr %nb, i32 -144
  %7 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %nb, i32 -136
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  %call8.i = tail call zeroext i1 @mlx5_esw_multipath_prereq(ptr noundef %8, ptr noundef %10) #10
  br i1 %call8.i, label %if.end5, label %mlx5_lag_multipath_check_prereq.exit.cleanup_crit_edge

mlx5_lag_multipath_check_prereq.exit.cleanup_crit_edge: ; preds = %mlx5_lag_multipath_check_prereq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %mlx5_lag_multipath_check_prereq.exit
  %11 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end5.cleanup_crit_edge [
    i32 0, label %if.end5.sw.bb_crit_edge
    i32 3, label %if.end5.sw.bb_crit_edge75
    i32 6, label %if.end5.sw.bb26_crit_edge
    i32 7, label %if.end5.sw.bb26_crit_edge76
  ]

if.end5.sw.bb26_crit_edge76:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26

if.end5.sw.bb26_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26

if.end5.sw.bb_crit_edge75:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge75
  %fi9 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %ptr, i32 0, i32 3
  %12 = ptrtoint ptr %fi9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fi9, align 4
  %nh = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nh, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %fib_info_nh.exit, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fib_info_nh.exit:                                 ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.fib_info, ptr %13, i32 0, i32 20, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %netdev = getelementptr i8, ptr %nb, i32 -140
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  %cmp14.not = icmp eq ptr %17, %19
  br i1 %cmp14.not, label %fib_info_nh.exit.if.end20_crit_edge, label %land.lhs.true

fib_info_nh.exit.if.end20_crit_edge:              ; preds = %fib_info_nh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %fib_info_nh.exit
  %netdev17 = getelementptr i8, ptr %nb, i32 -132
  %20 = ptrtoint ptr %netdev17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev17, align 4
  %cmp18.not = icmp eq ptr %17, %21
  br i1 %cmp18.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %fib_info_nh.exit.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2848, i32 noundef 80) #13
  %tobool.not.i61 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i61, label %mlx5_lag_init_fib_work.exit.thread, label %if.end24, !prof !35

mlx5_lag_init_fib_work.exit.thread:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #10
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx5_lag_init_fib_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry28.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %entry28.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry28.i, ptr %entry28.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry28.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mlx5_lag_fib_update, ptr %func.i, align 4
  %ldev32.i = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %ldev32.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr3, ptr %ldev32.i, align 4
  %event33.i = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %event33.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %event, ptr %event33.i, align 8
  %29 = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %call7.i.i.i, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %29, ptr %ptr, i32 28)
  %fi25 = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 3
  %31 = ptrtoint ptr %fi25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fi25, align 4
  tail call fastcc void @fib_info_hold(ptr noundef %32)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end5.sw.bb26_crit_edge, %if.end5.sw.bb26_crit_edge76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 2848, i32 noundef 80) #13
  %tobool.not.i64 = icmp eq ptr %call7.i.i.i63, null
  br i1 %tobool.not.i64, label %mlx5_lag_init_fib_work.exit73.thread, label %if.end33, !prof !35

mlx5_lag_init_fib_work.exit73.thread:             ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end33:                                         ; preds = %sw.bb26
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i63, i32 noundef 0) #10
  %34 = ptrtoint ptr %call7.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %call7.i.i.i63, align 8
  %lockdep_map.i66 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i63, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i66, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx5_lag_init_fib_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry28.i67 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i63, i32 0, i32 1
  %35 = ptrtoint ptr %entry28.i67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry28.i67, ptr %entry28.i67, align 4
  %prev.i.i68 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i63, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry28.i67, ptr %prev.i.i68, align 8
  %func.i69 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i63, i32 0, i32 2
  %37 = ptrtoint ptr %func.i69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mlx5_lag_fib_update, ptr %func.i69, align 4
  %ldev32.i70 = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %call7.i.i.i63, i32 0, i32 1
  %38 = ptrtoint ptr %ldev32.i70 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr3, ptr %ldev32.i70, align 4
  %event33.i71 = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %call7.i.i.i63, i32 0, i32 2
  %39 = ptrtoint ptr %event33.i71 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %event, ptr %event33.i71, align 8
  %40 = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %call7.i.i.i63, i32 0, i32 3
  %41 = call ptr @memcpy(ptr %40, ptr %ptr, i32 12)
  %fib_nh = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %call7.i.i.i63, i32 0, i32 3, i32 0, i32 1
  %42 = ptrtoint ptr %fib_nh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fib_nh, align 4
  %nh_parent = getelementptr inbounds %struct.fib_nh, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %nh_parent to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nh_parent, align 4
  %fib_clntref.i = getelementptr inbounds %struct.fib_info, ptr %45, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i, i32 1, i32 3, i32 1) #10
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i, ptr %fib_clntref.i, i32 1, ptr elementtype(i32) %fib_clntref.i) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end33.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !35

if.end33.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end33
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sw.epilog_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !37

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end33.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end33.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sw.epilog_crit_edge, %if.end24
  %fib_work.0 = phi ptr [ %call7.i.i.i, %if.end24 ], [ %call7.i.i.i63, %if.else.i.i.i.i.sw.epilog_crit_edge ], [ %call7.i.i.i63, %if.end15.sink.split.i.i.i.i ]
  %wq = getelementptr inbounds %struct.lag_mp, ptr %nb, i32 0, i32 2
  %48 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef nonnull %fib_work.0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %mlx5_lag_init_fib_work.exit73.thread, %mlx5_lag_init_fib_work.exit.thread, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %mlx5_lag_multipath_check_prereq.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_fib_notifier(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_lag_fib_event_flush(ptr nocapture noundef readonly %nb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.lag_mp, ptr %nb, i32 0, i32 2
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_lag_mp_cleanup(ptr noundef %ldev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lag_mp = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 10
  %0 = ptrtoint ptr %lag_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag_mp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_fib_notifier(ptr noundef nonnull @init_net, ptr noundef %lag_mp) #10
  %wq = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #10
  %4 = ptrtoint ptr %lag_mp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %lag_mp, align 4
  %mfi = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %mfi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mfi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_fib_notifier(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fib_info_hold(ptr noundef %fi) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %fib_clntref = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %fib_clntref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref, ptr %fib_clntref, i32 1, ptr elementtype(i32) %fib_clntref) #10, !srcloc !36
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !35

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !37

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_esw_multipath_prereq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_lag_fib_update(ptr noundef %work) #3 align 64 {
entry:
  %tracker.i.i21 = alloca %struct.lag_tracker, align 4
  %tracker.i.i = alloca %struct.lag_tracker, align 4
  %tracker.i = alloca %struct.lag_tracker, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev1 = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %ldev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev1, align 4
  tail call void @rtnl_lock() #10
  %event = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge85
    i32 6, label %entry.sw.bb4_crit_edge
    i32 7, label %entry.sw.bb4_crit_edge86
  ]

entry.sw.bb4_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb_crit_edge85:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge85
  %fi = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %work, i32 0, i32 3, i32 0, i32 3
  %5 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  %mfi.i = getelementptr inbounds %struct.mlx5_lag, ptr %1, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %mfi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mfi.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %sw.bb
  %cmp1.i = icmp eq ptr %8, %6
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.mlx5_lag_fib_route_event.exit_crit_edge

if.then.i.mlx5_lag_fib_route_event.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_route_event.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %mfi.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mfi.i, align 4
  br label %mlx5_lag_fib_route_event.exit

if.end4.i:                                        ; preds = %sw.bb
  %tobool.not.i = icmp eq ptr %8, null
  %cmp7.not.i = icmp eq ptr %8, %6
  %or.cond.i = or i1 %tobool.not.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end4.i.if.end13.i_crit_edge, label %land.lhs.true8.i

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

land.lhs.true8.i:                                 ; preds = %if.end4.i
  %fib_priority.i = getelementptr inbounds %struct.fib_info, ptr %6, i32 0, i32 13
  %10 = ptrtoint ptr %fib_priority.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fib_priority.i, align 4
  %fib_priority10.i = getelementptr inbounds %struct.fib_info, ptr %8, i32 0, i32 13
  %12 = ptrtoint ptr %fib_priority10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fib_priority10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp11.not.i = icmp ult i32 %11, %13
  br i1 %cmp11.not.i, label %land.lhs.true8.i.if.end13.i_crit_edge, label %land.lhs.true8.i.mlx5_lag_fib_route_event.exit_crit_edge

land.lhs.true8.i.mlx5_lag_fib_route_event.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_route_event.exit

land.lhs.true8.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true8.i.if.end13.i_crit_edge, %if.end4.i.if.end13.i_crit_edge
  %nh.i.i = getelementptr inbounds %struct.fib_info, ptr %6, i32 0, i32 18
  %14 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !37

if.then.i.i:                                      ; preds = %if.end13.i
  %is_group.i = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %is_group.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_group.i, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i57 = icmp eq i8 %17, 0
  br i1 %tobool.not.i57, label %if.then.i.i.if.then15.i_crit_edge, label %if.then.i59

if.then.i.i.if.then15.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.then.i59:                                      ; preds = %if.then.i.i
  %18 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %18, align 4
  %call.i58 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i58, label %if.then.i59.do.end10.i_crit_edge, label %lor.lhs.false.i

if.then.i59.do.end10.i_crit_edge:                 ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.then.i59
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i60, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true.i60:                                ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i60.do.end10.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i60.do.end10.i_crit_edge:           ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i60
  %.b18.i = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 295, ptr noundef nonnull @.str.9) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end10.i_crit_edge, %land.lhs.true.i60.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %if.then.i59.do.end10.i_crit_edge
  %is_multipath.i = getelementptr inbounds %struct.nh_group, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %is_multipath.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_multipath.i, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not.i = icmp eq i8 %22, 0
  br i1 %tobool12.not.i, label %do.end10.i.if.then15.i_crit_edge, label %if.then13.i

do.end10.i.if.then15.i_crit_edge:                 ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.then13.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_nh.i = getelementptr inbounds %struct.nh_group, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %num_nh.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_nh.i, align 4
  %conv.i = zext i16 %24 to i32
  br label %fib_info_num_path.exit.i

if.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %fib_nhs.i.i = getelementptr inbounds %struct.fib_info, ptr %6, i32 0, i32 15
  %25 = ptrtoint ptr %fib_nhs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fib_nhs.i.i, align 4
  br label %fib_info_num_path.exit.i

fib_info_num_path.exit.i:                         ; preds = %if.end.i.i, %if.then13.i
  %retval.0.i.i = phi i32 [ %26, %if.end.i.i ], [ %conv.i, %if.then13.i ]
  %27 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %retval.0.i.i, label %fib_info_num_path.exit.i.mlx5_lag_fib_route_event.exit_crit_edge [
    i32 1, label %fib_info_num_path.exit.i.if.then15.i_crit_edge
    i32 2, label %if.end30.i
  ]

fib_info_num_path.exit.i.if.then15.i_crit_edge:   ; preds = %fib_info_num_path.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

fib_info_num_path.exit.i.mlx5_lag_fib_route_event.exit_crit_edge: ; preds = %fib_info_num_path.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_route_event.exit

if.then15.i:                                      ; preds = %fib_info_num_path.exit.i.if.then15.i_crit_edge, %do.end10.i.if.then15.i_crit_edge, %if.then.i.i.if.then15.i_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 4
  %30 = and i8 %29, 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.i.not.i = icmp eq i8 %30, 0
  br i1 %tobool.i.not.i, label %if.then15.i.if.end25.i_crit_edge, label %if.then17.i

if.then15.i.if.end25.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then17.i:                                      ; preds = %if.then15.i
  %31 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nh.i.i, align 4
  %tobool.not.i110.i = icmp eq ptr %32, null
  br i1 %tobool.not.i110.i, label %if.then17.i.fib_info_nh.exit.i_crit_edge, label %do.end.i.i, !prof !37

if.then17.i.fib_info_nh.exit.i_crit_edge:         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fib_info_nh.exit.i

do.end.i.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %fib_info_nh.exit.i

fib_info_nh.exit.i:                               ; preds = %do.end.i.i, %if.then17.i.fib_info_nh.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.fib_info, ptr %6, i32 0, i32 20, i32 0
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %call19.i = tail call i32 @mlx5_lag_dev_get_netdev_idx(ptr noundef %1, ptr noundef %34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %fib_info_nh.exit.i.mlx5_lag_fib_route_event.exit_crit_edge, label %if.end22.i

fib_info_nh.exit.i.mlx5_lag_fib_route_event.exit_crit_edge: ; preds = %fib_info_nh.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_route_event.exit

if.end22.i:                                       ; preds = %fib_info_nh.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nuw i32 %call19.i, 1
  tail call fastcc void @mlx5_lag_set_port_affinity(ptr noundef %1, i32 noundef %inc.i) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end22.i, %if.then15.i.if.end25.i_crit_edge
  %35 = ptrtoint ptr %mfi.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %6, ptr %mfi.i, align 4
  br label %mlx5_lag_fib_route_event.exit

if.end30.i:                                       ; preds = %fib_info_num_path.exit.i
  %36 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nh.i.i, align 4
  %tobool.not.i113.i = icmp eq ptr %37, null
  br i1 %tobool.not.i113.i, label %if.end30.i.fib_info_nh.exit123.i_crit_edge, label %fib_info_nh.exit117.i, !prof !37

if.end30.i.fib_info_nh.exit123.i_crit_edge:       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fib_info_nh.exit123.i

fib_info_nh.exit117.i:                            ; preds = %if.end30.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  %38 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i = load ptr, ptr %nh.i.i, align 4
  %tobool.not.i119.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i119.i, label %fib_info_nh.exit117.i.fib_info_nh.exit123.i_crit_edge, label %do.end.i120.i, !prof !37

fib_info_nh.exit117.i.fib_info_nh.exit123.i_crit_edge: ; preds = %fib_info_nh.exit117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fib_info_nh.exit123.i

do.end.i120.i:                                    ; preds = %fib_info_nh.exit117.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 468, i32 noundef 9, ptr noundef null) #10
  br label %fib_info_nh.exit123.i

fib_info_nh.exit123.i:                            ; preds = %do.end.i120.i, %fib_info_nh.exit117.i.fib_info_nh.exit123.i_crit_edge, %if.end30.i.fib_info_nh.exit123.i_crit_edge
  %arrayidx.i115129.i = getelementptr %struct.fib_info, ptr %6, i32 0, i32 20, i32 0
  %arrayidx.i121.i = getelementptr %struct.fib_info, ptr %6, i32 0, i32 20, i32 1
  %39 = ptrtoint ptr %arrayidx.i115129.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i115129.i, align 4
  %pf.i = getelementptr inbounds %struct.mlx5_lag, ptr %1, i32 0, i32 5
  %netdev.i = getelementptr inbounds %struct.mlx5_lag, ptr %1, i32 0, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev.i, align 4
  %cmp35.i = icmp eq ptr %40, %42
  br i1 %cmp35.i, label %land.lhs.true36.i, label %fib_info_nh.exit123.i.land.lhs.true43.i_crit_edge

fib_info_nh.exit123.i.land.lhs.true43.i_crit_edge: ; preds = %fib_info_nh.exit123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true43.i

land.lhs.true36.i:                                ; preds = %fib_info_nh.exit123.i
  %43 = ptrtoint ptr %arrayidx.i121.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i121.i, align 4
  %netdev41.i = getelementptr %struct.mlx5_lag, ptr %1, i32 0, i32 5, i32 1, i32 1
  %45 = ptrtoint ptr %netdev41.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev41.i, align 4
  %cmp42.i = icmp eq ptr %44, %46
  br i1 %cmp42.i, label %land.lhs.true36.i.if.end61.i_crit_edge, label %land.lhs.true36.i.land.lhs.true43.i_crit_edge

land.lhs.true36.i.land.lhs.true43.i_crit_edge:    ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true43.i

land.lhs.true36.i.if.end61.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.i

land.lhs.true43.i:                                ; preds = %land.lhs.true36.i.land.lhs.true43.i_crit_edge, %fib_info_nh.exit123.i.land.lhs.true43.i_crit_edge
  %netdev48.i = getelementptr %struct.mlx5_lag, ptr %1, i32 0, i32 5, i32 1, i32 1
  %47 = ptrtoint ptr %netdev48.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev48.i, align 4
  %cmp49.i = icmp eq ptr %40, %48
  br i1 %cmp49.i, label %land.lhs.true50.i, label %land.lhs.true43.i.do.end.i_crit_edge

land.lhs.true43.i.do.end.i_crit_edge:             ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true50.i:                                ; preds = %land.lhs.true43.i
  %49 = ptrtoint ptr %arrayidx.i121.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i121.i, align 4
  %cmp56.i = icmp eq ptr %50, %42
  br i1 %cmp56.i, label %land.lhs.true50.i.if.end61.i_crit_edge, label %land.lhs.true50.i.do.end.i_crit_edge

land.lhs.true50.i.do.end.i_crit_edge:             ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true50.i.if.end61.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.i

do.end.i:                                         ; preds = %land.lhs.true50.i.do.end.i_crit_edge, %land.lhs.true43.i.do.end.i_crit_edge
  %51 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pf.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %55 = tail call i32 @llvm.read_register.i32(metadata !25) #10
  %and.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 163, i32 noundef %60) #14
  br label %mlx5_lag_fib_route_event.exit

if.end61.i:                                       ; preds = %land.lhs.true50.i.if.end61.i_crit_edge, %land.lhs.true36.i.if.end61.i_crit_edge
  %61 = ptrtoint ptr %mfi.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mfi.i, align 4
  %tobool63.not.i = icmp eq ptr %62, null
  br i1 %tobool63.not.i, label %land.lhs.true64.i, label %if.end61.i.if.end69.i_crit_edge

if.end61.i.if.end69.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

land.lhs.true64.i:                                ; preds = %if.end61.i
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %1, align 4
  %65 = and i8 %64, 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.i124.not.i = icmp eq i8 %65, 0
  br i1 %tobool.i124.not.i, label %if.then66.i, label %land.lhs.true64.i.if.end69.i_crit_edge

land.lhs.true64.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.then66.i:                                      ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tracker.i) #10
  %tracker67.i = getelementptr inbounds %struct.mlx5_lag, ptr %1, i32 0, i32 6
  %66 = call ptr @memcpy(ptr %tracker.i, ptr %tracker67.i, i32 12)
  %call68.i = call i32 @mlx5_activate_lag(ptr noundef %1, ptr noundef nonnull %tracker.i, i8 noundef zeroext 4, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tracker.i) #10
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then66.i, %land.lhs.true64.i.if.end69.i_crit_edge, %if.end61.i.if.end69.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tracker.i.i) #10
  %67 = call ptr @memset(ptr %tracker.i.i, i32 255, i32 12)
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %1, align 4
  %70 = and i8 %69, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.i.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool.i.not.i.i, label %if.end69.i.mlx5_lag_set_port_affinity.exit.i_crit_edge, label %if.end83.i.i

if.end69.i.mlx5_lag_set_port_affinity.exit.i_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_set_port_affinity.exit.i

if.end83.i.i:                                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  %netdev_state.i.i = getelementptr inbounds %struct.lag_tracker, ptr %tracker.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %netdev_state.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i.i = load i8, ptr %netdev_state.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds %struct.lag_tracker, ptr %tracker.i.i, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load3.i.i = load i8, ptr %arrayidx2.i.i, align 1
  %bf.set10.i.i = or i8 %bf.load.i.i, -64
  store i8 %bf.set10.i.i, ptr %netdev_state.i.i, align 4
  %bf.set15.i.i = or i8 %bf.load3.i.i, -64
  store i8 %bf.set15.i.i, ptr %arrayidx2.i.i, align 1
  %73 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pf.i, align 4
  %events.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %74, i32 0, i32 17, i32 25
  %75 = ptrtoint ptr %events.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %events.i.i, align 8
  %call68.i.i = call i32 @mlx5_notifier_call_chain(ptr noundef %76, i32 noundef 129, ptr noundef null) #10
  %arrayidx78.i.i = getelementptr %struct.mlx5_lag, ptr %1, i32 0, i32 5, i32 1
  %77 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx78.i.i, align 4
  %events81.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %78, i32 0, i32 17, i32 25
  %79 = ptrtoint ptr %events81.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %events81.i.i, align 8
  %call82.i.i = call i32 @mlx5_notifier_call_chain(ptr noundef %80, i32 noundef 129, ptr noundef null) #10
  call void @mlx5_modify_lag(ptr noundef %1, ptr noundef nonnull %tracker.i.i) #10
  br label %mlx5_lag_set_port_affinity.exit.i

mlx5_lag_set_port_affinity.exit.i:                ; preds = %if.end83.i.i, %if.end69.i.mlx5_lag_set_port_affinity.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tracker.i.i) #10
  %81 = ptrtoint ptr %mfi.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %6, ptr %mfi.i, align 4
  br label %mlx5_lag_fib_route_event.exit

mlx5_lag_fib_route_event.exit:                    ; preds = %mlx5_lag_set_port_affinity.exit.i, %do.end.i, %if.end25.i, %fib_info_nh.exit.i.mlx5_lag_fib_route_event.exit_crit_edge, %fib_info_num_path.exit.i.mlx5_lag_fib_route_event.exit_crit_edge, %land.lhs.true8.i.mlx5_lag_fib_route_event.exit_crit_edge, %if.then2.i, %if.then.i.mlx5_lag_fib_route_event.exit_crit_edge
  %82 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fi, align 4
  %fib_clntref.i = getelementptr inbounds %struct.fib_info, ptr %83, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  call void @llvm.prefetch.p0(ptr %fib_clntref.i, i32 1, i32 3, i32 1) #10
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i, ptr %fib_clntref.i, i32 1, ptr elementtype(i32) %fib_clntref.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i20, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %mlx5_lag_fib_route_event.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %fib_clntref.i, i32 noundef 3) #10
  br label %sw.epilog

if.then.i20:                                      ; preds = %mlx5_lag_fib_route_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !41
  call void @free_fib_info(ptr noundef %83) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge86
  %fib_nh5 = getelementptr inbounds %struct.mlx5_fib_event_work, ptr %work, i32 0, i32 3, i32 0, i32 1
  %85 = ptrtoint ptr %fib_nh5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fib_nh5, align 4
  %nh_parent = getelementptr inbounds %struct.fib_nh, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %nh_parent to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %nh_parent, align 4
  %mfi.i22 = getelementptr inbounds %struct.mlx5_lag, ptr %1, i32 0, i32 10, i32 1
  %89 = ptrtoint ptr %mfi.i22 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mfi.i22, align 4
  %tobool.not.i23 = icmp ne ptr %90, null
  %cmp.not.i = icmp eq ptr %90, %88
  %or.cond.i24 = and i1 %tobool.not.i23, %cmp.not.i
  br i1 %or.cond.i24, label %if.end.i, label %sw.bb4.mlx5_lag_fib_nexthop_event.exit_crit_edge

sw.bb4.mlx5_lag_fib_nexthop_event.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_nexthop_event.exit

if.end.i:                                         ; preds = %sw.bb4
  %91 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %if.end.i.mlx5_lag_fib_nexthop_event.exit_crit_edge [
    i32 7, label %if.then3.i
    i32 6, label %land.lhs.true.i
  ]

if.end.i.mlx5_lag_fib_nexthop_event.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_nexthop_event.exit

if.then3.i:                                       ; preds = %if.end.i
  %92 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %86, align 4
  %call.i = tail call i32 @mlx5_lag_dev_get_netdev_idx(ptr noundef %1, ptr noundef %93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp4.i = icmp sgt i32 %call.i, -1
  br i1 %cmp4.i, label %if.then5.i, label %if.then3.i.mlx5_lag_fib_nexthop_event.exit_crit_edge

if.then3.i.mlx5_lag_fib_nexthop_event.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_nexthop_event.exit

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw i32 %call.i, 1
  %rem.i = srem i32 %add.i, 2
  %add6.i = add nsw i32 %rem.i, 1
  tail call fastcc void @mlx5_lag_set_port_affinity(ptr noundef %1, i32 noundef %add6.i) #10
  br label %mlx5_lag_fib_nexthop_event.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %nh.i.i25 = getelementptr inbounds %struct.fib_info, ptr %88, i32 0, i32 18
  %94 = ptrtoint ptr %nh.i.i25 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nh.i.i25, align 4
  %tobool.not.i.i26 = icmp eq ptr %95, null
  br i1 %tobool.not.i.i26, label %if.end.i.i30, label %if.then.i.i28, !prof !37

if.then.i.i28:                                    ; preds = %land.lhs.true.i
  %is_group.i61 = getelementptr inbounds %struct.nexthop, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %is_group.i61 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_group.i61, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i62 = icmp eq i8 %97, 0
  br i1 %tobool.not.i62, label %if.then.i.i28.mlx5_lag_fib_nexthop_event.exit_crit_edge, label %if.then.i64

if.then.i.i28.mlx5_lag_fib_nexthop_event.exit_crit_edge: ; preds = %if.then.i.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_nexthop_event.exit

if.then.i64:                                      ; preds = %if.then.i.i28
  %98 = getelementptr inbounds %struct.nexthop, ptr %95, i32 0, i32 12
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %98, align 4
  %call.i63 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i63, label %if.then.i64.do.end10.i76_crit_edge, label %lor.lhs.false.i67

if.then.i64.do.end10.i76_crit_edge:               ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i76

lor.lhs.false.i67:                                ; preds = %if.then.i64
  %call2.i65 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i65)
  %tobool3.not.i66 = icmp eq i32 %call2.i65, 0
  br i1 %tobool3.not.i66, label %land.lhs.true.i70, label %lor.lhs.false.i67.do.end10.i76_crit_edge

lor.lhs.false.i67.do.end10.i76_crit_edge:         ; preds = %lor.lhs.false.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i76

land.lhs.true.i70:                                ; preds = %lor.lhs.false.i67
  %call4.i68 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i68)
  %tobool5.not.i69 = icmp eq i32 %call4.i68, 0
  br i1 %tobool5.not.i69, label %land.lhs.true.i70.do.end10.i76_crit_edge, label %land.lhs.true6.i72

land.lhs.true.i70.do.end10.i76_crit_edge:         ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i76

land.lhs.true6.i72:                               ; preds = %land.lhs.true.i70
  %.b18.i71 = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18.i71, label %land.lhs.true6.i72.do.end10.i76_crit_edge, label %if.then8.i73

land.lhs.true6.i72.do.end10.i76_crit_edge:        ; preds = %land.lhs.true6.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i76

if.then8.i73:                                     ; preds = %land.lhs.true6.i72
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 295, ptr noundef nonnull @.str.9) #10
  br label %do.end10.i76

do.end10.i76:                                     ; preds = %if.then8.i73, %land.lhs.true6.i72.do.end10.i76_crit_edge, %land.lhs.true.i70.do.end10.i76_crit_edge, %lor.lhs.false.i67.do.end10.i76_crit_edge, %if.then.i64.do.end10.i76_crit_edge
  %is_multipath.i74 = getelementptr inbounds %struct.nh_group, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %is_multipath.i74 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %is_multipath.i74, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool12.not.i75 = icmp eq i8 %102, 0
  br i1 %tobool12.not.i75, label %do.end10.i76.mlx5_lag_fib_nexthop_event.exit_crit_edge, label %if.then13.i79

do.end10.i76.mlx5_lag_fib_nexthop_event.exit_crit_edge: ; preds = %do.end10.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_nexthop_event.exit

if.then13.i79:                                    ; preds = %do.end10.i76
  call void @__sanitizer_cov_trace_pc() #12
  %num_nh.i77 = getelementptr inbounds %struct.nh_group, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %num_nh.i77 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %num_nh.i77, align 4
  %conv.i78 = zext i16 %104 to i32
  br label %fib_info_num_path.exit.i32

if.end.i.i30:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %fib_nhs.i.i29 = getelementptr inbounds %struct.fib_info, ptr %88, i32 0, i32 15
  %105 = ptrtoint ptr %fib_nhs.i.i29 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fib_nhs.i.i29, align 4
  br label %fib_info_num_path.exit.i32

fib_info_num_path.exit.i32:                       ; preds = %if.end.i.i30, %if.then13.i79
  %retval.0.i.i31 = phi i32 [ %106, %if.end.i.i30 ], [ %conv.i78, %if.then13.i79 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i31)
  %cmp10.i = icmp eq i32 %retval.0.i.i31, 2
  br i1 %cmp10.i, label %if.then11.i, label %fib_info_num_path.exit.i32.mlx5_lag_fib_nexthop_event.exit_crit_edge

fib_info_num_path.exit.i32.mlx5_lag_fib_nexthop_event.exit_crit_edge: ; preds = %fib_info_num_path.exit.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_fib_nexthop_event.exit

if.then11.i:                                      ; preds = %fib_info_num_path.exit.i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tracker.i.i21) #10
  %107 = call ptr @memset(ptr %tracker.i.i21, i32 255, i32 12)
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %1, align 4
  %110 = and i8 %109, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.i.not.i.i33 = icmp eq i8 %110, 0
  br i1 %tobool.i.not.i.i33, label %if.then11.i.mlx5_lag_set_port_affinity.exit.i46_crit_edge, label %if.end83.i.i45

if.then11.i.mlx5_lag_set_port_affinity.exit.i46_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_lag_set_port_affinity.exit.i46

if.end83.i.i45:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %netdev_state.i.i34 = getelementptr inbounds %struct.lag_tracker, ptr %tracker.i.i21, i32 0, i32 1
  %111 = ptrtoint ptr %netdev_state.i.i34 to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load.i.i35 = load i8, ptr %netdev_state.i.i34, align 4
  %arrayidx2.i.i36 = getelementptr inbounds %struct.lag_tracker, ptr %tracker.i.i21, i32 0, i32 1, i32 1
  %112 = ptrtoint ptr %arrayidx2.i.i36 to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load3.i.i37 = load i8, ptr %arrayidx2.i.i36, align 1
  %bf.set10.i.i38 = or i8 %bf.load.i.i35, -64
  store i8 %bf.set10.i.i38, ptr %netdev_state.i.i34, align 4
  %bf.set15.i.i39 = or i8 %bf.load3.i.i37, -64
  store i8 %bf.set15.i.i39, ptr %arrayidx2.i.i36, align 1
  %pf65.i.i = getelementptr inbounds %struct.mlx5_lag, ptr %1, i32 0, i32 5
  %113 = ptrtoint ptr %pf65.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pf65.i.i, align 4
  %events.i.i40 = getelementptr inbounds %struct.mlx5_core_dev, ptr %114, i32 0, i32 17, i32 25
  %115 = ptrtoint ptr %events.i.i40 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %events.i.i40, align 8
  %call68.i.i41 = tail call i32 @mlx5_notifier_call_chain(ptr noundef %116, i32 noundef 129, ptr noundef null) #10
  %arrayidx78.i.i42 = getelementptr %struct.mlx5_lag, ptr %1, i32 0, i32 5, i32 1
  %117 = ptrtoint ptr %arrayidx78.i.i42 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx78.i.i42, align 4
  %events81.i.i43 = getelementptr inbounds %struct.mlx5_core_dev, ptr %118, i32 0, i32 17, i32 25
  %119 = ptrtoint ptr %events81.i.i43 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %events81.i.i43, align 8
  %call82.i.i44 = tail call i32 @mlx5_notifier_call_chain(ptr noundef %120, i32 noundef 129, ptr noundef null) #10
  call void @mlx5_modify_lag(ptr noundef %1, ptr noundef nonnull %tracker.i.i21) #10
  br label %mlx5_lag_set_port_affinity.exit.i46

mlx5_lag_set_port_affinity.exit.i46:              ; preds = %if.end83.i.i45, %if.then11.i.mlx5_lag_set_port_affinity.exit.i46_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tracker.i.i21) #10
  br label %mlx5_lag_fib_nexthop_event.exit

mlx5_lag_fib_nexthop_event.exit:                  ; preds = %mlx5_lag_set_port_affinity.exit.i46, %fib_info_num_path.exit.i32.mlx5_lag_fib_nexthop_event.exit_crit_edge, %do.end10.i76.mlx5_lag_fib_nexthop_event.exit_crit_edge, %if.then.i.i28.mlx5_lag_fib_nexthop_event.exit_crit_edge, %if.then5.i, %if.then3.i.mlx5_lag_fib_nexthop_event.exit_crit_edge, %if.end.i.mlx5_lag_fib_nexthop_event.exit_crit_edge, %sw.bb4.mlx5_lag_fib_nexthop_event.exit_crit_edge
  %121 = ptrtoint ptr %fib_nh5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fib_nh5, align 4
  %nh_parent9 = getelementptr inbounds %struct.fib_nh, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %nh_parent9 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %nh_parent9, align 4
  %fib_clntref.i47 = getelementptr inbounds %struct.fib_info, ptr %124, i32 0, i32 5
  %call.i.i.i.i.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i47, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  call void @llvm.prefetch.p0(ptr %fib_clntref.i47, i32 1, i32 3, i32 1) #10
  %125 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i47, ptr %fib_clntref.i47, i32 1, ptr elementtype(i32) %fib_clntref.i47) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i49)
  %cmp.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i.i49, 1
  br i1 %cmp.i.i.i.i50, label %if.then.i54, label %if.end5.i.i.i.i52

if.end5.i.i.i.i52:                                ; preds = %mlx5_lag_fib_nexthop_event.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49)
  %.not.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i51, label %if.end5.i.i.i.i52.sw.epilog_crit_edge, label %if.then10.i.i.i.i53, !prof !37

if.end5.i.i.i.i52.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10.i.i.i.i53:                              ; preds = %if.end5.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %fib_clntref.i47, i32 noundef 3) #10
  br label %sw.epilog

if.then.i54:                                      ; preds = %mlx5_lag_fib_nexthop_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !41
  call void @free_fib_info(ptr noundef %124) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i54, %if.then10.i.i.i.i53, %if.end5.i.i.i.i52.sw.epilog_crit_edge, %if.then.i20, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @rtnl_unlock() #10
  call void @kfree(ptr noundef %work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_lag_dev_get_netdev_idx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_lag_set_port_affinity(ptr noundef %ldev, i32 noundef %port) unnamed_addr #3 align 64 {
entry:
  %tracker = alloca %struct.lag_tracker, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tracker) #10
  %0 = call ptr @memset(ptr %tracker, i32 255, i32 12)
  %1 = ptrtoint ptr %ldev to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ldev, align 4
  %3 = and i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %port, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %netdev_state = getelementptr inbounds %struct.lag_tracker, ptr %tracker, i32 0, i32 1
  %5 = ptrtoint ptr %netdev_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %netdev_state, align 4
  %arrayidx2 = getelementptr inbounds %struct.lag_tracker, ptr %tracker, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load3 = load i8, ptr %arrayidx2, align 1
  %bf.set10 = or i8 %bf.load, -64
  store i8 %bf.set10, ptr %netdev_state, align 4
  %bf.set15 = or i8 %bf.load3, -64
  store i8 %bf.set15, ptr %arrayidx2, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %netdev_state17 = getelementptr inbounds %struct.lag_tracker, ptr %tracker, i32 0, i32 1
  %7 = ptrtoint ptr %netdev_state17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load19 = load i8, ptr %netdev_state17, align 4
  %bf.set26 = or i8 %bf.load19, -64
  store i8 %bf.set26, ptr %netdev_state17, align 4
  %arrayidx28 = getelementptr inbounds %struct.lag_tracker, ptr %tracker, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load29 = load i8, ptr %arrayidx28, align 1
  %bf.clear35 = and i8 %bf.load29, 63
  store i8 %bf.clear35, ptr %arrayidx28, align 1
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %netdev_state38 = getelementptr inbounds %struct.lag_tracker, ptr %tracker, i32 0, i32 1
  %9 = ptrtoint ptr %netdev_state38 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load40 = load i8, ptr %netdev_state38, align 4
  %bf.clear46 = and i8 %bf.load40, 63
  store i8 %bf.clear46, ptr %netdev_state38, align 4
  %arrayidx49 = getelementptr inbounds %struct.lag_tracker, ptr %tracker, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load50 = load i8, ptr %arrayidx49, align 1
  %bf.set57 = or i8 %bf.load50, -64
  store i8 %bf.set57, ptr %arrayidx49, align 1
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pf = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 5
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pf, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !25) #10
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 79, i32 noundef %20, i32 noundef %port) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb16, %sw.bb
  %netdev_state60 = getelementptr inbounds %struct.lag_tracker, ptr %tracker, i32 0, i32 1
  %21 = ptrtoint ptr %netdev_state60 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load62 = load i8, ptr %netdev_state60, align 4
  %22 = and i8 %bf.load62, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %sw.epilog.if.end69_crit_edge, label %if.then64

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then64:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %pf65 = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 5
  %23 = ptrtoint ptr %pf65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pf65, align 4
  %events = getelementptr inbounds %struct.mlx5_core_dev, ptr %24, i32 0, i32 17, i32 25
  %25 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %events, align 8
  %call68 = tail call i32 @mlx5_notifier_call_chain(ptr noundef %26, i32 noundef 129, ptr noundef null) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %sw.epilog.if.end69_crit_edge
  %arrayidx71 = getelementptr inbounds %struct.lag_tracker, ptr %tracker, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load72 = load i8, ptr %arrayidx71, align 1
  %28 = and i8 %bf.load72, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool75.not = icmp eq i8 %28, 0
  br i1 %tobool75.not, label %if.end69.if.end83_crit_edge, label %if.then76

if.end69.if.end83_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx78 = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx78, align 4
  %events81 = getelementptr inbounds %struct.mlx5_core_dev, ptr %30, i32 0, i32 17, i32 25
  %31 = ptrtoint ptr %events81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %events81, align 8
  %call82 = tail call i32 @mlx5_notifier_call_chain(ptr noundef %32, i32 noundef 129, ptr noundef null) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then76, %if.end69.if.end83_crit_edge
  call void @mlx5_modify_lag(ptr noundef %ldev, ptr noundef nonnull %tracker) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tracker) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_activate_lag(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_lag(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fib_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c", i32 332, i32 11}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/net/nexthop.h", i32 468, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c", i32 241, i32 6}
!7 = !{ptr @mlx5_lag_init_fib_work.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c", i32 244, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c", i32 162, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_lag_fib_route_event._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5_lag_fib_route_event._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/nexthop.h", i32 295, i32 12}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lag/mp.c", i32 78, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_lag_set_port_affinity._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5_lag_set_port_affinity._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2148490756, i64 2148490788, i64 2148490817, i64 2148490851, i64 2148490882, i64 2148490905}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i8 0, i8 2}
!39 = !{i64 2148578781}
!40 = !{i64 2148493221, i64 2148493253, i64 2148493282, i64 2148493316, i64 2148493347, i64 2148493370}
!41 = !{i64 2149813001}
