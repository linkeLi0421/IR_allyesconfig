; ModuleID = '/llk/IR_all_yes/net/smc/smc_rx.c_pt.bc'
source_filename = "../net/smc/smc_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.96 }
%struct.atomic_t = type { i32 }
%union.anon.96 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.122 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.178 }
%union.anon.178 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.173, i32 }
%union.anon.173 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.86 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.smc_stats_tech = type { %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_rmbcnt, %struct.smc_stats_rmbcnt, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.smc_stats_memsize = type { [9 x i64] }
%struct.smc_stats_rmbcnt = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.114, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.112 }
%union.anon.4 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.114 = type { ptr }
%struct.anon.180 = type { i16, i16, i32 }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.175 }
%union.anon.175 = type { %struct.anon.177, [40 x i8] }
%struct.anon.177 = type { i16, i64, i32 }
%struct.splice_pipe_desc = type { ptr, ptr, i32, i32, ptr, ptr }
%struct.partial_page = type { i32, i32, i32 }
%struct.smc_spd_priv = type { ptr, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.111, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.111 = type { %struct.atomic_t }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@smc_pipe_ops = internal constant { %struct.pipe_buf_operations, [16 x i8] } { %struct.pipe_buf_operations { ptr null, ptr @smc_rx_pipe_buf_release, ptr null, ptr @generic_pipe_buf_get }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__tracepoint_smc_rx_recvmsg = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/smc/smc_tracepoint.h\00", [39 x i8] zeroinitializer }, align 32
@trace_smc_rx_recvmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@smc_rx_wake_up.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/smc/smc_rx.c\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sk_wake_async.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 230, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 214, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"smc_pipe_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 134, i32 41 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 717, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1160, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../net/smc/smc_tracepoint.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 78, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 108, i32 2 }
@___asan_gen_.37 = private constant [20 x i8] c"../net/smc/smc_rx.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 37, i32 7 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 695, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 2444, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 723, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @smc_pipe_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pipe_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_rx_wait(ptr noundef %smc, ptr nocapture noundef %timeo, ptr nocapture noundef readonly %fcrit) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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
  %conn4 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %conn_state_flags = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 7
  %call6 = call i32 %fcrit(ptr noundef %conn4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %if.end.sk_set_bit.exit_crit_edge, label %if.end.i

if.end.sk_set_bit.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_set_bit.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %19, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #8
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i, %if.end.sk_set_bit.exit_crit_edge
  %20 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 17
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %20, align 8
  call void @add_wait_queue(ptr noundef %22, ptr noundef nonnull %wait) #8
  call void @release_sock(ptr noundef %smc) #8
  %sk_err = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %23 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %sk_set_bit.exit.if.end23_crit_edge

sk_set_bit.exit.if.end23_crit_edge:               ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

lor.lhs.false:                                    ; preds = %sk_set_bit.exit
  %25 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %conn_state_flags, align 1
  %26 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 66
  %27 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sk_shutdown, align 2
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not = icmp eq i8 %29, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false10.if.end23_crit_edge

lor.lhs.false10.if.end23_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %killed = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  %30 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load14 = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load14)
  %tobool17.not = icmp sgt i8 %bf.load14, -1
  br i1 %tobool17.not, label %lor.rhs, label %lor.lhs.false13.if.end23_crit_edge

lor.lhs.false13.if.end23_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

lor.rhs:                                          ; preds = %lor.lhs.false13
  %call18 = call i32 %fcrit(ptr noundef %conn4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then21, label %lor.rhs.if.end23_crit_edge

lor.rhs.if.end23_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timeo, align 4
  %call22 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %32) #8
  %33 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call22, ptr %timeo, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %lor.rhs.if.end23_crit_edge, %lor.lhs.false13.if.end23_crit_edge, %lor.lhs.false10.if.end23_crit_edge, %lor.lhs.false.if.end23_crit_edge, %sk_set_bit.exit.if.end23_crit_edge
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 212
  %36 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #8
  %37 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool27.not = icmp eq i32 %38, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.end23.lor.end48_crit_edge

if.end23.lor.end48_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end48

lor.lhs.false28:                                  ; preds = %if.end23
  %39 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load29 = load i8, ptr %conn_state_flags, align 1
  %40 = and i8 %bf.load29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool33.not = icmp eq i8 %40, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %lor.lhs.false28.lor.end48_crit_edge

lor.lhs.false28.lor.end48_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end48

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %sk_shutdown35 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 66
  %41 = ptrtoint ptr %sk_shutdown35 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sk_shutdown35, align 2
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool38.not = icmp eq i8 %43, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false34.lor.end48_crit_edge

lor.lhs.false34.lor.end48_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end48

lor.lhs.false39:                                  ; preds = %lor.lhs.false34
  %killed40 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  %44 = ptrtoint ptr %killed40 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load41 = load i8, ptr %killed40, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41)
  %tobool44.not = icmp sgt i8 %bf.load41, -1
  br i1 %tobool44.not, label %lor.rhs45, label %lor.lhs.false39.lor.end48_crit_edge

lor.lhs.false39.lor.end48_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end48

lor.rhs45:                                        ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = call i32 %fcrit(ptr noundef %conn4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47 = icmp ne i32 %call46, 0
  %phi.cast = zext i1 %tobool47 to i32
  br label %lor.end48

lor.end48:                                        ; preds = %lor.rhs45, %lor.lhs.false39.lor.end48_crit_edge, %lor.lhs.false34.lor.end48_crit_edge, %lor.lhs.false28.lor.end48_crit_edge, %if.end23.lor.end48_crit_edge
  %45 = phi i32 [ 1, %lor.lhs.false39.lor.end48_crit_edge ], [ 1, %lor.lhs.false34.lor.end48_crit_edge ], [ 1, %lor.lhs.false28.lor.end48_crit_edge ], [ 1, %if.end23.lor.end48_crit_edge ], [ %phi.cast, %lor.rhs45 ]
  %46 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %20, align 8
  call void @remove_wait_queue(ptr noundef %47, ptr noundef nonnull %wait) #8
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %13, align 4
  %50 = and i32 %49, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i78 = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i78, label %lor.end48.cleanup_crit_edge, label %if.end.i80

lor.end48.cleanup_crit_edge:                      ; preds = %lor.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i80:                                       ; preds = %lor.end48
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %20, align 8
  %flags.i79 = getelementptr inbounds %struct.socket_wq, ptr %52, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i79) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i80, %lor.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %45, %lor.end48.cleanup_crit_edge ], [ %45, %if.end.i80 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_rx_recvmsg(ptr noundef %smc, ptr noundef %msg, ptr noundef %pipe, i32 noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %cons.i = alloca %union.smc_host_cursor, align 8
  %cons = alloca %union.smc_host_cursor, align 8
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons) #8
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cons, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #8
  %and = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !43

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp = icmp eq i8 %2, 10
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and8 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons.i) #8
  %3 = ptrtoint ptr %cons.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %cons.i, align 8, !annotation !42
  %4 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.then10.smc_rx_recv_urg.exit_crit_edge

if.then10.smc_rx_recv_urg.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_rx_recv_urg.exit

lor.lhs.false.i:                                  ; preds = %if.then10
  %urg_state.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 28
  %8 = ptrtoint ptr %urg_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urg_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %do.body.i, label %lor.lhs.false.i.smc_rx_recv_urg.exit_crit_edge

lor.lhs.false.i.smc_rx_recv_urg.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_rx_recv_urg.exit

do.body.i:                                        ; preds = %lor.lhs.false.i
  %lnk.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lnk.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i.i, align 4
  %smc9.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 55
  %14 = ptrtoint ptr %smc9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smc9.i, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  br i1 %tobool.not.i, label %do.body14.i, label %do.body58.i

do.body14.i:                                      ; preds = %do.body.i
  %urg_data_cnt.i = getelementptr [2 x %struct.smc_stats_tech], ptr %15, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %urg_data_cnt.i to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx30.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx30.i, align 4
  %add.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %add31.i = add i64 %26, 1
  store i64 %add31.i, ptr %24, align 8
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool42.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool42.not.i, label %if.then47.i, label %do.body14.i.do.end50.i_crit_edge, !prof !45

do.body14.i.do.end50.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50.i

if.then47.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end50.i

do.end50.i:                                       ; preds = %if.then47.i, %do.body14.i.do.end50.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #8, !srcloc !46
  br label %if.end118.i

do.body58.i:                                      ; preds = %do.body.i
  %urg_data_cnt82.i = getelementptr inbounds %struct.smc_stats_tech, ptr %15, i32 0, i32 11
  %28 = ptrtoint ptr %urg_data_cnt82.i to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i191.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i191.i to ptr
  %cpu85.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu85.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu85.i, align 4
  %arrayidx86.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx86.i, align 4
  %add87.i = add i32 %34, %28
  %35 = inttoptr i32 %add87.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  %add88.i = add i64 %37, 1
  store i64 %add88.i, ptr %35, align 8
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i192.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i192.i)
  %tobool99.not.i = icmp eq i32 %and.i.i192.i, 0
  br i1 %tobool99.not.i, label %if.then108.i, label %do.body58.i.do.end111.i_crit_edge, !prof !45

do.body58.i.do.end111.i_crit_edge:                ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end111.i

if.then108.i:                                     ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end111.i

do.end111.i:                                      ; preds = %if.then108.i, %do.body58.i.do.end111.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #8, !srcloc !46
  br label %if.end118.i

