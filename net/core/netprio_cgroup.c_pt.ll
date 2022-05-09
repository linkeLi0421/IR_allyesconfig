; ModuleID = '/llk/IR_all_yes/net/core/netprio_cgroup.c_pt.bc'
source_filename = "../net/core/netprio_cgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.88, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.88 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.netprio_map = type { %struct.callback_head, i32, [0 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.109 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.150 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@ss_files = internal global { [3 x %struct.cftype], [120 x i8] } { [3 x %struct.cftype] [%struct.cftype { [64 x i8] c"prioidx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @read_prioidx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"ifpriomap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @read_priomap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @write_priomap, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [120 x i8] zeroinitializer }, align 32
@net_prio_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @cgrp_css_alloc, ptr @cgrp_css_online, ptr null, ptr null, ptr @cgrp_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @net_prio_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @ss_files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_netprio_cgroup__500_295_init_cgroup_netprio4 = internal global ptr @init_cgroup_netprio, section ".initcall4.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_net = external dso_local global %struct.net, align 128
@netprio_prio.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/core/netprio_cgroup.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@netprio_set_prio.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@netprio_set_prio.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@extend_netdev_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@read_priomap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %u\0A\00", [25 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%16s %u\00", [24 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@netprio_device_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @netprio_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@netprio_device_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"ss_files\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 243, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"net_prio_cgrp_subsys\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 256, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 95, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 120, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 188, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 189, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 203, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"netprio_device_notifier\00", align 1
@___asan_gen_.44 = private constant [29 x i8] c"../net/core/netprio_cgroup.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 286, i32 30 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_netprio_cgroup__500_295_init_cgroup_netprio4, ptr @ss_files, ptr @net_prio_cgrp_subsys, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @netprio_device_notifier], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_files to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_prio_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netprio_device_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cgrp_css_alloc(ptr nocapture noundef readnone %parent_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -12 to ptr), ptr %call7.i.i
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgrp_css_online(ptr nocapture noundef readonly %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %id = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp sgt i32 %3, 65535
  br i1 %cmp, label %entry.cleanup12_crit_edge, label %if.end

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup12_crit_edge, label %if.end2

if.end.cleanup12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.end2:                                          ; preds = %if.end
  tail call void @rtnl_lock() #10
  %id10.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %1, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %netprio_prio.exit.for.cond_crit_edge, %if.end2
  %.pn.in = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), %if.end2 ], [ %.pn, %netprio_prio.exit.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp3.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp3.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dev.0 = getelementptr i8, ptr %.pn, i32 -40
  %priomap.i = getelementptr i8, ptr %.pn, i32 2116
  %5 = ptrtoint ptr %priomap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %priomap.i, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %for.body.do.end8.i_crit_edge, label %lor.lhs.false.i

for.body.do.end8.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %for.body
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b21.i = load i1, ptr @netprio_prio.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @netprio_prio.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @.str.1) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %for.body.do.end8.i_crit_edge
  %7 = ptrtoint ptr %id10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id10.i, align 8
  %tobool11.not.i = icmp eq ptr %6, null
  br i1 %tobool11.not.i, label %do.end8.i.netprio_prio.exit_crit_edge, label %land.lhs.true12.i

do.end8.i.netprio_prio.exit_crit_edge:            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netprio_prio.exit

land.lhs.true12.i:                                ; preds = %do.end8.i
  %priomap_len.i = getelementptr inbounds %struct.netprio_map, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %priomap_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priomap_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i = icmp ult i32 %8, %10
  br i1 %cmp.i, label %if.then13.i, label %land.lhs.true12.i.netprio_prio.exit_crit_edge

land.lhs.true12.i.netprio_prio.exit_crit_edge:    ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netprio_prio.exit

if.then13.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.netprio_map, ptr %6, i32 0, i32 2, i32 %8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  br label %netprio_prio.exit

netprio_prio.exit:                                ; preds = %if.then13.i, %land.lhs.true12.i.netprio_prio.exit_crit_edge, %do.end8.i.netprio_prio.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then13.i ], [ 0, %land.lhs.true12.i.netprio_prio.exit_crit_edge ], [ 0, %do.end8.i.netprio_prio.exit_crit_edge ]
  %call4 = tail call fastcc i32 @netprio_set_prio(ptr noundef %css, ptr noundef %dev.0, i32 noundef %retval.0.i)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %netprio_prio.exit.for.cond_crit_edge, label %netprio_prio.exit.for.end_crit_edge

