; ModuleID = '/llk/IR_all_yes/net/l2tp/l2tp_debugfs.c_pt.bc'
source_filename = "../net/l2tp/l2tp_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.l2tp_dfs_seq_data = type { ptr, ptr, i32, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
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
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.l2tp_tunnel = type { i32, i32, %struct.callback_head, %struct.spinlock, i8, [16 x %struct.hlist_head], i32, i32, i32, [20 x i8], i32, %struct.l2tp_stats, %struct.list_head, ptr, %struct.refcount_struct, ptr, ptr, i32, %struct.work_struct }
%struct.l2tp_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.l2tp_session = type { i32, i32, ptr, i32, i32, [8 x i8], i32, [8 x i8], i32, i16, i16, i32, i32, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.hlist_node, %struct.refcount_struct, [32 x i8], [16 x i8], i8, i32, i32, i32, %struct.l2tp_stats, %struct.hlist_node, ptr, ptr, ptr, [0 x i8] }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.86, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.87, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.88, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.86 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.87 = type { ptr }
%union.anon.88 = type { ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.81 }
%union.anon.81 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }

@rootdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_l2tp_debugfs__521_342_l2tp_debugfs_init6 = internal global ptr @l2tp_debugfs_init, section ".initcall6.init", align 4
@__exitcall_l2tp_debugfs_exit = internal global ptr @l2tp_debugfs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file522 = internal constant [40 x i8] c"l2tp_debugfs.file=net/l2tp/l2tp_debugfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license523 = internal constant [25 x i8] c"l2tp_debugfs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author524 = internal constant [57 x i8] c"l2tp_debugfs.author=James Chapman <jchapman@katalix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description525 = internal constant [45 x i8] c"l2tp_debugfs.description=L2TP debugfs driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version526 = internal constant [25 x i8] c"l2tp_debugfs.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l2tp_debugfs\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"l2tp\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tunnels\00", [24 x i8] zeroinitializer }, align 32
@l2tp_dfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @l2tp_dfs_seq_open, ptr null, ptr @l2tp_dfs_seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@l2tp_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016l2tp_debugfs: L2TP debugfs support\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l2tp_debugfs_init\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/l2tp/l2tp_debugfs.c\00", [40 x i8] zeroinitializer }, align 32
@l2tp_debugfs_init._entry_ptr = internal global ptr @l2tp_debugfs_init._entry, section ".printk_index", align 4
@l2tp_dfs_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @l2tp_dfs_seq_start, ptr @l2tp_dfs_seq_stop, ptr @l2tp_dfs_seq_next, ptr @l2tp_dfs_seq_show }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TUNNEL ID, peer ID from IP to IP\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" L2TPv2/L2TPv3, UDP/IP\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c" sessions session-count, refcnt refcnt/sk->refcnt\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c" debug tx-pkts/bytes/errs rx-pkts/bytes/errs\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  SESSION ID, peer ID, PWTYPE\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"   refcnt cnt\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"   offset OFFSET l2specific TYPE/LEN\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"   [ cookie ]\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"   [ peer cookie ]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"   config mtu/mru/rcvseq/sendseq/dataseq/lns debug reorderto\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"   nr/ns tx-pkts/bytes/errs rx-pkts/bytes/errs\0A\00", [48 x i8] zeroinitializer }, align 32
@l2tp_dfs_seq_tunnel_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0ATUNNEL %u peer %u\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" from %pI6c to %pI6c\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" from %pI4 to %pI4\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" source port %hu, dest port %hu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" L2TPv%d, %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDP\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IP\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" %d sessions, refcnt %d/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c" %08x rx %ld/%ld/%ld rx %ld/%ld/%ld\0A\00", [59 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  SESSION %u, peer %u, %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETH\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PPP\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   nr %hu, ns %hu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   refcnt %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"   config 0/0/%c/%c/-/%s %08x %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LNS\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LAC\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"   offset 0 l2specific %hu/%hu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"   cookie %02x%02x%02x%02x\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%02x%02x%02x%02x\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"   peer cookie %02x%02x%02x%02x\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"   %hu/%hu tx %ld/%ld/%ld rx %ld/%ld/%ld\0A\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [8 x i8] c"rootdir\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 32, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 348, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 328, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 330, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"l2tp_dfs_fops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 318, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 332, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"l2tp_dfs_seq_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 260, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 237, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 238, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 239, i32 15 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 240, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 241, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 242, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 243, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 244, i32 15 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 245, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 246, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 247, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 130, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 140, i32 16 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 148, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 153, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 157, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 160, i32 16 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 161, i32 44 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 162, i32 43 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 163, i32 6 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 164, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 167, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 749, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 760, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 181, i32 16 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 183, i32 43 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 184, i32 43 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 187, i32 17 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 188, i32 16 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 189, i32 16 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 192, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 192, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 195, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 198, i32 17 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 202, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 205, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 208, i32 17 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [27 x i8] c"../net/l2tp/l2tp_debugfs.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 218, i32 16 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author524, ptr @__UNIQUE_ID_description525, ptr @__UNIQUE_ID_file522, ptr @__UNIQUE_ID_license523, ptr @__UNIQUE_ID_version526, ptr @__exitcall_l2tp_debugfs_exit, ptr @__initcall__kmod_l2tp_debugfs__521_342_l2tp_debugfs_init6, ptr @__modver_attr, ptr @l2tp_debugfs_exit, ptr @l2tp_debugfs_init._entry, ptr @l2tp_debugfs_init._entry_ptr, ptr @rootdir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @l2tp_dfs_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @l2tp_dfs_seq_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rootdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_dfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_dfs_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_debugfs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @rootdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_debugfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef null) #9
  store ptr %call, ptr @rootdir, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %call, ptr noundef null, ptr noundef nonnull @l2tp_dfs_fops) #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_dfs_seq_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  %call2 = tail call ptr @get_net_ns_by_pid(i32 noundef %6) #9
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call2 to i32
  br label %err_free_pd