if.end118.i:                                      ; preds = %do.end111.i, %do.end50.i
  %39 = ptrtoint ptr %urg_state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %urg_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp122.i = icmp eq i32 %40, 1
  br i1 %cmp122.i, label %if.then124.i, label %if.end156.i

if.then124.i:                                     ; preds = %if.end118.i
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool125.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool125.not.i, label %if.then126.i, label %if.then124.i.if.end129.i_crit_edge

if.then124.i.if.end129.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129.i

if.then126.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %urg_state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %urg_state.i, align 8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then126.i, %if.then124.i.if.end129.i_crit_edge
  %msg_flags.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %42 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_flags.i, align 4
  %or.i = or i32 %43, 1
  store i32 %or.i, ptr %msg_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp130.i = icmp sgt i32 %len, 0
  br i1 %cmp130.i, label %if.then132.i, label %if.end154.thread.i

if.then132.i:                                     ; preds = %if.end129.i
  %and133.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %memcpy_to_msg.exit.i, label %if.then132.i.if.end137.i_crit_edge

if.then132.i.if.end137.i_crit_edge:               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137.i

memcpy_to_msg.exit.i:                             ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #10
  %urg_rx_byte.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 31
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call3.i.i.i = tail call i32 @_copy_to_iter(ptr noundef %urg_rx_byte.i, i32 noundef 1, ptr noundef %msg_iter.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, 1
  %spec.select.i = select i1 %cmp.i.i, i32 0, i32 -14
  br label %if.end137.i

if.end137.i:                                      ; preds = %memcpy_to_msg.exit.i, %if.then132.i.if.end137.i_crit_edge
  %rc.0.i = phi i32 [ 0, %if.then132.i.if.end137.i_crit_edge ], [ %spec.select.i, %memcpy_to_msg.exit.i ]
  %cons138.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons138.i, i32 noundef 8) #8
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %cons138.i) #8
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons.i, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %cons.i, i64 noundef %call.i.i.i) #8
  %urg_curs.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 27
  %wrap.i.i = getelementptr inbounds %struct.anon.180, ptr %cons.i, i32 0, i32 1
  %44 = ptrtoint ptr %wrap.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %wrap.i.i, align 2
  %wrap1.i.i = getelementptr inbounds %struct.anon.180, ptr %urg_curs.i, i32 0, i32 1
  %46 = ptrtoint ptr %wrap1.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %wrap1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp.not.i.i = icmp eq i16 %45, %47
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #10
  %rmb_desc.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %48 = ptrtoint ptr %rmb_desc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmb_desc.i, align 4
  %len139.i = getelementptr inbounds %struct.smc_buf_desc, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %len139.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len139.i, align 8
  %count.i.i = getelementptr inbounds %struct.anon.180, ptr %cons.i, i32 0, i32 2
  %52 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i.i, align 4
  %sub.i.i = sub i32 %51, %53
  %count4.i.i = getelementptr inbounds %struct.anon.180, ptr %urg_curs.i, i32 0, i32 2
  %54 = ptrtoint ptr %count4.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count4.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %55
  br label %smc_curs_diff.exit.i

if.end.i.i:                                       ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #10
  %count7.i.i = getelementptr inbounds %struct.anon.180, ptr %urg_curs.i, i32 0, i32 2
  %56 = ptrtoint ptr %count7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count7.i.i, align 4
  %count8.i.i = getelementptr inbounds %struct.anon.180, ptr %cons.i, i32 0, i32 2
  %58 = ptrtoint ptr %count8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count8.i.i, align 4
  %sub9.i.i = sub i32 %57, %59
  br label %smc_curs_diff.exit.i

smc_curs_diff.exit.i:                             ; preds = %if.end.i.i, %if.then.i.i
  %sub9.sink.i.i = phi i32 [ %sub9.i.i, %if.end.i.i ], [ %add.i.i, %if.then.i.i ]
  %60 = call i32 @llvm.smax.i32(i32 %sub9.sink.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp141.i = icmp ugt i32 %60, 1
  br i1 %cmp141.i, label %if.then143.i, label %smc_curs_diff.exit.i.if.end144.i_crit_edge

smc_curs_diff.exit.i.if.end144.i_crit_edge:       ; preds = %smc_curs_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144.i

if.then143.i:                                     ; preds = %smc_curs_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %urg_rx_skip_pend.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 30
  %61 = ptrtoint ptr %urg_rx_skip_pend.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %urg_rx_skip_pend.i, align 1
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then143.i, %smc_curs_diff.exit.i.if.end144.i_crit_edge
  br i1 %tobool125.not.i, label %if.then147.i, label %if.end144.i.if.end154.i_crit_edge

if.end144.i.if.end154.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.i

if.then147.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %cons.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %.fca.0.load.i = load i64, ptr %cons.i, align 8
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i, 0
  %call149.i = call fastcc i32 @smc_rx_update_consumer(ptr noundef %smc, [1 x i64] %.fca.0.insert.i, i32 noundef 0) #8
  br label %if.end154.i

if.end154.thread.i:                               ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  %or153.i = or i32 %43, 33
  %63 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or153.i, ptr %msg_flags.i, align 4
  br label %64

if.end154.i:                                      ; preds = %if.then147.i, %if.end144.i.if.end154.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool155.not.i = icmp eq i32 %rc.0.i, 0
  br i1 %tobool155.not.i, label %if.end154.i._crit_edge, label %if.end154.i.smc_rx_recv_urg.exit_crit_edge

if.end154.i.smc_rx_recv_urg.exit_crit_edge:       ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_rx_recv_urg.exit

if.end154.i._crit_edge:                           ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %64

64:                                               ; preds = %if.end154.i._crit_edge, %if.end154.thread.i
  %len.addr.0198.i = phi i32 [ %len, %if.end154.thread.i ], [ 1, %if.end154.i._crit_edge ]
  br label %smc_rx_recv_urg.exit

if.end156.i:                                      ; preds = %if.end118.i
  %65 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %66)
  %cmp158.i = icmp eq i8 %66, 7
  br i1 %cmp158.i, label %if.end156.i.smc_rx_recv_urg.exit_crit_edge, label %lor.lhs.false160.i

if.end156.i.smc_rx_recv_urg.exit_crit_edge:       ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_rx_recv_urg.exit

lor.lhs.false160.i:                               ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 66
  %67 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sk_shutdown.i, align 2
  %69 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool163.not.i = icmp eq i8 %69, 0
  %spec.select190.i = select i1 %tobool163.not.i, i32 -11, i32 0
  br label %smc_rx_recv_urg.exit

smc_rx_recv_urg.exit:                             ; preds = %lor.lhs.false160.i, %if.end156.i.smc_rx_recv_urg.exit_crit_edge, %64, %if.end154.i.smc_rx_recv_urg.exit_crit_edge, %lor.lhs.false.i.smc_rx_recv_urg.exit_crit_edge, %if.then10.smc_rx_recv_urg.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.smc_rx_recv_urg.exit_crit_edge ], [ -22, %if.then10.smc_rx_recv_urg.exit_crit_edge ], [ 0, %if.end156.i.smc_rx_recv_urg.exit_crit_edge ], [ %spec.select190.i, %lor.lhs.false160.i ], [ %len.addr.0198.i, %64 ], [ -14, %if.end154.i.smc_rx_recv_urg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons.i) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %and12 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %cond.false.i, label %if.end11.sock_rcvtimeo.exit_crit_edge

if.end11.sock_rcvtimeo.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 62
  %70 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end11.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %71, %cond.false.i ], [ 0, %if.end11.sock_rcvtimeo.exit_crit_edge ]
  %72 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %cond.i, ptr %timeo, align 4
  %and15 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not.i870 = icmp eq i32 %and15, 0
  br i1 %tobool.not.i870, label %cond.false.i871, label %sock_rcvtimeo.exit.sock_rcvlowat.exit_crit_edge

sock_rcvtimeo.exit.sock_rcvlowat.exit_crit_edge:  ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_rcvlowat.exit

cond.false.i871:                                  ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sk_rcvlowat.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 6
  %73 = ptrtoint ptr %sk_rcvlowat.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %sk_rcvlowat.i, align 8
  %75 = tail call i32 @llvm.smin.i32(i32 %74, i32 %len) #8
  br label %sock_rcvlowat.exit

sock_rcvlowat.exit:                               ; preds = %cond.false.i871, %sock_rcvtimeo.exit.sock_rcvlowat.exit_crit_edge
  %cond5.i = phi i32 [ %75, %cond.false.i871 ], [ %len, %sock_rcvtimeo.exit.sock_rcvlowat.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5.i)
  %tobool6.not.i = icmp eq i32 %cond5.i, 0
  %..i = select i1 %tobool6.not.i, i32 1, i32 %cond5.i
  %bytes_to_rcv = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %76 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %bytes_to_rcv, align 4
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %78 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmb_desc, align 4
  %len18 = getelementptr inbounds %struct.smc_buf_desc, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %81)
  %cmp19.not = icmp slt i32 %77, %81
  br i1 %cmp19.not, label %sock_rcvlowat.exit.if.end283_crit_edge, label %do.body

sock_rcvlowat.exit.if.end283_crit_edge:           ; preds = %sock_rcvlowat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

do.body:                                          ; preds = %sock_rcvlowat.exit
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %82 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %skc_net.i, align 4
  %smc24 = getelementptr inbounds %struct.net, ptr %83, i32 0, i32 55
  %84 = ptrtoint ptr %smc24 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %smc24, align 4
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %86 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lnk, align 8
  %tobool25.not = icmp eq ptr %87, null
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  br i1 %tobool25.not, label %do.body32, label %land.lhs.true148.critedge