netprio_prio.exit.for.end_crit_edge:              ; preds = %netprio_prio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

netprio_prio.exit.for.cond_crit_edge:             ; preds = %netprio_prio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %netprio_prio.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.1 = phi i32 [ %call4, %netprio_prio.exit.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @rtnl_unlock() #10
  br label %cleanup12

cleanup12:                                        ; preds = %for.end, %if.end.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ -28, %entry.cleanup12_crit_edge ], [ 0, %if.end.cleanup12_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgrp_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %css) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_prio_attach(ptr noundef %tset) #0 align 64 {
entry:
  %css = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %css) #10
  %0 = ptrtoint ptr %css to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %css, align 4, !annotation !45
  %call = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %css) #10
  %tobool.not8 = icmp eq ptr %call, null
  br i1 %tobool.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.09 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %css, align 4
  %id = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %5 = inttoptr i32 %4 to ptr
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %p.09, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #10
  %files = getelementptr inbounds %struct.task_struct, ptr %p.09, i32 0, i32 108
  %6 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %files, align 4
  %call1 = call i32 @iterate_fd(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @update_netprio, ptr noundef %5) #10
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  %call2 = call ptr @cgroup_taskset_next(ptr noundef %tset, ptr noundef nonnull %css) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %css) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_cgroup_netprio() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @netprio_device_notifier) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netprio_set_prio(ptr nocapture noundef readonly %css, ptr noundef %dev, i32 noundef %prio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 6
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 8
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @netprio_set_prio.__warned, align 1
  br i1 %.b40, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @netprio_set_prio.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 120, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %priomap = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 144
  %2 = ptrtoint ptr %priomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priomap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prio)
  %tobool5.not = icmp eq i32 %prio, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true6:                                   ; preds = %do.end
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %land.lhs.true6.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %priomap_len = getelementptr inbounds %struct.netprio_map, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %priomap_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priomap_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp.not = icmp ugt i32 %5, %1
  br i1 %cmp.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %lor.lhs.false.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %if.end9.do.end.i_crit_edge, label %land.lhs.true.i

if.end9.do.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b125.i = load i1, ptr @extend_netdev_table.__warned, align 1
  br i1 %.b125.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @extend_netdev_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 47, ptr noundef nonnull @.str.2) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end9.do.end.i_crit_edge
  %6 = ptrtoint ptr %priomap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priomap, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %do.end.i.if.end7.i_crit_edge, label %land.lhs.true5.i

do.end.i.if.end7.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

land.lhs.true5.i:                                 ; preds = %do.end.i
  %priomap_len.i = getelementptr inbounds %struct.netprio_map, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %priomap_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priomap_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp.i = icmp ugt i32 %9, %1
  br i1 %cmp.i, label %land.lhs.true5.i.do.body14_crit_edge, label %land.lhs.true5.i.if.end7.i_crit_edge

land.lhs.true5.i.if.end7.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

land.lhs.true5.i.do.body14_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

if.end7.i:                                        ; preds = %land.lhs.true5.i.if.end7.i_crit_edge, %do.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %1)
  %cmp8.i = icmp ult i32 %1, 29
  br i1 %cmp8.i, label %if.end7.i.if.end8.i.i.i_crit_edge, label %if.end10.i

if.end7.i.if.end8.i.i.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %1)
  %cmp8.1.i = icmp ult i32 %1, 61
  br i1 %cmp8.1.i, label %if.end10.i.if.end8.i.i.i_crit_edge, label %if.end10.1.i

if.end10.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.1.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %1)
  %cmp8.2.i = icmp ult i32 %1, 125
  br i1 %cmp8.2.i, label %if.end10.1.i.if.end8.i.i.i_crit_edge, label %if.end10.2.i

if.end10.1.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.2.i:                                     ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %1)
  %cmp8.3.i = icmp ult i32 %1, 253
  br i1 %cmp8.3.i, label %if.end10.2.i.if.end8.i.i.i_crit_edge, label %if.end10.3.i

