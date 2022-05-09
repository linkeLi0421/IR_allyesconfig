; ModuleID = '/llk/IR_all_yes/net/smc/smc_tx.c_pt.bc'
source_filename = "../net/smc/smc_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%struct.atomic_t = type { i32 }
%union.anon.135 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.221 }
%union.anon.221 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.216, i32 }
%union.anon.216 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.anon.220, [40 x i8] }
%struct.anon.220 = type { i16, i64, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.153, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.151 }
%union.anon.4 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.153 = type { ptr }
%struct.anon.223 = type { i16, i16, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.125, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
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
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.230, %struct.anon.231, %struct.anon.232, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.228, %struct.anon.229, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.228 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.229 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.230 = type { i32, i32, i64 }
%struct.anon.231 = type { i32, i32, i64 }
%struct.anon.232 = type { i32, i32 }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.187 }
%union.anon.187 = type { %struct.anon.188 }
%struct.anon.188 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.207 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.202 }
%struct.anon.202 = type { i64, i64 }
%union.anon.207 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.203, ptr, i32, i32, i32, %union.anon.204 }
%union.anon.203 = type { i64 }
%union.anon.204 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.smc_ism_position = type { i64, i32, i8, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.215, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.215 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.206 }
%struct.anon.206 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_smc_tx_sendmsg = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/smc/smc_tracepoint.h\00", [39 x i8] zeroinitializer }, align 32
@trace_smc_tx_sendmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@smc_tx_write_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/smc/smc_tx.c\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 230, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 214, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"../net/smc/smc_tracepoint.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 71, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 108, i32 2 }
@___asan_gen_.25 = private constant [20 x i8] c"../net/smc/smc_tx.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 54, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 695, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_tx_sndbuf_nonfull(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_socket = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 71
  %0 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 78
  %5 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_write_space, align 4
  tail call void %6(ptr noundef %smc) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_tx_sendmsg(ptr noundef %smc, ptr noundef %msg, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %prep = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prep) #8
  %0 = ptrtoint ptr %prep to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %prep, align 8, !annotation !33
  %1 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %entry.sk_clear_bit.exit_crit_edge, label %if.end.i

entry.sk_clear_bit.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_clear_bit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 17
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %7, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i, %entry.sk_clear_bit.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %8 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sk_clear_bit.exit.out_err_crit_edge

sk_clear_bit.exit.out_err_crit_edge:              ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

lor.lhs.false:                                    ; preds = %sk_clear_bit.exit
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 66
  %10 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sk_shutdown, align 2
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.out_err_crit_edge

lor.lhs.false.out_err_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end:                                           ; preds = %lor.lhs.false
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp = icmp eq i8 %14, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sndbuf_desc = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 8
  %15 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sndbuf_desc, align 8
  %len8 = getelementptr inbounds %struct.smc_buf_desc, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %len)
  %cmp9 = icmp ult i32 %18, %len
  br i1 %cmp9, label %do.body, label %if.end7.if.end269_crit_edge

if.end7.if.end269_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end269

do.body:                                          ; preds = %if.end7
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i, align 4
  %smc13 = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 55
  %21 = ptrtoint ptr %smc13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smc13, align 4
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lnk, align 8
  %tobool14.not = icmp eq ptr %24, null
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  br i1 %tobool14.not, label %do.body72, label %land.lhs.true201.critedge

do.body72:                                        ; preds = %do.body
  %buf_size_small_cnt96 = getelementptr [2 x %struct.smc_stats_tech], ptr %22, i32 0, i32 1, i32 4, i32 1
  %26 = ptrtoint ptr %buf_size_small_cnt96 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %cpu99 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu99, align 4
  %arrayidx100 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %32, %26
  %33 = inttoptr i32 %add101 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  %add102 = add i64 %35, 1
  store i64 %add102, ptr %33, align 8
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool113.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool113.not, label %if.then122, label %do.body72.do.end125_crit_edge, !prof !35

do.body72.do.end125_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

if.then122:                                       ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %do.body72.do.end125_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #8, !srcloc !36
  br label %if.end269

land.lhs.true201.critedge:                        ; preds = %do.body
  %buf_size_small_cnt230 = getelementptr inbounds %struct.smc_stats_tech, ptr %22, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %buf_size_small_cnt230 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i945 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i945 to ptr
  %cpu233 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu233 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu233, align 4
  %arrayidx234 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx234, align 4
  %add235 = add i32 %43, %37
  %44 = inttoptr i32 %add235 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %44, align 8
  %add236 = add i64 %46, 1
  store i64 %add236, ptr %44, align 8
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i946 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i946)
  %tobool247.not = icmp eq i32 %and.i.i946, 0
  br i1 %tobool247.not, label %if.then256, label %land.lhs.true201.critedge.do.end259_crit_edge, !prof !35

land.lhs.true201.critedge.do.end259_crit_edge:    ; preds = %land.lhs.true201.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end259

if.then256:                                       ; preds = %land.lhs.true201.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end259

do.end259:                                        ; preds = %if.then256, %land.lhs.true201.critedge.do.end259_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #8, !srcloc !36
  br label %if.end269

if.end269:                                        ; preds = %do.end259, %do.end125, %if.end7.if.end269_crit_edge
  %peer_rmbe_size = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 5
  %48 = ptrtoint ptr %peer_rmbe_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %peer_rmbe_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %len)
  %cmp270 = icmp ult i32 %49, %len
  br i1 %cmp270, label %do.body273, label %if.end269.if.end555_crit_edge

if.end269.if.end555_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end555

do.body273:                                       ; preds = %if.end269
  %skc_net.i947 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %50 = ptrtoint ptr %skc_net.i947 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skc_net.i947, align 4
  %smc278 = getelementptr inbounds %struct.net, ptr %51, i32 0, i32 55
  %52 = ptrtoint ptr %smc278 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %smc278, align 4
  %lnk281 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %lnk281 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lnk281, align 8
  %tobool282.not = icmp eq ptr %55, null
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  br i1 %tobool282.not, label %do.body357, label %land.lhs.true487.critedge

do.body357:                                       ; preds = %do.body273
  %rmb_tx381 = getelementptr [2 x %struct.smc_stats_tech], ptr %53, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %rmb_tx381 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i948 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i948 to ptr
  %cpu385 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu385 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu385, align 4
  %arrayidx386 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx386, align 4
  %add387 = add i32 %63, %57
  %64 = inttoptr i32 %add387 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %64, align 8
  %add388 = add i64 %66, 1
  store i64 %add388, ptr %64, align 8
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i949 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i949)
  %tobool399.not = icmp eq i32 %and.i.i949, 0
  br i1 %tobool399.not, label %if.then408, label %do.body357.do.end411_crit_edge, !prof !35

do.body357.do.end411_crit_edge:                   ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end411

if.then408:                                       ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end411

do.end411:                                        ; preds = %if.then408, %do.body357.do.end411_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #8, !srcloc !36
  br label %if.end555

land.lhs.true487.critedge:                        ; preds = %do.body273
  %rmb_tx515 = getelementptr inbounds %struct.smc_stats_tech, ptr %53, i32 0, i32 4
  %68 = ptrtoint ptr %rmb_tx515 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i950 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i950 to ptr
  %cpu519 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu519 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu519, align 4
  %arrayidx520 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx520 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx520, align 4
  %add521 = add i32 %74, %68
  %75 = inttoptr i32 %add521 to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %75, align 8
  %add522 = add i64 %77, 1
  store i64 %add522, ptr %75, align 8
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i951 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i951)
  %tobool533.not = icmp eq i32 %and.i.i951, 0
  br i1 %tobool533.not, label %if.then542, label %land.lhs.true487.critedge.do.end545_crit_edge, !prof !35

land.lhs.true487.critedge.do.end545_crit_edge:    ; preds = %land.lhs.true487.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end545

if.then542:                                       ; preds = %land.lhs.true487.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end545

do.end545:                                        ; preds = %if.then542, %land.lhs.true487.critedge.do.end545_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #8, !srcloc !36
  br label %if.end555

if.end555:                                        ; preds = %do.end545, %do.end411, %if.end269.if.end555_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %79 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_flags, align 4
  %and556 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and556)
  %tobool557.not = icmp eq i32 %and556, 0
  br i1 %tobool557.not, label %if.end555.if.end697_crit_edge, label %do.body559

if.end555.if.end697_crit_edge:                    ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end697

do.body559:                                       ; preds = %if.end555
  %lnk561 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 2
  %81 = ptrtoint ptr %lnk561 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lnk561, align 8
  %tobool562.not = icmp eq ptr %82, null
  %skc_net.i952 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 9
  %83 = ptrtoint ptr %skc_net.i952 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skc_net.i952, align 4
  %smc569 = getelementptr inbounds %struct.net, ptr %84, i32 0, i32 55
  %85 = ptrtoint ptr %smc569 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %smc569, align 4
  %87 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  br i1 %tobool562.not, label %do.body574, label %do.body634

do.body574:                                       ; preds = %do.body559
  %urg_data_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %86, i32 0, i32 1, i32 11
  %88 = ptrtoint ptr %urg_data_cnt to i32
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i953 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i953 to ptr
  %cpu600 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %cpu600 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cpu600, align 4
  %arrayidx601 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx601, align 4
  %add602 = add i32 %94, %88
  %95 = inttoptr i32 %add602 to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %95, align 8
  %add603 = add i64 %97, 1
  store i64 %add603, ptr %95, align 8
  %98 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i954 = and i32 %98, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i954)
  %tobool614.not = icmp eq i32 %and.i.i954, 0
  br i1 %tobool614.not, label %if.then623, label %do.body574.do.end626_crit_edge, !prof !35

do.body574.do.end626_crit_edge:                   ; preds = %do.body574
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end626

if.then623:                                       ; preds = %do.body574
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end626

do.end626:                                        ; preds = %if.then623, %do.body574.do.end626_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #8, !srcloc !36
  br label %if.end697

do.body634:                                       ; preds = %do.body559
  %urg_data_cnt658 = getelementptr inbounds %struct.smc_stats_tech, ptr %86, i32 0, i32 11
  %99 = ptrtoint ptr %urg_data_cnt658 to i32
  %100 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i955 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i955 to ptr
  %cpu661 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cpu661 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu661, align 4
  %arrayidx662 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx662, align 4
  %add663 = add i32 %105, %99
  %106 = inttoptr i32 %add663 to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %106, align 8
  %add664 = add i64 %108, 1
  store i64 %add664, ptr %106, align 8
  %109 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i956 = and i32 %109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i956)
  %tobool675.not = icmp eq i32 %and.i.i956, 0
  br i1 %tobool675.not, label %if.then684, label %do.body634.do.end687_crit_edge, !prof !35

do.body634.do.end687_crit_edge:                   ; preds = %do.body634
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end687

if.then684:                                       ; preds = %do.body634
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end687

do.end687:                                        ; preds = %if.then684, %do.body634.do.end687_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #8, !srcloc !36
  br label %if.end697

if.end697:                                        ; preds = %do.end687, %do.end626, %if.end555.if.end697_crit_edge
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %110 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool699.not995 = icmp eq i32 %111, 0
  br i1 %tobool699.not995, label %if.end697.cleanup_crit_edge, label %while.body.lr.ph

if.end697.cleanup_crit_edge:                      ; preds = %if.end697
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end697
  %killed = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 39
  %conn_state_flags.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 7
  %prod_flags = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 6
  %sndbuf_space = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 17
  %urg_tx_pend = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 29
  %tx_curs_prep = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 14
  %count = getelementptr inbounds %struct.anon.223, ptr %prep, i32 0, i32 2
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %wrap.i = getelementptr inbounds %struct.anon.223, ptr %prep, i32 0, i32 1
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %lgr = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %tx_work = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 23
  %112 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %113 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %114 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %115 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %sk_sndtimeo.i.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 31
  %116 = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 17
  %conn_state_flags.i959 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 7
  %sk_socket39.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 71
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %send_done.0998 = phi i32 [ 0, %while.body.lr.ph ], [ %send_done.0.be, %while.cond.backedge.while.body_crit_edge ]
  %send_remaining.0996 = phi i32 [ %len, %while.body.lr.ph ], [ %send_remaining.0.be, %while.cond.backedge.while.body_crit_edge ]
  %117 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sk_shutdown, align 2
  %119 = and i8 %118, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool704.not = icmp eq i8 %119, 0
  br i1 %tobool704.not, label %lor.lhs.false705, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false705:                                 ; preds = %while.body
  %120 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 103, i32 %121)
  %cmp708 = icmp eq i32 %121, 103
  br i1 %cmp708, label %lor.lhs.false705.cleanup_crit_edge, label %lor.lhs.false710

lor.lhs.false705.cleanup_crit_edge:               ; preds = %lor.lhs.false705
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false710:                                 ; preds = %lor.lhs.false705
  %122 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool712.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool712.not, label %if.end714, label %lor.lhs.false710.cleanup_crit_edge

lor.lhs.false710.cleanup_crit_edge:               ; preds = %lor.lhs.false710
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end714:                                        ; preds = %lor.lhs.false710
  %123 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load.i = load i8, ptr %conn_state_flags.i, align 1
  %124 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %.not = icmp eq i8 %124, 0
  br i1 %.not, label %if.end718, label %if.then716

if.then716:                                       ; preds = %if.end714
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_done.0998)
  %tobool717.not = icmp eq i32 %send_done.0998, 0
  %. = select i1 %tobool717.not, i32 -104, i32 %send_done.0998
  br label %cleanup

if.end718:                                        ; preds = %if.end714
  %125 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %msg_flags, align 4
  %and720 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and720)
  %tobool721.not = icmp eq i32 %and720, 0
  br i1 %tobool721.not, label %if.end718.if.end724_crit_edge, label %if.then722

if.end718.if.end724_crit_edge:                    ; preds = %if.end718
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end724