do.body32:                                        ; preds = %do.body
  %buf_full_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %85, i32 0, i32 1, i32 5, i32 3
  %89 = ptrtoint ptr %buf_full_cnt to i32
  %90 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i872 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i872 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu, align 4
  %arrayidx49 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx49, align 4
  %add = add i32 %95, %89
  %96 = inttoptr i32 %add to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %96, align 8
  %add50 = add i64 %98, 1
  store i64 %add50, ptr %96, align 8
  %99 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i873 = and i32 %99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i873)
  %tobool61.not = icmp eq i32 %and.i.i873, 0
  br i1 %tobool61.not, label %if.then70, label %do.body32.do.end73_crit_edge, !prof !45

do.body32.do.end73_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

if.then70:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.body32.do.end73_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #8, !srcloc !46
  br label %if.end283

land.lhs.true148.critedge:                        ; preds = %do.body
  %buf_full_cnt177 = getelementptr inbounds %struct.smc_stats_tech, ptr %85, i32 0, i32 5, i32 3
  %100 = ptrtoint ptr %buf_full_cnt177 to i32
  %101 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i874 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i874 to ptr
  %cpu180 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %cpu180 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu180, align 4
  %arrayidx181 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx181, align 4
  %add182 = add i32 %106, %100
  %107 = inttoptr i32 %add182 to ptr
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %107, align 8
  %add183 = add i64 %109, 1
  store i64 %add183, ptr %107, align 8
  %110 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i875 = and i32 %110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i875)
  %tobool194.not = icmp eq i32 %and.i.i875, 0
  br i1 %tobool194.not, label %if.then203, label %land.lhs.true148.critedge.do.end206_crit_edge, !prof !45

land.lhs.true148.critedge.do.end206_crit_edge:    ; preds = %land.lhs.true148.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end206

if.then203:                                       ; preds = %land.lhs.true148.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end206

do.end206:                                        ; preds = %if.then203, %land.lhs.true148.critedge.do.end206_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #8, !srcloc !46
  br label %if.end283

if.end283:                                        ; preds = %do.end206, %do.end73, %sock_rcvlowat.exit.if.end283_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %len)
  %cmp284 = icmp ugt i32 %77, %len
  br i1 %cmp284, label %do.body287, label %if.end283.if.end569_crit_edge

if.end283.if.end569_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end569

do.body287:                                       ; preds = %if.end283
  %skc_net.i876 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %111 = ptrtoint ptr %skc_net.i876 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %skc_net.i876, align 4
  %smc292 = getelementptr inbounds %struct.net, ptr %112, i32 0, i32 55
  %113 = ptrtoint ptr %smc292 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %smc292, align 4
  %lnk295 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %115 = ptrtoint ptr %lnk295 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lnk295, align 8
  %tobool296.not = icmp eq ptr %116, null
  %117 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  br i1 %tobool296.not, label %do.body305, label %land.lhs.true434.critedge

do.body305:                                       ; preds = %do.body287
  %buf_size_small_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %114, i32 0, i32 1, i32 5, i32 1
  %118 = ptrtoint ptr %buf_size_small_cnt to i32
  %119 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i877 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i877 to ptr
  %cpu332 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %cpu332 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cpu332, align 4
  %arrayidx333 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx333, align 4
  %add334 = add i32 %124, %118
  %125 = inttoptr i32 %add334 to ptr
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %125, align 8
  %add335 = add i64 %127, 1
  store i64 %add335, ptr %125, align 8
  %128 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i878 = and i32 %128, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i878)
  %tobool346.not = icmp eq i32 %and.i.i878, 0
  br i1 %tobool346.not, label %if.then355, label %do.body305.do.end358_crit_edge, !prof !45

do.body305.do.end358_crit_edge:                   ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end358

if.then355:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end358

do.end358:                                        ; preds = %if.then355, %do.body305.do.end358_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #8, !srcloc !46
  br label %if.end569

land.lhs.true434.critedge:                        ; preds = %do.body287
  %buf_size_small_cnt463 = getelementptr inbounds %struct.smc_stats_tech, ptr %114, i32 0, i32 5, i32 1
  %129 = ptrtoint ptr %buf_size_small_cnt463 to i32
  %130 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i879 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i879 to ptr
  %cpu466 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %cpu466 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpu466, align 4
  %arrayidx467 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx467, align 4
  %add468 = add i32 %135, %129
  %136 = inttoptr i32 %add468 to ptr
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %136, align 8
  %add469 = add i64 %138, 1
  store i64 %add469, ptr %136, align 8
  %139 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i880 = and i32 %139, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i880)
  %tobool480.not = icmp eq i32 %and.i.i880, 0
  br i1 %tobool480.not, label %if.then489, label %land.lhs.true434.critedge.do.end492_crit_edge, !prof !45

land.lhs.true434.critedge.do.end492_crit_edge:    ; preds = %land.lhs.true434.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end492

if.then489:                                       ; preds = %land.lhs.true434.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end492

do.end492:                                        ; preds = %if.then489, %land.lhs.true434.critedge.do.end492_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #8, !srcloc !46
  br label %if.end569

if.end569:                                        ; preds = %do.end492, %do.end358, %if.end283.if.end569_crit_edge
  %rx_off = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 37
  %140 = ptrtoint ptr %rx_off to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %rx_off, align 8
  %conv570 = zext i8 %141 to i32
  %142 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmb_desc, align 4
  %cpu_addr = getelementptr inbounds %struct.smc_buf_desc, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cpu_addr, align 8
  %add.ptr = getelementptr i8, ptr %145, i32 %conv570
  %tobool575.not = icmp eq ptr %pipe, null
  %killed = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 66
  %sk_err = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %146 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %147 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %148 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %149 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %conn_state_flags.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 7
  %150 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %151 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 17
  %splice_pending = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 33
  %tobool647.not = icmp eq ptr %msg, null
  %cons657 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 5
  %count.i = getelementptr inbounds %struct.anon.180, ptr %cons, i32 0, i32 2
  %wrap.i = getelementptr inbounds %struct.anon.180, ptr %cons, i32 0, i32 1
  %urg_state = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 28
  %and689 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and689)
  %tobool690.not = icmp eq i32 %and689, 0
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %and716 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and716)
  %tobool717.not = icmp eq i32 %and716, 0
  br label %do.body572

do.body572:                                       ; preds = %do.cond740.do.body572_crit_edge, %if.end569
  %read_remaining.0 = phi i32 [ %len, %if.end569 ], [ %read_remaining.3, %do.cond740.do.body572_crit_edge ]
  %read_done.0 = phi i32 [ 0, %if.end569 ], [ %read_done.3, %do.cond740.do.body572_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %read_done.0, i32 %..i)
  %cmp573.not = icmp ult i32 %read_done.0, %..i
  br i1 %cmp573.not, label %lor.lhs.false, label %do.body572.cleanup_crit_edge

do.body572.cleanup_crit_edge:                     ; preds = %do.body572
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.body572
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_done.0)
  %tobool577.not = icmp eq i32 %read_done.0, 0
  %or.cond = select i1 %tobool575.not, i1 true, i1 %tobool577.not
  br i1 %or.cond, label %if.end579, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end579:                                        ; preds = %lor.lhs.false
  %152 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool580.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool580.not, label %if.end582, label %if.end579.cleanup_crit_edge

if.end579.cleanup_crit_edge:                      ; preds = %if.end579
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end582:                                        ; preds = %if.end579
  %call583 = call fastcc zeroext i1 @smc_rx_recvmsg_data_available(ptr noundef %smc)
  br i1 %call583, label %if.end582.copy_crit_edge, label %if.end585

if.end582.copy_crit_edge:                         ; preds = %if.end582
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy

if.end585:                                        ; preds = %if.end582
  %153 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %sk_shutdown, align 2
  %155 = and i8 %154, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool588.not = icmp eq i8 %155, 0
  br i1 %tobool588.not, label %if.end593, label %if.then589

if.then589:                                       ; preds = %if.end585
  %call590 = call fastcc zeroext i1 @smc_rx_recvmsg_data_available(ptr noundef %smc)
  br i1 %call590, label %if.then589.copy_crit_edge, label %if.then589.cleanup_crit_edge

if.then589.cleanup_crit_edge:                     ; preds = %if.then589
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then589.copy_crit_edge:                        ; preds = %if.then589
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy

if.end593:                                        ; preds = %if.end585
  %156 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool612.not = icmp eq i32 %157, 0
  br i1 %tobool577.not, label %if.else, label %if.then595

if.then595:                                       ; preds = %if.end593
  br i1 %tobool612.not, label %lor.lhs.false597, label %if.then595.cleanup_crit_edge

if.then595.cleanup_crit_edge:                     ; preds = %if.then595
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false597:                                 ; preds = %if.then595
  %158 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %159)
  %cmp601 = icmp eq i8 %159, 7
  br i1 %cmp601, label %lor.lhs.false597.cleanup_crit_edge, label %lor.lhs.false603

lor.lhs.false597.cleanup_crit_edge:               ; preds = %lor.lhs.false597
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false603:                                 ; preds = %lor.lhs.false597
  %160 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool604.not = icmp eq i32 %161, 0
  br i1 %tobool604.not, label %lor.lhs.false603.cleanup_crit_edge, label %lor.lhs.false605