if.end10.2.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.3.i:                                     ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %1)
  %cmp8.4.i = icmp ult i32 %1, 509
  br i1 %cmp8.4.i, label %if.end10.3.i.if.end8.i.i.i_crit_edge, label %if.end10.4.i

if.end10.3.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.4.i:                                     ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1021, i32 %1)
  %cmp8.5.i = icmp ult i32 %1, 1021
  br i1 %cmp8.5.i, label %if.end10.4.i.if.end8.i.i.i_crit_edge, label %if.end10.5.i

if.end10.4.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.5.i:                                     ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045, i32 %1)
  %cmp8.6.i = icmp ult i32 %1, 2045
  br i1 %cmp8.6.i, label %if.end10.5.i.if.end8.i.i.i_crit_edge, label %if.end10.6.i

if.end10.5.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.6.i:                                     ; preds = %if.end10.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %1)
  %cmp8.7.i = icmp ult i32 %1, 4093
  br i1 %cmp8.7.i, label %if.end10.6.i.if.end8.i.i.i_crit_edge, label %if.end10.7.i

if.end10.6.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.7.i:                                     ; preds = %if.end10.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8189, i32 %1)
  %cmp8.8.i = icmp ult i32 %1, 8189
  br i1 %cmp8.8.i, label %if.end10.7.i.if.end8.i.i.i_crit_edge, label %if.end10.8.i

if.end10.7.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.8.i:                                     ; preds = %if.end10.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16381, i32 %1)
  %cmp8.9.i = icmp ult i32 %1, 16381
  br i1 %cmp8.9.i, label %if.end10.8.i.if.end8.i.i.i_crit_edge, label %if.end10.9.i

if.end10.8.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.9.i:                                     ; preds = %if.end10.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32765, i32 %1)
  %cmp8.10.i = icmp ult i32 %1, 32765
  br i1 %cmp8.10.i, label %if.end10.9.i.if.end8.i.i.i_crit_edge, label %if.end10.10.i

if.end10.9.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end10.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.10.i:                                    ; preds = %if.end10.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65533, i32 %1)
  %cmp8.11.i = icmp ult i32 %1, 65533
  br i1 %cmp8.11.i, label %if.end10.10.i.if.end8.i.i.i_crit_edge, label %if.end10.11.i

if.end10.10.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.11.i:                                    ; preds = %if.end10.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131069, i32 %1)
  %cmp8.12.i = icmp ult i32 %1, 131069
  br i1 %cmp8.12.i, label %if.end10.11.i.if.end8.i.i.i_crit_edge, label %if.end10.12.i

if.end10.11.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.12.i:                                    ; preds = %if.end10.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 262141, i32 %1)
  %cmp8.13.i = icmp ult i32 %1, 262141
  br i1 %cmp8.13.i, label %if.end10.12.i.if.end8.i.i.i_crit_edge, label %if.end10.13.i

if.end10.12.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.13.i:                                    ; preds = %if.end10.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 524285, i32 %1)
  %cmp8.14.i = icmp ult i32 %1, 524285
  br i1 %cmp8.14.i, label %if.end10.13.i.if.end8.i.i.i_crit_edge, label %if.end10.14.i

if.end10.13.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.14.i:                                    ; preds = %if.end10.13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048573, i32 %1)
  %cmp8.15.i = icmp ult i32 %1, 1048573
  br i1 %cmp8.15.i, label %if.end10.14.i.if.end8.i.i.i_crit_edge, label %if.end10.15.i

if.end10.14.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.15.i:                                    ; preds = %if.end10.14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097149, i32 %1)
  %cmp8.16.i = icmp ult i32 %1, 2097149
  br i1 %cmp8.16.i, label %if.end10.15.i.if.end8.i.i.i_crit_edge, label %if.end10.16.i

if.end10.15.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.16.i:                                    ; preds = %if.end10.15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194301, i32 %1)
  %cmp8.17.i = icmp ult i32 %1, 4194301
  br i1 %cmp8.17.i, label %if.end10.16.i.if.end8.i.i.i_crit_edge, label %if.end10.17.i