if.end8:                                          ; preds = %if.end
  %ns_tracker = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %call7.i.i, i32 0, i32 1
  %refcnt_tracker.i = getelementptr inbounds %struct.net, ptr %call2, i32 0, i32 15
  %call.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %ns_tracker, i32 noundef 3264) #9
  %call10 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @l2tp_dfs_seq_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %err_free_net

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %private, align 8
  br label %out

out:                                              ; preds = %err_free_pd, %if.end13, %entry.out_crit_edge
  %rc.0 = phi i32 [ %rc.1, %err_free_pd ], [ 0, %if.end13 ], [ -12, %entry.out_crit_edge ]
  ret i32 %rc.0

err_free_net:                                     ; preds = %if.end8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 15
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %ns_tracker) #9
  %count.i.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #9, !srcloc !124
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %err_free_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err_free_pd_crit_edge, label %if.then10.i.i.i.i.i, !prof !125

if.end5.i.i.i.i.i.err_free_pd_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_pd

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #9
  br label %err_free_pd

if.then.i.i:                                      ; preds = %err_free_net
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @__put_net(ptr noundef %13) #9
  br label %err_free_pd

err_free_pd:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err_free_pd_crit_edge, %if.then5
  %rc.1 = phi i32 [ %8, %if.then5 ], [ %call10, %if.end5.i.i.i.i.i.err_free_pd_crit_edge ], [ %call10, %if.then10.i.i.i.i.i ], [ %call10, %if.then.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_dfs_seq_release(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %ns_tracker = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %3, i32 0, i32 1
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 15
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %ns_tracker) #9
  %count.i.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #9, !srcloc !124
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !125

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @__put_net(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %3) #9
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_net_ns_by_pid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @l2tp_dfs_seq_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %offs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offs, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !127

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 76, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end26:                                         ; preds = %if.end
  %tunnel = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tunnel, align 4
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %l2tp_dfs_next_tunnel.exit, label %if.else

l2tp_dfs_next_tunnel.exit:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tunnel_idx.i = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %tunnel_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tunnel_idx.i, align 4
  %call.i = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %7, i32 noundef %9) #9
  %10 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %tunnel, align 4
  %11 = ptrtoint ptr %tunnel_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tunnel_idx.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %tunnel_idx.i, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end26
  %session.i = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %session.i, align 4
  %tobool.not.i43 = icmp eq ptr %14, null
  br i1 %tobool.not.i43, label %if.else.if.end.i_crit_edge, label %if.then.i44

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i44:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %14) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i44, %if.else.if.end.i_crit_edge
  %15 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tunnel, align 4
  %session_idx.i = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %session_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %session_idx.i, align 4
  %call.i46 = tail call ptr @l2tp_session_get_nth(ptr noundef %16, i32 noundef %18) #9
  %19 = ptrtoint ptr %session.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i46, ptr %session.i, align 4
  %20 = ptrtoint ptr %session_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %session_idx.i, align 4
  %inc.i47 = add i32 %21, 1
  store i32 %inc.i47, ptr %session_idx.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i46, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end30thread-pre-split