lor.lhs.false603.cleanup_crit_edge:               ; preds = %lor.lhs.false603
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false605:                                 ; preds = %lor.lhs.false603
  %162 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i881 = and i32 %162, -16384
  %163 = inttoptr i32 %and.i881 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %stack.i.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %167, align 4
  %170 = and i32 %169, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i882 = icmp eq i32 %170, 0
  br i1 %tobool.not.i882, label %signal_pending.exit, label %lor.lhs.false605.cleanup_crit_edge, !prof !43

lor.lhs.false605.cleanup_crit_edge:               ; preds = %lor.lhs.false605
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %lor.lhs.false605
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %167, align 4
  %and1.i.i.i.i.i = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool608.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool608.not, label %signal_pending.exit.if.end636_crit_edge, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit.if.end636_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end636

if.else:                                          ; preds = %if.end593
  br i1 %tobool612.not, label %if.end615, label %if.then613

if.then613:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call614 = call fastcc i32 @sock_error(ptr noundef %smc)
  br label %cleanup

if.end615:                                        ; preds = %if.else
  %173 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %174)
  %cmp619 = icmp eq i8 %174, 7
  br i1 %cmp619, label %if.then621, label %if.end625

if.then621:                                       ; preds = %if.end615
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %150, align 4
  %177 = and i32 %176, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.i.not = icmp eq i32 %177, 0
  %spec.select = select i1 %tobool.i.not, i32 -107, i32 0
  br label %cleanup

if.end625:                                        ; preds = %if.end615
  %178 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i884 = and i32 %178, -16384
  %179 = inttoptr i32 %and.i884 to ptr
  %task627 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %task627 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %task627, align 8
  %stack.i.i885 = getelementptr inbounds %struct.task_struct, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %stack.i.i885 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %stack.i.i885, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %183, align 4
  %186 = and i32 %185, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i886 = icmp eq i32 %186, 0
  br i1 %tobool.not.i886, label %signal_pending.exit890, label %if.end625.if.then630_crit_edge, !prof !43

if.end625.if.then630_crit_edge:                   ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then630

signal_pending.exit890:                           ; preds = %if.end625
  %187 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %183, align 4
  %and1.i.i.i.i.i887 = and i32 %188, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i887)
  %tobool629.not = icmp eq i32 %and1.i.i.i.i.i887, 0
  br i1 %tobool629.not, label %if.end632, label %signal_pending.exit890.if.then630_crit_edge

signal_pending.exit890.if.then630_crit_edge:      ; preds = %signal_pending.exit890
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then630

if.then630:                                       ; preds = %signal_pending.exit890.if.then630_crit_edge, %if.end625.if.then630_crit_edge
  %189 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %190)
  %cmp.i891 = icmp eq i32 %190, 2147483647
  %cond.i892 = select i1 %cmp.i891, i32 -512, i32 -4
  br label %cleanup

if.end632:                                        ; preds = %signal_pending.exit890
  %191 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool633.not = icmp eq i32 %192, 0
  br i1 %tobool633.not, label %if.end632.cleanup_crit_edge, label %if.end632.if.end636_crit_edge

if.end632.if.end636_crit_edge:                    ; preds = %if.end632
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end636

if.end632.cleanup_crit_edge:                      ; preds = %if.end632
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end636:                                        ; preds = %if.end632.if.end636_crit_edge, %signal_pending.exit.if.end636_crit_edge
  %call.i.i.i893 = call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %193 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool638.not = icmp eq i32 %194, 0
  br i1 %tobool638.not, label %if.then639, label %if.end636.copy_crit_edge

if.end636.copy_crit_edge:                         ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy

if.then639:                                       ; preds = %if.end636
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %195 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %wait.i, align 4
  %196 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i894 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i894 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task.i, align 8
  %200 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %199, ptr %146, align 4
  %201 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @woken_wake_function, ptr %147, align 4
  %202 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %148, ptr %148, align 4
  %203 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %148, ptr %149, align 4
  %call.i.i.i913 = call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %204 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i895 = icmp eq i32 %205, 0
  br i1 %tobool.not.i895, label %if.end.i896, label %if.then639.smc_rx_wait.exit_crit_edge

if.then639.smc_rx_wait.exit_crit_edge:            ; preds = %if.then639
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_rx_wait.exit

if.end.i896:                                      ; preds = %if.then639
  %206 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %150, align 4
  %208 = and i32 %207, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.i.not.i.i = icmp eq i32 %208, 0
  br i1 %tobool.i.not.i.i, label %if.end.i896.sk_set_bit.exit.i_crit_edge, label %if.end.i.i897

if.end.i896.sk_set_bit.exit.i_crit_edge:          ; preds = %if.end.i896
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_set_bit.exit.i

if.end.i.i897:                                    ; preds = %if.end.i896
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %151, align 8
  %flags.i.i = getelementptr inbounds %struct.socket_wq, ptr %210, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #8
  br label %sk_set_bit.exit.i

sk_set_bit.exit.i:                                ; preds = %if.end.i.i897, %if.end.i896.sk_set_bit.exit.i_crit_edge
  %211 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile ptr, ptr %151, align 8
  call void @add_wait_queue(ptr noundef %212, ptr noundef nonnull %wait.i) #8
  call void @release_sock(ptr noundef %smc) #8
  %213 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool8.not.i = icmp eq i32 %214, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i898, label %sk_set_bit.exit.i.if.end23.i_crit_edge

sk_set_bit.exit.i.if.end23.i_crit_edge:           ; preds = %sk_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

lor.lhs.false.i898:                               ; preds = %sk_set_bit.exit.i
  %215 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %bf.load.i = load i8, ptr %conn_state_flags.i, align 1
  %216 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool9.not.i = icmp eq i8 %216, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false.i898.if.end23.i_crit_edge

lor.lhs.false.i898.if.end23.i_crit_edge:          ; preds = %lor.lhs.false.i898
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i898
  %217 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %sk_shutdown, align 2
  %219 = and i8 %218, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool12.not.i = icmp eq i8 %219, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false10.i.if.end23.i_crit_edge

lor.lhs.false10.i.if.end23.i_crit_edge:           ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false10.i
  %220 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %220)
  %bf.load14.i = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load14.i)
  %tobool17.not.i = icmp sgt i8 %bf.load14.i, -1
  br i1 %tobool17.not.i, label %lor.rhs.i, label %lor.lhs.false13.i.if.end23.i_crit_edge

lor.lhs.false13.i.if.end23.i_crit_edge:           ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

lor.rhs.i:                                        ; preds = %lor.lhs.false13.i
  %call.i.i.i911 = call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %221 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool19.not.i = icmp eq i32 %222, 0
  br i1 %tobool19.not.i, label %if.then21.i, label %lor.rhs.i.if.end23.i_crit_edge

lor.rhs.i.if.end23.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %timeo, align 4
  %call22.i = call i32 @wait_woken(ptr noundef nonnull %wait.i, i32 noundef 1, i32 noundef %224) #8
  %225 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %call22.i, ptr %timeo, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %lor.rhs.i.if.end23.i_crit_edge, %lor.lhs.false13.i.if.end23.i_crit_edge, %lor.lhs.false10.i.if.end23.i_crit_edge, %lor.lhs.false.i898.if.end23.i_crit_edge, %sk_set_bit.exit.i.if.end23.i_crit_edge
  %226 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %task.i, align 8
  %task_state_change.i = getelementptr inbounds %struct.task_struct, ptr %227, i32 0, i32 212
  %228 = ptrtoint ptr %task_state_change.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %task_state_change.i, align 4
  call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #8
  %229 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool27.not.i = icmp eq i32 %230, 0
  br i1 %tobool27.not.i, label %lor.lhs.false28.i, label %if.end23.i.lor.end48.i_crit_edge

if.end23.i.lor.end48.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end48.i

lor.lhs.false28.i:                                ; preds = %if.end23.i
  %231 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %bf.load29.i = load i8, ptr %conn_state_flags.i, align 1
  %232 = and i8 %bf.load29.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool33.not.i = icmp eq i8 %232, 0
  br i1 %tobool33.not.i, label %lor.lhs.false34.i, label %lor.lhs.false28.i.lor.end48.i_crit_edge

lor.lhs.false28.i.lor.end48.i_crit_edge:          ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end48.i

lor.lhs.false34.i:                                ; preds = %lor.lhs.false28.i
  %233 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %sk_shutdown, align 2
  %235 = and i8 %234, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool38.not.i = icmp eq i8 %235, 0
  br i1 %tobool38.not.i, label %lor.lhs.false39.i, label %lor.lhs.false34.i.lor.end48.i_crit_edge

lor.lhs.false34.i.lor.end48.i_crit_edge:          ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end48.i

lor.lhs.false39.i:                                ; preds = %lor.lhs.false34.i
  %236 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %236)
  %bf.load41.i = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41.i)
  %tobool44.not.i = icmp sgt i8 %bf.load41.i, -1
  br i1 %tobool44.not.i, label %lor.rhs45.i, label %lor.lhs.false39.i.lor.end48.i_crit_edge

lor.lhs.false39.i.lor.end48.i_crit_edge:          ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end48.i

lor.rhs45.i:                                      ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i909 = call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %237 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %bytes_to_rcv, align 4
  br label %lor.end48.i