if.then722:                                       ; preds = %if.end718
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load723 = load i8, ptr %prod_flags, align 8
  %bf.set = or i8 %bf.load723, 64
  store i8 %bf.set, ptr %prod_flags, align 8
  br label %if.end724

if.end724:                                        ; preds = %if.then722, %if.end718.if.end724_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #8
  %128 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %sndbuf_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool726.not = icmp eq i32 %129, 0
  br i1 %tobool726.not, label %if.end724.if.then730_crit_edge, label %lor.lhs.false727

if.end724.if.then730_crit_edge:                   ; preds = %if.end724
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then730

lor.lhs.false727:                                 ; preds = %if.end724
  %130 = ptrtoint ptr %urg_tx_pend to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %urg_tx_pend, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool728.not = icmp eq i8 %131, 0
  br i1 %tobool728.not, label %if.end739, label %lor.lhs.false727.if.then730_crit_edge

lor.lhs.false727.if.then730_crit_edge:            ; preds = %lor.lhs.false727
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then730

if.then730:                                       ; preds = %lor.lhs.false727.if.then730_crit_edge, %if.end724.if.then730_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_done.0998)
  %tobool731.not = icmp eq i32 %send_done.0998, 0
  br i1 %tobool731.not, label %if.end733, label %if.then730.cleanup_crit_edge

if.then730.cleanup_crit_edge:                     ; preds = %if.then730
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end733:                                        ; preds = %if.then730
  %132 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %msg_flags, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %134 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %wait.i, align 4
  %135 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i957 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i957 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task.i, align 8
  %139 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %112, align 4
  %140 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @woken_wake_function, ptr %113, align 4
  %141 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %114, ptr %114, align 4
  %142 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %114, ptr %115, align 4
  %and.i958 = and i32 %133, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i958)
  %tobool.not.i = icmp eq i32 %and.i958, 0
  br i1 %tobool.not.i, label %cond.false.i.i, label %if.end733.sock_sndtimeo.exit.i_crit_edge

if.end733.sock_sndtimeo.exit.i_crit_edge:         ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_sndtimeo.exit.i

cond.false.i.i:                                   ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %sk_sndtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sk_sndtimeo.i.i, align 8
  br label %sock_sndtimeo.exit.i

sock_sndtimeo.exit.i:                             ; preds = %cond.false.i.i, %if.end733.sock_sndtimeo.exit.i_crit_edge
  %cond.i.i = phi i32 [ %144, %cond.false.i.i ], [ 0, %if.end733.sock_sndtimeo.exit.i_crit_edge ]
  %145 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %116, align 8
  call void @add_wait_queue(ptr noundef %146, ptr noundef nonnull %wait.i) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %sock_sndtimeo.exit.i
  %timeo.0.i = phi i32 [ %cond.i.i, %sock_sndtimeo.exit.i ], [ %timeo.1.i, %while.cond.i.backedge ]
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %1, align 4
  %149 = and i32 %148, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.i.not.i.i = icmp eq i32 %149, 0
  br i1 %tobool.i.not.i.i, label %while.cond.i.sk_set_bit.exit.i_crit_edge, label %if.end.i.i

while.cond.i.sk_set_bit.exit.i_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_set_bit.exit.i

if.end.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %116, align 8
  %flags.i.i = getelementptr inbounds %struct.socket_wq, ptr %151, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #8
  br label %sk_set_bit.exit.i

sk_set_bit.exit.i:                                ; preds = %if.end.i.i, %while.cond.i.sk_set_bit.exit.i_crit_edge
  %152 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool9.not.i = icmp eq i32 %153, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i, label %sk_set_bit.exit.i.smc_tx_wait.exit.thread_crit_edge

sk_set_bit.exit.i.smc_tx_wait.exit.thread_crit_edge: ; preds = %sk_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_tx_wait.exit.thread

lor.lhs.false.i:                                  ; preds = %sk_set_bit.exit.i
  %154 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %sk_shutdown, align 2
  %156 = and i8 %155, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool11.not.i = icmp eq i8 %156, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.smc_tx_wait.exit.thread_crit_edge

lor.lhs.false.i.smc_tx_wait.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_tx_wait.exit.thread

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %157 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %157)
  %bf.load.i960 = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i960)
  %tobool14.not.i = icmp sgt i8 %bf.load.i960, -1
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %lor.lhs.false12.i.smc_tx_wait.exit.thread_crit_edge

lor.lhs.false12.i.smc_tx_wait.exit.thread_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_tx_wait.exit.thread

lor.lhs.false15.i:                                ; preds = %lor.lhs.false12.i
  %158 = ptrtoint ptr %conn_state_flags.i959 to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load16.i = load i8, ptr %conn_state_flags.i959, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i)
  %tobool19.not.i = icmp sgt i8 %bf.load16.i, -1
  br i1 %tobool19.not.i, label %if.end.i961, label %lor.lhs.false15.i.smc_tx_wait.exit.thread_crit_edge

lor.lhs.false15.i.smc_tx_wait.exit.thread_crit_edge: ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_tx_wait.exit.thread

if.end.i961:                                      ; preds = %lor.lhs.false15.i
  %159 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load.i.i = load i8, ptr %conn_state_flags.i, align 1
  %160 = and i8 %bf.load.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %.not.i = icmp eq i8 %160, 0
  br i1 %.not.i, label %if.end22.i, label %if.end.i961.smc_tx_wait.exit.thread_crit_edge

if.end.i961.smc_tx_wait.exit.thread_crit_edge:    ; preds = %if.end.i961
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_tx_wait.exit.thread

if.end22.i:                                       ; preds = %if.end.i961
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0.i)
  %tobool23.not.i = icmp eq i32 %timeo.0.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %sk_socket39.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %sk_socket39.i, align 8
  %flags25.i = getelementptr inbounds %struct.socket, ptr %162, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags25.i) #8
  br label %smc_tx_wait.exit.thread

if.end26.i:                                       ; preds = %if.end22.i
  %163 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %stack.i.i.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %166, align 4
  %169 = and i32 %168, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.i.i = icmp eq i32 %169, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end26.i.if.then31.i_crit_edge, !prof !38

if.end26.i.if.then31.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

signal_pending.exit.i:                            ; preds = %if.end26.i
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %166, align 4
  %and1.i.i.i.i.i.i = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool30.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool30.not.i, label %if.end33.i, label %signal_pending.exit.i.if.then31.i_crit_edge

signal_pending.exit.i.if.then31.i_crit_edge:      ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

if.then31.i:                                      ; preds = %signal_pending.exit.i.if.then31.i_crit_edge, %if.end26.i.if.then31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.0.i)
  %cmp.i.i = icmp eq i32 %timeo.0.i, 2147483647
  %cond.i117.i = select i1 %cmp.i.i, i32 -512, i32 -4
  br label %smc_tx_wait.exit.thread

if.end33.i:                                       ; preds = %signal_pending.exit.i
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %1, align 4
  %174 = and i32 %173, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.i.not.i118.i = icmp eq i32 %174, 0
  br i1 %tobool.i.not.i118.i, label %if.end33.i.sk_clear_bit.exit.i_crit_edge, label %if.end.i120.i

if.end33.i.sk_clear_bit.exit.i_crit_edge:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_clear_bit.exit.i

if.end.i120.i:                                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %116, align 8
  %flags.i119.i = getelementptr inbounds %struct.socket_wq, ptr %176, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i119.i) #8
  br label %sk_clear_bit.exit.i

sk_clear_bit.exit.i:                              ; preds = %if.end.i120.i, %if.end33.i.sk_clear_bit.exit.i_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #8
  %177 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %sndbuf_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool35.not.i = icmp eq i32 %178, 0
  br i1 %tobool35.not.i, label %sk_clear_bit.exit.i.if.end38.i_crit_edge, label %land.lhs.true.i

sk_clear_bit.exit.i.if.end38.i_crit_edge:         ; preds = %sk_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %sk_clear_bit.exit.i
  %179 = ptrtoint ptr %urg_tx_pend to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %urg_tx_pend, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool36.not.i = icmp eq i8 %180, 0
  br i1 %tobool36.not.i, label %smc_tx_wait.exit, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %land.lhs.true.i.if.end38.i_crit_edge, %sk_clear_bit.exit.i.if.end38.i_crit_edge
  %181 = ptrtoint ptr %sk_socket39.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sk_socket39.i, align 8
  %flags40.i = getelementptr inbounds %struct.socket, ptr %182, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags40.i) #8
  call void @release_sock(ptr noundef %smc) #8
  %183 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool42.not.i = icmp eq i32 %184, 0
  br i1 %tobool42.not.i, label %lor.lhs.false43.i, label %if.end38.i.if.end59.i_crit_edge

if.end38.i.if.end59.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

lor.lhs.false43.i:                                ; preds = %if.end38.i
  %185 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %sk_shutdown, align 2
  %187 = and i8 %186, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool47.not.i = icmp eq i8 %187, 0
  br i1 %tobool47.not.i, label %lor.lhs.false48.i, label %lor.lhs.false43.i.if.end59.i_crit_edge

lor.lhs.false43.i.if.end59.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

lor.lhs.false48.i:                                ; preds = %lor.lhs.false43.i
  %188 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %bf.load.i122.i = load i8, ptr %conn_state_flags.i, align 1
  %189 = and i8 %bf.load.i122.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %.not128.i = icmp eq i8 %189, 0
  br i1 %.not128.i, label %lor.rhs.i, label %lor.lhs.false48.i.if.end59.i_crit_edge

lor.lhs.false48.i.if.end59.i_crit_edge:           ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

lor.rhs.i:                                        ; preds = %lor.lhs.false48.i
  %call.i.i114.i = call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #8
  %190 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %sndbuf_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool53.not.i = icmp eq i32 %191, 0
  br i1 %tobool53.not.i, label %lor.rhs.i.if.then57.i_crit_edge, label %land.rhs.i

lor.rhs.i.if.then57.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %192 = ptrtoint ptr %urg_tx_pend to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %urg_tx_pend, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool55.not.i = icmp eq i8 %193, 0
  br i1 %tobool55.not.i, label %land.rhs.i.if.end59.i_crit_edge, label %land.rhs.i.if.then57.i_crit_edge

land.rhs.i.if.then57.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

land.rhs.i.if.end59.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.then57.i:                                      ; preds = %land.rhs.i.if.then57.i_crit_edge, %lor.rhs.i.if.then57.i_crit_edge
  %call58.i = call i32 @wait_woken(ptr noundef nonnull %wait.i, i32 noundef 1, i32 noundef %timeo.0.i) #8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %land.rhs.i.if.end59.i_crit_edge, %lor.lhs.false48.i.if.end59.i_crit_edge, %lor.lhs.false43.i.if.end59.i_crit_edge, %if.end38.i.if.end59.i_crit_edge
  %timeo.1.i = phi i32 [ %timeo.0.i, %land.rhs.i.if.end59.i_crit_edge ], [ %call58.i, %if.then57.i ], [ %timeo.0.i, %lor.lhs.false48.i.if.end59.i_crit_edge ], [ %timeo.0.i, %lor.lhs.false43.i.if.end59.i_crit_edge ], [ %timeo.0.i, %if.end38.i.if.end59.i_crit_edge ]
  %194 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %task.i, align 8
  %task_state_change.i = getelementptr inbounds %struct.task_struct, ptr %195, i32 0, i32 212
  %196 = ptrtoint ptr %task_state_change.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %task_state_change.i, align 4
  call void @lock_sock_nested(ptr noundef %smc, i32 noundef 0) #8
  %197 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool63.not.i = icmp eq i32 %198, 0
  br i1 %tobool63.not.i, label %lor.lhs.false64.i, label %if.end59.i.while.cond.i.backedge_crit_edge

if.end59.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.backedge

lor.lhs.false64.i:                                ; preds = %if.end59.i
  %199 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %sk_shutdown, align 2
  %201 = and i8 %200, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool68.not.i = icmp eq i8 %201, 0
  br i1 %tobool68.not.i, label %lor.lhs.false69.i, label %lor.lhs.false64.i.while.cond.i.backedge_crit_edge

lor.lhs.false64.i.while.cond.i.backedge_crit_edge: ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.backedge

lor.lhs.false69.i:                                ; preds = %lor.lhs.false64.i
  %202 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load.i124.i = load i8, ptr %conn_state_flags.i, align 1
  %203 = and i8 %bf.load.i124.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %.not127.i = icmp eq i8 %203, 0
  br i1 %.not127.i, label %lor.rhs72.i, label %lor.lhs.false69.i.while.cond.i.backedge_crit_edge

lor.lhs.false69.i.while.cond.i.backedge_crit_edge: ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.backedge

lor.rhs72.i:                                      ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i115.i = call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #8
  %204 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %sndbuf_space, align 4
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %lor.rhs72.i, %lor.lhs.false69.i.while.cond.i.backedge_crit_edge, %lor.lhs.false64.i.while.cond.i.backedge_crit_edge, %if.end59.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