if.end10.16.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.17.i:                                    ; preds = %if.end10.16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388605, i32 %1)
  %cmp8.18.i = icmp ult i32 %1, 8388605
  br i1 %cmp8.18.i, label %if.end10.17.i.if.end8.i.i.i_crit_edge, label %if.end10.18.i

if.end10.17.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.18.i:                                    ; preds = %if.end10.17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777213, i32 %1)
  %cmp8.19.i = icmp ult i32 %1, 16777213
  br i1 %cmp8.19.i, label %if.end10.18.i.if.end8.i.i.i_crit_edge, label %if.end10.19.i

if.end10.18.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.19.i:                                    ; preds = %if.end10.18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554429, i32 %1)
  %cmp8.20.i = icmp ult i32 %1, 33554429
  br i1 %cmp8.20.i, label %if.end10.19.i.if.end8.i.i.i_crit_edge, label %if.end10.20.i

if.end10.19.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.20.i:                                    ; preds = %if.end10.19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108861, i32 %1)
  %cmp8.21.i = icmp ult i32 %1, 67108861
  br i1 %cmp8.21.i, label %if.end10.20.i.if.end8.i.i.i_crit_edge, label %if.end10.21.i

if.end10.20.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.21.i:                                    ; preds = %if.end10.20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217725, i32 %1)
  %cmp8.22.i = icmp ult i32 %1, 134217725
  br i1 %cmp8.22.i, label %if.end10.21.i.if.end8.i.i.i_crit_edge, label %if.end10.22.i

if.end10.21.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.22.i:                                    ; preds = %if.end10.21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435453, i32 %1)
  %cmp8.23.i = icmp ult i32 %1, 268435453
  br i1 %cmp8.23.i, label %if.end10.22.i.if.end8.i.i.i_crit_edge, label %if.end10.23.i

if.end10.22.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.23.i:                                    ; preds = %if.end10.22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870909, i32 %1)
  %cmp8.24.i = icmp ult i32 %1, 536870909
  br i1 %cmp8.24.i, label %if.end10.23.i.if.end8.i.i.i_crit_edge, label %if.end10.24.i