lor.end48.i:                                      ; preds = %lor.rhs45.i, %lor.lhs.false39.i.lor.end48.i_crit_edge, %lor.lhs.false34.i.lor.end48.i_crit_edge, %lor.lhs.false28.i.lor.end48.i_crit_edge, %if.end23.i.lor.end48.i_crit_edge
  %239 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile ptr, ptr %151, align 8
  call void @remove_wait_queue(ptr noundef %240, ptr noundef nonnull %wait.i) #8
  %241 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile i32, ptr %150, align 4
  %243 = and i32 %242, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool.i.not.i78.i = icmp eq i32 %243, 0
  br i1 %tobool.i.not.i78.i, label %lor.end48.i.smc_rx_wait.exit_crit_edge, label %if.end.i80.i

lor.end48.i.smc_rx_wait.exit_crit_edge:           ; preds = %lor.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_rx_wait.exit

if.end.i80.i:                                     ; preds = %lor.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %244 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %151, align 8
  %flags.i79.i = getelementptr inbounds %struct.socket_wq, ptr %245, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i79.i) #8
  br label %smc_rx_wait.exit

smc_rx_wait.exit:                                 ; preds = %if.end.i80.i, %lor.end48.i.smc_rx_wait.exit_crit_edge, %if.then639.smc_rx_wait.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  br label %do.cond740

copy:                                             ; preds = %if.end636.copy_crit_edge, %if.then589.copy_crit_edge, %if.end582.copy_crit_edge
  %call.i.i867 = call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %246 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile i32, ptr %bytes_to_rcv, align 4
  %call.i.i868 = call zeroext i1 @__kasan_check_read(ptr noundef %splice_pending, i32 noundef 4) #8
  %248 = ptrtoint ptr %splice_pending to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %splice_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool645.not = icmp eq i32 %247, 0
  br i1 %tobool645.not, label %copy.if.then650_crit_edge, label %lor.lhs.false646

copy.if.then650_crit_edge:                        ; preds = %copy
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then650

lor.lhs.false646:                                 ; preds = %copy
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool649.not = icmp eq i32 %249, 0
  %or.cond864 = select i1 %tobool647.not, i1 true, i1 %tobool649.not
  br i1 %or.cond864, label %if.end656, label %lor.lhs.false646.if.then650_crit_edge

lor.lhs.false646.if.then650_crit_edge:            ; preds = %lor.lhs.false646
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then650

if.then650:                                       ; preds = %lor.lhs.false646.if.then650_crit_edge, %copy.if.then650_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool651.not = icmp eq i32 %249, 0
  %smc_rx_data_available.smc_rx_data_available_and_no_splice_pend = select i1 %tobool651.not, ptr @smc_rx_data_available, ptr @smc_rx_data_available_and_no_splice_pend
  %call655 = call i32 @smc_rx_wait(ptr noundef %smc, ptr noundef nonnull %timeo, ptr noundef nonnull %smc_rx_data_available.smc_rx_data_available_and_no_splice_pend)
  br label %do.cond740

if.end656:                                        ; preds = %lor.lhs.false646
  %call.i.i.i901 = call zeroext i1 @__kasan_check_read(ptr noundef %cons657, i32 noundef 8) #8
  %call.i.i902 = call i64 @generic_atomic64_read(ptr noundef %cons657) #8
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %cons, i64 noundef %call.i.i902) #8
  br i1 %tobool649.not, label %if.end656.if.end662_crit_edge, label %if.then659

if.end656.if.end662_crit_edge:                    ; preds = %if.end656
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end662

if.then659:                                       ; preds = %if.end656
  %250 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %rmb_desc, align 4
  %len661 = getelementptr inbounds %struct.smc_buf_desc, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %len661 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %len661, align 8
  %254 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %count.i, align 4
  %add.i903 = add i32 %255, %249
  store i32 %add.i903, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i903, i32 %253)
  %cmp.not.i = icmp ult i32 %add.i903, %253
  br i1 %cmp.not.i, label %if.then659.if.end662_crit_edge, label %if.then.i

if.then659.if.end662_crit_edge:                   ; preds = %if.then659
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end662

if.then.i:                                        ; preds = %if.then659
  call void @__sanitizer_cov_trace_pc() #10
  %256 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %wrap.i, align 2
  %inc.i = add i16 %257, 1
  store i16 %inc.i, ptr %wrap.i, align 2
  %sub.i = sub i32 %add.i903, %253
  %258 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %sub.i, ptr %count.i, align 4
  br label %if.end662

if.end662:                                        ; preds = %if.then.i, %if.then659.if.end662_crit_edge, %if.end656.if.end662_crit_edge
  %259 = ptrtoint ptr %urg_state to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %urg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %260)
  %cmp663 = icmp eq i32 %260, 1
  br i1 %cmp663, label %land.lhs.true665, label %if.end662.if.end673_crit_edge

if.end662.if.end673_crit_edge:                    ; preds = %if.end662
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end673

land.lhs.true665:                                 ; preds = %if.end662
  call void @__sanitizer_cov_trace_pc() #10
  %261 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load volatile i32, ptr %150, align 4
  %263 = and i32 %262, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool.i905 = icmp ne i32 %263, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %247)
  %cmp670 = icmp sgt i32 %247, 1
  %or.cond865 = select i1 %tobool.i905, i1 %cmp670, i1 false
  %dec = sext i1 %or.cond865 to i32
  %spec.select866 = add i32 %247, %dec
  br label %if.end673

if.end673:                                        ; preds = %land.lhs.true665, %if.end662.if.end673_crit_edge
  %readable.0 = phi i32 [ %247, %if.end662.if.end673_crit_edge ], [ %spec.select866, %land.lhs.true665 ]
  %264 = call i32 @llvm.umin.i32(i32 %read_remaining.0, i32 %readable.0)
  %265 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rmb_desc, align 4
  %len678 = getelementptr inbounds %struct.smc_buf_desc, ptr %266, i32 0, i32 3
  %267 = ptrtoint ptr %len678 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %len678, align 8
  %269 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %count.i, align 4
  %sub = sub i32 %268, %270
  %271 = call i32 @llvm.umin.i32(i32 %264, i32 %sub)
  call void @smc_rmb_sync_sg_for_cpu(ptr noundef %conn1) #8
  br i1 %tobool690.not, label %if.then691, label %if.end707.thread

if.then691:                                       ; preds = %if.end673
  %add.ptr697 = getelementptr i8, ptr %add.ptr, i32 %270
  br i1 %tobool647.not, label %if.end699, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then691
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp9.i.i.i = icmp slt i32 %271, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge, label %if.then27.i.i.i, !prof !43

land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge:    ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %memcpy_to_msg.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %memcpy_to_msg.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__check_object_size(ptr noundef %add.ptr697, i32 noundef %271, i1 noundef zeroext true) #8
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef %add.ptr697, i32 noundef %271, ptr noundef %msg_iter.i) #8
  br label %memcpy_to_msg.exit

memcpy_to_msg.exit:                               ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %271)
  %cmp.i906 = icmp eq i32 %retval.0.i.i, %271
  br i1 %cmp.i906, label %memcpy_to_msg.exit.if.end707_crit_edge, label %memcpy_to_msg.exit.if.then702_crit_edge

memcpy_to_msg.exit.if.then702_crit_edge:          ; preds = %memcpy_to_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then702

memcpy_to_msg.exit.if.end707_crit_edge:           ; preds = %memcpy_to_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end707

if.end699:                                        ; preds = %if.then691
  %call698 = call fastcc i32 @smc_rx_splice(ptr noundef %pipe, ptr noundef %add.ptr697, i32 noundef %271, ptr noundef %smc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call698)
  %cmp700 = icmp slt i32 %call698, 0
  br i1 %cmp700, label %if.end699.if.then702_crit_edge, label %if.end699.if.end707_crit_edge

if.end699.if.end707_crit_edge:                    ; preds = %if.end699
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end707

if.end699.if.then702_crit_edge:                   ; preds = %if.end699
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then702

if.then702:                                       ; preds = %if.end699.1.if.then702_crit_edge, %memcpy_to_msg.exit.1.if.then702_crit_edge, %if.end699.if.then702_crit_edge, %memcpy_to_msg.exit.if.then702_crit_edge
  %read_done.1931.lcssa = phi i32 [ %read_done.0, %memcpy_to_msg.exit.if.then702_crit_edge ], [ %read_done.0, %if.end699.if.then702_crit_edge ], [ %add709, %memcpy_to_msg.exit.1.if.then702_crit_edge ], [ %add709, %if.end699.1.if.then702_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_done.1931.lcssa)
  %tobool703.not = icmp eq i32 %read_done.1931.lcssa, 0
  %spec.store.select = select i1 %tobool703.not, i32 -14, i32 %read_done.1931.lcssa
  call void @smc_rmb_sync_sg_for_device(ptr noundef %conn1) #8
  br label %cleanup

if.end707:                                        ; preds = %if.end699.if.end707_crit_edge, %memcpy_to_msg.exit.if.end707_crit_edge
  %sub708 = sub i32 %read_remaining.0, %271
  %add709 = add i32 %read_done.0, %271
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %sub)
  %cmp710.not = icmp ugt i32 %264, %sub
  br i1 %cmp710.not, label %if.end713, label %if.end707.for.end_crit_edge

if.end707.for.end_crit_edge:                      ; preds = %if.end707
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end707.thread:                                 ; preds = %if.end673
  %sub708934 = sub i32 %read_remaining.0, %271
  %add709935 = add i32 %read_done.0, %271
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %sub)
  %cmp710.not936 = icmp ugt i32 %264, %sub
  br i1 %cmp710.not936, label %if.end713.thread, label %if.end707.thread.for.end_crit_edge