smc_tx_wait.exit.thread:                          ; preds = %if.then31.i, %if.then24.i, %if.end.i961.smc_tx_wait.exit.thread_crit_edge, %lor.lhs.false15.i.smc_tx_wait.exit.thread_crit_edge, %lor.lhs.false12.i.smc_tx_wait.exit.thread_crit_edge, %lor.lhs.false.i.smc_tx_wait.exit.thread_crit_edge, %sk_set_bit.exit.i.smc_tx_wait.exit.thread_crit_edge
  %rc.0.i.ph = phi i32 [ -11, %if.then24.i ], [ %cond.i117.i, %if.then31.i ], [ -104, %if.end.i961.smc_tx_wait.exit.thread_crit_edge ], [ -32, %sk_set_bit.exit.i.smc_tx_wait.exit.thread_crit_edge ], [ -32, %lor.lhs.false.i.smc_tx_wait.exit.thread_crit_edge ], [ -32, %lor.lhs.false12.i.smc_tx_wait.exit.thread_crit_edge ], [ -32, %lor.lhs.false15.i.smc_tx_wait.exit.thread_crit_edge ]
  %206 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile ptr, ptr %116, align 8
  call void @remove_wait_queue(ptr noundef %207, ptr noundef nonnull %wait.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  br label %out_err

smc_tx_wait.exit:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %208 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile ptr, ptr %116, align 8
  call void @remove_wait_queue(ptr noundef %209, ptr noundef nonnull %wait.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  br label %while.cond.backedge

if.end739:                                        ; preds = %lor.lhs.false727
  %call.i.i942 = call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #8
  %210 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %sndbuf_space, align 4
  %212 = call i32 @llvm.umin.i32(i32 %send_remaining.0996, i32 %211)
  %213 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sndbuf_desc, align 8
  %cpu_addr = getelementptr inbounds %struct.smc_buf_desc, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cpu_addr, align 8
  %call.i.i.i962 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_prep, i32 noundef 8) #8
  %call.i.i963 = call i64 @generic_atomic64_read(ptr noundef %tx_curs_prep) #8
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prep, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %prep, i64 noundef %call.i.i963) #8
  %217 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %count, align 4
  %219 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %sndbuf_desc, align 8
  %len751 = getelementptr inbounds %struct.smc_buf_desc, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %len751 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %len751, align 8
  %sub = sub i32 %222, %218
  %223 = call i32 @llvm.umin.i32(i32 %212, i32 %sub)
  call void @smc_sndbuf_sync_sg_for_cpu(ptr noundef %conn1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp9.i.i.i.i = icmp slt i32 %223, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end739
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !38

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end739
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %216, i32 %218
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %223, i1 noundef zeroext false) #8
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %add.ptr, i32 noundef %223, ptr noundef %msg_iter.i) #8
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %223)
  %cmp.i.i964 = icmp eq i32 %retval.0.i.i.i, %223
  br i1 %cmp.i.i964, label %if.end767, label %copy_from_iter.exit.i.i.if.then763_crit_edge, !prof !38

copy_from_iter.exit.i.i.if.then763_crit_edge:     ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then763

if.then763:                                       ; preds = %copy_from_iter.exit.i.i.1.if.then763_crit_edge, %copy_from_iter.exit.i.i.if.then763_crit_edge
  %retval.0.i.i.i.lcssa = phi i32 [ %retval.0.i.i.i, %copy_from_iter.exit.i.i.if.then763_crit_edge ], [ %retval.0.i.i.i.1, %copy_from_iter.exit.i.i.1.if.then763_crit_edge ]
  %send_done.1994.lcssa = phi i32 [ %send_done.0998, %copy_from_iter.exit.i.i.if.then763_crit_edge ], [ %add768, %copy_from_iter.exit.i.i.1.if.then763_crit_edge ]
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i.lcssa) #8
  call void @smc_sndbuf_sync_sg_for_device(ptr noundef %conn1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_done.1994.lcssa)
  %tobool764.not = icmp eq i32 %send_done.1994.lcssa, 0
  br i1 %tobool764.not, label %if.then763.out_err_crit_edge, label %if.then763.cleanup_crit_edge

if.then763.cleanup_crit_edge:                     ; preds = %if.then763
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then763.out_err_crit_edge:                     ; preds = %if.then763
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end767:                                        ; preds = %copy_from_iter.exit.i.i
  %add768 = add i32 %send_done.0998, %223
  %sub769 = sub i32 %send_remaining.0996, %223
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %sub)
  %cmp770.not = icmp ugt i32 %212, %sub
  br i1 %cmp770.not, label %if.end773, label %if.end767.for.end_crit_edge

if.end767.for.end_crit_edge:                      ; preds = %if.end767
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end773:                                        ; preds = %if.end767
  %sub774 = sub i32 %212, %223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub774)
  %cmp9.i.i.i.i.1 = icmp slt i32 %sub774, 0
  br i1 %cmp9.i.i.i.i.1, label %land.rhs16.i.i.i.i.1, label %if.then.i.i.i.i.i.1

if.then.i.i.i.i.i.1:                              ; preds = %if.end773
  call void @__sanitizer_cov_trace_pc() #10
  call void @__check_object_size(ptr noundef %216, i32 noundef %sub774, i1 noundef zeroext false) #8
  %call3.i.i.i.1 = call i32 @_copy_from_iter(ptr noundef %216, i32 noundef %sub774, ptr noundef %msg_iter.i) #8
  br label %copy_from_iter.exit.i.i.1

land.rhs16.i.i.i.i.1:                             ; preds = %if.end773
  %.b1.i.i.i.i.1 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i.1, label %land.rhs16.i.i.i.i.1.copy_from_iter.exit.i.i.1_crit_edge, label %if.then27.i.i.i.i.1, !prof !38

land.rhs16.i.i.i.i.1.copy_from_iter.exit.i.i.1_crit_edge: ; preds = %land.rhs16.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_from_iter.exit.i.i.1

if.then27.i.i.i.i.1:                              ; preds = %land.rhs16.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %copy_from_iter.exit.i.i.1

copy_from_iter.exit.i.i.1:                        ; preds = %if.then27.i.i.i.i.1, %land.rhs16.i.i.i.i.1.copy_from_iter.exit.i.i.1_crit_edge, %if.then.i.i.i.i.i.1
  %retval.0.i.i.i.1 = phi i32 [ %call3.i.i.i.1, %if.then.i.i.i.i.i.1 ], [ 0, %if.then27.i.i.i.i.1 ], [ 0, %land.rhs16.i.i.i.i.1.copy_from_iter.exit.i.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.1, i32 %sub774)
  %cmp.i.i964.1 = icmp eq i32 %retval.0.i.i.i.1, %sub774
  br i1 %cmp.i.i964.1, label %if.end767.1, label %copy_from_iter.exit.i.i.1.if.then763_crit_edge, !prof !38

copy_from_iter.exit.i.i.1.if.then763_crit_edge:   ; preds = %copy_from_iter.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then763

if.end767.1:                                      ; preds = %copy_from_iter.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %add768.1 = add i32 %send_done.0998, %212
  %sub769.1 = sub i32 %sub769, %sub774
  br label %for.end

for.end:                                          ; preds = %if.end767.1, %if.end767.for.end_crit_edge
  %add768.lcssa = phi i32 [ %add768, %if.end767.for.end_crit_edge ], [ %add768.1, %if.end767.1 ]
  %sub769.lcssa = phi i32 [ %sub769, %if.end767.for.end_crit_edge ], [ %sub769.1, %if.end767.1 ]
  call void @smc_sndbuf_sync_sg_for_device(ptr noundef %conn1) #8
  %224 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %sndbuf_desc, align 8
  %len777 = getelementptr inbounds %struct.smc_buf_desc, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %len777 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %len777, align 8
  %228 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %count, align 4
  %add.i = add i32 %229, %212
  store i32 %add.i, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %227)
  %cmp.not.i = icmp ult i32 %add.i, %227
  br i1 %cmp.not.i, label %for.end.smc_curs_add.exit_crit_edge, label %if.then.i

for.end.smc_curs_add.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_curs_add.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %230 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %wrap.i, align 2
  %inc.i = add i16 %231, 1
  store i16 %inc.i, ptr %wrap.i, align 2
  %sub.i = sub i32 %add.i, %227
  %232 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %sub.i, ptr %count, align 4
  br label %smc_curs_add.exit

smc_curs_add.exit:                                ; preds = %if.then.i, %for.end.smc_curs_add.exit_crit_edge
  %call.i.i.i967 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %prep, i32 noundef 8) #8
  %call.i.i968 = call i64 @generic_atomic64_read(ptr noundef nonnull %prep) #8
  %call.i.i1.i969 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_curs_prep, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef %tx_curs_prep, i64 noundef %call.i.i968) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %call.i.i943 = call zeroext i1 @__kasan_check_write(ptr noundef %sndbuf_space, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %sndbuf_space, i32 1, i32 3, i32 1) #8
  %233 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sndbuf_space, ptr %sndbuf_space, i32 %212, ptr elementtype(i32) %sndbuf_space) #8, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %234 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %msg_flags, align 4
  %and793 = and i32 %235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and793)
  %tobool794.not = icmp ne i32 %and793, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub769.lcssa)
  %tobool796.not = icmp eq i32 %sub769.lcssa, 0
  %or.cond = select i1 %tobool794.not, i1 %tobool796.not, i1 false
  br i1 %or.cond, label %if.then797, label %smc_curs_add.exit.if.end799_crit_edge

smc_curs_add.exit.if.end799_crit_edge:            ; preds = %smc_curs_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end799

if.then797:                                       ; preds = %smc_curs_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %236 = ptrtoint ptr %urg_tx_pend to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %urg_tx_pend, align 4
  br label %if.end799

if.end799:                                        ; preds = %if.then797, %smc_curs_add.exit.if.end799_crit_edge
  %237 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %msg_flags, align 4
  %and801 = and i32 %238, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and801)
  %tobool802.not = icmp eq i32 %and801, 0
  br i1 %tobool802.not, label %lor.lhs.false803, label %if.end799.land.lhs.true806_crit_edge

if.end799.land.lhs.true806_crit_edge:             ; preds = %if.end799
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true806

lor.lhs.false803:                                 ; preds = %if.end799
  %239 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %clcsock.i, align 8
  %sk.i = getelementptr inbounds %struct.socket, ptr %240, i32 0, i32 4
  %241 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %sk.i, align 16
  %nonagle.i = getelementptr inbounds %struct.tcp_sock, ptr %242, i32 0, i32 37
  %243 = ptrtoint ptr %nonagle.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %bf.load.i970 = load i16, ptr %nonagle.i, align 4
  %244 = and i16 %bf.load.i970, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %244)
  %tobool.i.not = icmp eq i16 %244, 0
  br i1 %tobool.i.not, label %lor.lhs.false803.if.else815_crit_edge, label %lor.lhs.false803.land.lhs.true806_crit_edge

lor.lhs.false803.land.lhs.true806_crit_edge:      ; preds = %lor.lhs.false803
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true806

lor.lhs.false803.if.else815_crit_edge:            ; preds = %lor.lhs.false803
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else815

land.lhs.true806:                                 ; preds = %lor.lhs.false803.land.lhs.true806_crit_edge, %if.end799.land.lhs.true806_crit_edge
  %call.i.i944 = call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #8
  %245 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %sndbuf_space, align 4
  %247 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %sndbuf_desc, align 8
  %len810 = getelementptr inbounds %struct.smc_buf_desc, ptr %248, i32 0, i32 3
  %249 = ptrtoint ptr %len810 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %len810, align 8
  %shr = ashr i32 %250, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %shr)
  %cmp811 = icmp sgt i32 %246, %shr
  br i1 %cmp811, label %if.then813, label %land.lhs.true806.if.else815_crit_edge

land.lhs.true806.if.else815_crit_edge:            ; preds = %land.lhs.true806
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else815

if.then813:                                       ; preds = %land.lhs.true806
  call void @__sanitizer_cov_trace_pc() #10
  %251 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %lgr, align 4
  %tx_wq = getelementptr inbounds %struct.smc_link_group, ptr %252, i32 0, i32 12
  %253 = ptrtoint ptr %tx_wq to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %tx_wq, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %254, ptr noundef %tx_work, i32 noundef 25) #8
  br label %if.end817

if.else815:                                       ; preds = %land.lhs.true806.if.else815_crit_edge, %lor.lhs.false803.if.else815_crit_edge
  %call816 = call i32 @smc_tx_sndbuf_nonempty(ptr noundef %conn1)
  br label %if.end817

if.end817:                                        ; preds = %if.else815, %if.then813
  call fastcc void @trace_smc_tx_sendmsg(ptr noundef %smc, i32 noundef %212)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end817, %smc_tx_wait.exit
  %send_remaining.0.be = phi i32 [ %send_remaining.0996, %smc_tx_wait.exit ], [ %sub769.lcssa, %if.end817 ]
  %send_done.0.be = phi i32 [ 0, %smc_tx_wait.exit ], [ %add768.lcssa, %if.end817 ]
  %255 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %count.i.i, align 8
  %tobool699.not = icmp eq i32 %256, 0
  br i1 %tobool699.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_err:                                          ; preds = %if.then763.out_err_crit_edge, %smc_tx_wait.exit.thread, %lor.lhs.false.out_err_crit_edge, %sk_clear_bit.exit.out_err_crit_edge
  %rc.0 = phi i32 [ -14, %if.then763.out_err_crit_edge ], [ -32, %lor.lhs.false.out_err_crit_edge ], [ -32, %sk_clear_bit.exit.out_err_crit_edge ], [ %rc.0.i.ph, %smc_tx_wait.exit.thread ]
  %msg_flags818 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %257 = ptrtoint ptr %msg_flags818 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %msg_flags818, align 4
  %call819 = call i32 @sk_stream_error(ptr noundef %smc, i32 noundef %258, i32 noundef %rc.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call819)
  %cmp820 = icmp eq i32 %call819, -11
  br i1 %cmp820, label %if.then828, label %out_err.cleanup_crit_edge, !prof !35

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then828:                                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 78
  %259 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %sk_write_space, align 4
  call void %260(ptr noundef %smc) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then828, %out_err.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %if.then763.cleanup_crit_edge, %if.then730.cleanup_crit_edge, %if.then716, %lor.lhs.false710.cleanup_crit_edge, %lor.lhs.false705.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end697.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then716 ], [ -107, %if.end.cleanup_crit_edge ], [ %send_done.1994.lcssa, %if.then763.cleanup_crit_edge ], [ -11, %if.then828 ], [ %call819, %out_err.cleanup_crit_edge ], [ 0, %if.end697.cleanup_crit_edge ], [ -32, %lor.lhs.false710.cleanup_crit_edge ], [ -32, %lor.lhs.false705.cleanup_crit_edge ], [ -32, %while.body.cleanup_crit_edge ], [ %send_done.0998, %if.then730.cleanup_crit_edge ], [ %send_done.0.be, %while.cond.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prep) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_sndbuf_sync_sg_for_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_sndbuf_sync_sg_for_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_tx_sndbuf_nonempty(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %wr_rdma_buf.i = alloca ptr, align 4
  %pend.i = alloca ptr, align 4
  %wr_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %killed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 39
  %0 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conn_state_flags = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 25, i32 7
  %1 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load1 = load i8, ptr %conn_state_flags, align 1
  %2 = and i8 %bf.load1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lgr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %3 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lgr, align 4
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_smcd, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  %prod_flags.i18 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 6
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %send_lock.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %send_lock.i) #8
  %7 = ptrtoint ptr %prod_flags.i18 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %prod_flags.i18, align 1
  %8 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.if.end4.i_crit_edge