if.then6.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %session_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %session_idx.i, align 4
  %23 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tunnel, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then6.i.l2tp_dfs_next_tunnel.exit.i_crit_edge, label %if.then.i.i

if.then6.i.l2tp_dfs_next_tunnel.exit.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %l2tp_dfs_next_tunnel.exit.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %24) #9
  br label %l2tp_dfs_next_tunnel.exit.i

l2tp_dfs_next_tunnel.exit.i:                      ; preds = %if.then.i.i, %if.then6.i.l2tp_dfs_next_tunnel.exit.i_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %tunnel_idx.i.i = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %tunnel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tunnel_idx.i.i, align 4
  %call.i.i = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %26, i32 noundef %28) #9
  %29 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %tunnel, align 4
  %30 = ptrtoint ptr %tunnel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tunnel_idx.i.i, align 4
  %inc.i.i = add i32 %31, 1
  store i32 %inc.i.i, ptr %tunnel_idx.i.i, align 4
  br label %if.end30

if.end30thread-pre-split:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load ptr, ptr %tunnel, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30thread-pre-split, %l2tp_dfs_next_tunnel.exit.i, %l2tp_dfs_next_tunnel.exit
  %33 = phi ptr [ %.pr, %if.end30thread-pre-split ], [ %call.i.i, %l2tp_dfs_next_tunnel.exit.i ], [ %call.i, %l2tp_dfs_next_tunnel.exit ]
  %tobool32.not = icmp eq ptr %33, null
  br i1 %tobool32.not, label %land.lhs.true, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %session = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %session, align 4
  %tobool33.not = icmp eq ptr %35, null
  %spec.store.select = select i1 %tobool33.not, ptr null, ptr %3
  br label %out