if.end707.thread.for.end_crit_edge:               ; preds = %if.end707.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end713.thread:                                 ; preds = %if.end707.thread
  call void @__sanitizer_cov_trace_pc() #10
  %sub714941 = sub i32 %264, %271
  br label %if.end707.1

if.end713:                                        ; preds = %if.end707
  %sub714 = sub i32 %264, %271
  br i1 %tobool690.not, label %if.then691.1, label %if.end713.if.end707.1_crit_edge

if.end713.if.end707.1_crit_edge:                  ; preds = %if.end713
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end707.1

if.then691.1:                                     ; preds = %if.end713
  br i1 %tobool647.not, label %if.end699.1, label %if.end8.i.i.i.1

if.end8.i.i.i.1:                                  ; preds = %if.then691.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub714)
  %cmp9.i.i.i.1 = icmp slt i32 %sub714, 0
  br i1 %cmp9.i.i.i.1, label %land.rhs16.i.i.i.1, label %if.then.i.i.i.i.1

if.then.i.i.i.i.1:                                ; preds = %if.end8.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %sub714, i1 noundef zeroext true) #8
  %call3.i.i.1 = call i32 @_copy_to_iter(ptr noundef %add.ptr, i32 noundef %sub714, ptr noundef %msg_iter.i) #8
  br label %memcpy_to_msg.exit.1

land.rhs16.i.i.i.1:                               ; preds = %if.end8.i.i.i.1
  %.b1.i.i.i.1 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.1, label %land.rhs16.i.i.i.1.memcpy_to_msg.exit.1_crit_edge, label %if.then27.i.i.i.1, !prof !43

land.rhs16.i.i.i.1.memcpy_to_msg.exit.1_crit_edge: ; preds = %land.rhs16.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %memcpy_to_msg.exit.1

if.then27.i.i.i.1:                                ; preds = %land.rhs16.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %memcpy_to_msg.exit.1

memcpy_to_msg.exit.1:                             ; preds = %if.then27.i.i.i.1, %land.rhs16.i.i.i.1.memcpy_to_msg.exit.1_crit_edge, %if.then.i.i.i.i.1
  %retval.0.i.i.1 = phi i32 [ %call3.i.i.1, %if.then.i.i.i.i.1 ], [ 0, %if.then27.i.i.i.1 ], [ 0, %land.rhs16.i.i.i.1.memcpy_to_msg.exit.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.1, i32 %sub714)
  %cmp.i906.1 = icmp eq i32 %retval.0.i.i.1, %sub714
  br i1 %cmp.i906.1, label %memcpy_to_msg.exit.1.if.end707.1_crit_edge, label %memcpy_to_msg.exit.1.if.then702_crit_edge

memcpy_to_msg.exit.1.if.then702_crit_edge:        ; preds = %memcpy_to_msg.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then702

memcpy_to_msg.exit.1.if.end707.1_crit_edge:       ; preds = %memcpy_to_msg.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end707.1

if.end699.1:                                      ; preds = %if.then691.1
  %call698.1 = call fastcc i32 @smc_rx_splice(ptr noundef %pipe, ptr noundef %add.ptr, i32 noundef %sub714, ptr noundef %smc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call698.1)
  %cmp700.1 = icmp slt i32 %call698.1, 0
  br i1 %cmp700.1, label %if.end699.1.if.then702_crit_edge, label %if.end699.1.if.end707.1_crit_edge

if.end699.1.if.end707.1_crit_edge:                ; preds = %if.end699.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end707.1

if.end699.1.if.then702_crit_edge:                 ; preds = %if.end699.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then702

if.end707.1:                                      ; preds = %if.end699.1.if.end707.1_crit_edge, %memcpy_to_msg.exit.1.if.end707.1_crit_edge, %if.end713.if.end707.1_crit_edge, %if.end713.thread
  %sub714945 = phi i32 [ %sub714941, %if.end713.thread ], [ %sub714, %if.end699.1.if.end707.1_crit_edge ], [ %sub714, %memcpy_to_msg.exit.1.if.end707.1_crit_edge ], [ %sub714, %if.end713.if.end707.1_crit_edge ]
  %sub708937942 = phi i32 [ %sub708934, %if.end713.thread ], [ %sub708, %if.end699.1.if.end707.1_crit_edge ], [ %sub708, %memcpy_to_msg.exit.1.if.end707.1_crit_edge ], [ %sub708, %if.end713.if.end707.1_crit_edge ]
  %sub708.1 = sub i32 %sub708937942, %sub714945
  %add709.1 = add i32 %read_done.0, %264
  br label %for.end

for.end:                                          ; preds = %if.end707.1, %if.end707.thread.for.end_crit_edge, %if.end707.for.end_crit_edge
  %sub708.lcssa = phi i32 [ %sub708, %if.end707.for.end_crit_edge ], [ %sub708.1, %if.end707.1 ], [ %sub708934, %if.end707.thread.for.end_crit_edge ]
  %add709.lcssa = phi i32 [ %add709, %if.end707.for.end_crit_edge ], [ %add709.1, %if.end707.1 ], [ %add709935, %if.end707.thread.for.end_crit_edge ]
  call void @smc_rmb_sync_sg_for_device(ptr noundef %conn1) #8
  br i1 %tobool717.not, label %do.end722, label %for.end.if.end739_crit_edge

for.end.if.end739_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end739

do.end722:                                        ; preds = %for.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  %call.i.i869 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %bytes_to_rcv, i32 1, i32 3, i32 1) #8
  %272 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_to_rcv, ptr %bytes_to_rcv, i32 %264, ptr elementtype(i32) %bytes_to_rcv) #8, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  br i1 %tobool647.not, label %do.end722.if.end739_crit_edge, label %land.lhs.true733

do.end722.if.end739_crit_edge:                    ; preds = %do.end722
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end739

land.lhs.true733:                                 ; preds = %do.end722
  %273 = ptrtoint ptr %cons to i32
  call void @__asan_load8_noabort(i32 %273)
  %.fca.0.load = load i64, ptr %cons, align 8
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %.fca.0.load, 0
  %call735 = call fastcc i32 @smc_rx_update_consumer(ptr noundef %smc, [1 x i64] %.fca.0.insert, i32 noundef %264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call735)
  %tobool736.not = icmp eq i32 %call735, 0
  br i1 %tobool736.not, label %land.lhs.true733.if.end739_crit_edge, label %land.lhs.true733.cleanup_crit_edge

land.lhs.true733.cleanup_crit_edge:               ; preds = %land.lhs.true733
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true733.if.end739_crit_edge:             ; preds = %land.lhs.true733
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end739

if.end739:                                        ; preds = %land.lhs.true733.if.end739_crit_edge, %do.end722.if.end739_crit_edge, %for.end.if.end739_crit_edge
  call fastcc void @trace_smc_rx_recvmsg(ptr noundef %smc, i32 noundef %264)
  br label %do.cond740

do.cond740:                                       ; preds = %if.end739, %if.then650, %smc_rx_wait.exit
  %read_remaining.3 = phi i32 [ %read_remaining.0, %if.then650 ], [ %sub708.lcssa, %if.end739 ], [ %read_remaining.0, %smc_rx_wait.exit ]
  %read_done.3 = phi i32 [ %read_done.0, %if.then650 ], [ %add709.lcssa, %if.end739 ], [ %read_done.0, %smc_rx_wait.exit ]
  %tobool741.not = icmp eq i32 %read_remaining.3, 0
  br i1 %tobool741.not, label %do.cond740.cleanup_crit_edge, label %do.cond740.do.body572_crit_edge

do.cond740.do.body572_crit_edge:                  ; preds = %do.cond740
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body572