if.then6.if.end4.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end.i:                                         ; preds = %if.then6
  %call.i = tail call fastcc i32 @smc_tx_rdma_writes(ptr noundef %conn, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.end.i.smcd_tx_sndbuf_nonempty.exit_crit_edge

if.end.i.smcd_tx_sndbuf_nonempty.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcd_tx_sndbuf_nonempty.exit

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.then6.if.end4.i_crit_edge
  %call3.i = tail call i32 @smcd_cdc_msg_send(ptr noundef %conn) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool5.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.end4.i.smcd_tx_sndbuf_nonempty.exit_crit_edge

if.end4.i.smcd_tx_sndbuf_nonempty.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcd_tx_sndbuf_nonempty.exit

land.lhs.true.i:                                  ; preds = %if.end4.i
  %9 = ptrtoint ptr %prod_flags.i18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load6.i = load i8, ptr %prod_flags.i18, align 1
  %10 = and i8 %bf.load6.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not.i = icmp eq i8 %10, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.smcd_tx_sndbuf_nonempty.exit_crit_edge, label %if.then10.i

land.lhs.true.i.smcd_tx_sndbuf_nonempty.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcd_tx_sndbuf_nonempty.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear14.i = and i8 %bf.load6.i, -97
  %11 = ptrtoint ptr %prod_flags.i18 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.clear14.i, ptr %prod_flags.i18, align 1
  br label %smcd_tx_sndbuf_nonempty.exit

smcd_tx_sndbuf_nonempty.exit:                     ; preds = %if.then10.i, %land.lhs.true.i.smcd_tx_sndbuf_nonempty.exit_crit_edge, %if.end4.i.smcd_tx_sndbuf_nonempty.exit_crit_edge, %if.end.i.smcd_tx_sndbuf_nonempty.exit_crit_edge
  %rc.131.i = phi i32 [ 0, %if.then10.i ], [ 0, %land.lhs.true.i.smcd_tx_sndbuf_nonempty.exit_crit_edge ], [ %call3.i, %if.end4.i.smcd_tx_sndbuf_nonempty.exit_crit_edge ], [ %call.i, %if.end.i.smcd_tx_sndbuf_nonempty.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %send_lock.i) #8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %lnk.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %12 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lnk.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_rdma_buf.i) #8
  %14 = ptrtoint ptr %wr_rdma_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_rdma_buf.i, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend.i) #8
  %15 = ptrtoint ptr %pend.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend.i, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf.i) #8
  %16 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf.i, align 4, !annotation !33
  %tobool.not.i19 = icmp eq ptr %13, null
  br i1 %tobool.not.i19, label %if.else.smcr_tx_sndbuf_nonempty.exit_crit_edge, label %lor.lhs.false.i

if.else.smcr_tx_sndbuf_nonempty.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcr_tx_sndbuf_nonempty.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %state.i.i.i.i = getelementptr inbounds %struct.smc_link, ptr %13, i32 0, i32 54
  %17 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %switch.i.i.i.i = icmp ugt i32 %18, 1
  br i1 %switch.i.i.i.i, label %smc_link_sendable.exit.i.i, label %lor.lhs.false.i.smcr_tx_sndbuf_nonempty.exit_crit_edge

lor.lhs.false.i.smcr_tx_sndbuf_nonempty.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcr_tx_sndbuf_nonempty.exit

smc_link_sendable.exit.i.i:                       ; preds = %lor.lhs.false.i
  %cur_qp_state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %13, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %cur_qp_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_qp_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.i.i.i = icmp eq i32 %20, 3
  br i1 %cmp.i.i.i, label %if.end.i20, label %smc_link_sendable.exit.i.i.smcr_tx_sndbuf_nonempty.exit_crit_edge

smc_link_sendable.exit.i.i.smcr_tx_sndbuf_nonempty.exit_crit_edge: ; preds = %smc_link_sendable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcr_tx_sndbuf_nonempty.exit

if.end.i20:                                       ; preds = %smc_link_sendable.exit.i.i
  %wr_tx_refcnt.i.i = getelementptr inbounds %struct.smc_link, ptr %13, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #8, !srcloc !42
  %call1.i = call i32 @smc_cdc_get_free_slot(ptr noundef %conn, ptr noundef nonnull %13, ptr noundef nonnull %wr_buf.i, ptr noundef nonnull %wr_rdma_buf.i, ptr noundef nonnull %pend.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end15.i

if.then2.i:                                       ; preds = %if.end.i20
  %call.i.i.i79.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.then2.i.smc_wr_tx_link_put.exit.i_crit_edge

if.then2.i.smc_wr_tx_link_put.exit.i_crit_edge:   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_tx_link_put.exit.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_wait.i.i = getelementptr inbounds %struct.smc_link, ptr %13, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %smc_wr_tx_link_put.exit.i

smc_wr_tx_link_put.exit.i:                        ; preds = %if.then.i.i, %if.then2.i.smc_wr_tx_link_put.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1.i)
  %cmp3.i = icmp eq i32 %call1.i, -16
  br i1 %cmp3.i, label %if.then4.i, label %smc_wr_tx_link_put.exit.i.smcr_tx_sndbuf_nonempty.exit_crit_edge

smc_wr_tx_link_put.exit.i.smcr_tx_sndbuf_nonempty.exit_crit_edge: ; preds = %smc_wr_tx_link_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcr_tx_sndbuf_nonempty.exit

if.then4.i:                                       ; preds = %smc_wr_tx_link_put.exit.i
  %sk_err.i = getelementptr i8, ptr %conn, i32 -292
  %23 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 103, i32 %24)
  %cmp5.i = icmp eq i32 %24, 103
  br i1 %cmp5.i, label %if.end.i81.i, label %if.end9.i

if.end.i81.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #8
  %25 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #8, !srcloc !47
  %asmresult.i.i.i = extractvalue { i32, i32 } %25, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %sub.i.i = sub i32 0, %asmresult.i.i.i
  br label %smcr_tx_sndbuf_nonempty.exit

if.end9.i:                                        ; preds = %if.then4.i
  %26 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i21 = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i21)
  %tobool10.not.i = icmp sgt i8 %bf.load.i21, -1
  br i1 %tobool10.not.i, label %cleanup.i, label %if.end9.i.smcr_tx_sndbuf_nonempty.exit_crit_edge

if.end9.i.smcr_tx_sndbuf_nonempty.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcr_tx_sndbuf_nonempty.exit

cleanup.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lgr, align 4
  %tx_wq.i = getelementptr inbounds %struct.smc_link_group, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %tx_wq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_wq.i, align 4
  %tx_work.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 23
  %call.i.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %tx_work.i, i32 noundef 0) #8
  br label %smcr_tx_sndbuf_nonempty.exit

if.end15.i:                                       ; preds = %if.end.i20
  %send_lock.i22 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 20
  call void @_raw_spin_lock_bh(ptr noundef %send_lock.i22) #8
  %31 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lnk.i, align 8
  %cmp17.not.i = icmp eq ptr %13, %32
  br i1 %cmp17.not.i, label %if.end20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pend.i, align 4
  %call19.i = call i32 @smc_wr_tx_put_slot(ptr noundef nonnull %13, ptr noundef %34) #8
  br label %out_unlock.i

if.end20.i:                                       ; preds = %if.end15.i
  %35 = ptrtoint ptr %prod_flags.i18 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load21.i = load i8, ptr %prod_flags.i18, align 1
  %36 = and i8 %bf.load21.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool23.not.i = icmp eq i8 %36, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end20.i.if.end30.i_crit_edge