out:                                              ; preds = %land.lhs.true, %if.end30.out_crit_edge, %do.end, %entry.out_crit_edge
  %pd.0 = phi ptr [ null, %do.end ], [ %3, %if.end30.out_crit_edge ], [ %spec.store.select, %land.lhs.true ], [ inttoptr (i32 1 to ptr), %entry.out_crit_edge ]
  ret ptr %pd.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_dfs_seq_stop(ptr nocapture noundef readnone %p, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch = icmp ult ptr %v, inttoptr (i32 2 to ptr)
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %v, i32 0, i32 5
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %session, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %tunnel = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %v, i32 0, i32 4
  %3 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tunnel, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %4) #9
  %5 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tunnel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @l2tp_dfs_seq_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_dfs_seq_show(ptr noundef %m, ptr noundef readonly %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.9) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.10) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.14) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.15) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.16) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.17) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.18) #9
  br label %out

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %v, i32 0, i32 5
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %tunnel = getelementptr inbounds %struct.l2tp_dfs_seq_data, ptr %v, i32 0, i32 4
  %2 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tunnel, align 4
  tail call fastcc void @local_bh_disable() #9
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then1.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.then1.do.body.i.preheader_crit_edge:           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then1
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 750, ptr noundef nonnull @.str.31) #9
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, %land.lhs.true.i.i.do.body.i.preheader_crit_edge, %if.then1.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc33.i.do.body.i_crit_edge, %do.body.i.preheader
  %session_count.0161.i = phi i32 [ %session_count.1.lcssa.i, %for.inc33.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %hash.0160.i = phi i32 [ %inc34.i, %for.inc33.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b140.i = load i1, ptr @l2tp_dfs_seq_tunnel_show.__warned, align 1
  br i1 %.b140.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @l2tp_dfs_seq_tunnel_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 130, ptr noundef nonnull @.str.19) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.l2tp_tunnel, ptr %3, i32 0, i32 5, i32 %hash.0160.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -132
  %tobool13.not157162.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not157.i = or i1 %tobool10.not.i, %tobool13.not157162.i
  br i1 %tobool13.not157.i, label %do.end.i.for.inc33.i_crit_edge, label %do.end.i.for.body14.i_crit_edge

do.end.i.for.body14.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body14.i

do.end.i.for.inc33.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc33.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %do.end.i.for.body14.i_crit_edge
  %session.0159.i = phi ptr [ %add.ptr29.i, %for.body14.i.for.body14.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body14.i_crit_edge ]
  %session_count.1158.i = phi i32 [ %spec.select141.i, %for.body14.i.for.body14.i_crit_edge ], [ %session_count.0161.i, %do.end.i.for.body14.i_crit_edge ]
  %session_id.i = getelementptr inbounds %struct.l2tp_session, ptr %session.0159.i, i32 0, i32 3
  %6 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %session_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15.i = icmp ne i32 %7, 0
  %inc.i = zext i1 %cmp15.i to i32
  %spec.select141.i = add i32 %session_count.1158.i, %inc.i
  %hlist.i = getelementptr inbounds %struct.l2tp_session, ptr %session.0159.i, i32 0, i32 19
  %8 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hlist.i, align 4
  %tobool25.not.i = icmp eq ptr %9, null
  %add.ptr29.i = getelementptr i8, ptr %9, i32 -132
  %tobool13.not163.i = icmp eq ptr %add.ptr29.i, null
  %tobool13.not.i = or i1 %tobool25.not.i, %tobool13.not163.i
  br i1 %tobool13.not.i, label %for.body14.i.for.inc33.i_crit_edge, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

for.body14.i.for.inc33.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc33.i

for.inc33.i:                                      ; preds = %for.body14.i.for.inc33.i_crit_edge, %do.end.i.for.inc33.i_crit_edge
  %session_count.1.lcssa.i = phi i32 [ %session_count.0161.i, %do.end.i.for.inc33.i_crit_edge ], [ %spec.select141.i, %for.body14.i.for.inc33.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %hash.0160.i, 1
  %exitcond.not.i = icmp eq i32 %inc34.i, 16
  br i1 %exitcond.not.i, label %for.end35.i, label %for.inc33.i.do.body.i_crit_edge

for.inc33.i.do.body.i_crit_edge:                  ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.end35.i:                                      ; preds = %for.inc33.i
  %call.i147.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i147.i, label %for.end35.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true.i150.i

for.end35.i.rcu_read_unlock_bh.exit.i_crit_edge:  ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true.i150.i:                             ; preds = %for.end35.i
  %call1.i148.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148.i)
  %tobool.not.i149.i = icmp eq i32 %call1.i148.i, 0
  br i1 %tobool.not.i149.i, label %land.lhs.true.i150.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true2.i152.i

land.lhs.true.i150.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true2.i152.i:                            ; preds = %land.lhs.true.i150.i
  %.b4.i151.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i151.i, label %land.lhs.true2.i152.i.rcu_read_unlock_bh.exit.i_crit_edge, label %if.then.i153.i

land.lhs.true2.i152.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit.i

if.then.i153.i:                                   ; preds = %land.lhs.true2.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 761, ptr noundef nonnull @.str.32) #9
  br label %rcu_read_unlock_bh.exit.i

rcu_read_unlock_bh.exit.i:                        ; preds = %if.then.i153.i, %land.lhs.true2.i152.i.rcu_read_unlock_bh.exit.i_crit_edge, %land.lhs.true.i150.i.rcu_read_unlock_bh.exit.i_crit_edge, %for.end35.i.rcu_read_unlock_bh.exit.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #9
  tail call fastcc void @local_bh_enable() #9
  %tunnel_id.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %tunnel_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tunnel_id.i, align 4
  %peer_tunnel_id.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %peer_tunnel_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %peer_tunnel_id.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %11, i32 noundef %13) #9
  %sock.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock.i, align 4
  %tobool36.not.i = icmp eq ptr %15, null
  br i1 %tobool36.not.i, label %rcu_read_unlock_bh.exit.i.if.end66.i_crit_edge, label %if.then37.i

rcu_read_unlock_bh.exit.i.if.end66.i_crit_edge:   ; preds = %rcu_read_unlock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.then37.i:                                      ; preds = %rcu_read_unlock_bh.exit.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp41.i = icmp eq i16 %17, 10
  br i1 %cmp41.i, label %if.then43.i, label %if.then37.i.if.end48.i_crit_edge

if.then37.i.if.end48.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.then37.i
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %19 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then43.i.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.then43.i.inet6_sk.exit.i_crit_edge:            ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.then43.i.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %21, %cond.true.i.i ], [ null, %if.then43.i.inet6_sk.exit.i_crit_edge ]
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, ptr noundef %cond.i.i, ptr noundef %skc_v6_daddr.i) #9
  br label %if.end48.i