do.cond740.cleanup_crit_edge:                     ; preds = %do.cond740
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.cond740.cleanup_crit_edge, %land.lhs.true733.cleanup_crit_edge, %if.then702, %if.end632.cleanup_crit_edge, %if.then630, %if.then621, %if.then613, %signal_pending.exit.cleanup_crit_edge, %lor.lhs.false605.cleanup_crit_edge, %lor.lhs.false603.cleanup_crit_edge, %lor.lhs.false597.cleanup_crit_edge, %if.then595.cleanup_crit_edge, %if.then589.cleanup_crit_edge, %if.end579.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.body572.cleanup_crit_edge, %smc_rx_recv_urg.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %smc_rx_recv_urg.exit ], [ -22, %entry.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ], [ %spec.store.select, %if.then702 ], [ %call614, %if.then613 ], [ %cond.i892, %if.then630 ], [ %spec.select, %if.then621 ], [ %read_done.0, %lor.lhs.false605.cleanup_crit_edge ], [ %read_done.0, %lor.lhs.false.cleanup_crit_edge ], [ %read_done.0, %lor.lhs.false603.cleanup_crit_edge ], [ %read_done.0, %signal_pending.exit.cleanup_crit_edge ], [ %read_done.0, %lor.lhs.false597.cleanup_crit_edge ], [ %read_done.0, %if.then595.cleanup_crit_edge ], [ %read_done.0, %if.then589.cleanup_crit_edge ], [ %add709.lcssa, %land.lhs.true733.cleanup_crit_edge ], [ %read_done.3, %do.cond740.cleanup_crit_edge ], [ %read_done.0, %if.end579.cleanup_crit_edge ], [ %read_done.0, %do.body572.cleanup_crit_edge ], [ -11, %if.end632.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @smc_rx_recvmsg_data_available(ptr noundef %smc) unnamed_addr #0 align 64 {
entry:
  %cons.i = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_to_rcv.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv.i, i32 noundef 4) #8
  %0 = ptrtoint ptr %bytes_to_rcv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bytes_to_rcv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %urg_state = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 28
  %2 = ptrtoint ptr %urg_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %urg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then2, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons.i) #8
  %4 = ptrtoint ptr %cons.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %cons.i, align 8, !annotation !42
  %cons2.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons2.i, i32 noundef 8) #8
  %call.i.i.i6 = tail call i64 @generic_atomic64_read(ptr noundef %cons2.i) #8
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons.i, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %cons.i, i64 noundef %call.i.i.i6) #8
  %5 = ptrtoint ptr %cons.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.0.load.i = load i64, ptr %cons.i, align 8
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i, 0
  %call.i = call fastcc i32 @smc_rx_update_consumer(ptr noundef %smc, [1 x i64] %.fca.0.insert.i, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %6 = xor i1 %tobool.not, true
  ret i1 %6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_error(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !43

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #8, !srcloc !51
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %sub = sub i32 0, %asmresult.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_rx_data_available(ptr noundef %conn) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %bytes_to_rcv = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %0 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bytes_to_rcv, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_rx_data_available_and_no_splice_pend(ptr noundef %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_to_rcv = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %0 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %splice_pending = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 33
  %call.i.i4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %splice_pending, i32 noundef 4) #8
  %2 = ptrtoint ptr %splice_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %splice_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  %phi.cast = zext i1 %tobool2.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_rmb_sync_sg_for_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_rx_splice(ptr noundef %pipe, ptr noundef %src, i32 noundef %len, ptr noundef %smc) unnamed_addr #0 align 64 {
entry:
  %spd = alloca %struct.splice_pipe_desc, align 4
  %partial = alloca %struct.partial_page, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %spd) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %partial) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.partial_page, ptr %partial, i32 0, i32 2
  %2 = getelementptr inbounds %struct.partial_page, ptr %partial, i32 0, i32 1
  %3 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 5
  %4 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 3
  %6 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 2
  %7 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 1
  %len1 = getelementptr inbounds %struct.smc_spd_priv, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %len1, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %smc, ptr %call7.i.i, align 8
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %10 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmb_desc, align 4
  %cpu_addr = getelementptr inbounds %struct.smc_buf_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %src to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %14 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.ptr.sub, ptr %partial, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len, ptr %2, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %5, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %6, align 4
  %pages = getelementptr inbounds %struct.smc_buf_desc, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %spd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pages, ptr %spd, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %partial, ptr %7, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @smc_pipe_ops, ptr %4, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @smc_rx_spd_release, ptr %3, align 4
  %call8 = call i32 @splice_to_pipe(ptr noundef %pipe, ptr noundef nonnull %spd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp sgt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !45

if.then9.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %26 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmb_desc, align 4
  %pages12 = getelementptr inbounds %struct.smc_buf_desc, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pages12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pages12, align 4
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %29 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %33, %if.end.i.i ]
  %34 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i.i.i29 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %35 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %36, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !45

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %37 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@smc_rx_splice, %if.then.i.i.i.i)) #8
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !56

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__page_ref_mod(ptr noundef %34, i32 noundef 1) #8
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %splice_pending = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 33
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %splice_pending, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %splice_pending, i32 1, i32 3, i32 1) #8
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %splice_pending, ptr %splice_pending, i32 %call8, ptr elementtype(i32) %splice_pending) #8, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call8, %get_page.exit ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %partial) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_rmb_sync_sg_for_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_rx_update_consumer(ptr noundef %smc, [1 x i64] %cons.coerce, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %cons = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cons.coerce.fca.0.extract = extractvalue [1 x i64] %cons.coerce, 0
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %cons.coerce.fca.0.extract, ptr %cons, align 8
  %rmb_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %1 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmb_desc, align 4
  %len4 = getelementptr inbounds %struct.smc_buf_desc, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len4, align 8
  %count.i = getelementptr inbounds %struct.anon.180, ptr %cons, i32 0, i32 2
  %5 = trunc i64 %cons.coerce.fca.0.extract to i32
  %add.i = add i32 %5, %len
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %4)
  %cmp.not.i = icmp ult i32 %add.i, %4
  br i1 %cmp.not.i, label %entry.smc_curs_add.exit_crit_edge, label %if.then.i

entry.smc_curs_add.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_curs_add.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wrap.i = getelementptr inbounds %struct.anon.180, ptr %cons, i32 0, i32 1
  %7 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wrap.i, align 2
  %inc.i = add i16 %8, 1
  store i16 %inc.i, ptr %wrap.i, align 2
  %sub.i = sub i32 %add.i, %4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %count.i, align 4
  br label %smc_curs_add.exit

smc_curs_add.exit:                                ; preds = %if.then.i, %entry.smc_curs_add.exit_crit_edge
  %urg_state = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 28
  %10 = ptrtoint ptr %urg_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %urg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %smc_curs_add.exit.if.then_crit_edge, label %lor.lhs.false

smc_curs_add.exit.if.then_crit_edge:              ; preds = %smc_curs_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %smc_curs_add.exit
  %urg_rx_skip_pend = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 30
  %12 = ptrtoint ptr %urg_rx_skip_pend to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %urg_rx_skip_pend, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %smc_curs_add.exit.if.then_crit_edge
  %urg_curs = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 27
  %wrap.i41 = getelementptr inbounds %struct.anon.180, ptr %cons, i32 0, i32 1
  %14 = ptrtoint ptr %wrap.i41 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %wrap.i41, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.180, ptr %urg_curs, i32 0, i32 1
  %16 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp.i = icmp ugt i16 %15, %17
  br i1 %cmp.i, label %if.then.if.then.i43_crit_edge, label %lor.lhs.false.i

if.then.if.then.i43_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i43

lor.lhs.false.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp8.i = icmp eq i16 %15, %17
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i, align 4
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.then.i30.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %count10.i = getelementptr inbounds %struct.anon.180, ptr %urg_curs, i32 0, i32 2
  %20 = ptrtoint ptr %count10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp11.i = icmp ult i32 %21, %19
  br i1 %cmp11.i, label %land.lhs.true.i.if.then.i43_crit_edge, label %if.end.i34.i

land.lhs.true.i.if.then.i43_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i43

if.then.i43:                                      ; preds = %land.lhs.true.i.if.then.i43_crit_edge, %if.then.if.then.i43_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %15)
  %cmp.not.i.i = icmp eq i16 %17, %15
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #10
  %count.i.i = getelementptr inbounds %struct.anon.180, ptr %urg_curs, i32 0, i32 2
  %22 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i.i, align 4
  %sub.i.i = sub i32 %4, %23
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 4
  %add.i.i = add i32 %sub.i.i, %25
  br label %smc_curs_diff.exit.i

if.end.i.i:                                       ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 4
  %count8.i.i = getelementptr inbounds %struct.anon.180, ptr %urg_curs, i32 0, i32 2
  %28 = ptrtoint ptr %count8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count8.i.i, align 4
  %sub9.i.i = sub i32 %27, %29
  br label %smc_curs_diff.exit.i

smc_curs_diff.exit.i:                             ; preds = %if.end.i.i, %if.then.i.i
  %sub9.sink.i.i = phi i32 [ %sub9.i.i, %if.end.i.i ], [ %add.i.i, %if.then.i.i ]
  %30 = tail call i32 @llvm.smax.i32(i32 %sub9.sink.i.i, i32 0) #8
  %sub.i44 = sub nsw i32 0, %30
  br label %smc_curs_comp.exit

if.then.i30.i:                                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i27.i = sub i32 %4, %19
  %count4.i28.i = getelementptr inbounds %struct.anon.180, ptr %urg_curs, i32 0, i32 2
  %31 = ptrtoint ptr %count4.i28.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count4.i28.i, align 4
  %add.i29.i = add i32 %sub.i27.i, %32
  br label %smc_curs_diff.exit36.i

if.end.i34.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.i33.i = sub i32 %21, %19
  br label %smc_curs_diff.exit36.i

smc_curs_diff.exit36.i:                           ; preds = %if.end.i34.i, %if.then.i30.i
  %sub9.sink.i35.i = phi i32 [ %sub9.i33.i, %if.end.i34.i ], [ %add.i29.i, %if.then.i30.i ]
  %33 = tail call i32 @llvm.smax.i32(i32 %sub9.sink.i35.i, i32 0) #8
  br label %smc_curs_comp.exit

smc_curs_comp.exit:                               ; preds = %smc_curs_diff.exit36.i, %smc_curs_diff.exit.i
  %retval.0.i = phi i32 [ %sub.i44, %smc_curs_diff.exit.i ], [ %33, %smc_curs_diff.exit36.i ]
  %34 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not = icmp eq i32 %37, 0
  br i1 %tobool.i.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %smc_curs_comp.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp9, label %if.then10, label %if.then8.if.end24_crit_edge

if.then8.if.end24_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %urg_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %urg_state, align 8
  br label %if.end24

if.else:                                          ; preds = %smc_curs_comp.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp12 = icmp eq i32 %retval.0.i, 1
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count.i, align 4
  %add.i46 = add i32 %40, 1
  store i32 %add.i46, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i46, i32 %4)
  %cmp.not.i47 = icmp ult i32 %add.i46, %4
  br i1 %cmp.not.i47, label %if.then13.smc_curs_add.exit52_crit_edge, label %if.then.i51