if.end20.i.if.end30.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then24.i:                                      ; preds = %if.end20.i
  %37 = ptrtoint ptr %wr_rdma_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr_rdma_buf.i, align 4
  %call25.i = call fastcc i32 @smc_tx_rdma_writes(ptr noundef %conn, ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then24.i.if.end30.i_crit_edge, label %if.then27.i

if.then24.i.if.end30.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pend.i, align 4
  %call28.i = call i32 @smc_wr_tx_put_slot(ptr noundef nonnull %13, ptr noundef %40) #8
  br label %out_unlock.i

if.end30.i:                                       ; preds = %if.then24.i.if.end30.i_crit_edge, %if.end20.i.if.end30.i_crit_edge
  %41 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr_buf.i, align 4
  %43 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pend.i, align 4
  %call31.i = call i32 @smc_cdc_msg_send(ptr noundef %conn, ptr noundef %42, ptr noundef %44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i23, label %if.end30.i.out_unlock.i_crit_edge

if.end30.i.out_unlock.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock.i

land.lhs.true.i23:                                ; preds = %if.end30.i
  %45 = ptrtoint ptr %prod_flags.i18 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load33.i = load i8, ptr %prod_flags.i18, align 1
  %46 = and i8 %bf.load33.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool36.not.i = icmp eq i8 %46, 0
  br i1 %tobool36.not.i, label %land.lhs.true.i23.out_unlock.i_crit_edge, label %if.then37.i

land.lhs.true.i23.out_unlock.i_crit_edge:         ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock.i

if.then37.i:                                      ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear41.i = and i8 %bf.load33.i, -97
  %47 = ptrtoint ptr %prod_flags.i18 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %bf.clear41.i, ptr %prod_flags.i18, align 1
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.then37.i, %land.lhs.true.i23.out_unlock.i_crit_edge, %if.end30.i.out_unlock.i_crit_edge, %if.then27.i, %if.then18.i
  %rc.2.i = phi i32 [ -67, %if.then18.i ], [ %call31.i, %if.end30.i.out_unlock.i_crit_edge ], [ 0, %if.then37.i ], [ 0, %land.lhs.true.i23.out_unlock.i_crit_edge ], [ %call25.i, %if.then27.i ]
  call void @_raw_spin_unlock_bh(ptr noundef %send_lock.i22) #8
  %call.i.i.i83.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i84.i = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i84.i)
  %cmp.i.i.i85.i = icmp eq i32 %asmresult.i.i.i.i.i.i84.i, 0
  br i1 %cmp.i.i.i85.i, label %if.then.i87.i, label %out_unlock.i.smcr_tx_sndbuf_nonempty.exit_crit_edge

out_unlock.i.smcr_tx_sndbuf_nonempty.exit_crit_edge: ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smcr_tx_sndbuf_nonempty.exit

if.then.i87.i:                                    ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_wait.i86.i = getelementptr inbounds %struct.smc_link, ptr %13, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i86.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %smcr_tx_sndbuf_nonempty.exit

smcr_tx_sndbuf_nonempty.exit:                     ; preds = %if.then.i87.i, %out_unlock.i.smcr_tx_sndbuf_nonempty.exit_crit_edge, %cleanup.i, %if.end9.i.smcr_tx_sndbuf_nonempty.exit_crit_edge, %if.end.i81.i, %smc_wr_tx_link_put.exit.i.smcr_tx_sndbuf_nonempty.exit_crit_edge, %smc_link_sendable.exit.i.i.smcr_tx_sndbuf_nonempty.exit_crit_edge, %lor.lhs.false.i.smcr_tx_sndbuf_nonempty.exit_crit_edge, %if.else.smcr_tx_sndbuf_nonempty.exit_crit_edge
  %retval.1.i = phi i32 [ -67, %if.else.smcr_tx_sndbuf_nonempty.exit_crit_edge ], [ 0, %cleanup.i ], [ %call1.i, %smc_wr_tx_link_put.exit.i.smcr_tx_sndbuf_nonempty.exit_crit_edge ], [ %rc.2.i, %out_unlock.i.smcr_tx_sndbuf_nonempty.exit_crit_edge ], [ %rc.2.i, %if.then.i87.i ], [ -67, %smc_link_sendable.exit.i.i.smcr_tx_sndbuf_nonempty.exit_crit_edge ], [ -67, %lor.lhs.false.i.smcr_tx_sndbuf_nonempty.exit_crit_edge ], [ %sub.i.i, %if.end.i81.i ], [ -32, %if.end9.i.smcr_tx_sndbuf_nonempty.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_rdma_buf.i) #8
  br label %if.end8

if.end8:                                          ; preds = %smcr_tx_sndbuf_nonempty.exit, %smcd_tx_sndbuf_nonempty.exit
  %rc.0 = phi i32 [ %rc.131.i, %smcd_tx_sndbuf_nonempty.exit ], [ %retval.1.i, %smcr_tx_sndbuf_nonempty.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool9.not = icmp eq i32 %rc.0, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %conn, i32 -984
  call void @smc_close_wake_tx_prepared(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %lor.lhs.false.cleanup_crit_edge ], [ -32, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ %rc.0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smc_tx_sendmsg(ptr noundef %smc, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_tx_sendmsg, i32 0, i32 1), ptr blockaddress(@trace_smc_tx_sendmsg, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !49

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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %call42 = tail call i32 @__traceiter_smc_tx_sendmsg(ptr noundef null, ptr noundef %smc, i32 noundef %len) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !51
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !38

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_tx_sendmsg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smc_tx_sendmsg, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_smc_tx_sendmsg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_smc_tx_sendmsg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 76, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcd_tx_ism_write(ptr nocapture noundef %conn, ptr noundef %data, i32 noundef %len, i32 noundef %offset, i32 noundef %signal) local_unnamed_addr #0 align 64 {
entry:
  %pos = alloca %struct.smc_ism_position, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pos) #8
  %0 = getelementptr inbounds i8, ptr %pos, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %0, align 8
  %peer_token = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 38
  %2 = ptrtoint ptr %peer_token to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %peer_token, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %pos, align 8
  %peer_rmbe_idx = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 4
  %5 = ptrtoint ptr %peer_rmbe_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %peer_rmbe_idx, align 8
  %index = getelementptr inbounds %struct.smc_ism_position, ptr %pos, i32 0, i32 2
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %index, align 4
  %tx_off = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 24
  %8 = ptrtoint ptr %tx_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_off, align 8
  %add = add i32 %9, %offset
  %offset1 = getelementptr inbounds %struct.smc_ism_position, ptr %pos, i32 0, i32 1
  %10 = ptrtoint ptr %offset1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %offset1, align 8
  %conv = trunc i32 %signal to i8
  %signal2 = getelementptr inbounds %struct.smc_ism_position, ptr %pos, i32 0, i32 3
  %11 = ptrtoint ptr %signal2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %signal2, align 1
  %lgr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %12 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lgr, align 4
  %smcd = getelementptr inbounds %struct.smc_link_group, ptr %13, i32 0, i32 21, i32 0, i32 1
  %14 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smcd, align 8
  %call = call i32 @smc_ism_write(ptr noundef %15, ptr noundef nonnull %pos, ptr noundef %data, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conn_state_flags = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 7
  %16 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %conn_state_flags, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %conn_state_flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_close_wake_tx_prepared(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_tx_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1228
  tail call void @lock_sock_nested(ptr noundef %add.ptr3, i32 noundef 0) #8
  %sk_err = getelementptr i8, ptr %work, i32 -536
  %0 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -244
  %call5 = tail call i32 @smc_tx_sndbuf_nonempty(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %prod_flags = getelementptr i8, ptr %work, i32 132
  %2 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %prod_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true8

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true8:                                   ; preds = %land.lhs.true
  %bytes_to_rcv = getelementptr i8, ptr %work, i32 180
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %3 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true8.out_crit_edge

land.lhs.true8.out_crit_edge:                     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load14 = load i8, ptr %prod_flags, align 8
  %bf.clear = and i8 %bf.load14, 127
  store i8 %bf.clear, ptr %prod_flags, align 8
  br label %out

out:                                              ; preds = %if.then11, %land.lhs.true8.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @release_sock(ptr noundef %add.ptr3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_tx_consumer_update(ptr noundef %conn, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  %cfed = alloca %union.smc_host_cursor, align 8
  %cons = alloca %union.smc_host_cursor, align 8
  %prod = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfed) #8
  %0 = ptrtoint ptr %cfed to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cfed, align 8, !annotation !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons) #8
  %1 = ptrtoint ptr %cons to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %cons, align 8, !annotation !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prod) #8
  %2 = ptrtoint ptr %prod to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %prod, align 8, !annotation !33
  %rmb_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 9
  %3 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmb_desc, align 4
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 8
  %cons1 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons1, i32 noundef 8) #8
  %call.i.i97 = tail call i64 @generic_atomic64_read(ptr noundef %cons1) #8
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %cons, i64 noundef %call.i.i97) #8
  %rx_curs_confirmed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 26
  %call.i.i.i98 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_curs_confirmed, i32 noundef 8) #8
  %call.i.i99 = call i64 @generic_atomic64_read(ptr noundef %rx_curs_confirmed) #8
  %call.i.i1.i100 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfed, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %cfed, i64 noundef %call.i.i99) #8
  %wrap.i = getelementptr inbounds %struct.anon.223, ptr %cfed, i32 0, i32 1
  %7 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wrap.i, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.223, ptr %cons, i32 0, i32 1
  %9 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.not.i = icmp eq i16 %8, %10
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmb_desc, align 4
  %len3 = getelementptr inbounds %struct.smc_buf_desc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len3, align 8
  %count.i = getelementptr inbounds %struct.anon.223, ptr %cfed, i32 0, i32 2
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 4
  %sub.i = sub i32 %14, %16
  %count4.i = getelementptr inbounds %struct.anon.223, ptr %cons, i32 0, i32 2
  %17 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count4.i, align 4
  %add.i = add i32 %sub.i, %18
  br label %smc_curs_diff.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %count7.i = getelementptr inbounds %struct.anon.223, ptr %cons, i32 0, i32 2
  %19 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count7.i, align 4
  %count8.i = getelementptr inbounds %struct.anon.223, ptr %cfed, i32 0, i32 2
  %21 = ptrtoint ptr %count8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count8.i, align 4
  %sub9.i = sub i32 %20, %22
  br label %smc_curs_diff.exit

smc_curs_diff.exit:                               ; preds = %if.end.i, %if.then.i
  %sub9.sink.i = phi i32 [ %sub9.i, %if.end.i ], [ %add.i, %if.then.i ]
  %23 = call i32 @llvm.smax.i32(i32 %sub9.sink.i, i32 0) #8
  %rmbe_update_limit = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 11
  %24 = ptrtoint ptr %rmbe_update_limit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rmbe_update_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp = icmp sgt i32 %23, %25
  br i1 %cmp, label %if.then, label %smc_curs_diff.exit.if.end_crit_edge

smc_curs_diff.exit.if.end_crit_edge:              ; preds = %smc_curs_diff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %smc_curs_diff.exit
  %prod4 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 25, i32 4
  %call.i.i.i101 = call zeroext i1 @__kasan_check_read(ptr noundef %prod4, i32 noundef 8) #8
  %call.i.i102 = call i64 @generic_atomic64_read(ptr noundef %prod4) #8
  %call.i.i1.i103 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prod, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %prod, i64 noundef %call.i.i102) #8
  %26 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmb_desc, align 4
  %len6 = getelementptr inbounds %struct.smc_buf_desc, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len6, align 8
  %30 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %wrap.i, align 2
  %conv.i = zext i16 %31 to i32
  %wrap1.i105 = getelementptr inbounds %struct.anon.223, ptr %prod, i32 0, i32 1
  %32 = ptrtoint ptr %wrap1.i105 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %wrap1.i105, align 2
  %conv2.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %31)
  %cmp.i = icmp ugt i16 %33, %31
  br i1 %cmp.i, label %if.then.i110, label %if.end.i111

if.then.i110:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %count.i106 = getelementptr inbounds %struct.anon.223, ptr %cfed, i32 0, i32 2
  %34 = ptrtoint ptr %count.i106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count.i106, align 4
  %count4.i107 = getelementptr inbounds %struct.anon.223, ptr %prod, i32 0, i32 2
  %36 = ptrtoint ptr %count4.i107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count4.i107, align 4
  %38 = xor i32 %conv.i, -1
  %sub10.i = add nsw i32 %conv2.i, %38
  %mul.i = mul i32 %sub10.i, %29
  %sub.i108 = add i32 %mul.i, %29
  %add.i109 = sub i32 %sub.i108, %35
  %add11.i = add i32 %add.i109, %37
  %39 = call i32 @llvm.smin.i32(i32 %add11.i, i32 %29) #8
  br label %smc_curs_diff_large.exit

if.end.i111:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %31)
  %cmp18.i = icmp ult i16 %33, %31
  br i1 %cmp18.i, label %if.then20.i, label %if.end40.i

if.then20.i:                                      ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  %count21.i = getelementptr inbounds %struct.anon.223, ptr %cfed, i32 0, i32 2
  %40 = ptrtoint ptr %count21.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count21.i, align 4
  %count23.i = getelementptr inbounds %struct.anon.223, ptr %prod, i32 0, i32 2
  %42 = ptrtoint ptr %count23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count23.i, align 4
  %add27.i = xor i32 %conv.i, 65535
  %sub30.i = add nuw nsw i32 %add27.i, %conv2.i
  %mul31.i = mul i32 %sub30.i, %29
  %sub22.i = add i32 %mul31.i, %29
  %add24.i = sub i32 %sub22.i, %41
  %add32.i = add i32 %add24.i, %43
  %44 = call i32 @llvm.smin.i32(i32 %add32.i, i32 %29) #8
  br label %smc_curs_diff_large.exit

if.end40.i:                                       ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  %count41.i = getelementptr inbounds %struct.anon.223, ptr %prod, i32 0, i32 2
  %45 = ptrtoint ptr %count41.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count41.i, align 4
  %count42.i = getelementptr inbounds %struct.anon.223, ptr %cfed, i32 0, i32 2
  %47 = ptrtoint ptr %count42.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count42.i, align 4
  %sub43.i = sub i32 %46, %48
  %49 = call i32 @llvm.smax.i32(i32 %sub43.i, i32 0) #8
  br label %smc_curs_diff_large.exit

smc_curs_diff_large.exit:                         ; preds = %if.end40.i, %if.then20.i, %if.then.i110
  %retval.0.i = phi i32 [ %39, %if.then.i110 ], [ %44, %if.then20.i ], [ %49, %if.end40.i ]
  %sub = sub i32 %29, %retval.0.i
  br label %if.end

if.end:                                           ; preds = %smc_curs_diff_large.exit, %smc_curs_diff.exit.if.end_crit_edge
  %sender_free.0 = phi i32 [ %sub, %smc_curs_diff_large.exit ], [ %6, %smc_curs_diff.exit.if.end_crit_edge ]
  %prod_flags = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 25, i32 6
  %50 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %prod_flags, align 8
  %51 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not = icmp ne i8 %51, 0
  %brmerge = or i1 %tobool.not, %force
  br i1 %brmerge, label %if.end.if.then28_crit_edge, label %lor.lhs.false13

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false13:                                  ; preds = %if.end
  %52 = ptrtoint ptr %rmbe_update_limit to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rmbe_update_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %53)
  %cmp15 = icmp sgt i32 %23, %53
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false13.if.end53_crit_edge

lor.lhs.false13.if.end53_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true:                                    ; preds = %lor.lhs.false13
  %54 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmb_desc, align 4
  %len18 = getelementptr inbounds %struct.smc_buf_desc, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len18, align 8
  %div = sdiv i32 %57, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sender_free.0, i32 %div)
  %cmp19.not = icmp sgt i32 %sender_free.0, %div
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  %or.cond = select i1 %cmp19.not, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end53_crit_edge, label %land.lhs.true.if.then28_crit_edge

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then28:                                        ; preds = %land.lhs.true.if.then28_crit_edge, %if.end.if.then28_crit_edge
  %killed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 39
  %58 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load29 = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load29)
  %tobool32.not = icmp sgt i8 %bf.load29, -1
  br i1 %tobool32.not, label %lor.lhs.false33, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false33:                                  ; preds = %if.then28
  %conn_state_flags = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 25, i32 7
  %59 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load35 = load i8, ptr %conn_state_flags, align 1
  %60 = and i8 %bf.load35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool39.not = icmp eq i8 %60, 0
  br i1 %tobool39.not, label %if.end41, label %lor.lhs.false33.cleanup_crit_edge

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false33
  %call42 = call i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %land.lhs.true45, label %if.end41.if.end53_crit_edge

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true45:                                  ; preds = %if.end41
  %61 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load47 = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47)
  %tobool49.not = icmp sgt i8 %bf.load47, -1
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true45.if.end53_crit_edge

land.lhs.true45.if.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  %lgr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %62 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lgr, align 4
  %tx_wq = getelementptr inbounds %struct.smc_link_group, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %tx_wq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_wq, align 4
  %tx_work = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 23
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %tx_work, i32 noundef 0) #8
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true45.if.end53_crit_edge, %if.end41.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %lor.lhs.false13.if.end53_crit_edge
  %66 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load56 = load i8, ptr %prod_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load56)
  %tobool59.not = icmp sgt i8 %bf.load56, -1
  br i1 %tobool59.not, label %if.end53.cleanup_crit_edge, label %land.lhs.true60

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end53
  %bytes_to_rcv = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 32
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %bytes_to_rcv, i32 noundef 4) #8
  %67 = ptrtoint ptr %bytes_to_rcv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %bytes_to_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool62.not = icmp eq i32 %68, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true60.cleanup_crit_edge

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load66 = load i8, ptr %prod_flags, align 8
  %bf.clear67 = and i8 %bf.load66, 127
  store i8 %bf.clear67, ptr %prod_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %land.lhs.true60.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then50, %lor.lhs.false33.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prod) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfed) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_cdc_get_slot_and_msg_send(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @smc_tx_init(ptr nocapture noundef writeonly %smc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 78
  %0 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smc_tx_write_space, ptr %sk_write_space, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_tx_write_space(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %0 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_socket, align 8
  %sndbuf_space = getelementptr inbounds %struct.smc_sock, ptr %sk, i32 0, i32 6, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sndbuf_space, i32 noundef 4) #8
  %2 = ptrtoint ptr %sndbuf_space to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sndbuf_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.if.end294_crit_edge, label %if.then

entry.if.end294_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end294

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then.if.end263_crit_edge, label %do.body

if.then.if.end263_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

do.body:                                          ; preds = %if.then
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %smc8 = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 55
  %9 = ptrtoint ptr %smc8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smc8, align 4
  %lnk = getelementptr inbounds %struct.smc_sock, ptr %sk, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lnk, align 8
  %tobool10.not = icmp eq ptr %12, null
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  br i1 %tobool10.not, label %do.body66, label %land.lhs.true195.critedge

do.body66:                                        ; preds = %do.body
  %buf_full_cnt90 = getelementptr [2 x %struct.smc_stats_tech], ptr %10, i32 0, i32 1, i32 4, i32 3
  %14 = ptrtoint ptr %buf_full_cnt90 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu93 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu93 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu93, align 4
  %arrayidx94 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx94, align 4
  %add95 = add i32 %20, %14
  %21 = inttoptr i32 %add95 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  %add96 = add i64 %23, 1
  store i64 %add96, ptr %21, align 8
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool107.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool107.not, label %if.then116, label %do.body66.do.end119_crit_edge, !prof !35

do.body66.do.end119_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end119

if.then116:                                       ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end119

do.end119:                                        ; preds = %if.then116, %do.body66.do.end119_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #8, !srcloc !36
  br label %if.end263

land.lhs.true195.critedge:                        ; preds = %do.body
  %buf_full_cnt224 = getelementptr inbounds %struct.smc_stats_tech, ptr %10, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %buf_full_cnt224 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i317 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i317 to ptr
  %cpu227 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu227 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu227, align 4
  %arrayidx228 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx228, align 4
  %add229 = add i32 %31, %25
  %32 = inttoptr i32 %add229 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  %add230 = add i64 %34, 1
  store i64 %add230, ptr %32, align 8
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i318 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i318)
  %tobool241.not = icmp eq i32 %and.i.i318, 0
  br i1 %tobool241.not, label %if.then250, label %land.lhs.true195.critedge.do.end253_crit_edge, !prof !35

land.lhs.true195.critedge.do.end253_crit_edge:    ; preds = %land.lhs.true195.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end253

if.then250:                                       ; preds = %land.lhs.true195.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end253

do.end253:                                        ; preds = %if.then250, %land.lhs.true195.critedge.do.end253_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #8, !srcloc !36
  br label %if.end263

if.end263:                                        ; preds = %do.end253, %do.end119, %if.then.if.end263_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #8
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end263.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end263.rcu_read_lock.exit_crit_edge:           ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end263
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end263.rcu_read_lock.exit_crit_edge
  %40 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %40, align 8
  %call270 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %land.lhs.true272, label %rcu_read_lock.exit.do.end280_crit_edge

rcu_read_lock.exit.do.end280_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end280

land.lhs.true272:                                 ; preds = %rcu_read_lock.exit
  %call273 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %land.lhs.true272.do.end280_crit_edge, label %land.lhs.true275

land.lhs.true272.do.end280_crit_edge:             ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end280

land.lhs.true275:                                 ; preds = %land.lhs.true272
  %.b316 = load i1, ptr @smc_tx_write_space.__warned, align 1
  br i1 %.b316, label %land.lhs.true275.do.end280_crit_edge, label %if.then277

land.lhs.true275.do.end280_crit_edge:             ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end280

if.then277:                                       ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @smc_tx_write_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 54, ptr noundef nonnull @.str.3) #8
  br label %do.end280