if.end48.i:                                       ; preds = %inet6_sk.exit.i, %if.then37.i.if.end48.i_crit_edge
  %22 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sock.i, align 4
  %skc_family51.i = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %skc_family51.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %skc_family51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp53.i = icmp eq i16 %25, 2
  br i1 %cmp53.i, label %if.then55.i, label %if.end48.i.if.end57.i_crit_edge

if.end48.i.if.end57.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then55.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %inet_saddr.i = getelementptr inbounds %struct.inet_sock, ptr %15, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef %inet_saddr.i, ptr noundef nonnull %15) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %if.end48.i.if.end57.i_crit_edge
  %encap.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %encap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %encap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp58.i = icmp eq i32 %27, 0
  br i1 %cmp58.i, label %if.then60.i, label %if.end57.i.if.end66.i_crit_edge

if.end57.i.if.end66.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.then60.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %15, i32 0, i32 6
  %28 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inet_sport.i, align 8
  %conv61.i = zext i16 %29 to i32
  %30 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 4
  %conv64.i = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %conv61.i, i32 noundef %conv64.i) #9
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then60.i, %if.end57.i.if.end66.i_crit_edge, %rcu_read_unlock_bh.exit.i.if.end66.i_crit_edge
  %version.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %version.i, align 4
  %encap67.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %encap67.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %encap67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp68.i = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp73.i = icmp eq i32 %36, 1
  %cond75.i = select i1 %cmp73.i, ptr @.str.26, ptr @.str.27
  %cond77.i = select i1 %cmp68.i, ptr @.str.25, ptr %cond75.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %34, ptr noundef nonnull %cond77.i) #9
  %37 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sock.i, align 4
  %tobool79.not.i = icmp eq ptr %38, null
  br i1 %tobool79.not.i, label %if.end66.i.l2tp_dfs_seq_tunnel_show.exit_crit_edge, label %cond.true80.i

if.end66.i.l2tp_dfs_seq_tunnel_show.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %l2tp_dfs_seq_tunnel_show.exit

cond.true80.i:                                    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %38, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  %39 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %l2tp_dfs_seq_tunnel_show.exit

l2tp_dfs_seq_tunnel_show.exit:                    ; preds = %cond.true80.i, %if.end66.i.l2tp_dfs_seq_tunnel_show.exit_crit_edge
  %cond86.i = phi i32 [ %40, %cond.true80.i ], [ 0, %if.end66.i.l2tp_dfs_seq_tunnel_show.exit_crit_edge ]
  %ref_count.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 14
  %call.i.i.i154.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i, i32 noundef 4) #9
  %41 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %ref_count.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %session_count.1.lcssa.i, i32 noundef %cond86.i, i32 noundef %42) #9
  %stats.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %stats.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 1
  %call.i.i142.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_bytes.i, i32 noundef 4) #9
  %45 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %tx_bytes.i, align 4
  %tx_errors.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 2
  %call.i.i143.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_errors.i, i32 noundef 4) #9
  %47 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %tx_errors.i, align 4
  %rx_packets.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 3
  %call.i.i144.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_packets.i, i32 noundef 4) #9
  %49 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %rx_packets.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 4
  %call.i.i145.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_bytes.i, i32 noundef 4) #9
  %51 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %rx_bytes.i, align 4
  %rx_errors.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 7
  %call.i.i146.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_errors.i, i32 noundef 4) #9
  %53 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %rx_errors.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #9
  br label %out