if.end10.23.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end10.23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end10.24.i:                                    ; preds = %if.end10.23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %if.end10.23.i.if.end8.i.i.i_crit_edge, %if.end10.22.i.if.end8.i.i.i_crit_edge, %if.end10.21.i.if.end8.i.i.i_crit_edge, %if.end10.20.i.if.end8.i.i.i_crit_edge, %if.end10.19.i.if.end8.i.i.i_crit_edge, %if.end10.18.i.if.end8.i.i.i_crit_edge, %if.end10.17.i.if.end8.i.i.i_crit_edge, %if.end10.16.i.if.end8.i.i.i_crit_edge, %if.end10.15.i.if.end8.i.i.i_crit_edge, %if.end10.14.i.if.end8.i.i.i_crit_edge, %if.end10.13.i.if.end8.i.i.i_crit_edge, %if.end10.12.i.if.end8.i.i.i_crit_edge, %if.end10.11.i.if.end8.i.i.i_crit_edge, %if.end10.10.i.if.end8.i.i.i_crit_edge, %if.end10.9.i.if.end8.i.i.i_crit_edge, %if.end10.8.i.if.end8.i.i.i_crit_edge, %if.end10.7.i.if.end8.i.i.i_crit_edge, %if.end10.6.i.if.end8.i.i.i_crit_edge, %if.end10.5.i.if.end8.i.i.i_crit_edge, %if.end10.4.i.if.end8.i.i.i_crit_edge, %if.end10.3.i.if.end8.i.i.i_crit_edge, %if.end10.2.i.if.end8.i.i.i_crit_edge, %if.end10.1.i.if.end8.i.i.i_crit_edge, %if.end10.i.if.end8.i.i.i_crit_edge, %if.end7.i.if.end8.i.i.i_crit_edge
  %new_sz.0.lcssa.i = phi i32 [ -2147483648, %if.end10.23.i.if.end8.i.i.i_crit_edge ], [ 1073741824, %if.end10.22.i.if.end8.i.i.i_crit_edge ], [ 536870912, %if.end10.21.i.if.end8.i.i.i_crit_edge ], [ 268435456, %if.end10.20.i.if.end8.i.i.i_crit_edge ], [ 134217728, %if.end10.19.i.if.end8.i.i.i_crit_edge ], [ 67108864, %if.end10.18.i.if.end8.i.i.i_crit_edge ], [ 33554432, %if.end10.17.i.if.end8.i.i.i_crit_edge ], [ 16777216, %if.end10.16.i.if.end8.i.i.i_crit_edge ], [ 8388608, %if.end10.15.i.if.end8.i.i.i_crit_edge ], [ 4194304, %if.end10.14.i.if.end8.i.i.i_crit_edge ], [ 2097152, %if.end10.13.i.if.end8.i.i.i_crit_edge ], [ 1048576, %if.end10.12.i.if.end8.i.i.i_crit_edge ], [ 524288, %if.end10.11.i.if.end8.i.i.i_crit_edge ], [ 262144, %if.end10.10.i.if.end8.i.i.i_crit_edge ], [ 131072, %if.end10.9.i.if.end8.i.i.i_crit_edge ], [ 65536, %if.end10.8.i.if.end8.i.i.i_crit_edge ], [ 32768, %if.end10.7.i.if.end8.i.i.i_crit_edge ], [ 16384, %if.end10.6.i.if.end8.i.i.i_crit_edge ], [ 8192, %if.end10.5.i.if.end8.i.i.i_crit_edge ], [ 4096, %if.end10.4.i.if.end8.i.i.i_crit_edge ], [ 2048, %if.end10.3.i.if.end8.i.i.i_crit_edge ], [ 1024, %if.end10.2.i.if.end8.i.i.i_crit_edge ], [ 512, %if.end10.1.i.if.end8.i.i.i_crit_edge ], [ 256, %if.end10.i.if.end8.i.i.i_crit_edge ], [ 128, %if.end7.i.if.end8.i.i.i_crit_edge ]
  %div124.lcssa.i = phi i32 [ 536870909, %if.end10.23.i.if.end8.i.i.i_crit_edge ], [ 268435453, %if.end10.22.i.if.end8.i.i.i_crit_edge ], [ 134217725, %if.end10.21.i.if.end8.i.i.i_crit_edge ], [ 67108861, %if.end10.20.i.if.end8.i.i.i_crit_edge ], [ 33554429, %if.end10.19.i.if.end8.i.i.i_crit_edge ], [ 16777213, %if.end10.18.i.if.end8.i.i.i_crit_edge ], [ 8388605, %if.end10.17.i.if.end8.i.i.i_crit_edge ], [ 4194301, %if.end10.16.i.if.end8.i.i.i_crit_edge ], [ 2097149, %if.end10.15.i.if.end8.i.i.i_crit_edge ], [ 1048573, %if.end10.14.i.if.end8.i.i.i_crit_edge ], [ 524285, %if.end10.13.i.if.end8.i.i.i_crit_edge ], [ 262141, %if.end10.12.i.if.end8.i.i.i_crit_edge ], [ 131069, %if.end10.11.i.if.end8.i.i.i_crit_edge ], [ 65533, %if.end10.10.i.if.end8.i.i.i_crit_edge ], [ 32765, %if.end10.9.i.if.end8.i.i.i_crit_edge ], [ 16381, %if.end10.8.i.if.end8.i.i.i_crit_edge ], [ 8189, %if.end10.7.i.if.end8.i.i.i_crit_edge ], [ 4093, %if.end10.6.i.if.end8.i.i.i_crit_edge ], [ 2045, %if.end10.5.i.if.end8.i.i.i_crit_edge ], [ 1021, %if.end10.4.i.if.end8.i.i.i_crit_edge ], [ 509, %if.end10.3.i.if.end8.i.i.i_crit_edge ], [ 253, %if.end10.2.i.if.end8.i.i.i_crit_edge ], [ 125, %if.end10.1.i.if.end8.i.i.i_crit_edge ], [ 61, %if.end10.i.if.end8.i.i.i_crit_edge ], [ 29, %if.end7.i.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %new_sz.0.lcssa.i, i32 noundef 3520) #14
  %tobool41.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool41.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end43.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43.i:                                       ; preds = %if.end8.i.i.i
  br i1 %tobool4.not.i, label %if.end103.critedge.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %priomap46.i = getelementptr inbounds %struct.netprio_map, ptr %call9.i.i.i, i32 0, i32 2
  %priomap47.i = getelementptr inbounds %struct.netprio_map, ptr %7, i32 0, i32 2
  %priomap_len49.i = getelementptr inbounds %struct.netprio_map, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %priomap_len49.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %priomap_len49.i, align 4
  %mul50.i = shl i32 %11, 2
  %12 = call ptr @memcpy(ptr %priomap46.i, ptr %priomap47.i, i32 %mul50.i)
  %priomap_len52.c.i = getelementptr inbounds %struct.netprio_map, ptr %call9.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %priomap_len52.c.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div124.lcssa.i, ptr %priomap_len52.c.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  %14 = ptrtoint ptr %priomap to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call9.i.i.i, ptr %priomap, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #10
  br label %do.body14