do.end280:                                        ; preds = %if.then277, %land.lhs.true275.do.end280_crit_edge, %land.lhs.true272.do.end280_crit_edge, %rcu_read_lock.exit.do.end280_crit_edge
  %tobool.not.i319 = icmp eq ptr %42, null
  br i1 %tobool.not.i319, label %do.end280.if.end293_crit_edge, label %skwq_has_sleeper.exit

do.end280.if.end293_crit_edge:                    ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293

skwq_has_sleeper.exit:                            ; preds = %do.end280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  %head.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.i.not = icmp eq ptr %44, %head.i.i.i
  br i1 %cmp.i.i.i.i.not, label %skwq_has_sleeper.exit.land.lhs.true286_crit_edge, label %if.then283

skwq_has_sleeper.exit.land.lhs.true286_crit_edge: ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true286

if.then283:                                       ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up(ptr noundef nonnull %42, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #8
  br label %land.lhs.true286

land.lhs.true286:                                 ; preds = %if.then283, %skwq_has_sleeper.exit.land.lhs.true286_crit_edge
  %fasync_list = getelementptr inbounds %struct.socket_wq, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %fasync_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fasync_list, align 4
  %tobool287.not = icmp eq ptr %46, null
  br i1 %tobool287.not, label %land.lhs.true286.if.end293_crit_edge, label %land.lhs.true288

land.lhs.true286.if.end293_crit_edge:             ; preds = %land.lhs.true286
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293

land.lhs.true288:                                 ; preds = %land.lhs.true286
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %47 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sk_shutdown, align 2
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool290.not = icmp eq i8 %49, 0
  br i1 %tobool290.not, label %if.then291, label %land.lhs.true288.if.end293_crit_edge

land.lhs.true288.if.end293_crit_edge:             ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293

if.then291:                                       ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #10
  %call292 = tail call i32 @sock_wake_async(ptr noundef nonnull %42, i32 noundef 2, i32 noundef 2) #8
  br label %if.end293

if.end293:                                        ; preds = %if.then291, %land.lhs.true288.if.end293_crit_edge, %land.lhs.true286.if.end293_crit_edge, %do.end280.if.end293_crit_edge
  %call.i320 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i320, label %if.end293.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i323

if.end293.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i323:                               ; preds = %if.end293
  %call1.i321 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i321)
  %tobool.not.i322 = icmp eq i32 %call1.i321, 0
  br i1 %tobool.not.i322, label %land.lhs.true.i323.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i325

land.lhs.true.i323.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i323
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i325:                              ; preds = %land.lhs.true.i323
  %.b4.i324 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i324, label %land.lhs.true2.i325.rcu_read_unlock.exit_crit_edge, label %if.then.i326

land.lhs.true2.i325.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i325
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i326:                                     ; preds = %land.lhs.true2.i325
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i326, %land.lhs.true2.i325.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i323.rcu_read_unlock.exit_crit_edge, %if.end293.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i327 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i327 to ptr
  %preempt_count.i.i.i.i328 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i328 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i328, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i328, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end294

if.end294:                                        ; preds = %rcu_read_unlock.exit, %entry.if.end294_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smc_tx_sendmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_tx_rdma_writes(ptr noundef %conn, ptr noundef %wr_rdma_buf) unnamed_addr #0 align 64 {
entry:
  %dummy.i.i.i = alloca ptr, align 4
  %pos.i.i = alloca %struct.smc_ism_position, align 8
  %sent = alloca %union.smc_host_cursor, align 8
  %prep = alloca %union.smc_host_cursor, align 8
  %prod = alloca %union.smc_host_cursor, align 8
  %cons = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sent) #8
  %0 = ptrtoint ptr %sent to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sent, align 8, !annotation !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prep) #8
  %1 = ptrtoint ptr %prep to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %prep, align 8, !annotation !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prod) #8
  %2 = ptrtoint ptr %prod to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %prod, align 8, !annotation !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons) #8
  %3 = ptrtoint ptr %cons to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %cons, align 8, !annotation !33
  %tx_curs_sent = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_sent, i32 noundef 8) #8
  %call.i.i388 = tail call i64 @generic_atomic64_read(ptr noundef %tx_curs_sent) #8
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sent, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %sent, i64 noundef %call.i.i388) #8
  %tx_curs_prep = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 14
  %call.i.i.i389 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_prep, i32 noundef 8) #8
  %call.i.i390 = call i64 @generic_atomic64_read(ptr noundef %tx_curs_prep) #8
  %call.i.i1.i391 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prep, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %prep, i64 noundef %call.i.i390) #8
  %sndbuf_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 8
  %wrap.i = getelementptr inbounds %struct.anon.223, ptr %sent, i32 0, i32 1
  %4 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wrap.i, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.223, ptr %prep, i32 0, i32 1
  %6 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not.i = icmp eq i16 %5, %7
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sndbuf_desc, align 8
  %len1 = getelementptr inbounds %struct.smc_buf_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1, align 8
  %count.i = getelementptr inbounds %struct.anon.223, ptr %sent, i32 0, i32 2
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 4
  %sub.i = sub i32 %11, %13
  %count4.i = getelementptr inbounds %struct.anon.223, ptr %prep, i32 0, i32 2
  %14 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count4.i, align 4
  %add.i = add i32 %sub.i, %15
  br label %smc_curs_diff.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %count7.i = getelementptr inbounds %struct.anon.223, ptr %prep, i32 0, i32 2
  %16 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count7.i, align 4
  %count8.i = getelementptr inbounds %struct.anon.223, ptr %sent, i32 0, i32 2
  %18 = ptrtoint ptr %count8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count8.i, align 4
  %sub9.i = sub i32 %17, %19
  br label %smc_curs_diff.exit

smc_curs_diff.exit:                               ; preds = %if.end.i, %if.then.i
  %sub9.sink.i = phi i32 [ %sub9.i, %if.end.i ], [ %add.i, %if.then.i ]
  %20 = call i32 @llvm.smax.i32(i32 %sub9.sink.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.sink.i)
  %cmp = icmp slt i32 %sub9.sink.i, 1
  br i1 %cmp, label %smc_curs_diff.exit.cleanup_crit_edge, label %if.end

smc_curs_diff.exit.cleanup_crit_edge:             ; preds = %smc_curs_diff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %smc_curs_diff.exit
  %peer_rmbe_space = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %peer_rmbe_space, i32 noundef 4) #8
  %21 = ptrtoint ptr %peer_rmbe_space to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %peer_rmbe_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp3 = icmp slt i32 %22, 1
  br i1 %cmp3, label %if.then4, label %if.end261

if.then4:                                         ; preds = %if.end
  %skc_net.i = getelementptr i8, ptr %conn, i32 -948
  %23 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skc_net.i, align 4
  %smc6 = getelementptr inbounds %struct.net, ptr %24, i32 0, i32 55
  %25 = ptrtoint ptr %smc6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smc6, align 4
  %lnk = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %27 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lnk, align 8
  %tobool.not = icmp eq ptr %28, null
  %29 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8
  br i1 %tobool.not, label %do.body64, label %land.lhs.true193.critedge

do.body64:                                        ; preds = %if.then4
  %buf_full_peer_cnt88 = getelementptr [2 x %struct.smc_stats_tech], ptr %26, i32 0, i32 1, i32 4, i32 2
  %30 = ptrtoint ptr %buf_full_peer_cnt88 to i32
  %31 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %cpu91 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu91 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu91, align 4
  %arrayidx92 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx92, align 4
  %add93 = add i32 %36, %30
  %37 = inttoptr i32 %add93 to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %37, align 8
  %add94 = add i64 %39, 1
  store i64 %add94, ptr %37, align 8
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool105.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool105.not, label %if.then114, label %do.body64.do.end117_crit_edge, !prof !35

do.body64.do.end117_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end117

if.then114:                                       ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end117

do.end117:                                        ; preds = %if.then114, %do.body64.do.end117_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #8, !srcloc !36
  br label %cleanup

land.lhs.true193.critedge:                        ; preds = %if.then4
  %buf_full_peer_cnt222 = getelementptr inbounds %struct.smc_stats_tech, ptr %26, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %buf_full_peer_cnt222 to i32
  %42 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i392 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i392 to ptr
  %cpu225 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu225 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu225, align 4
  %arrayidx226 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx226, align 4
  %add227 = add i32 %47, %41
  %48 = inttoptr i32 %add227 to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %48, align 8
  %add228 = add i64 %50, 1
  store i64 %add228, ptr %48, align 8
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i393 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i393)
  %tobool239.not = icmp eq i32 %and.i.i393, 0
  br i1 %tobool239.not, label %if.then248, label %land.lhs.true193.critedge.do.end251_crit_edge, !prof !35

land.lhs.true193.critedge.do.end251_crit_edge:    ; preds = %land.lhs.true193.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end251

if.then248:                                       ; preds = %land.lhs.true193.critedge
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end251

do.end251:                                        ; preds = %if.then248, %land.lhs.true193.critedge.do.end251_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #8, !srcloc !36
  br label %cleanup

if.end261:                                        ; preds = %if.end
  %prod262 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 4
  %call.i.i.i394 = call zeroext i1 @__kasan_check_read(ptr noundef %prod262, i32 noundef 8) #8
  %call.i.i395 = call i64 @generic_atomic64_read(ptr noundef %prod262) #8
  %call.i.i1.i396 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prod, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %prod, i64 noundef %call.i.i395) #8
  %cons263 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 25, i32 5
  %call.i.i.i397 = call zeroext i1 @__kasan_check_read(ptr noundef %cons263, i32 noundef 8) #8
  %call.i.i398 = call i64 @generic_atomic64_read(ptr noundef %cons263) #8
  %call.i.i1.i399 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef nonnull %cons, i64 noundef %call.i.i398) #8
  %prod_flags = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp265.not = icmp ult i32 %20, %22
  %52 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %prod_flags, align 1
  %bf.shl = select i1 %cmp265.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %prod_flags, align 1
  %53 = call i32 @llvm.umin.i32(i32 %20, i32 %22)
  %count = getelementptr inbounds %struct.anon.223, ptr %prod, i32 0, i32 2
  %54 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count, align 4
  %wrap = getelementptr inbounds %struct.anon.223, ptr %prod, i32 0, i32 1
  %56 = ptrtoint ptr %wrap to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %wrap, align 2
  %wrap272 = getelementptr inbounds %struct.anon.223, ptr %cons, i32 0, i32 1
  %58 = ptrtoint ptr %wrap272 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %wrap272, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp274 = icmp eq i16 %57, %59
  br i1 %cmp274, label %if.then276, label %if.end261.if.end285_crit_edge

if.end261.if.end285_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285

if.then276:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #10
  %peer_rmbe_size = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 5
  %60 = ptrtoint ptr %peer_rmbe_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %peer_rmbe_size, align 4
  %sub = sub i32 %61, %55
  %62 = call i32 @llvm.umin.i32(i32 %sub, i32 %53)
  br label %if.end285

if.end285:                                        ; preds = %if.then276, %if.end261.if.end285_crit_edge
  %dst_len.0 = phi i32 [ %62, %if.then276 ], [ %53, %if.end261.if.end285_crit_edge ]
  %count286 = getelementptr inbounds %struct.anon.223, ptr %sent, i32 0, i32 2
  %63 = ptrtoint ptr %count286 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count286, align 4
  %add287 = add i32 %64, %dst_len.0
  %65 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sndbuf_desc, align 8
  %len289 = getelementptr inbounds %struct.smc_buf_desc, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %len289 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len289, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add287, i32 %68)
  %cmp290.not = icmp ugt i32 %add287, %68
  %sub297 = sub i32 %68, %64
  %src_len.0 = select i1 %cmp290.not, i32 %sub297, i32 %dst_len.0
  %lgr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %69 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lgr, align 4
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %70, i32 0, i32 15
  %71 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %is_smcd, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool299.not = icmp eq i8 %72, 0
  br i1 %tobool299.not, label %if.else303, label %if.then300