if.else:                                          ; preds = %if.end
  %session_id.i19 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %session_id.i19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %session_id.i19, align 4
  %peer_session_id.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %peer_session_id.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %peer_session_id.i, align 4
  %pwtype.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 26
  %59 = ptrtoint ptr %pwtype.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pwtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %60)
  %cmp.i = icmp eq i32 %60, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %60)
  %cmp2.i = icmp eq i32 %60, 7
  %cond.i = select i1 %cmp2.i, ptr @.str.35, ptr @.str.27
  %cond3.i = select i1 %cmp.i, ptr @.str.34, ptr %cond.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %56, i32 noundef %58, ptr noundef nonnull %cond3.i) #9
  %send_seq.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 23
  %61 = ptrtoint ptr %send_seq.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i = load i8, ptr %send_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %62 = icmp ult i8 %bf.load.i, 64
  br i1 %62, label %if.else.if.end.i_crit_edge, label %if.then.i20

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i20:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %nr.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr.i, align 4
  %ns.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 12
  %65 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ns.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %64, i32 noundef %66) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i20, %if.else.if.end.i_crit_edge
  %ref_count.i21 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 20
  %call.i.i.i.i22 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i21, i32 noundef 4) #9
  %67 = ptrtoint ptr %ref_count.i21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %ref_count.i21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %68) #9
  %69 = ptrtoint ptr %send_seq.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load9.i = load i8, ptr %send_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9.i)
  %tobool12.not.i = icmp sgt i8 %bf.load9.i, -1
  %cond13.i = select i1 %tobool12.not.i, i32 45, i32 82
  %70 = and i8 %bf.load9.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool19.not.i = icmp eq i8 %70, 0
  %cond20.i = select i1 %tobool19.not.i, i32 45, i32 83
  %71 = and i8 %bf.load9.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool25.not.i23 = icmp eq i8 %71, 0
  %cond26.i = select i1 %tobool25.not.i23, ptr @.str.40, ptr @.str.39
  %reorder_timeout.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 24
  %72 = ptrtoint ptr %reorder_timeout.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reorder_timeout.i, align 4
  %call27.i = tail call i32 @jiffies_to_msecs(i32 noundef %73) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %cond13.i, i32 noundef %cond20.i, ptr noundef nonnull %cond26.i, i32 noundef 0, i32 noundef %call27.i) #9
  %l2specific_type.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 9
  %74 = ptrtoint ptr %l2specific_type.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %l2specific_type.i, align 4
  %conv.i = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %75)
  %cond.i.i24 = icmp eq i16 %75, 1
  %..i.i = select i1 %cond.i.i24, i32 4, i32 0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %conv.i, i32 noundef %..i.i) #9
  %cookie_len.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 6
  %76 = ptrtoint ptr %cookie_len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cookie_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool29.not.i = icmp eq i32 %77, 0
  br i1 %tobool29.not.i, label %if.end.i.if.end58.i_crit_edge, label %if.then30.i

if.end.i.if.end58.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then30.i:                                      ; preds = %if.end.i
  %cookie.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 5
  %78 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cookie.i, align 4
  %conv31.i = zext i8 %79 to i32
  %arrayidx33.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 5, i32 1
  %80 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %81 to i32
  %arrayidx36.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 5, i32 2
  %82 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx36.i, align 2
  %conv37.i = zext i8 %83 to i32
  %arrayidx39.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %85 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %conv31.i, i32 noundef %conv34.i, i32 noundef %conv37.i, i32 noundef %conv40.i) #9
  %86 = ptrtoint ptr %cookie_len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cookie_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %87)
  %cmp42.i = icmp eq i32 %87, 8
  br i1 %cmp42.i, label %if.then44.i, label %if.then30.i.if.end57.i25_crit_edge

if.then30.i.if.end57.i25_crit_edge:               ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i25

if.then44.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx46.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 5, i32 4
  %88 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx46.i, align 4
  %conv47.i = zext i8 %89 to i32
  %arrayidx49.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 5, i32 5
  %90 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx49.i, align 1
  %conv50.i = zext i8 %91 to i32
  %arrayidx52.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 5, i32 6
  %92 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx52.i, align 2
  %conv53.i = zext i8 %93 to i32
  %arrayidx55.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 5, i32 7
  %94 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx55.i, align 1
  %conv56.i = zext i8 %95 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %conv47.i, i32 noundef %conv50.i, i32 noundef %conv53.i, i32 noundef %conv56.i) #9
  br label %if.end57.i25

if.end57.i25:                                     ; preds = %if.then44.i, %if.then30.i.if.end57.i25_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.44) #9
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end57.i25, %if.end.i.if.end58.i_crit_edge
  %peer_cookie_len.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 8
  %96 = ptrtoint ptr %peer_cookie_len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %peer_cookie_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool59.not.i = icmp eq i32 %97, 0
  br i1 %tobool59.not.i, label %if.end58.i.if.end89.i_crit_edge, label %if.then60.i27

