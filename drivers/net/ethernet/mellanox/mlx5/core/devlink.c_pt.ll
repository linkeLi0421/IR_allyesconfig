; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/devlink.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/devlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_param = type { i32, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.devlink_trap_group = type { ptr, i16, i8, i32 }
%struct.devlink_trap = type { i32, i32, i8, i16, ptr, i16, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.174, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.148] }
%struct.anon.148 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.174 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_flow_steering = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.145, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.147, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.140, i32 }
%union.anon.140 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.144, ptr }
%struct.anon.144 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.atomic64_t = type { i64 }
%struct.anon.145 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.147 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5_hca_cap = type { [1024 x i32], [1024 x i32] }
%struct.mlx5_trap_ctx = type { i32, i32 }
%struct.mlx5_devlink_trap = type { %struct.mlx5_trap_ctx, ptr, %struct.list_head }
%union.devlink_param_value = type { i32, [28 x i8] }

@mlx5_devlink_trap_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Devlink trap: Report on invalid trap id 0x%x\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_devlink_trap_report\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/devlink.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_devlink_trap_report._entry_ptr = internal global ptr @mlx5_devlink_trap_report._entry, section ".printk_index", align 4
@mlx5_devlink_trap_report.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Devlink trap: Trap id %d has action %d\00", [41 x i8] zeroinitializer }, align 32
@mlx5_devlink_traps_get_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Devlink trap: Get action on invalid trap id 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_devlink_traps_get_action\00", [34 x i8] zeroinitializer }, align 32
@mlx5_devlink_traps_get_action._entry_ptr = internal global ptr @mlx5_devlink_traps_get_action._entry, section ".printk_index", align 4
@mlx5_devlink_ops = internal constant { %struct.devlink_ops, [52 x i8] } { %struct.devlink_ops { i32 0, i32 6, i32 2, ptr @mlx5_devlink_reload_down, ptr @mlx5_devlink_reload_up, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_devlink_eswitch_mode_get, ptr @mlx5_devlink_eswitch_mode_set, ptr @mlx5_devlink_eswitch_inline_mode_get, ptr @mlx5_devlink_eswitch_inline_mode_set, ptr @mlx5_devlink_eswitch_encap_mode_get, ptr @mlx5_devlink_eswitch_encap_mode_set, ptr @mlx5_devlink_info_get, ptr @mlx5_devlink_flash_update, ptr @mlx5_devlink_trap_init, ptr @mlx5_devlink_trap_fini, ptr @mlx5_devlink_trap_action_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_devlink_port_function_hw_addr_get, ptr @mlx5_devlink_port_function_hw_addr_set, ptr @mlx5_devlink_sf_port_new, ptr @mlx5_devlink_sf_port_del, ptr @mlx5_devlink_sf_port_fn_state_get, ptr @mlx5_devlink_sf_port_fn_state_set, ptr @mlx5_esw_devlink_rate_leaf_tx_share_set, ptr @mlx5_esw_devlink_rate_leaf_tx_max_set, ptr @mlx5_esw_devlink_rate_node_tx_share_set, ptr @mlx5_esw_devlink_rate_node_tx_max_set, ptr @mlx5_esw_devlink_rate_node_new, ptr @mlx5_esw_devlink_rate_node_del, ptr @mlx5_esw_devlink_rate_parent_set, ptr null }, [52 x i8] zeroinitializer }, align 32
@mlx5_devlink_params = internal constant { [7 x %struct.devlink_param], [32 x i8] } { [7 x %struct.devlink_param] [%struct.devlink_param { i32 17, ptr @.str.22, i8 0, i32 3, i32 1, ptr @mlx5_devlink_fs_mode_get, ptr @mlx5_devlink_fs_mode_set, ptr @mlx5_devlink_fs_mode_validate }, %struct.devlink_param { i32 9, ptr @.str.23, i8 1, i32 4, i32 2, ptr null, ptr null, ptr @mlx5_devlink_enable_roce_validate }, %struct.devlink_param { i32 18, ptr @.str.24, i8 0, i32 2, i32 2, ptr null, ptr null, ptr @mlx5_devlink_large_group_num_validate }, %struct.devlink_param { i32 19, ptr @.str.25, i8 0, i32 4, i32 1, ptr @mlx5_devlink_esw_port_metadata_get, ptr @mlx5_devlink_esw_port_metadata_set, ptr @mlx5_devlink_esw_port_metadata_validate }, %struct.devlink_param { i32 10, ptr @.str.26, i8 1, i32 4, i32 1, ptr @mlx5_devlink_enable_remote_dev_reset_get, ptr @mlx5_devlink_enable_remote_dev_reset_set, ptr null }, %struct.devlink_param { i32 15, ptr @.str.27, i8 1, i32 2, i32 2, ptr null, ptr null, ptr @mlx5_devlink_eq_depth_validate }, %struct.devlink_param { i32 16, ptr @.str.28, i8 1, i32 2, i32 2, ptr null, ptr null, ptr @mlx5_devlink_eq_depth_validate }], [32 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@mlx5_devlink_reload_down.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlx5_core: reload is unsupported when SFs are allocated\00", [40 x i8] zeroinitializer }, align 32
@mlx5_devlink_reload_down.__msg.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mlx5_core: reload is unsupported in Lag mode\00", [51 x i8] zeroinitializer }, align 32
@mlx5_devlink_reload_down.__msg.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlx5_core: reload while VFs are present is unfavorable\00", [41 x i8] zeroinitializer }, align 32
@mlx5_devlink_trigger_fw_live_patch.__msg = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"mlx5_core: FW upgrade to the stored FW can't be done by FW live patching\00", [55 x i8] zeroinitializer }, align 32
@mlx5_devlink_reload_fw_activate.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx5_core: FW activate requires reboot\00", [57 x i8] zeroinitializer }, align 32
@mlx5_devlink_reload_fw_activate.__msg.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlx5_core: FW activate command failed\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.psid\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%d.%d.%04d\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw.version\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fw\00", [29 x i8] zeroinitializer }, align 32
@mlx5_devlink_trap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): Devlink trap: Trap 0x%x already found\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_devlink_trap_init\00", [41 x i8] zeroinitializer }, align 32
@mlx5_devlink_trap_init._entry_ptr = internal global ptr @mlx5_devlink_trap_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_devlink_trap_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Devlink trap: Missing trap id 0x%x\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_devlink_trap_fini\00", [41 x i8] zeroinitializer }, align 32
@mlx5_devlink_trap_fini._entry_ptr = internal global ptr @mlx5_devlink_trap_fini._entry, section ".printk_index", align 4
@mlx5_devlink_trap_action_set.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlx5_core: Devlink traps can't be set in switchdev mode\00", [40 x i8] zeroinitializer }, align 32
@mlx5_devlink_trap_action_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Devlink trap: Set action on invalid trap id 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_devlink_trap_action_set\00", [35 x i8] zeroinitializer }, align 32
@mlx5_devlink_trap_action_set._entry_ptr = internal global ptr @mlx5_devlink_trap_action_set._entry, section ".printk_index", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flow_steering_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_roce\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fdb_large_groups\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esw_port_metadata\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enable_remote_dev_reset\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"io_eq_size\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"event_eq_size\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smfs\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmfs\00", [27 x i8] zeroinitializer }, align 32
@mlx5_devlink_fs_mode_validate.__msg = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"mlx5_core: Software managed steering is not supported by current device\00", [56 x i8] zeroinitializer }, align 32
@mlx5_devlink_fs_mode_validate.__msg.31 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"mlx5_core: Software managed steering is not supported when eswitch offloads enabled.\00", [43 x i8] zeroinitializer }, align 32
@mlx5_devlink_fs_mode_validate.__msg.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mlx5_core: Bad parameter: supported values are [\22dmfs\22, \22smfs\22]\00", [32 x i8] zeroinitializer }, align 32
@mlx5_devlink_enable_roce_validate.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx5_core: Device doesn't support RoCE\00", [57 x i8] zeroinitializer }, align 32
@mlx5_devlink_enable_roce_validate.__msg.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mlx5_core: Multi port slave/Lag device can't configure RoCE\00", [36 x i8] zeroinitializer }, align 32
@mlx5_devlink_large_group_num_validate.__msg = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlx5_core: Unsupported group number, supported range is 1-1024\00", [33 x i8] zeroinitializer }, align 32
@mlx5_devlink_esw_port_metadata_validate.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx5_core: E-Switch is unsupported\00", [61 x i8] zeroinitializer }, align 32
@mlx5_devlink_esw_port_metadata_validate.__msg.34 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlx5_core: E-Switch must either disabled or non switchdev mode\00", [33 x i8] zeroinitializer }, align 32
@enable_eth_param = internal constant { %struct.devlink_param, [32 x i8] } { %struct.devlink_param { i32 11, ptr @.str.35, i8 1, i32 4, i32 2, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable_eth\00", [21 x i8] zeroinitializer }, align 32
@enable_rdma_param = internal constant { %struct.devlink_param, [32 x i8] } { %struct.devlink_param { i32 12, ptr @.str.36, i8 1, i32 4, i32 2, ptr null, ptr null, ptr @mlx5_devlink_enable_rdma_validate }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_rdma\00", [20 x i8] zeroinitializer }, align 32
@enable_vnet_param = internal constant { %struct.devlink_param, [32 x i8] } { %struct.devlink_param { i32 13, ptr @.str.37, i8 1, i32 4, i32 2, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_vnet\00", [20 x i8] zeroinitializer }, align 32
@max_uc_list_param = internal constant { %struct.devlink_param, [32 x i8] } { %struct.devlink_param { i32 1, ptr @.str.38, i8 1, i32 2, i32 2, ptr null, ptr null, ptr @mlx5_devlink_max_uc_list_validate }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_macs\00", [23 x i8] zeroinitializer }, align 32
@mlx5_devlink_max_uc_list_validate.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlx5_core: max_macs value must be greater than 0\00", [47 x i8] zeroinitializer }, align 32
@mlx5_devlink_max_uc_list_validate.__msg.39 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mlx5_core: Only power of 2 values are supported for max_macs\00", [35 x i8] zeroinitializer }, align 32
@mlx5_devlink_max_uc_list_validate.__msg.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlx5_core: max_macs value is out of the supported range\00", [40 x i8] zeroinitializer }, align 32
@mlx5_trap_groups_arr = internal constant { [1 x %struct.devlink_trap_group], [20 x i8] } { [1 x %struct.devlink_trap_group] [%struct.devlink_trap_group { ptr @.str.41, i16 0, i8 1, i32 0 }], [20 x i8] zeroinitializer }, align 32
@mlx5_traps_arr = internal constant { [2 x %struct.devlink_trap], [48 x i8] } { [2 x %struct.devlink_trap] [%struct.devlink_trap { i32 0, i32 0, i8 1, i16 2, ptr @.str.42, i16 0, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 91, ptr @.str.43, i16 0, i32 1 }], [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l2_drops\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ingress_vlan_filter\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dmac_filter\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 335, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 340, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 366, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"mlx5_devlink_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 291, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"mlx5_devlink_params\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 556, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 148, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 153, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 158, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 125, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 98, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 110, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 53, i32 44 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 61, i32 45 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 64, i32 46 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 68, i32 13 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 228, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 244, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 262, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 268, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 557, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 562, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 565, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 570, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 577, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 580, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 582, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 444, i32 25 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 446, i32 25 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 405, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 410, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 415, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 459, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 463, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 478, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 517, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 522, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"enable_eth_param\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 634, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 635, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"enable_rdma_param\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 680, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 681, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"enable_vnet_param\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 711, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 712, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [18 x i8] c"max_uc_list_param\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 801, i32 35 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 802, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 783, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 788, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 794, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [21 x i8] c"mlx5_trap_groups_arr\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 846, i32 40 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"mlx5_traps_arr\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 841, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 847, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 842, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 843, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @mlx5_devlink_trap_action_set._entry, ptr @mlx5_devlink_trap_action_set._entry_ptr, ptr @mlx5_devlink_trap_fini._entry, ptr @mlx5_devlink_trap_fini._entry_ptr, ptr @mlx5_devlink_trap_init._entry, ptr @mlx5_devlink_trap_init._entry_ptr, ptr @mlx5_devlink_trap_report._entry, ptr @mlx5_devlink_trap_report._entry_ptr, ptr @mlx5_devlink_traps_get_action._entry, ptr @mlx5_devlink_traps_get_action._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mlx5_devlink_ops, ptr @mlx5_devlink_params, ptr @mlx5_devlink_reload_down.__msg, ptr @mlx5_devlink_reload_down.__msg.9, ptr @mlx5_devlink_reload_down.__msg.10, ptr @mlx5_devlink_trigger_fw_live_patch.__msg, ptr @mlx5_devlink_reload_fw_activate.__msg, ptr @mlx5_devlink_reload_fw_activate.__msg.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mlx5_devlink_trap_action_set.__msg, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @mlx5_devlink_fs_mode_validate.__msg, ptr @mlx5_devlink_fs_mode_validate.__msg.31, ptr @mlx5_devlink_fs_mode_validate.__msg.32, ptr @mlx5_devlink_enable_roce_validate.__msg, ptr @mlx5_devlink_enable_roce_validate.__msg.33, ptr @mlx5_devlink_large_group_num_validate.__msg, ptr @mlx5_devlink_esw_port_metadata_validate.__msg, ptr @mlx5_devlink_esw_port_metadata_validate.__msg.34, ptr @enable_eth_param, ptr @.str.35, ptr @enable_rdma_param, ptr @.str.36, ptr @enable_vnet_param, ptr @.str.37, ptr @max_uc_list_param, ptr @.str.38, ptr @mlx5_devlink_max_uc_list_validate.__msg, ptr @mlx5_devlink_max_uc_list_validate.__msg.39, ptr @mlx5_devlink_max_uc_list_validate.__msg.40, ptr @mlx5_trap_groups_arr, ptr @mlx5_traps_arr, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_trap_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_traps_get_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_params to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_reload_down.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_reload_down.__msg.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_reload_down.__msg.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_trigger_fw_live_patch.__msg to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_reload_fw_activate.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_reload_fw_activate.__msg.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_trap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_trap_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_trap_action_set.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_trap_action_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_fs_mode_validate.__msg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_fs_mode_validate.__msg.31 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_fs_mode_validate.__msg.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_enable_roce_validate.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_enable_roce_validate.__msg.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_large_group_num_validate.__msg to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_esw_port_metadata_validate.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_esw_port_metadata_validate.__msg.34 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_eth_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_rdma_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_vnet_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_uc_list_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_max_uc_list_validate.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_max_uc_list_validate.__msg.39 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devlink_max_uc_list_validate.__msg.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_trap_groups_arr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_traps_arr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_devlink_trap_report(ptr noundef %dev, i32 noundef %trap_id, ptr noundef %skb, ptr noundef %dl_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %dev) #12
  %traps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %traps.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %traps.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %dl_trap.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %dl_trap.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dl_trap.0.i, align 4
  %cmp3.i = icmp eq i32 %2, %trap_id
  br i1 %cmp3.i, label %mlx5_find_trap_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlx5_find_trap_by_id.exit:                        ; preds = %for.body.i
  %dl_trap.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %dl_trap.0.i.le, null
  br i1 %tobool.not, label %mlx5_find_trap_by_id.exit.do.end_crit_edge, label %if.end

mlx5_find_trap_by_id.exit.do.end_crit_edge:       ; preds = %mlx5_find_trap_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mlx5_find_trap_by_id.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef %10, i32 noundef %trap_id) #15
  br label %cleanup

if.end:                                           ; preds = %mlx5_find_trap_by_id.exit
  %action = getelementptr i8, ptr %.pn.i, i32 -8
  %11 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.not = icmp eq i32 %12, 1
  br i1 %cmp.not, label %if.end19, label %do.body4

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_devlink_trap_report.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_devlink_trap_report, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !134

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i30 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i30 to ptr
  %task12 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task12, align 8
  %pid13 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid13, align 8
  %21 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %action, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_devlink_trap_report.__UNIQUE_ID_ddebug677, ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 341, i32 noundef %20, i32 noundef %trap_id, i32 noundef %22) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %item = getelementptr i8, ptr %.pn.i, i32 -4
  %23 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %item, align 4
  tail call void @devlink_trap_report(ptr noundef %call, ptr noundef %skb, ptr noundef %24, ptr noundef %dl_port, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then9, %do.body4, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_trap_report(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_devlink_trap_get_num_active(ptr noundef readonly %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %traps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 11
  %0 = ptrtoint ptr %traps to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn13 = load ptr, ptr %traps, align 4
  %cmp.not14 = icmp eq ptr %.pn13, %traps
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn13, %entry.for.body_crit_edge ]
  %count.015 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %action = getelementptr i8, ptr %.pn16, i32 -8
  %1 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp3 = icmp eq i32 %2, 1
  %inc = zext i1 %cmp3 to i32
  %spec.select = add i32 %count.015, %inc
  %3 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %traps
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_devlink_traps_get_action(ptr noundef readonly %dev, i32 noundef %trap_id, ptr nocapture noundef writeonly %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %traps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %traps.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %traps.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %dl_trap.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %dl_trap.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dl_trap.0.i, align 4
  %cmp3.i = icmp eq i32 %2, %trap_id
  br i1 %cmp3.i, label %mlx5_find_trap_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlx5_find_trap_by_id.exit:                        ; preds = %for.body.i
  %dl_trap.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %dl_trap.0.i.le, null
  br i1 %tobool.not, label %mlx5_find_trap_by_id.exit.do.end_crit_edge, label %if.end

mlx5_find_trap_by_id.exit.do.end_crit_edge:       ; preds = %mlx5_find_trap_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mlx5_find_trap_by_id.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 367, i32 noundef %10, i32 noundef %trap_id) #15
  br label %cleanup

if.end:                                           ; preds = %mlx5_find_trap_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  %action2 = getelementptr i8, ptr %.pn.i, i32 -8
  %11 = ptrtoint ptr %action2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action2, align 4
  %13 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_devlink_alloc(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_alloc_ns(ptr noundef nonnull @mlx5_devlink_ops, i32 noundef 4688, ptr noundef nonnull @init_net, ptr noundef %dev) #12
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_devlink_free(ptr noundef %devlink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @devlink_free(ptr noundef %devlink) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_devlink_register(ptr noundef %devlink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1 = tail call i32 @devlink_params_register(ptr noundef %devlink, ptr noundef nonnull @mlx5_devlink_params, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %steering.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i, i32 0, i32 17, i32 26
  %0 = ptrtoint ptr %steering.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %steering.i, align 4
  %mode.i = getelementptr inbounds %struct.mlx5_flow_steering, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %value.sroa.0.sroa.0.0.insert.insert.i = select i1 %cmp.i, i32 1684891251, i32 1936549491
  %.fca.0.insert.i = insertvalue [8 x i32] poison, i32 %value.sroa.0.sroa.0.0.insert.insert.i, 0
  %.fca.1.insert.i = insertvalue [8 x i32] %.fca.0.insert.i, i32 16777215, 1
  %.fca.2.insert.i = insertvalue [8 x i32] %.fca.1.insert.i, i32 -1, 2
  %.fca.3.insert.i = insertvalue [8 x i32] %.fca.2.insert.i, i32 -1, 3
  %.fca.4.insert.i = insertvalue [8 x i32] %.fca.3.insert.i, i32 -1, 4
  %.fca.5.insert.i = insertvalue [8 x i32] %.fca.4.insert.i, i32 -1, 5
  %.fca.6.insert.i = insertvalue [8 x i32] %.fca.5.insert.i, i32 -1, 6
  %.fca.7.insert.i = insertvalue [8 x i32] %.fca.6.insert.i, i32 -1, 7
  %call4.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 17, [8 x i32] %.fca.7.insert.i) #12
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = shl i32 %7, 22
  %value.sroa.0.sroa.0.0.insert.shift617.i = and i32 %8, 16777216
  %value.sroa.0.sroa.0.0.insert.insert619.i = or i32 %value.sroa.0.sroa.0.0.insert.shift617.i, 7169651
  %.fca.0.insert31.i = insertvalue [8 x i32] poison, i32 %value.sroa.0.sroa.0.0.insert.insert619.i, 0
  %.fca.1.insert34.i = insertvalue [8 x i32] %.fca.0.insert31.i, i32 16777215, 1
  %.fca.2.insert37.i = insertvalue [8 x i32] %.fca.1.insert34.i, i32 -1, 2
  %.fca.3.insert40.i = insertvalue [8 x i32] %.fca.2.insert37.i, i32 -1, 3
  %.fca.4.insert43.i = insertvalue [8 x i32] %.fca.3.insert40.i, i32 -1, 4
  %.fca.5.insert46.i = insertvalue [8 x i32] %.fca.4.insert43.i, i32 -1, 5
  %.fca.6.insert49.i = insertvalue [8 x i32] %.fca.5.insert46.i, i32 -1, 6
  %.fca.7.insert52.i = insertvalue [8 x i32] %.fca.6.insert49.i, i32 -1, 7
  %call6.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 9, [8 x i32] %.fca.7.insert52.i) #12
  %call7.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 18, [8 x i32] [i32 15, i32 16777215, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]) #12
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps.i, align 8
  %add.ptr13.i = getelementptr i32, ptr %10, i32 13
  %11 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr13.i, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not.i = icmp eq i32 %13, 0
  br i1 %tobool16.not.i, label %if.end.mlx5_devlink_set_params_init_values.exit_crit_edge, label %if.then17.i

if.end.mlx5_devlink_set_params_init_values.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_set_params_init_values.exit

if.then17.i:                                      ; preds = %if.end
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i, i32 0, i32 17, i32 28
  %14 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eswitch.i, align 4
  %call19.i = tail call zeroext i1 @mlx5_esw_vport_match_metadata_supported(ptr noundef %15) #12
  br i1 %call19.i, label %if.then20.i, label %if.then17.i.if.end24.i_crit_edge

if.then17.i.if.end24.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eswitch.i, align 4
  %flags.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %19, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.then17.i.if.end24.i_crit_edge
  %storemerge.i = phi i32 [ 16777231, %if.then20.i ], [ 15, %if.then17.i.if.end24.i_crit_edge ]
  %.fca.0.insert79.i = insertvalue [8 x i32] poison, i32 %storemerge.i, 0
  %.fca.1.insert82.i = insertvalue [8 x i32] %.fca.0.insert79.i, i32 16777215, 1
  %.fca.2.insert85.i = insertvalue [8 x i32] %.fca.1.insert82.i, i32 -1, 2
  %.fca.3.insert88.i = insertvalue [8 x i32] %.fca.2.insert85.i, i32 -1, 3
  %.fca.4.insert91.i = insertvalue [8 x i32] %.fca.3.insert88.i, i32 -1, 4
  %.fca.5.insert94.i = insertvalue [8 x i32] %.fca.4.insert91.i, i32 -1, 5
  %.fca.6.insert97.i = insertvalue [8 x i32] %.fca.5.insert94.i, i32 -1, 6
  %.fca.7.insert100.i = insertvalue [8 x i32] %.fca.6.insert97.i, i32 -1, 7
  %call25.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 19, [8 x i32] %.fca.7.insert100.i) #12
  br label %mlx5_devlink_set_params_init_values.exit

mlx5_devlink_set_params_init_values.exit:         ; preds = %if.end24.i, %if.end.mlx5_devlink_set_params_init_values.exit_crit_edge
  %call27.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 15, [8 x i32] [i32 1024, i32 16777215, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]) #12
  %call28.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 16, [8 x i32] [i32 4096, i32 16777215, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]) #12
  %call.i.i = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1.i.i = tail call zeroext i1 @mlx5_eth_supported(ptr noundef %call.i.i) #12
  br i1 %call1.i.i, label %if.end.i.i, label %mlx5_devlink_set_params_init_values.exit.if.end.i_crit_edge

mlx5_devlink_set_params_init_values.exit.if.end.i_crit_edge: ; preds = %mlx5_devlink_set_params_init_values.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.i:                                       ; preds = %mlx5_devlink_set_params_init_values.exit
  %call2.i.i = tail call i32 @devlink_param_register(ptr noundef %devlink, ptr noundef nonnull @enable_eth_param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.end.i.i.auxdev_reg_err_crit_edge

if.end.i.i.auxdev_reg_err_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %auxdev_reg_err

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 11, [8 x i32] [i32 33554431, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end4.i.i, %mlx5_devlink_set_params_init_values.exit.if.end.i_crit_edge
  %call.i17.i = tail call i32 @devlink_param_register(ptr noundef %devlink, ptr noundef nonnull @enable_rdma_param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call.i17.i, 0
  br i1 %tobool.not.i18.i, label %if.end4.i, label %if.end.i.rdma_err.i_crit_edge

if.end.i.rdma_err.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rdma_err.i

if.end4.i:                                        ; preds = %if.end.i
  %call1.i19.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 12, [8 x i32] [i32 33554431, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]) #12
  %call.i21.i = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1.i22.i = tail call zeroext i1 @mlx5_vnet_supported(ptr noundef %call.i21.i) #12
  br i1 %call1.i22.i, label %if.end.i25.i, label %if.end4.i.if.end5_crit_edge

if.end4.i.if.end5_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i25.i:                                     ; preds = %if.end4.i
  %call2.i23.i = tail call i32 @devlink_param_register(ptr noundef %devlink, ptr noundef nonnull @enable_vnet_param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call2.i23.i, 0
  br i1 %tobool.not.i24.i, label %if.end4.i27.i, label %vnet_err.i

if.end4.i27.i:                                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i26.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 13, [8 x i32] [i32 33554431, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]) #12
  br label %if.end5

vnet_err.i:                                       ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_param_unregister(ptr noundef %devlink, ptr noundef nonnull @enable_rdma_param) #12
  br label %rdma_err.i

rdma_err.i:                                       ; preds = %vnet_err.i, %if.end.i.rdma_err.i_crit_edge
  %err.0.i = phi i32 [ %call2.i23.i, %vnet_err.i ], [ %call.i17.i, %if.end.i.rdma_err.i_crit_edge ]
  %call.i29.i = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1.i30.i = tail call zeroext i1 @mlx5_eth_supported(ptr noundef %call.i29.i) #12
  br i1 %call1.i30.i, label %if.end.i31.i, label %rdma_err.i.auxdev_reg_err_crit_edge

rdma_err.i.auxdev_reg_err_crit_edge:              ; preds = %rdma_err.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %auxdev_reg_err

if.end.i31.i:                                     ; preds = %rdma_err.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_param_unregister(ptr noundef %devlink, ptr noundef nonnull @enable_eth_param) #12
  br label %auxdev_reg_err

if.end5:                                          ; preds = %if.end4.i27.i, %if.end4.i.if.end5_crit_edge
  %call.i33 = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %caps.i34 = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i33, i32 0, i32 8
  %20 = ptrtoint ptr %caps.i34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps.i34, align 8
  %add.ptr.i35 = getelementptr %struct.mlx5_hca_cap, ptr %21, i32 0, i32 1, i32 29
  %22 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i35, align 4
  %24 = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end5.if.end9_crit_edge, label %if.end.i36

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.i36:                                       ; preds = %if.end5
  %call1.i = tail call i32 @devlink_param_register(ptr noundef %devlink, ptr noundef nonnull @max_uc_list_param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i45, label %if.end.i36.max_uc_list_err_crit_edge

if.end.i36.max_uc_list_err_crit_edge:             ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %max_uc_list_err

if.end4.i45:                                      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %caps.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %caps.i34, align 8
  %add.ptr9.i = getelementptr i32, ptr %26, i32 31
  %27 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr9.i, align 4
  %and11.i = and i32 %28, 31
  %shl.i = shl nuw i32 1, %and11.i
  %.fca.0.insert.i37 = insertvalue [8 x i32] poison, i32 %shl.i, 0
  %.fca.1.insert.i38 = insertvalue [8 x i32] %.fca.0.insert.i37, i32 -1, 1
  %.fca.2.insert.i39 = insertvalue [8 x i32] %.fca.1.insert.i38, i32 -1, 2
  %.fca.3.insert.i40 = insertvalue [8 x i32] %.fca.2.insert.i39, i32 -1, 3
  %.fca.4.insert.i41 = insertvalue [8 x i32] %.fca.3.insert.i40, i32 -1, 4
  %.fca.5.insert.i42 = insertvalue [8 x i32] %.fca.4.insert.i41, i32 -1, 5
  %.fca.6.insert.i43 = insertvalue [8 x i32] %.fca.5.insert.i42, i32 -1, 6
  %.fca.7.insert.i44 = insertvalue [8 x i32] %.fca.6.insert.i43, i32 -1, 7
  %call12.i = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %devlink, i32 noundef 1, [8 x i32] %.fca.7.insert.i44) #12
  br label %if.end9

if.end9:                                          ; preds = %if.end4.i45, %if.end5.if.end9_crit_edge
  %call.i47 = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1.i48 = tail call i32 @devlink_trap_groups_register(ptr noundef %devlink, ptr noundef nonnull @mlx5_trap_groups_arr, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %if.end.i50, label %if.end9.traps_reg_err_crit_edge

if.end9.traps_reg_err_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %traps_reg_err

if.end.i50:                                       ; preds = %if.end9
  %priv.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i47, i32 0, i32 17
  %call2.i = tail call i32 @devlink_traps_register(ptr noundef %devlink, ptr noundef nonnull @mlx5_traps_arr, i32 noundef 2, ptr noundef %priv.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end13, label %err_trap_group.i

err_trap_group.i:                                 ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_trap_groups_unregister(ptr noundef %devlink, ptr noundef nonnull @mlx5_trap_groups_arr, i32 noundef 1) #12
  br label %traps_reg_err

if.end13:                                         ; preds = %if.end.i50
  %caps.i52 = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %caps.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %caps.i52, align 8
  %add.ptr.i53 = getelementptr i32, ptr %30, i32 48
  %31 = ptrtoint ptr %add.ptr.i53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %32)
  %tobool.not.i54 = icmp ult i32 %32, 16777216
  %33 = and i32 %32, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i55 = icmp ne i32 %33, 0
  %tobool15.not = or i1 %tobool.not.i54, %cmp.i55
  br i1 %tobool15.not, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_set_features(ptr noundef %devlink, i64 noundef 1) #12
  br label %cleanup

traps_reg_err:                                    ; preds = %err_trap_group.i, %if.end9.traps_reg_err_crit_edge
  %retval.0.i51.ph = phi i32 [ %call1.i48, %if.end9.traps_reg_err_crit_edge ], [ %call2.i, %err_trap_group.i ]
  %call.i56 = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %caps.i57 = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i56, i32 0, i32 8
  %34 = ptrtoint ptr %caps.i57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %caps.i57, align 8
  %add.ptr.i58 = getelementptr %struct.mlx5_hca_cap, ptr %35, i32 0, i32 1, i32 29
  %36 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i58, align 4
  %38 = and i32 %37, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i59 = icmp eq i32 %38, 0
  br i1 %tobool.not.i59, label %traps_reg_err.max_uc_list_err_crit_edge, label %if.end.i60

traps_reg_err.max_uc_list_err_crit_edge:          ; preds = %traps_reg_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %max_uc_list_err

if.end.i60:                                       ; preds = %traps_reg_err
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_param_unregister(ptr noundef %devlink, ptr noundef nonnull @max_uc_list_param) #12
  br label %max_uc_list_err

max_uc_list_err:                                  ; preds = %if.end.i60, %traps_reg_err.max_uc_list_err_crit_edge, %if.end.i36.max_uc_list_err_crit_edge
  %err.0 = phi i32 [ %call1.i, %if.end.i36.max_uc_list_err_crit_edge ], [ %retval.0.i51.ph, %traps_reg_err.max_uc_list_err_crit_edge ], [ %retval.0.i51.ph, %if.end.i60 ]
  tail call fastcc void @mlx5_devlink_auxdev_params_unregister(ptr noundef %devlink)
  br label %auxdev_reg_err

auxdev_reg_err:                                   ; preds = %max_uc_list_err, %if.end.i31.i, %rdma_err.i.auxdev_reg_err_crit_edge, %if.end.i.i.auxdev_reg_err_crit_edge
  %err.1 = phi i32 [ %err.0, %max_uc_list_err ], [ %err.0.i, %if.end.i31.i ], [ %err.0.i, %rdma_err.i.auxdev_reg_err_crit_edge ], [ %call2.i.i, %if.end.i.i.auxdev_reg_err_crit_edge ]
  tail call void @devlink_params_unregister(ptr noundef %devlink, ptr noundef nonnull @mlx5_devlink_params, i32 noundef 7) #12
  br label %cleanup

cleanup:                                          ; preds = %auxdev_reg_err, %if.then16, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %auxdev_reg_err ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_set_features(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_devlink_auxdev_params_unregister(ptr noundef %devlink) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1.i = tail call zeroext i1 @mlx5_vnet_supported(ptr noundef %call.i) #12
  br i1 %call1.i, label %if.end.i, label %entry.mlx5_devlink_vnet_param_unregister.exit_crit_edge

entry.mlx5_devlink_vnet_param_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_vnet_param_unregister.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_param_unregister(ptr noundef %devlink, ptr noundef nonnull @enable_vnet_param) #12
  br label %mlx5_devlink_vnet_param_unregister.exit

mlx5_devlink_vnet_param_unregister.exit:          ; preds = %if.end.i, %entry.mlx5_devlink_vnet_param_unregister.exit_crit_edge
  tail call void @devlink_param_unregister(ptr noundef %devlink, ptr noundef nonnull @enable_rdma_param) #12
  %call.i3 = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1.i4 = tail call zeroext i1 @mlx5_eth_supported(ptr noundef %call.i3) #12
  br i1 %call1.i4, label %if.end.i5, label %mlx5_devlink_vnet_param_unregister.exit.mlx5_devlink_eth_param_unregister.exit_crit_edge

mlx5_devlink_vnet_param_unregister.exit.mlx5_devlink_eth_param_unregister.exit_crit_edge: ; preds = %mlx5_devlink_vnet_param_unregister.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_eth_param_unregister.exit

if.end.i5:                                        ; preds = %mlx5_devlink_vnet_param_unregister.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_param_unregister(ptr noundef %devlink, ptr noundef nonnull @enable_eth_param) #12
  br label %mlx5_devlink_eth_param_unregister.exit

mlx5_devlink_eth_param_unregister.exit:           ; preds = %if.end.i5, %mlx5_devlink_vnet_param_unregister.exit.mlx5_devlink_eth_param_unregister.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_devlink_unregister(ptr noundef %devlink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @devlink_traps_unregister(ptr noundef %devlink, ptr noundef nonnull @mlx5_traps_arr, i32 noundef 2) #12
  tail call void @devlink_trap_groups_unregister(ptr noundef %devlink, ptr noundef nonnull @mlx5_trap_groups_arr, i32 noundef 1) #12
  %call.i = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr %struct.mlx5_hca_cap, ptr %1, i32 0, i32 1, i32 29
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.mlx5_devlink_max_uc_list_param_unregister.exit_crit_edge, label %if.end.i

entry.mlx5_devlink_max_uc_list_param_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_max_uc_list_param_unregister.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_param_unregister(ptr noundef %devlink, ptr noundef nonnull @max_uc_list_param) #12
  br label %mlx5_devlink_max_uc_list_param_unregister.exit

mlx5_devlink_max_uc_list_param_unregister.exit:   ; preds = %if.end.i, %entry.mlx5_devlink_max_uc_list_param_unregister.exit_crit_edge
  tail call fastcc void @mlx5_devlink_auxdev_params_unregister(ptr noundef %devlink)
  tail call void @devlink_params_unregister(ptr noundef %devlink, ptr noundef nonnull @mlx5_devlink_params, i32 noundef 7) #12
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_reload_down(ptr noundef %devlink, i1 noundef zeroext %netns_change, i32 noundef %action, i32 noundef %limit, ptr noundef writeonly %extack) #0 align 64 {
entry:
  %reset_level.i70 = alloca i8, align 1
  %reset_type.i = alloca i8, align 1
  %reset_level.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %pdev1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %call2 = tail call zeroext i1 @mlx5_sf_dev_allocated(ptr noundef %call) #12
  br i1 %call2, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_reload_down.__msg) #12
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlx5_devlink_reload_down.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call zeroext i1 @mlx5_lag_is_active(ptr noundef %call) #12
  br i1 %call7, label %do.body9, label %if.end17

do.body9:                                         ; preds = %if.end6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_reload_down.__msg.9) #12
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body9.cleanup_crit_edge, label %if.then12

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlx5_devlink_reload_down.__msg.9, ptr %extack, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %call18 = tail call i32 @pci_num_vf(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.if.end29_crit_edge, label %do.body21

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.body21:                                        ; preds = %if.end17
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_reload_down.__msg.10) #12
  %tobool23.not = icmp eq ptr %extack, null
  br i1 %tobool23.not, label %do.body21.if.end29_crit_edge, label %if.then24

do.body21.if.end29_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlx5_devlink_reload_down.__msg.10, ptr %extack, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %do.body21.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %5 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %do.end42 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5_unload_one(ptr noundef %call) #12
  br label %cleanup

sw.bb30:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp = icmp eq i32 %limit, 1
  %call.i = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  br i1 %cmp, label %if.then31, label %if.end33

if.then31:                                        ; preds = %sw.bb30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_level.i) #12
  %6 = ptrtoint ptr %reset_level.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %reset_level.i, align 1, !annotation !135
  %call1.i = call i32 @mlx5_fw_reset_query(ptr noundef %call.i, ptr noundef nonnull %reset_level.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then31.mlx5_devlink_trigger_fw_live_patch.exit_crit_edge

if.then31.mlx5_devlink_trigger_fw_live_patch.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_trigger_fw_live_patch.exit

if.end.i:                                         ; preds = %if.then31
  %7 = ptrtoint ptr %reset_level.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reset_level.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_trigger_fw_live_patch.__msg) #12
  %tobool4.not.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i, label %do.body.i.mlx5_devlink_trigger_fw_live_patch.exit_crit_edge, label %if.then5.i

do.body.i.mlx5_devlink_trigger_fw_live_patch.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_trigger_fw_live_patch.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mlx5_devlink_trigger_fw_live_patch.__msg, ptr %extack, align 4
  br label %mlx5_devlink_trigger_fw_live_patch.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = call i32 @mlx5_fw_reset_set_live_patch(ptr noundef %call.i) #12
  br label %mlx5_devlink_trigger_fw_live_patch.exit

mlx5_devlink_trigger_fw_live_patch.exit:          ; preds = %if.end7.i, %if.then5.i, %do.body.i.mlx5_devlink_trigger_fw_live_patch.exit_crit_edge, %if.then31.mlx5_devlink_trigger_fw_live_patch.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end7.i ], [ %call1.i, %if.then31.mlx5_devlink_trigger_fw_live_patch.exit_crit_edge ], [ -22, %if.then5.i ], [ -22, %do.body.i.mlx5_devlink_trigger_fw_live_patch.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_level.i) #12
  br label %cleanup

if.end33:                                         ; preds = %sw.bb30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_level.i70) #12
  %11 = ptrtoint ptr %reset_level.i70 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %reset_level.i70, align 1, !annotation !135
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_type.i) #12
  %12 = ptrtoint ptr %reset_type.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %reset_type.i, align 1, !annotation !135
  %call1.i72 = call i32 @mlx5_fw_reset_query(ptr noundef %call.i, ptr noundef nonnull %reset_level.i70, ptr noundef nonnull %reset_type.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool.not.i73, label %if.end.i75, label %if.end33.mlx5_devlink_reload_fw_activate.exit_crit_edge

if.end33.mlx5_devlink_reload_fw_activate.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_reload_fw_activate.exit

if.end.i75:                                       ; preds = %if.end33
  %13 = ptrtoint ptr %reset_level.i70 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reset_level.i70, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i74 = icmp eq i8 %15, 0
  br i1 %tobool2.not.i74, label %do.body.i77, label %if.end7.i78

do.body.i77:                                      ; preds = %if.end.i75
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_reload_fw_activate.__msg) #12
  %tobool4.not.i76 = icmp eq ptr %extack, null
  br i1 %tobool4.not.i76, label %do.body.i77.mlx5_devlink_reload_fw_activate.exit_crit_edge, label %do.body.i77.cleanup.sink.split.i_crit_edge

do.body.i77.cleanup.sink.split.i_crit_edge:       ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body.i77.mlx5_devlink_reload_fw_activate.exit_crit_edge: ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_reload_fw_activate.exit

if.end7.i78:                                      ; preds = %if.end.i75
  %16 = ptrtoint ptr %reset_type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reset_type.i, align 1
  %18 = lshr i8 %17, 1
  %.lobit.i = and i8 %18, 1
  %call13.i = call i32 @mlx5_fw_reset_set_reset_sync(ptr noundef %call.i, i8 noundef zeroext %.lobit.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %out.i, label %if.end7.i78.do.body20.i_crit_edge

if.end7.i78.do.body20.i_crit_edge:                ; preds = %if.end7.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20.i

out.i:                                            ; preds = %if.end7.i78
  %call17.i = call i32 @mlx5_fw_reset_wait_reset_done(ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %out.i.mlx5_devlink_reload_fw_activate.exit_crit_edge, label %out.i.do.body20.i_crit_edge

out.i.do.body20.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20.i

out.i.mlx5_devlink_reload_fw_activate.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_reload_fw_activate.exit

do.body20.i:                                      ; preds = %out.i.do.body20.i_crit_edge, %if.end7.i78.do.body20.i_crit_edge
  %err.044.i = phi i32 [ %call17.i, %out.i.do.body20.i_crit_edge ], [ %call13.i, %if.end7.i78.do.body20.i_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_reload_fw_activate.__msg.11) #12
  %tobool22.not.i = icmp eq ptr %extack, null
  br i1 %tobool22.not.i, label %do.body20.i.mlx5_devlink_reload_fw_activate.exit_crit_edge, label %do.body20.i.cleanup.sink.split.i_crit_edge

do.body20.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body20.i.mlx5_devlink_reload_fw_activate.exit_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_devlink_reload_fw_activate.exit

cleanup.sink.split.i:                             ; preds = %do.body20.i.cleanup.sink.split.i_crit_edge, %do.body.i77.cleanup.sink.split.i_crit_edge
  %mlx5_devlink_reload_fw_activate.__msg.11.sink.i = phi ptr [ @mlx5_devlink_reload_fw_activate.__msg, %do.body.i77.cleanup.sink.split.i_crit_edge ], [ @mlx5_devlink_reload_fw_activate.__msg.11, %do.body20.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %do.body.i77.cleanup.sink.split.i_crit_edge ], [ %err.044.i, %do.body20.i.cleanup.sink.split.i_crit_edge ]
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mlx5_devlink_reload_fw_activate.__msg.11.sink.i, ptr %extack, align 4
  br label %mlx5_devlink_reload_fw_activate.exit

mlx5_devlink_reload_fw_activate.exit:             ; preds = %cleanup.sink.split.i, %do.body20.i.mlx5_devlink_reload_fw_activate.exit_crit_edge, %out.i.mlx5_devlink_reload_fw_activate.exit_crit_edge, %do.body.i77.mlx5_devlink_reload_fw_activate.exit_crit_edge, %if.end33.mlx5_devlink_reload_fw_activate.exit_crit_edge
  %retval.0.i79 = phi i32 [ %call1.i72, %if.end33.mlx5_devlink_reload_fw_activate.exit_crit_edge ], [ -22, %do.body.i77.mlx5_devlink_reload_fw_activate.exit_crit_edge ], [ %err.044.i, %do.body20.i.mlx5_devlink_reload_fw_activate.exit_crit_edge ], [ 0, %out.i.mlx5_devlink_reload_fw_activate.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_type.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_level.i70) #12
  br label %cleanup

do.end42:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 171, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %mlx5_devlink_reload_fw_activate.exit, %mlx5_devlink_trigger_fw_live_patch.exit, %sw.bb, %if.then12, %do.body9.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end42 ], [ %retval.0.i, %mlx5_devlink_trigger_fw_live_patch.exit ], [ %retval.0.i79, %mlx5_devlink_reload_fw_activate.exit ], [ 0, %sw.bb ], [ -95, %if.then5 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then12 ], [ -95, %do.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_reload_up(ptr noundef %devlink, i32 noundef %action, i32 noundef %limit, ptr nocapture noundef writeonly %actions_performed, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %shl = shl nuw i32 1, %action
  %0 = ptrtoint ptr %actions_performed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shl, ptr %actions_performed, align 4
  %1 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %action, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @mlx5_load_one(ptr noundef %call) #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp = icmp eq i32 %limit, 1
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %shl, 2
  %2 = ptrtoint ptr %actions_performed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %actions_performed, align 4
  %call3 = tail call i32 @mlx5_load_one(ptr noundef %call) #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 194, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end, %sw.bb2.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ -95, %do.end ], [ %call3, %if.end ], [ %call1, %sw.bb ], [ 0, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_eswitch_mode_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_eswitch_mode_set(ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_eswitch_inline_mode_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_eswitch_inline_mode_set(ptr noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_eswitch_encap_mode_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_eswitch_encap_mode_set(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_info_get(ptr noundef %devlink, ptr noundef %req, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %version_str = alloca [32 x i8], align 1
  %running_fw = alloca i32, align 4
  %stored_fw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %version_str) #12
  %0 = call ptr @memset(ptr %version_str, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %running_fw) #12
  %1 = ptrtoint ptr %running_fw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %running_fw, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stored_fw) #12
  %2 = ptrtoint ptr %stored_fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %stored_fw, align 4, !annotation !135
  %call1 = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %board_id = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 6
  %call2 = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.12, ptr noundef %board_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @mlx5_fw_version_query(ptr noundef %call, ptr noundef nonnull %running_fw, ptr noundef nonnull %stored_fw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %3 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %running_fw, align 4
  %shr.i = lshr i32 %4, 24
  %shr.i66 = lshr i32 %4, 16
  %conv13 = and i32 %shr.i66, 255
  %conv15 = and i32 %4, 65535
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %version_str, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %shr.i, i32 noundef %conv13, i32 noundef %conv15)
  %call18 = call i32 @devlink_info_version_running_put(ptr noundef %req, ptr noundef nonnull @.str.14, ptr noundef nonnull %version_str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %call23 = call i32 @devlink_info_version_running_put(ptr noundef %req, ptr noundef nonnull @.str.15, ptr noundef nonnull %version_str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %5 = ptrtoint ptr %stored_fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stored_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then28, label %if.end26.if.end29_crit_edge

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %running_fw, align 4
  %9 = ptrtoint ptr %stored_fw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %stored_fw, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %10 = ptrtoint ptr %stored_fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stored_fw, align 4
  %shr.i69 = lshr i32 %11, 24
  %shr.i71 = lshr i32 %11, 16
  %conv34 = and i32 %shr.i71, 255
  %conv36 = and i32 %11, 65535
  %call37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %version_str, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %shr.i69, i32 noundef %conv34, i32 noundef %conv36)
  %call39 = call i32 @devlink_info_version_stored_put(ptr noundef %req, ptr noundef nonnull @.str.14, ptr noundef nonnull %version_str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = call i32 @devlink_info_version_stored_put(ptr noundef %req, ptr noundef nonnull @.str.15, ptr noundef nonnull %version_str) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end29.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %if.end42 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call18, %if.end9.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ], [ %call39, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stored_fw) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %running_fw) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %version_str) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_flash_update(ptr noundef %devlink, ptr nocapture noundef readonly %params, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %call1 = tail call i32 @mlx5_firmware_flash(ptr noundef %call, ptr noundef %1, ptr noundef %extack) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_trap_init(ptr noundef %devlink, ptr nocapture noundef readonly %trap, ptr noundef %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 3
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id, align 2
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %call7.i.i, align 8
  %action = getelementptr inbounds %struct.mlx5_trap_ctx, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %action, align 4
  %item = getelementptr inbounds %struct.mlx5_devlink_trap, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %trap_ctx, ptr %item, align 8
  %traps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %traps.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %traps.i
  br i1 %cmp.not.i, label %for.cond.i.if.end13_crit_edge, label %for.body.i

for.cond.i.if.end13_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.body.i:                                       ; preds = %for.cond.i
  %dl_trap.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %7 = ptrtoint ptr %dl_trap.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dl_trap.0.i, align 4
  %cmp3.i = icmp eq i32 %8, %conv
  br i1 %cmp3.i, label %mlx5_find_trap_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlx5_find_trap_by_id.exit:                        ; preds = %for.body.i
  %dl_trap.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool8.not = icmp eq ptr %dl_trap.0.i.le, null
  br i1 %tobool8.not, label %mlx5_find_trap_by_id.exit.if.end13_crit_edge, label %if.then9

mlx5_find_trap_by_id.exit.if.end13_crit_edge:     ; preds = %mlx5_find_trap_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then9:                                         ; preds = %mlx5_find_trap_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id, align 2
  %conv12 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 228, i32 noundef %16, i32 noundef %conv12) #15
  br label %cleanup

if.end13:                                         ; preds = %mlx5_find_trap_by_id.exit.if.end13_crit_edge, %for.cond.i.if.end13_crit_edge
  %list = getelementptr inbounds %struct.mlx5_devlink_trap, ptr %call7.i.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 11, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %20, ptr noundef %traps.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev.i, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %traps.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5_devlink_trap, ptr %call7.i.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end13.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_devlink_trap_fini(ptr noundef %devlink, ptr nocapture noundef readonly %trap, ptr nocapture noundef readnone %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %id = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %conv = zext i16 %1 to i32
  %traps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %traps.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %traps.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %dl_trap.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %3 = ptrtoint ptr %dl_trap.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dl_trap.0.i, align 4
  %cmp3.i = icmp eq i32 %4, %conv
  br i1 %cmp3.i, label %mlx5_find_trap_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlx5_find_trap_by_id.exit:                        ; preds = %for.body.i
  %dl_trap.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %dl_trap.0.i.le, null
  br i1 %tobool.not, label %mlx5_find_trap_by_id.exit.do.end_crit_edge, label %if.end

mlx5_find_trap_by_id.exit.do.end_crit_edge:       ; preds = %mlx5_find_trap_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mlx5_find_trap_by_id.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 244, i32 noundef %12, i32 noundef %conv) #15
  br label %cleanup

if.end:                                           ; preds = %mlx5_find_trap_by_id.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %dl_trap.0.i.le) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_trap_action_set(ptr noundef %devlink, ptr nocapture noundef readonly %trap, i32 noundef %action, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 2
  br i1 %cmp.i, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_trap_action_set.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlx5_devlink_trap_action_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 3
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id, align 2
  %conv = zext i16 %2 to i32
  %traps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end3
  %.pn.in.i = phi ptr [ %traps.i, %if.end3 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %traps.i
  br i1 %cmp.not.i, label %for.cond.i.do.end9_crit_edge, label %for.body.i

for.cond.i.do.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

for.body.i:                                       ; preds = %for.cond.i
  %dl_trap.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %4 = ptrtoint ptr %dl_trap.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dl_trap.0.i, align 4
  %cmp3.i = icmp eq i32 %5, %conv
  br i1 %cmp3.i, label %mlx5_find_trap_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlx5_find_trap_by_id.exit:                        ; preds = %for.body.i
  %dl_trap.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool5.not = icmp eq ptr %dl_trap.0.i.le, null
  br i1 %tobool5.not, label %mlx5_find_trap_by_id.exit.do.end9_crit_edge, label %if.end13

mlx5_find_trap_by_id.exit.do.end9_crit_edge:      ; preds = %mlx5_find_trap_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end9:                                          ; preds = %mlx5_find_trap_by_id.exit.do.end9_crit_edge, %for.cond.i.do.end9_crit_edge
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 268, i32 noundef %13, i32 noundef %conv) #15
  br label %cleanup

if.end13:                                         ; preds = %mlx5_find_trap_by_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %switch = icmp ult i32 %action, 2
  br i1 %switch, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %action20 = getelementptr i8, ptr %.pn.i, i32 -8
  %14 = ptrtoint ptr %action20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %action20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %action)
  %cmp21 = icmp eq i32 %15, %action
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %if.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %16 = ptrtoint ptr %action20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %action, ptr %action20, align 4
  %call30 = tail call i32 @mlx5_blocking_notifier_call_chain(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %dl_trap.0.i.le) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end24.cleanup_crit_edge, label %if.then32

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %action20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %action20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end9, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %call30, %if.then32 ], [ 0, %if.end24.cleanup_crit_edge ], [ -22, %do.end9 ], [ -95, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_port_function_hw_addr_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_port_function_hw_addr_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_sf_port_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_sf_port_del(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_sf_port_fn_state_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_sf_port_fn_state_set(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_devlink_rate_leaf_tx_share_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_devlink_rate_leaf_tx_max_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_devlink_rate_node_tx_share_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_devlink_rate_node_tx_max_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_devlink_rate_node_new(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_devlink_rate_node_del(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_devlink_rate_parent_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_sf_dev_allocated(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_unload_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_reset_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_reset_set_live_patch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_reset_set_reset_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_reset_wait_reset_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_load_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_fixed_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_version_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_running_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_stored_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_firmware_flash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_eswitch_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_fs_mode_get(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %steering = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 26
  %0 = ptrtoint ptr %steering to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %steering, align 4
  %mode = getelementptr inbounds %struct.mlx5_flow_steering, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %ctx, ptr @.str.29, i32 5)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call ptr @memcpy(ptr %ctx, ptr @.str.30, i32 5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_fs_mode_set(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1 = tail call i32 @strcmp(ptr noundef %ctx, ptr noundef nonnull dereferenceable(5) @.str.29) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = zext i1 %tobool.not to i32
  %steering = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 26
  %0 = ptrtoint ptr %steering to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %steering, align 4
  %mode2 = getelementptr inbounds %struct.mlx5_flow_steering, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %mode2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_fs_mode_validate(ptr noundef %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  %val = alloca %union.devlink_param_value, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val.coerce.fca.0.extract, ptr %val, align 4
  %val.coerce.fca.1.extract = extractvalue [8 x i32] %val.coerce, 1
  %val.coerce.fca.1.gep = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 1
  %1 = ptrtoint ptr %val.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %val.coerce.fca.1.extract, ptr %val.coerce.fca.1.gep, align 4
  %val.coerce.fca.2.extract = extractvalue [8 x i32] %val.coerce, 2
  %val.coerce.fca.2.gep = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 2
  %2 = ptrtoint ptr %val.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val.coerce.fca.2.extract, ptr %val.coerce.fca.2.gep, align 4
  %val.coerce.fca.3.extract = extractvalue [8 x i32] %val.coerce, 3
  %val.coerce.fca.3.gep = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 3
  %3 = ptrtoint ptr %val.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %val.coerce.fca.3.extract, ptr %val.coerce.fca.3.gep, align 4
  %val.coerce.fca.4.extract = extractvalue [8 x i32] %val.coerce, 4
  %val.coerce.fca.4.gep = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 4
  %4 = ptrtoint ptr %val.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %val.coerce.fca.4.extract, ptr %val.coerce.fca.4.gep, align 4
  %val.coerce.fca.5.extract = extractvalue [8 x i32] %val.coerce, 5
  %val.coerce.fca.5.gep = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 5
  %5 = ptrtoint ptr %val.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val.coerce.fca.5.extract, ptr %val.coerce.fca.5.gep, align 4
  %val.coerce.fca.6.extract = extractvalue [8 x i32] %val.coerce, 6
  %val.coerce.fca.6.gep = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 6
  %6 = ptrtoint ptr %val.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val.coerce.fca.6.extract, ptr %val.coerce.fca.6.gep, align 4
  %val.coerce.fca.7.extract = extractvalue [8 x i32] %val.coerce, 7
  %val.coerce.fca.7.gep = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 7
  %7 = ptrtoint ptr %val.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val.coerce.fca.7.extract, ptr %val.coerce.fca.7.gep, align 4
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %val, ptr noundef nonnull dereferenceable(5) @.str.30, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %bcmp44 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %val, ptr noundef nonnull dereferenceable(5) @.str.29, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp44)
  %tobool3.not = icmp eq i32 %bcmp44, 0
  br i1 %tobool3.not, label %if.then4, label %do.body25

if.then4:                                         ; preds = %if.else
  %call5 = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %call) #12
  %call6 = tail call zeroext i1 @mlx5_fs_dr_is_supported(ptr noundef %call) #12
  br i1 %call6, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.then4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_fs_mode_validate.__msg) #12
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.then8.cleanup.sink.split_crit_edge

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else11:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call5)
  %cmp = icmp eq i8 %call5, 2
  br i1 %cmp, label %do.body14, label %if.else11.cleanup_crit_edge

if.else11.cleanup_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body14:                                        ; preds = %if.else11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_fs_mode_validate.__msg.31) #12
  %tobool16.not = icmp eq ptr %extack, null
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.body14.cleanup.sink.split_crit_edge

do.body14.cleanup.sink.split_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body25:                                        ; preds = %if.else
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_fs_mode_validate.__msg.32) #12
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.cleanup_crit_edge, label %do.body25.cleanup.sink.split_crit_edge

do.body25.cleanup.sink.split_crit_edge:           ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body25.cleanup.sink.split_crit_edge, %do.body14.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge
  %mlx5_devlink_fs_mode_validate.__msg.31.sink = phi ptr [ @mlx5_devlink_fs_mode_validate.__msg, %if.then8.cleanup.sink.split_crit_edge ], [ @mlx5_devlink_fs_mode_validate.__msg.31, %do.body14.cleanup.sink.split_crit_edge ], [ @mlx5_devlink_fs_mode_validate.__msg.32, %do.body25.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -95, %if.then8.cleanup.sink.split_crit_edge ], [ -95, %do.body14.cleanup.sink.split_crit_edge ], [ -22, %do.body25.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mlx5_devlink_fs_mode_validate.__msg.31.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body25.cleanup_crit_edge, %do.body14.cleanup_crit_edge, %if.else11.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else11.cleanup_crit_edge ], [ -95, %if.then8.cleanup_crit_edge ], [ -95, %do.body14.cleanup_crit_edge ], [ -22, %do.body25.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_enable_roce_validate(ptr noundef %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %0 = and i32 %val.coerce.fca.0.extract, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %2, i32 16
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true3:                                   ; preds = %land.lhs.true
  %add.ptr9 = getelementptr i32, ptr %2, i32 29
  %6 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr9, align 4
  %8 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %do.body, label %land.lhs.true3.if.end15_crit_edge

land.lhs.true3.if.end15_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_enable_roce_validate.__msg) #12
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true3.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %10, i32 48
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %12)
  %tobool.not.i = icmp ult i32 %12, 16777216
  %13 = and i32 %12, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp ne i32 %13, 0
  %tobool17.not = or i1 %tobool.not.i, %cmp.i
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end15.do.body20_crit_edge

if.end15.do.body20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

lor.lhs.false:                                    ; preds = %if.end15
  %call18 = tail call zeroext i1 @mlx5_lag_is_active(ptr noundef %call) #12
  br i1 %call18, label %lor.lhs.false.do.body20_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.do.body20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

do.body20:                                        ; preds = %lor.lhs.false.do.body20_crit_edge, %if.end15.do.body20_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_enable_roce_validate.__msg.33) #12
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.cleanup_crit_edge, label %do.body20.cleanup.sink.split_crit_edge

do.body20.cleanup.sink.split_crit_edge:           ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body20.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %mlx5_devlink_enable_roce_validate.__msg.33.sink = phi ptr [ @mlx5_devlink_enable_roce_validate.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @mlx5_devlink_enable_roce_validate.__msg.33, %do.body20.cleanup.sink.split_crit_edge ]
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mlx5_devlink_enable_roce_validate.__msg.33.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.body.cleanup_crit_edge ], [ -95, %do.body20.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -95, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_large_group_num_validate(ptr nocapture noundef readnone %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  %0 = add i32 %val.coerce.fca.0.extract, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %0)
  %1 = icmp ult i32 %0, -1024
  br i1 %1, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_large_group_num_validate.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlx5_devlink_large_group_num_validate.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_esw_port_metadata_get(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 28
  %5 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eswitch, align 4
  %call1 = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef %6) #12
  %frombool = zext i1 %call1 to i8
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_esw_port_metadata_set(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 28
  %5 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eswitch, align 4
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctx, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1 = icmp ne i8 %8, 0
  %call2 = tail call i32 @mlx5_esw_offloads_vport_metadata_set(ptr noundef %6, i1 noundef zeroext %tobool1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_esw_port_metadata_validate(ptr noundef %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_esw_port_metadata_validate.__msg) #12
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call4 = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call4)
  %cmp = icmp eq i8 %call4, 2
  br i1 %cmp, label %do.body7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body7:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_esw_port_metadata_validate.__msg.34) #12
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %do.body7.cleanup.sink.split_crit_edge

do.body7.cleanup.sink.split_crit_edge:            ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body7.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %mlx5_devlink_esw_port_metadata_validate.__msg.34.sink = phi ptr [ @mlx5_devlink_esw_port_metadata_validate.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @mlx5_devlink_esw_port_metadata_validate.__msg.34, %do.body7.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -95, %do.body.cleanup.sink.split_crit_edge ], [ -16, %do.body7.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mlx5_devlink_esw_port_metadata_validate.__msg.34.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.body.cleanup_crit_edge ], [ -16, %do.body7.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_enable_remote_dev_reset_get(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %call1 = tail call zeroext i1 @mlx5_fw_reset_enable_remote_dev_reset_get(ptr noundef %call) #12
  %frombool = zext i1 %call1 to i8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %ctx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_enable_remote_dev_reset_set(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctx, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  tail call void @mlx5_fw_reset_enable_remote_dev_reset_set(ptr noundef %call, i1 noundef zeroext %tobool) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_devlink_eq_depth_validate(ptr nocapture noundef readnone %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  %0 = add i32 %val.coerce.fca.0.extract, -4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 264306688, i32 %0)
  %1 = icmp ult i32 %0, 264306688
  %2 = select i1 %1, i32 0, i32 -22
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_fs_dr_is_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_offloads_vport_metadata_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_fw_reset_enable_remote_dev_reset_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fw_reset_enable_remote_dev_reset_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_param_driverinit_value_set(ptr noundef, i32 noundef, [8 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_esw_vport_match_metadata_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eth_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_param_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_enable_rdma_validate(ptr noundef %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %0 = and i32 %val.coerce.fca.0.extract, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @mlx5_rdma_supported(ptr noundef %call) #12
  br i1 %call2, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_rdma_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_vnet_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_param_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_devlink_max_uc_list_validate(ptr noundef %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.coerce.fca.0.extract)
  %cmp = icmp eq i32 %val.coerce.fca.0.extract, 0
  br i1 %cmp, label %do.body, label %if.end2

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_max_uc_list_validate.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %entry
  %0 = tail call i32 @llvm.ctpop.i32(i32 %val.coerce.fca.0.extract) #12, !range !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp1.i = icmp ult i32 %0, 2
  br i1 %cmp1.i, label %cond.end18, label %do.body5

do.body5:                                         ; preds = %if.end2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_max_uc_list_validate.__msg.39) #12
  %tobool7.not = icmp eq ptr %extack, null
  br i1 %tobool7.not, label %do.body5.cleanup_crit_edge, label %do.body5.cleanup.sink.split_crit_edge

do.body5.cleanup.sink.split_crit_edge:            ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end18:                                       ; preds = %if.end2
  %1 = tail call i32 @llvm.ctlz.i32(i32 %val.coerce.fca.0.extract, i1 true) #12, !range !137
  %cond19 = xor i32 %1, 31
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr %struct.mlx5_hca_cap, ptr %3, i32 0, i32 1, i32 31
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %cond19, i32 %and)
  %cmp20 = icmp ugt i32 %cond19, %and
  br i1 %cmp20, label %do.body23, label %cond.end18.cleanup_crit_edge

cond.end18.cleanup_crit_edge:                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body23:                                        ; preds = %cond.end18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_devlink_max_uc_list_validate.__msg.40) #12
  %tobool25.not = icmp eq ptr %extack, null
  br i1 %tobool25.not, label %do.body23.cleanup_crit_edge, label %do.body23.cleanup.sink.split_crit_edge

do.body23.cleanup.sink.split_crit_edge:           ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body23.cleanup.sink.split_crit_edge, %do.body5.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %mlx5_devlink_max_uc_list_validate.__msg.40.sink = phi ptr [ @mlx5_devlink_max_uc_list_validate.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @mlx5_devlink_max_uc_list_validate.__msg.39, %do.body5.cleanup.sink.split_crit_edge ], [ @mlx5_devlink_max_uc_list_validate.__msg.40, %do.body23.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mlx5_devlink_max_uc_list_validate.__msg.40.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body23.cleanup_crit_edge, %cond.end18.cleanup_crit_edge, %do.body5.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body5.cleanup_crit_edge ], [ -22, %do.body23.cleanup_crit_edge ], [ 0, %cond.end18.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_trap_groups_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_traps_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_trap_groups_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_traps_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.named.register.sp = !{!124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 335, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_devlink_trap_report._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_devlink_trap_report._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 340, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5_devlink_trap_report.__UNIQUE_ID_ddebug677, !9, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 366, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_devlink_traps_get_action._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5_devlink_traps_get_action._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @mlx5_devlink_ops, !18, !"mlx5_devlink_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 291, i32 33}
!19 = !{ptr @mlx5_devlink_reload_down.__msg, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 148, i32 3}
!21 = !{ptr @mlx5_devlink_reload_down.__msg.9, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 153, i32 3}
!23 = !{ptr @mlx5_devlink_reload_down.__msg.10, !24, !"__msg", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 158, i32 3}
!25 = !{ptr @mlx5_devlink_trigger_fw_live_patch.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 125, i32 3}
!27 = !{ptr @mlx5_devlink_reload_fw_activate.__msg, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 98, i32 3}
!29 = !{ptr @mlx5_devlink_reload_fw_activate.__msg.11, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 110, i32 3}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 53, i32 44}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 61, i32 45}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 64, i32 46}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 68, i32 13}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 228, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mlx5_devlink_trap_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlx5_devlink_trap_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 244, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mlx5_devlink_trap_fini._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlx5_devlink_trap_fini._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mlx5_devlink_trap_action_set.__msg, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 262, i32 3}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 268, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mlx5_devlink_trap_action_set._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mlx5_devlink_trap_action_set._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 557, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 562, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 565, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 570, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 577, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 580, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 582, i32 2}
!70 = !{ptr @mlx5_devlink_params, !71, !"mlx5_devlink_params", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 556, i32 35}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 444, i32 25}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 446, i32 25}
!76 = !{ptr @mlx5_devlink_fs_mode_validate.__msg, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 405, i32 4}
!78 = !{ptr @mlx5_devlink_fs_mode_validate.__msg.31, !79, !"__msg", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 410, i32 4}
!80 = !{ptr @mlx5_devlink_fs_mode_validate.__msg.32, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 415, i32 3}
!82 = !{ptr @mlx5_devlink_enable_roce_validate.__msg, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 459, i32 3}
!84 = !{ptr @mlx5_devlink_enable_roce_validate.__msg.33, !85, !"__msg", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 463, i32 3}
!86 = !{ptr @mlx5_devlink_large_group_num_validate.__msg, !87, !"__msg", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 478, i32 3}
!88 = !{ptr @mlx5_devlink_esw_port_metadata_validate.__msg, !89, !"__msg", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 517, i32 3}
!90 = !{ptr @mlx5_devlink_esw_port_metadata_validate.__msg.34, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 522, i32 3}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 635, i32 2}
!94 = !{ptr @enable_eth_param, !95, !"enable_eth_param", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 634, i32 35}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 681, i32 2}
!98 = !{ptr @enable_rdma_param, !99, !"enable_rdma_param", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 680, i32 35}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 712, i32 2}
!102 = !{ptr @enable_vnet_param, !103, !"enable_vnet_param", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 711, i32 35}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 802, i32 2}
!106 = !{ptr @max_uc_list_param, !107, !"max_uc_list_param", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 801, i32 35}
!108 = !{ptr @mlx5_devlink_max_uc_list_validate.__msg, !109, !"__msg", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 783, i32 3}
!110 = !{ptr @mlx5_devlink_max_uc_list_validate.__msg.39, !111, !"__msg", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 788, i32 3}
!112 = !{ptr @mlx5_devlink_max_uc_list_validate.__msg.40, !113, !"__msg", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 794, i32 3}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 847, i32 2}
!116 = !{ptr @mlx5_trap_groups_arr, !117, !"mlx5_trap_groups_arr", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 846, i32 40}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 842, i32 2}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 843, i32 2}
!122 = !{ptr @mlx5_traps_arr, !123, !"mlx5_traps_arr", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/devlink.c", i32 841, i32 34}
!124 = !{!"sp"}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148363416, i64 2148363421, i64 2148363434, i64 2148363478, i64 2148363512, i64 2148363533}
!135 = !{!"auto-init"}
!136 = !{i8 0, i8 2}
!137 = !{i32 0, i32 33}