if.then300:                                       ; preds = %if.end285
  %73 = getelementptr inbounds i8, ptr %pos.i.i, i32 8
  %peer_token.i.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 38
  %peer_rmbe_idx.i.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 4
  %index.i.i = getelementptr inbounds %struct.smc_ism_position, ptr %pos.i.i, i32 0, i32 2
  %tx_off.i.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 24
  %cpu_addr.i = getelementptr inbounds %struct.smc_buf_desc, ptr %66, i32 0, i32 1
  %74 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cpu_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %75, i32 %64
  %add.i400 = add i32 %55, 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pos.i.i) #8
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %73, align 8
  %77 = ptrtoint ptr %peer_token.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %peer_token.i.i, align 8
  %79 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %pos.i.i, align 8
  %80 = ptrtoint ptr %peer_rmbe_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %peer_rmbe_idx.i.i, align 8
  %82 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %index.i.i, align 4
  %83 = ptrtoint ptr %tx_off.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_off.i.i, align 8
  %add.i.i = add i32 %add.i400, %84
  store i32 %add.i.i, ptr %73, align 8
  %smcd.i.i = getelementptr inbounds %struct.smc_link_group, ptr %70, i32 0, i32 21, i32 0, i32 1
  %85 = ptrtoint ptr %smcd.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %smcd.i.i, align 8
  %call.i.i401 = call i32 @smc_ism_write(ptr noundef %86, ptr noundef nonnull %pos.i.i, ptr noundef %add.ptr.i, i32 noundef %src_len.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i401)
  %tobool.not.i.i = icmp eq i32 %call.i.i401, 0
  br i1 %tobool.not.i.i, label %if.end.i403, label %if.then300.cleanup.thread.i_crit_edge

if.then300.cleanup.thread.i_crit_edge:            ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.inc.1107.i.cleanup.thread.i_crit_edge, %if.end20.i.cleanup.thread.i_crit_edge, %for.inc.i.cleanup.thread.i_crit_edge, %if.then300.cleanup.thread.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i401, %if.then300.cleanup.thread.i_crit_edge ], [ %call.i.1.i, %for.inc.i.cleanup.thread.i_crit_edge ], [ %call.i.199.i, %if.end20.i.cleanup.thread.i_crit_edge ], [ %call.i.1.1.i, %for.inc.1107.i.cleanup.thread.i_crit_edge ]
  %conn_state_flags.i.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 7
  %87 = ptrtoint ptr %conn_state_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i.i = load i8, ptr %conn_state_flags.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, 32
  store i8 %bf.set.i.i, ptr %conn_state_flags.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos.i.i) #8
  br label %cleanup

if.end.i403:                                      ; preds = %if.then300
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos.i.i) #8
  %add5.i = add i32 %src_len.0, %64
  %88 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sndbuf_desc, align 8
  %len7.i = getelementptr inbounds %struct.smc_buf_desc, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %91)
  %cmp8.not.i = icmp ult i32 %add5.i, %91
  %sub.i402 = select i1 %cmp8.not.i, i32 0, i32 %91
  %spec.select.i = sub i32 %add5.i, %sub.i402
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_len.0, i32 %src_len.0)
  %cmp13.i = icmp eq i32 %dst_len.0, %src_len.0
  br i1 %cmp13.i, label %if.end.i403.for.end.i_crit_edge, label %for.inc.i

if.end.i403.for.end.i_crit_edge:                  ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i403
  %sub16.i = sub i32 %dst_len.0, %src_len.0
  %cpu_addr.1.i = getelementptr inbounds %struct.smc_buf_desc, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %cpu_addr.1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cpu_addr.1.i, align 8
  %add.ptr.1.i = getelementptr i8, ptr %93, i32 %spec.select.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pos.i.i) #8
  %94 = ptrtoint ptr %73 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %73, align 8
  %95 = ptrtoint ptr %peer_token.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %peer_token.i.i, align 8
  %97 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %pos.i.i, align 8
  %98 = ptrtoint ptr %peer_rmbe_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %peer_rmbe_idx.i.i, align 8
  %100 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %index.i.i, align 4
  %101 = ptrtoint ptr %tx_off.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_off.i.i, align 8
  %add.1.i = add i32 %add.i400, %src_len.0
  %add.i.1.i = add i32 %add.1.i, %102
  store i32 %add.i.1.i, ptr %73, align 8
  %103 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lgr, align 4
  %smcd.i.1.i = getelementptr inbounds %struct.smc_link_group, ptr %104, i32 0, i32 21, i32 0, i32 1
  %105 = ptrtoint ptr %smcd.i.1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %smcd.i.1.i, align 8
  %call.i.1.i = call i32 @smc_ism_write(ptr noundef %106, ptr noundef nonnull %pos.i.i, ptr noundef %add.ptr.1.i, i32 noundef %sub16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.1.i, label %for.inc.i.cleanup.thread.i_crit_edge

for.inc.i.cleanup.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos.i.i) #8
  %add5.1.i = add i32 %spec.select.i, %sub16.i
  %107 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sndbuf_desc, align 8
  %len7.1.i = getelementptr inbounds %struct.smc_buf_desc, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %len7.1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len7.1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.1.i, i32 %110)
  %cmp8.not.1.i = icmp ult i32 %add5.1.i, %110
  %sub.1.i = select i1 %cmp8.not.1.i, i32 0, i32 %110
  %spec.select.1.i = sub i32 %add5.1.i, %sub.1.i
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.1.i, %if.end.i403.for.end.i_crit_edge
  %spec.select.lcssa.i = phi i32 [ %spec.select.i, %if.end.i403.for.end.i_crit_edge ], [ %spec.select.1.i, %if.end.1.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %dst_len.0)
  %cmp18.i = icmp eq i32 %53, %dst_len.0
  br i1 %cmp18.i, label %for.end.i.if.end309_crit_edge, label %if.end20.i

for.end.i.if.end309_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

if.end20.i:                                       ; preds = %for.end.i
  %sub21.i = sub nsw i32 %53, %dst_len.0
  %111 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sndbuf_desc, align 8
  %len24.i = getelementptr inbounds %struct.smc_buf_desc, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %len24.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len24.i, align 8
  %sub25.i = sub i32 %114, %spec.select.lcssa.i
  %115 = call i32 @llvm.smin.i32(i32 %sub21.i, i32 %sub25.i) #8
  %cpu_addr.194.i = getelementptr inbounds %struct.smc_buf_desc, ptr %112, i32 0, i32 1
  %116 = ptrtoint ptr %cpu_addr.194.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cpu_addr.194.i, align 8
  %add.ptr.195.i = getelementptr i8, ptr %117, i32 %spec.select.lcssa.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pos.i.i) #8
  %118 = ptrtoint ptr %73 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 0, ptr %73, align 8
  %119 = ptrtoint ptr %peer_token.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %peer_token.i.i, align 8
  %121 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %pos.i.i, align 8
  %122 = ptrtoint ptr %peer_rmbe_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %peer_rmbe_idx.i.i, align 8
  %124 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %index.i.i, align 4
  %125 = ptrtoint ptr %tx_off.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_off.i.i, align 8
  %add.i.197.i = add i32 %126, 32
  store i32 %add.i.197.i, ptr %73, align 8
  %127 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %lgr, align 4
  %smcd.i.198.i = getelementptr inbounds %struct.smc_link_group, ptr %128, i32 0, i32 21, i32 0, i32 1
  %129 = ptrtoint ptr %smcd.i.198.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %smcd.i.198.i, align 8
  %call.i.199.i = call i32 @smc_ism_write(ptr noundef %130, ptr noundef nonnull %pos.i.i, ptr noundef %add.ptr.195.i, i32 noundef %115) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.199.i)
  %tobool.not.i.1100.i = icmp eq i32 %call.i.199.i, 0
  br i1 %tobool.not.i.1100.i, label %if.end.1106.i, label %if.end20.i.cleanup.thread.i_crit_edge

if.end20.i.cleanup.thread.i_crit_edge:            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.end.1106.i:                                    ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21.i, i32 %sub25.i)
  %cmp13.1.not.i = icmp sgt i32 %sub21.i, %sub25.i
  br i1 %cmp13.1.not.i, label %for.inc.1107.i, label %if.end.1106.i.if.end309_crit_edge

if.end.1106.i.if.end309_crit_edge:                ; preds = %if.end.1106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

for.inc.1107.i:                                   ; preds = %if.end.1106.i
  %add5.1101.i = add i32 %115, %spec.select.lcssa.i
  %131 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sndbuf_desc, align 8
  %len7.1102.i = getelementptr inbounds %struct.smc_buf_desc, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %len7.1102.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len7.1102.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.1101.i, i32 %134)
  %cmp8.not.1103.i = icmp ult i32 %add5.1101.i, %134
  %sub.1104.i = select i1 %cmp8.not.1103.i, i32 0, i32 %134
  %spec.select.1105.i = sub i32 %add5.1101.i, %sub.1104.i
  %sub16.1.i = sub i32 %sub21.i, %115
  %cpu_addr.1.1.i = getelementptr inbounds %struct.smc_buf_desc, ptr %132, i32 0, i32 1
  %135 = ptrtoint ptr %cpu_addr.1.1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cpu_addr.1.1.i, align 8
  %add.ptr.1.1.i = getelementptr i8, ptr %136, i32 %spec.select.1105.i
  %add.1.1.i = add i32 %115, 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pos.i.i) #8
  %137 = ptrtoint ptr %73 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 0, ptr %73, align 8
  %138 = ptrtoint ptr %peer_token.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %peer_token.i.i, align 8
  %140 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %pos.i.i, align 8
  %141 = ptrtoint ptr %peer_rmbe_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %peer_rmbe_idx.i.i, align 8
  %143 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %index.i.i, align 4
  %144 = ptrtoint ptr %tx_off.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_off.i.i, align 8
  %add.i.1.1.i = add i32 %add.1.1.i, %145
  store i32 %add.i.1.1.i, ptr %73, align 8
  %146 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %lgr, align 4
  %smcd.i.1.1.i = getelementptr inbounds %struct.smc_link_group, ptr %147, i32 0, i32 21, i32 0, i32 1
  %148 = ptrtoint ptr %smcd.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %smcd.i.1.1.i, align 8
  %call.i.1.1.i = call i32 @smc_ism_write(ptr noundef %149, ptr noundef nonnull %pos.i.i, ptr noundef %add.ptr.1.1.i, i32 noundef %sub16.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.1.i)
  %tobool.not.i.1.1.i = icmp eq i32 %call.i.1.1.i, 0
  br i1 %tobool.not.i.1.1.i, label %if.end.1.1.i, label %for.inc.1107.i.cleanup.thread.i_crit_edge

for.inc.1107.i.cleanup.thread.i_crit_edge:        ; preds = %for.inc.1107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.end.1.1.i:                                     ; preds = %for.inc.1107.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos.i.i) #8
  br label %if.end309

if.else303:                                       ; preds = %if.end285
  %lnk.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %150 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %lnk.i, align 8
  %152 = getelementptr inbounds %struct.smc_buf_desc, ptr %66, i32 0, i32 5
  %link_idx.i = getelementptr inbounds %struct.smc_link, ptr %151, i32 0, i32 46
  %153 = ptrtoint ptr %link_idx.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %link_idx.i, align 1
  %idxprom.i = zext i8 %154 to i32
  %arrayidx.i = getelementptr [3 x %struct.sg_table], ptr %152, i32 0, i32 %idxprom.i
  %155 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %dma_address.i, align 4
  %rtoken_idx.i.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 7
  %tx_off.i.i405 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc36.i.for.body.i_crit_edge, %if.else303
  %dstchunk.0114.i = phi i32 [ 0, %if.else303 ], [ %inc37.i, %for.inc36.i.for.body.i_crit_edge ]
  %dst_len_sum.0113.i = phi i32 [ %dst_len.0, %if.else303 ], [ %add30.i, %for.inc36.i.for.body.i_crit_edge ]
  %src_off.addr.0112.i = phi i32 [ %64, %if.else303 ], [ %spec.select.lcssa.i412, %for.inc36.i.for.body.i_crit_edge ]
  %src_len.addr.0111.i = phi i32 [ %src_len.0, %if.else303 ], [ %206, %for.inc36.i.for.body.i_crit_edge ]
  %dst_len.addr.0109.i = phi i32 [ %dst_len.0, %if.else303 ], [ %sub29.i, %for.inc36.i.for.body.i_crit_edge ]
  %dst_off.addr.0108.i = phi i32 [ %55, %if.else303 ], [ 0, %for.inc36.i.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr [2 x %struct.ib_rdma_wr], ptr %wr_rdma_buf, i32 0, i32 %dstchunk.0114.i
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %arrayidx1.i, i32 0, i32 2
  %159 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sg_list.i, align 8
  %add.i406 = add i32 %src_off.addr.0112.i, %158
  %conv.i = zext i32 %add.i406 to i64
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %conv.i, ptr %160, align 8
  %length.i = getelementptr %struct.ib_sge, ptr %160, i32 0, i32 1
  %162 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %src_len.addr.0111.i, ptr %length.i, align 8
  %add7.i = add i32 %src_len.addr.0111.i, %src_off.addr.0112.i
  %163 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sndbuf_desc, align 8
  %len9.i = getelementptr inbounds %struct.smc_buf_desc, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %166)
  %cmp10.not.i = icmp ult i32 %add7.i, %166
  %sub.i407 = select i1 %cmp10.not.i, i32 0, i32 %166
  %spec.select.i408 = sub i32 %add7.i, %sub.i407
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_len.addr.0109.i, i32 %src_len.addr.0111.i)
  %cmp14.i = icmp eq i32 %dst_len.addr.0109.i, %src_len.addr.0111.i
  br i1 %cmp14.i, label %for.body.i.for.end.i416_crit_edge, label %if.end17.i