if.end58.i.if.end89.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.then60.i27:                                    ; preds = %if.end58.i
  %peer_cookie.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 7
  %98 = ptrtoint ptr %peer_cookie.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %peer_cookie.i, align 4
  %conv62.i = zext i8 %99 to i32
  %arrayidx64.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 7, i32 1
  %100 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx64.i, align 1
  %conv65.i = zext i8 %101 to i32
  %arrayidx67.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 7, i32 2
  %102 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx67.i, align 2
  %conv68.i = zext i8 %103 to i32
  %arrayidx70.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 7, i32 3
  %104 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %105 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %conv62.i, i32 noundef %conv65.i, i32 noundef %conv68.i, i32 noundef %conv71.i) #9
  %106 = ptrtoint ptr %peer_cookie_len.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %peer_cookie_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %107)
  %cmp73.i26 = icmp eq i32 %107, 8
  br i1 %cmp73.i26, label %if.then75.i, label %if.then60.i27.if.end88.i_crit_edge

if.then60.i27.if.end88.i_crit_edge:               ; preds = %if.then60.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.then75.i:                                      ; preds = %if.then60.i27
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx77.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 7, i32 4
  %108 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx77.i, align 4
  %conv78.i = zext i8 %109 to i32
  %arrayidx80.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 7, i32 5
  %110 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx80.i, align 1
  %conv81.i = zext i8 %111 to i32
  %arrayidx83.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 7, i32 6
  %112 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx83.i, align 2
  %conv84.i = zext i8 %113 to i32
  %arrayidx86.i = getelementptr %struct.l2tp_session, ptr %1, i32 0, i32 7, i32 7
  %114 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx86.i, align 1
  %conv87.i = zext i8 %115 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %conv78.i, i32 noundef %conv81.i, i32 noundef %conv84.i, i32 noundef %conv87.i) #9
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then75.i, %if.then60.i27.if.end88.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.44) #9
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end88.i, %if.end58.i.if.end89.i_crit_edge
  %nr90.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 11
  %116 = ptrtoint ptr %nr90.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nr90.i, align 4
  %ns91.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 12
  %118 = ptrtoint ptr %ns91.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ns91.i, align 4
  %stats.i28 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27
  %call.i.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats.i28, i32 noundef 4) #9
  %120 = ptrtoint ptr %stats.i28 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %stats.i28, align 4
  %tx_bytes.i30 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 1
  %call.i.i165.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_bytes.i30, i32 noundef 4) #9
  %122 = ptrtoint ptr %tx_bytes.i30 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %tx_bytes.i30, align 4
  %tx_errors.i31 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 2
  %call.i.i166.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_errors.i31, i32 noundef 4) #9
  %124 = ptrtoint ptr %tx_errors.i31 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %tx_errors.i31, align 4
  %rx_packets.i32 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 3
  %call.i.i167.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_packets.i32, i32 noundef 4) #9
  %126 = ptrtoint ptr %rx_packets.i32 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %rx_packets.i32, align 4
  %rx_bytes.i33 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 4
  %call.i.i168.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_bytes.i33, i32 noundef 4) #9
  %128 = ptrtoint ptr %rx_bytes.i33 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %rx_bytes.i33, align 4
  %rx_errors.i34 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 7
  %call.i.i169.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_errors.i34, i32 noundef 4) #9
  %130 = ptrtoint ptr %rx_errors.i34 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %rx_errors.i34, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef %129, i32 noundef %131) #9
  %show.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 31
  %132 = ptrtoint ptr %show.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %show.i, align 4
  %tobool103.not.i = icmp eq ptr %133, null
  br i1 %tobool103.not.i, label %if.end89.i.out_crit_edge, label %if.then104.i

if.end89.i.out_crit_edge:                         ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then104.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %133(ptr noundef %m, ptr noundef nonnull %1) #9
  br label %out