if.end103.critedge.i:                             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %priomap_len52.c126.i = getelementptr inbounds %struct.netprio_map, ptr %call9.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %priomap_len52.c126.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div124.lcssa.i, ptr %priomap_len52.c126.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  %16 = ptrtoint ptr %priomap to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call9.i.i.i, ptr %priomap, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.end103.critedge.i, %if.then45.i, %land.lhs.true5.i.do.body14_crit_edge
  %call15 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call15, label %do.body14.do.end24_crit_edge, label %land.lhs.true16

do.body14.do.end24_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.body14
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b3839 = load i1, ptr @netprio_set_prio.__warned.3, align 1
  br i1 %.b3839, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @netprio_set_prio.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.2) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.body14.do.end24_crit_edge
  %17 = ptrtoint ptr %priomap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priomap, align 4
  %arrayidx = getelementptr %struct.netprio_map, ptr %18, i32 0, i32 2, i32 %1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %prio, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end8.i.i.i.cleanup_crit_edge, %if.end10.24.i, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end24 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true6.cleanup_crit_edge ], [ -28, %if.end10.24.i ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_first(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_fd(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_netprio(ptr noundef %v, ptr noundef %file, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sock_from_file(ptr noundef %file) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %2 = ptrtoint ptr %v to i32
  %conv = trunc i32 %2 to i16
  %prioidx3.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 74, i32 2
  %3 = ptrtoint ptr %prioidx3.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store volatile i16 %conv, ptr %prioidx3.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_next(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_from_file(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @read_prioidx(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_priomap(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @read_priomap.__warned, align 1
  br i1 %.b23, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @read_priomap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn38 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not39 = icmp eq ptr %.pn38, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not39, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %netprio_prio.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn40 = phi ptr [ %.pn38, %for.body.lr.ph ], [ %.pn, %netprio_prio.exit.for.body_crit_edge ]
  %dev.0 = getelementptr i8, ptr %.pn40, i32 -40
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 8
  %call.i24 = tail call ptr @of_css(ptr noundef %5) #10
  %priomap.i = getelementptr i8, ptr %.pn40, i32 2116
  %6 = ptrtoint ptr %priomap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %priomap.i, align 4
  %call.i25 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i25, label %for.body.do.end8.i_crit_edge, label %lor.lhs.false.i

for.body.do.end8.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %for.body
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i26 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i27:                                ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i27.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i27.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i27
  %.b21.i = load i1, ptr @netprio_prio.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i28

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i28:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @netprio_prio.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @.str.1) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i28, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i27.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %for.body.do.end8.i_crit_edge
  %id10.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call.i24, i32 0, i32 6
  %8 = ptrtoint ptr %id10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id10.i, align 8
  %tobool11.not.i = icmp eq ptr %7, null
  br i1 %tobool11.not.i, label %do.end8.i.netprio_prio.exit_crit_edge, label %land.lhs.true12.i

do.end8.i.netprio_prio.exit_crit_edge:            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netprio_prio.exit

land.lhs.true12.i:                                ; preds = %do.end8.i
  %priomap_len.i = getelementptr inbounds %struct.netprio_map, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %priomap_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %priomap_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp ult i32 %9, %11
  br i1 %cmp.i, label %if.then13.i, label %land.lhs.true12.i.netprio_prio.exit_crit_edge

land.lhs.true12.i.netprio_prio.exit_crit_edge:    ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netprio_prio.exit

if.then13.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.netprio_map, ptr %7, i32 0, i32 2, i32 %9
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  br label %netprio_prio.exit

netprio_prio.exit:                                ; preds = %if.then13.i, %land.lhs.true12.i.netprio_prio.exit_crit_edge, %do.end8.i.netprio_prio.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then13.i ], [ 0, %land.lhs.true12.i.netprio_prio.exit_crit_edge ], [ 0, %do.end8.i.netprio_prio.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.5, ptr noundef %dev.0, i32 noundef %retval.0.i) #10
  %14 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load volatile ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %netprio_prio.exit.for.end_crit_edge, label %netprio_prio.exit.for.body_crit_edge

netprio_prio.exit.for.body_crit_edge:             ; preds = %netprio_prio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

netprio_prio.exit.for.end_crit_edge:              ; preds = %netprio_prio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %netprio_prio.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %15 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i.i36 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_priomap(ptr noundef %of, ptr nocapture noundef readonly %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %devname = alloca [17 x i8], align 1
  %prio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %devname) #10
  %0 = call ptr @memset(ptr %devname, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prio) #10
  %1 = ptrtoint ptr %prio to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %prio, align 4, !annotation !45
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.9, ptr noundef nonnull %devname, ptr noundef nonnull %prio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %devname) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body1.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1.i:                                       ; preds = %if.end
  call void @rtnl_lock() #10
  %call5 = call ptr @of_css(ptr noundef %of) #10
  %2 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prio, align 4
  %call6 = call fastcc i32 @netprio_set_prio(ptr noundef %call5, ptr noundef nonnull %call2, i32 noundef %3)
  call void @rtnl_unlock() #10
  %4 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, -1
  store i32 %add13.i, ptr %14, align 4
  %17 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !50
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !51

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #10, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 %nbytes, i32 %call6
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %dev_put.exit ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prio) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %devname) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netprio_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cond = icmp eq i32 %event, 6
  br i1 %cond, label %do.body, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @netprio_device_event.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @netprio_device_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 277, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %priomap = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 144
  %2 = ptrtoint ptr %priomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priomap, align 4
  store volatile ptr null, ptr %priomap, align 4
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %do.end.sw.epilog_crit_edge, label %do.end25

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %3, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end25, %do.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !28, !29, !31, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @net_prio_cgrp_subsys, !1, !"net_prio_cgrp_subsys", i1 false, i1 false}
!1 = !{!"../net/core/netprio_cgroup.c", i32 256, i32 22}
!2 = !{ptr @__initcall__kmod_netprio_cgroup__500_295_init_cgroup_netprio4, !3, !"__initcall__kmod_netprio_cgroup__500_295_init_cgroup_netprio4", i1 false, i1 false}
!3 = !{!"../net/core/netprio_cgroup.c", i32 295, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/core/netprio_cgroup.c", i32 95, i32 28}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/core/netprio_cgroup.c", i32 120, i32 8}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/core/netprio_cgroup.c", i32 128, i32 8}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/core/netprio_cgroup.c", i32 47, i32 8}
!15 = !{ptr @ss_files, !16, !"ss_files", i1 false, i1 false}
!16 = !{!"../net/core/netprio_cgroup.c", i32 243, i32 22}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/core/netprio_cgroup.c", i32 188, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/core/netprio_cgroup.c", i32 189, i32 18}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/core/netprio_cgroup.c", i32 203, i32 18}
!31 = !{ptr @netprio_device_notifier, !32, !"netprio_device_notifier", i1 false, i1 false}
!32 = !{!"../net/core/netprio_cgroup.c", i32 286, i32 30}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/core/netprio_cgroup.c", i32 277, i32 9}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 2157217176}
!47 = !{i64 2149360857}
!48 = !{i64 2149361123}
!49 = !{i64 748398, i64 748459}
!50 = !{i64 751130}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 751415}