for.body.i.for.end.i416_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i416

if.end17.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub18.i = sub i32 %dst_len.addr.0109.i, %src_len.addr.0111.i
  %add.1.i409 = add i32 %spec.select.i408, %158
  %conv.1.i = zext i32 %add.1.i409 to i64
  %arrayidx5.1.i = getelementptr %struct.ib_sge, ptr %160, i32 1
  %167 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv.1.i, ptr %arrayidx5.1.i, align 8
  %length.1.i = getelementptr %struct.ib_sge, ptr %160, i32 1, i32 1
  %168 = ptrtoint ptr %length.1.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %sub18.i, ptr %length.1.i, align 8
  %add7.1.i = add i32 %spec.select.i408, %sub18.i
  %169 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sndbuf_desc, align 8
  %len9.1.i = getelementptr inbounds %struct.smc_buf_desc, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %len9.1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %len9.1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.1.i, i32 %172)
  %cmp10.not.1.i = icmp ult i32 %add7.1.i, %172
  %sub.1.i410 = select i1 %cmp10.not.1.i, i32 0, i32 %172
  %spec.select.1.i411 = sub i32 %add7.1.i, %sub.1.i410
  br label %for.end.i416

for.end.i416:                                     ; preds = %if.end17.i, %for.body.i.for.end.i416_crit_edge
  %inc.lcssa.i = phi i32 [ 1, %for.body.i.for.end.i416_crit_edge ], [ 2, %if.end17.i ]
  %spec.select.lcssa.i412 = phi i32 [ %spec.select.i408, %for.body.i.for.end.i416_crit_edge ], [ %spec.select.1.i411, %if.end17.i ]
  %173 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %lgr, align 4
  %175 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %lnk.i, align 8
  %wr_tx_id.i.i.i = getelementptr inbounds %struct.smc_link, ptr %176, i32 0, i32 17
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_id.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  call void @llvm.prefetch.p0(ptr %wr_tx_id.i.i.i, i32 1, i32 3, i32 1) #8
  %177 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_id.i.i.i, ptr %wr_tx_id.i.i.i, i32 1, ptr elementtype(i32) %wr_tx_id.i.i.i) #8, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %177, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  %conv.i.i = sext i32 %asmresult.i.i.i.i.i.i.i.i to i64
  %178 = getelementptr inbounds %struct.ib_send_wr, ptr %arrayidx1.i, i32 0, i32 1
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %conv.i.i, ptr %178, align 8
  %num_sge.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %arrayidx1.i, i32 0, i32 3
  %180 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %inc.lcssa.i, ptr %num_sge.i.i, align 4
  %181 = ptrtoint ptr %rtoken_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %rtoken_idx.i.i, align 4
  %link_idx.i.i = getelementptr inbounds %struct.smc_link, ptr %176, i32 0, i32 46
  %183 = ptrtoint ptr %link_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %link_idx.i.i, align 1
  %idxprom.i.i = zext i8 %184 to i32
  %arrayidx3.i.i = getelementptr %struct.smc_link_group, ptr %174, i32 0, i32 21, i32 0, i32 5, i32 %182, i32 %idxprom.i.i
  %185 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %arrayidx3.i.i, align 8
  %187 = ptrtoint ptr %tx_off.i.i405 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %tx_off.i.i405, align 8
  %conv4.i.i = zext i32 %188 to i64
  %conv5.i.i = sext i32 %dst_off.addr.0108.i to i64
  %add.i.i413 = add i64 %186, %conv5.i.i
  %add6.i.i = add i64 %add.i.i413, %conv4.i.i
  %remote_addr.i.i = getelementptr [2 x %struct.ib_rdma_wr], ptr %wr_rdma_buf, i32 0, i32 %dstchunk.0114.i, i32 1
  %189 = ptrtoint ptr %remote_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %add6.i.i, ptr %remote_addr.i.i, align 8
  %190 = load i32, ptr %rtoken_idx.i.i, align 4
  %191 = load i8, ptr %link_idx.i.i, align 1
  %idxprom11.i.i = zext i8 %191 to i32
  %rkey.i.i = getelementptr %struct.smc_link_group, ptr %174, i32 0, i32 21, i32 0, i32 5, i32 %190, i32 %idxprom11.i.i, i32 1
  %192 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rkey.i.i, align 8
  %rkey13.i.i = getelementptr [2 x %struct.ib_rdma_wr], ptr %wr_rdma_buf, i32 0, i32 %dstchunk.0114.i, i32 2
  %194 = ptrtoint ptr %rkey13.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %rkey13.i.i, align 8
  %roce_qp.i.i = getelementptr inbounds %struct.smc_link, ptr %176, i32 0, i32 3
  %195 = ptrtoint ptr %roce_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %roce_qp.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #8
  %197 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !33
  %198 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %196, align 4
  %post_send.i.i.i = getelementptr inbounds %struct.ib_device, ptr %199, i32 0, i32 1, i32 6
  %200 = ptrtoint ptr %post_send.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %post_send.i.i.i, align 4
  %call.i.i.i414 = call i32 %201(ptr noundef %196, ptr noundef %arrayidx1.i, ptr noundef nonnull %dummy.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i414)
  %tobool.not.i.i415 = icmp eq i32 %call.i.i.i414, 0
  br i1 %tobool.not.i.i415, label %if.end24.i, label %cleanup.thread.i417

cleanup.thread.i417:                              ; preds = %for.end.i416
  call void @__sanitizer_cov_trace_pc() #10
  call void @smcr_link_down_cond_sched(ptr noundef %176) #8
  br label %cleanup

if.end24.i:                                       ; preds = %for.end.i416
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_len_sum.0113.i, i32 %53)
  %cmp25.i = icmp eq i32 %dst_len_sum.0113.i, %53
  br i1 %cmp25.i, label %if.end24.i.if.end309_crit_edge, label %for.inc36.i

if.end24.i.if.end309_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

for.inc36.i:                                      ; preds = %if.end24.i
  %sub29.i = sub i32 %53, %dst_len.addr.0109.i
  %add30.i = add i32 %sub29.i, %dst_len_sum.0113.i
  %202 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %sndbuf_desc, align 8
  %len32.i = getelementptr inbounds %struct.smc_buf_desc, ptr %203, i32 0, i32 3
  %204 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %len32.i, align 8
  %sub33.i = sub i32 %205, %64
  %206 = call i32 @llvm.smin.i32(i32 %sub29.i, i32 %sub33.i) #8
  %inc37.i = add nuw nsw i32 %dstchunk.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc37.i, 2
  br i1 %exitcond.not.i, label %for.inc36.i.if.end309_crit_edge, label %for.inc36.i.for.body.i_crit_edge

for.inc36.i.for.body.i_crit_edge:                 ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc36.i.if.end309_crit_edge:                  ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

if.end309:                                        ; preds = %for.inc36.i.if.end309_crit_edge, %if.end24.i.if.end309_crit_edge, %if.end.1.1.i, %if.end.1106.i.if.end309_crit_edge, %for.end.i.if.end309_crit_edge
  %urg_tx_pend = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 29
  %207 = ptrtoint ptr %urg_tx_pend to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %urg_tx_pend, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool310.not = icmp ne i8 %208, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp313 = icmp ule i32 %20, %22
  %or.cond = select i1 %tobool310.not, i1 %cmp313, i1 false
  br i1 %or.cond, label %if.then315, label %if.end309.if.end319_crit_edge

if.end309.if.end319_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end319

if.then315:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load316 = load i8, ptr %prod_flags, align 1
  %bf.set318 = or i8 %bf.load316, 32
  store i8 %bf.set318, ptr %prod_flags, align 1
  br label %if.end319

if.end319:                                        ; preds = %if.then315, %if.end309.if.end319_crit_edge
  %peer_rmbe_size.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 5
  %210 = ptrtoint ptr %peer_rmbe_size.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %peer_rmbe_size.i, align 4
  %212 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %count, align 4
  %add.i.i418 = add i32 %213, %53
  store i32 %add.i.i418, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i418, i32 %211)
  %cmp.not.i.i = icmp ult i32 %add.i.i418, %211
  br i1 %cmp.not.i.i, label %if.end319.smc_curs_add.exit.i_crit_edge, label %if.then.i.i

if.end319.smc_curs_add.exit.i_crit_edge:          ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_curs_add.exit.i

if.then.i.i:                                      ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  %214 = ptrtoint ptr %wrap to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %wrap, align 2
  %inc.i.i = add i16 %215, 1
  store i16 %inc.i.i, ptr %wrap, align 2
  %sub.i.i = sub i32 %add.i.i418, %211
  %216 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %sub.i.i, ptr %count, align 4
  br label %smc_curs_add.exit.i

smc_curs_add.exit.i:                              ; preds = %if.then.i.i, %if.end319.smc_curs_add.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  %call.i.i.i419 = call zeroext i1 @__kasan_check_write(ptr noundef %peer_rmbe_space, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %peer_rmbe_space, i32 1, i32 3, i32 1) #8
  %217 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %peer_rmbe_space, ptr %peer_rmbe_space, i32 %53, ptr elementtype(i32) %peer_rmbe_space) #8, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  %218 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %sndbuf_desc, align 8
  %len7.i421 = getelementptr inbounds %struct.smc_buf_desc, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %len7.i421 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %len7.i421, align 8
  %222 = ptrtoint ptr %count286 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %count286, align 4
  %add.i13.i = add i32 %223, %53
  store i32 %add.i13.i, ptr %count286, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i13.i, i32 %221)
  %cmp.not.i14.i = icmp ult i32 %add.i13.i, %221
  br i1 %cmp.not.i14.i, label %smc_curs_add.exit.i.smc_tx_advance_cursors.exit_crit_edge, label %if.then.i18.i

smc_curs_add.exit.i.smc_tx_advance_cursors.exit_crit_edge: ; preds = %smc_curs_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_tx_advance_cursors.exit

if.then.i18.i:                                    ; preds = %smc_curs_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %224 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %wrap.i, align 2
  %inc.i16.i = add i16 %225, 1
  store i16 %inc.i16.i, ptr %wrap.i, align 2
  %sub.i17.i = sub i32 %add.i13.i, %221
  %226 = ptrtoint ptr %count286 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %sub.i17.i, ptr %count286, align 4
  br label %smc_tx_advance_cursors.exit

smc_tx_advance_cursors.exit:                      ; preds = %if.then.i18.i, %smc_curs_add.exit.i.smc_tx_advance_cursors.exit_crit_edge
  %call.i.i.i422 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %prod, i32 noundef 8) #8
  %call.i.i423 = call i64 @generic_atomic64_read(ptr noundef nonnull %prod) #8
  %call.i.i1.i424 = call zeroext i1 @__kasan_check_write(ptr noundef %prod262, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef %prod262, i64 noundef %call.i.i423) #8
  %call.i.i.i425 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sent, i32 noundef 8) #8
  %call.i.i426 = call i64 @generic_atomic64_read(ptr noundef nonnull %sent) #8
  %call.i.i1.i427 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_curs_sent, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef %tx_curs_sent, i64 noundef %call.i.i426) #8
  br label %cleanup

cleanup:                                          ; preds = %smc_tx_advance_cursors.exit, %cleanup.thread.i417, %cleanup.thread.i, %do.end251, %do.end117, %smc_curs_diff.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smc_tx_advance_cursors.exit ], [ 0, %smc_curs_diff.exit.cleanup_crit_edge ], [ 0, %do.end117 ], [ 0, %do.end251 ], [ %call.i.lcssa.i, %cleanup.thread.i ], [ %call.i.i.i414, %cleanup.thread.i417 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prod) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prep) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sent) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcd_cdc_msg_send(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_link_down_cond_sched(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_cdc_get_free_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_put_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_cdc_msg_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !4, !6, !8, !9, !10, !11, !13, !14, !16, !17, !19, !20, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{!"sp"}
!1 = distinct !{null, !2, !"__already_done", i1 false, i1 false}
!2 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!3 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/smc/smc_tracepoint.h", i32 71, i32 1}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/smc/smc_tx.c", i32 54, i32 8}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{i64 757933}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 758218}
!37 = !{i8 0, i8 2}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2159824046}
!40 = !{i64 2148363408, i64 2148363434, i64 2148363463, i64 2148363497, i64 2148363528, i64 2148363551}
!41 = !{i64 2159824223}
!42 = !{i64 2148360943, i64 2148360969, i64 2148360998, i64 2148361032, i64 2148361063, i64 2148361086}
!43 = !{i64 2148449395}
!44 = !{i64 2148364128, i64 2148364160, i64 2148364189, i64 2148364223, i64 2148364254, i64 2148364277}
!45 = !{i64 2148449624}
!46 = !{i64 2156768386}
!47 = !{i64 867711, i64 867728, i64 867752, i64 867778, i64 867796}
!48 = !{i64 2156768729}
!49 = !{i64 2148180566, i64 2148180571, i64 2148180584, i64 2148180628, i64 2148180662, i64 2148180683}
!50 = !{i64 2159607202}
!51 = !{i64 2159607409}
!52 = !{i64 2149414308}
!53 = !{i64 2149415344}
!54 = !{i64 2149405749}
!55 = !{i64 2149306412}
!56 = !{i64 2149406015}
!57 = !{i64 2148446354}
!58 = !{i64 2148361663, i64 2148361695, i64 2148361724, i64 2148361758, i64 2148361789, i64 2148361812}
!59 = !{i64 2148446583}
!60 = !{i64 2159824656}
!61 = !{i64 2159824833}