if.then13.smc_curs_add.exit52_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_curs_add.exit52

if.then.i51:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i49 = add i16 %15, 1
  %41 = ptrtoint ptr %wrap.i41 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %inc.i49, ptr %wrap.i41, align 2
  %sub.i50 = sub i32 %add.i46, %4
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.i50, ptr %count.i, align 4
  br label %smc_curs_add.exit52

smc_curs_add.exit52:                              ; preds = %if.then.i51, %if.then13.smc_curs_add.exit52_crit_edge
  %urg_rx_skip_pend16 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 30
  %43 = ptrtoint ptr %urg_rx_skip_pend16 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %urg_rx_skip_pend16, align 1
  br label %if.end24

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp18 = icmp slt i32 %retval.0.i, -1
  br i1 %cmp18, label %if.then19, label %if.else17.if.end24_crit_edge

if.else17.if.end24_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %urg_state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %urg_state, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.else17.if.end24_crit_edge, %smc_curs_add.exit52, %if.then10, %if.then8.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  %force.0.off0 = phi i1 [ true, %if.then10 ], [ false, %if.then8.if.end24_crit_edge ], [ true, %smc_curs_add.exit52 ], [ false, %if.then19 ], [ false, %if.else17.if.end24_crit_edge ], [ false, %lor.lhs.false.if.end24_crit_edge ]
  %rc.0 = phi i32 [ 1, %if.then10 ], [ 0, %if.then8.if.end24_crit_edge ], [ 0, %smc_curs_add.exit52 ], [ 0, %if.then19 ], [ 0, %if.else17.if.end24_crit_edge ], [ 0, %lor.lhs.false.if.end24_crit_edge ]
  %conn2 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %cons25 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cons, i32 noundef 8) #8
  %call.i.i = call i64 @generic_atomic64_read(ptr noundef nonnull %cons) #8
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %cons25, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef %cons25, i64 noundef %call.i.i) #8
  call void @smc_tx_consumer_update(ptr noundef %conn2, i1 noundef zeroext %force.0.off0) #8
  ret i32 %rc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smc_rx_recvmsg(ptr noundef %smc, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_rx_recvmsg, i32 0, i32 1), ptr blockaddress(@trace_smc_rx_recvmsg, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !56

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %call42 = tail call i32 @__traceiter_smc_rx_recvmsg(ptr noundef null, ptr noundef %smc, i32 noundef %len) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_rx_recvmsg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_rx_recvmsg, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smc_rx_recvmsg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_smc_rx_recvmsg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 83, ptr noundef nonnull @.str.5) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_rx_init(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 77
  %0 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smc_rx_wake_up, ptr %sk_data_ready, align 8
  %splice_pending = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %splice_pending, i32 noundef 4) #8
  %1 = ptrtoint ptr %splice_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %splice_pending, align 4
  %urg_state = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 28
  %2 = ptrtoint ptr %urg_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %urg_state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_rx_wake_up(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 8
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @smc_rx_wake_up.__warned, align 1
  br i1 %.b23, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @smc_rx_wake_up.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 37, ptr noundef nonnull @.str.5) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool.not.i24 = icmp eq ptr %6, null
  br i1 %tobool.not.i24, label %do.end7.if.end11_crit_edge, label %skwq_has_sleeper.exit

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

skwq_has_sleeper.exit:                            ; preds = %do.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  %head.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.i.not = icmp eq ptr %8, %head.i.i.i
  br i1 %cmp.i.i.i.i.not, label %skwq_has_sleeper.exit.if.end11_crit_edge, label %if.then10

skwq_has_sleeper.exit.if.end11_crit_edge:         ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up_sync_key(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull inttoptr (i32 195 to ptr)) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %skwq_has_sleeper.exit.if.end11_crit_edge, %do.end7.if.end11_crit_edge
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 1)
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %9 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sk_shutdown, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp = icmp eq i8 %10, 3
  br i1 %cmp, label %if.end11.if.then16_crit_edge, label %lor.lhs.false

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp14 = icmp eq i8 %12, 7
  br i1 %cmp14, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end11.if.then16_crit_edge
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 6)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false.if.end17_crit_edge
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i25, label %if.end17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

if.end17.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %if.end17
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %if.end17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i32 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_rx_spd_release(ptr nocapture noundef readonly %spd, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spd, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !45

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@smc_rx_spd_release, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %8) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_to_pipe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_rx_pipe_buf_release(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %cons.i = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp = icmp eq i8 %6, 7
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %8)
  %cmp7 = icmp eq i8 %8, 25
  br i1 %cmp7, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false9

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %10)
  %cmp13 = icmp eq i8 %10, 24
  br i1 %cmp13, label %lor.lhs.false9.out_crit_edge, label %if.end

lor.lhs.false9.out_crit_edge:                     ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %lor.lhs.false9
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #8
  %len = getelementptr inbounds %struct.smc_spd_priv, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons.i) #8
  %13 = ptrtoint ptr %cons.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %cons.i, align 8, !annotation !42
  %cons2.i = getelementptr inbounds %struct.smc_sock, ptr %4, i32 0, i32 6, i32 12, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons2.i, i32 noundef 8) #8
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %cons2.i) #8
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons.i, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %cons.i, i64 noundef %call.i.i.i) #8
  %14 = ptrtoint ptr %cons.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %.fca.0.load.i = load i64, ptr %cons.i, align 8
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %.fca.0.load.i, 0
  %call.i = call fastcc i32 @smc_rx_update_consumer(ptr noundef %4, [1 x i64] %.fca.0.insert.i, i32 noundef %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons.i) #8
  call void @release_sock(ptr noundef %4) #8
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %splice_pending = getelementptr inbounds %struct.smc_sock, ptr %4, i32 0, i32 6, i32 33
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %splice_pending, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  call void @llvm.prefetch.p0(ptr %splice_pending, i32 1, i32 3, i32 1) #8
  %17 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %splice_pending, ptr %splice_pending, i32 %16, ptr elementtype(i32) %splice_pending) #8, !srcloc !67
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then17, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @smc_rx_wake_up(ptr noundef %4)
  br label %out

out:                                              ; preds = %if.then17, %if.end.out_crit_edge, %lor.lhs.false9.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  call void @kfree(ptr noundef %2) #8
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %22, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %19 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %25 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i.i.i = icmp eq i32 %26, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !45

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@smc_rx_pipe_buf_release, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %24, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %24) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !69
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !70
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i31, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !43

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @sk_free(ptr noundef %4) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @generic_pipe_buf_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_tx_consumer_update(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smc_rx_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef %band) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %8 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @sk_wake_async.__warned, align 1
  br i1 %.b1, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sk_wake_async.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2444, ptr noundef nonnull @.str.5) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %call11 = tail call i32 @sock_wake_async(ptr noundef %10, i32 noundef 1, i32 noundef %band) #8
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2, label %do.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

do.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %do.end9
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %do.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i9 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end12

if.end12:                                         ; preds = %rcu_read_unlock.exit, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{!"sp"}
!1 = distinct !{null, !2, !"__already_done", i1 false, i1 false}
!2 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!3 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!6 = !{ptr @smc_pipe_ops, !7, !"smc_pipe_ops", i1 false, i1 false}
!7 = !{!"../net/smc/smc_rx.c", i32 134, i32 41}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/mm.h", i32 717, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/smc/smc_tracepoint.h", i32 78, i32 1}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/smc/smc_rx.c", i32 37, i32 7}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/net/sock.h", i32 2444, i32 19}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 750442}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 750727}
!47 = !{i64 2158452008}
!48 = !{i64 2148355917, i64 2148355943, i64 2148355972, i64 2148356006, i64 2148356037, i64 2148356060}
!49 = !{i64 2158452185}
!50 = !{i64 2156760895}
!51 = !{i64 860220, i64 860237, i64 860261, i64 860287, i64 860305}
!52 = !{i64 2156761238}
!53 = !{i64 2148354982, i64 2148355014, i64 2148355043, i64 2148355077, i64 2148355108, i64 2148355131}
!54 = !{i64 2153186806, i64 2153187290, i64 2153186843, i64 2153186899, i64 2153186933, i64 2153186957, i64 2153186998, i64 2153187019, i64 2153187047, i64 2153187081}
!55 = !{i64 2148353452, i64 2148353478, i64 2148353507, i64 2148353541, i64 2148353572, i64 2148353595}
!56 = !{i64 2148173075, i64 2148173080, i64 2148173093, i64 2148173137, i64 2148173171, i64 2148173192}
!57 = !{i8 0, i8 2}
!58 = !{i64 2158298212}
!59 = !{i64 2158298419}
!60 = !{i64 2149406817}
!61 = !{i64 2149407853}
!62 = !{i64 2149398258}
!63 = !{i64 2149298921}
!64 = !{i64 2149398524}
!65 = !{i64 2153166894, i64 2153167377, i64 2153166931, i64 2153166987, i64 2153167021, i64 2153167045, i64 2153167086, i64 2153167107, i64 2153167135, i64 2153167169}
!66 = !{i64 2148441904}
!67 = !{i64 2148356637, i64 2148356669, i64 2148356698, i64 2148356732, i64 2148356763, i64 2148356786}
!68 = !{i64 2148442133}
!69 = !{i64 2148442983}
!70 = !{i64 2148357447, i64 2148357479, i64 2148357508, i64 2148357542, i64 2148357573, i64 2148357596}
!71 = !{i64 2150437771}