out:                                              ; preds = %if.then104.i, %if.end89.i.out_crit_edge, %l2tp_dfs_seq_tunnel_show.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_dec_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_tunnel_get_nth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_dec_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_session_get_nth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_l2tp_debugfs__521_342_l2tp_debugfs_init6, !1, !"__initcall__kmod_l2tp_debugfs__521_342_l2tp_debugfs_init6", i1 false, i1 false}
!1 = !{!"../net/l2tp/l2tp_debugfs.c", i32 342, i32 1}
!2 = !{ptr @__exitcall_l2tp_debugfs_exit, !3, !"__exitcall_l2tp_debugfs_exit", i1 false, i1 false}
!3 = !{!"../net/l2tp/l2tp_debugfs.c", i32 343, i32 1}
!4 = !{ptr @__UNIQUE_ID_file522, !5, !"__UNIQUE_ID_file522", i1 false, i1 false}
!5 = !{!"../net/l2tp/l2tp_debugfs.c", i32 345, i32 1}
!6 = !{ptr @__UNIQUE_ID_license523, !5, !"__UNIQUE_ID_license523", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author524, !8, !"__UNIQUE_ID_author524", i1 false, i1 false}
!8 = !{!"../net/l2tp/l2tp_debugfs.c", i32 346, i32 1}
!9 = !{ptr @__UNIQUE_ID_description525, !10, !"__UNIQUE_ID_description525", i1 false, i1 false}
!10 = !{!"../net/l2tp/l2tp_debugfs.c", i32 347, i32 1}
!11 = !{ptr @__UNIQUE_ID_version526, !12, !"__UNIQUE_ID_version526", i1 false, i1 false}
!12 = !{!"../net/l2tp/l2tp_debugfs.c", i32 348, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @rootdir, !18, !"rootdir", i1 false, i1 false}
!18 = !{!"../net/l2tp/l2tp_debugfs.c", i32 32, i32 23}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/l2tp/l2tp_debugfs.c", i32 328, i32 31}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/l2tp/l2tp_debugfs.c", i32 330, i32 22}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/l2tp/l2tp_debugfs.c", i32 332, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @l2tp_debugfs_init._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @l2tp_debugfs_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @l2tp_dfs_fops, !30, !"l2tp_dfs_fops", i1 false, i1 false}
!30 = !{!"../net/l2tp/l2tp_debugfs.c", i32 318, i32 37}
!31 = !{ptr @l2tp_dfs_seq_ops, !32, !"l2tp_dfs_seq_ops", i1 false, i1 false}
!32 = !{!"../net/l2tp/l2tp_debugfs.c", i32 260, i32 36}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/l2tp/l2tp_debugfs.c", i32 237, i32 15}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/l2tp/l2tp_debugfs.c", i32 238, i32 15}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/l2tp/l2tp_debugfs.c", i32 239, i32 15}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/l2tp/l2tp_debugfs.c", i32 240, i32 15}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/l2tp/l2tp_debugfs.c", i32 241, i32 15}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/l2tp/l2tp_debugfs.c", i32 242, i32 15}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/l2tp/l2tp_debugfs.c", i32 243, i32 15}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/l2tp/l2tp_debugfs.c", i32 244, i32 15}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/l2tp/l2tp_debugfs.c", i32 245, i32 15}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/l2tp/l2tp_debugfs.c", i32 246, i32 15}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/l2tp/l2tp_debugfs.c", i32 247, i32 15}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/l2tp/l2tp_debugfs.c", i32 130, i32 3}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/l2tp/l2tp_debugfs.c", i32 140, i32 16}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/l2tp/l2tp_debugfs.c", i32 148, i32 18}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/l2tp/l2tp_debugfs.c", i32 153, i32 18}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/l2tp/l2tp_debugfs.c", i32 157, i32 18}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/l2tp/l2tp_debugfs.c", i32 160, i32 16}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/l2tp/l2tp_debugfs.c", i32 161, i32 44}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/l2tp/l2tp_debugfs.c", i32 162, i32 43}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/l2tp/l2tp_debugfs.c", i32 163, i32 6}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/l2tp/l2tp_debugfs.c", i32 164, i32 16}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/l2tp/l2tp_debugfs.c", i32 167, i32 16}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/l2tp/l2tp_debugfs.c", i32 181, i32 16}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/l2tp/l2tp_debugfs.c", i32 183, i32 43}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/l2tp/l2tp_debugfs.c", i32 184, i32 43}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/l2tp/l2tp_debugfs.c", i32 187, i32 17}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/l2tp/l2tp_debugfs.c", i32 188, i32 16}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/l2tp/l2tp_debugfs.c", i32 189, i32 16}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/l2tp/l2tp_debugfs.c", i32 192, i32 26}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/l2tp/l2tp_debugfs.c", i32 192, i32 34}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/l2tp/l2tp_debugfs.c", i32 195, i32 16}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/l2tp/l2tp_debugfs.c", i32 198, i32 17}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/l2tp/l2tp_debugfs.c", i32 202, i32 18}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/l2tp/l2tp_debugfs.c", i32 205, i32 15}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/l2tp/l2tp_debugfs.c", i32 208, i32 17}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/l2tp/l2tp_debugfs.c", i32 218, i32 16}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148436882}
!124 = !{i64 2148351322, i64 2148351354, i64 2148351383, i64 2148351417, i64 2148351448, i64 2148351471}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2149312996}
!127 = !{!"branch_weights", i32 1, i32 2000}
