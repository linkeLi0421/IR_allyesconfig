; ModuleID = '/llk/IR_all_yes/fs/afs/rxrpc.c_pt.bc'
source_filename = "../fs/afs/rxrpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.afs_call_type = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.142 }
%union.anon.142 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.afs_call = type { ptr, ptr, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.iov_iter, ptr, ptr, %union.anon.148, ptr, %union.anon.149, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, %union.anon.168, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.79 }
%union.anon.20 = type { ptr }
%union.anon.79 = type { i64 }
%union.anon.148 = type { [1 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.149 = type { i32 }
%union.anon.168 = type { i64 }
%struct.anon.169 = type { i32, i32 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.81, i8, i32, i32, ptr }
%union.anon.81 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.4, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.5, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.6, %union.anon.10, ptr }
%union.anon.4 = type { %struct.rb_node }
%union.anon.5 = type { i64 }
%union.anon.6 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.7, ptr, ptr, ptr }
%union.anon.7 = type { i32 }
%union.anon.10 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.156, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%struct.timespec64 = type { i64, i32 }
%union.anon.156 = type { %struct.anon.167 }
%struct.anon.167 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_server = type { %struct.callback_head, %union.anon.143, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.147 }
%union.anon.143 = type { %struct.afs_uuid }
%struct.anon.147 = type { i32, i32, i16, i8 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_open_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_open_socket\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/afs/rxrpc.c\00", [17 x i8] zeroinitializer }, align 32
@afs_open_socket._entry_ptr = internal global ptr @afs_open_socket._entry, section ".printk_index", align 4
@afs_open_socket._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_open_socket._entry_ptr.5 = internal global ptr @afs_open_socket._entry.3, section ".printk_index", align 4
@afs_open_socket._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_open_socket._entry_ptr.8 = internal global ptr @afs_open_socket._entry.6, section ".printk_index", align 4
@afs_close_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_close_socket\00", [47 x i8] zeroinitializer }, align 32
@afs_close_socket._entry_ptr = internal global ptr @afs_close_socket._entry, section ".printk_index", align 4
@afs_async_calls = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@afs_close_socket._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     outstanding %u\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_close_socket._entry_ptr.12 = internal global ptr @afs_close_socket._entry.10, section ".printk_index", align 4
@afs_close_socket._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     no outstanding calls\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_close_socket._entry_ptr.15 = internal global ptr @afs_close_socket._entry.13, section ".printk_index", align 4
@afs_close_socket._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     dework\0A\00", [43 x i8] zeroinitializer }, align 32
@afs_close_socket._entry_ptr.18 = internal global ptr @afs_close_socket._entry.16, section ".printk_index", align 4
@afs_close_socket._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_close_socket._entry_ptr.21 = internal global ptr @afs_close_socket._entry.19, section ".printk_index", align 4
@afs_put_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"afs_put_call\00", [19 x i8] zeroinitializer }, align 32
@afs_put_call._entry_ptr = internal global ptr @afs_put_call._entry, section ".printk_index", align 4
@afs_put_call._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013AFS: Assertion failed\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_put_call._entry_ptr.26 = internal global ptr @afs_put_call._entry.24, section ".printk_index", align 4
@afs_put_call._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu >= %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_put_call._entry_ptr.29 = internal global ptr @afs_put_call._entry.27, section ".printk_index", align 4
@afs_put_call._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx >= 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_put_call._entry_ptr.32 = internal global ptr @afs_put_call._entry.30, section ".printk_index", align 4
@afs_put_call._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_put_call._entry_ptr.34 = internal global ptr @afs_put_call._entry.33, section ".printk_index", align 4
@afs_put_call._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_put_call._entry_ptr.36 = internal global ptr @afs_put_call._entry.35, section ".printk_index", align 4
@afs_put_call._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_put_call._entry_ptr.38 = internal global ptr @afs_put_call._entry.37, section ".printk_index", align 4
@afs_put_call._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_put_call._entry_ptr.40 = internal global ptr @afs_put_call._entry.39, section ".printk_index", align 4
@afs_alloc_flat_call.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&call->waitq\00", [19 x i8] zeroinitializer }, align 32
@afs_flat_call_destructor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.42, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_flat_call_destructor\00", [39 x i8] zeroinitializer }, align 32
@afs_flat_call_destructor._entry_ptr = internal global ptr @afs_flat_call_destructor._entry, section ".printk_index", align 4
@afs_make_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] ==> %s(,{%pISp},)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_make_call\00", [18 x i8] zeroinitializer }, align 32
@afs_make_call._entry_ptr = internal global ptr @afs_make_call._entry, section ".printk_index", align 4
@afs_make_call._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.44, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_make_call._entry_ptr.46 = internal global ptr @afs_make_call._entry.45, section ".printk_index", align 4
@afs_make_call._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.44, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_make_call._entry_ptr.48 = internal global ptr @afs_make_call._entry.47, section ".printk_index", align 4
@afs_make_call._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.44, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_make_call._entry_ptr.50 = internal global ptr @afs_make_call._entry.49, section ".printk_index", align 4
@afs_make_call._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.44, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_make_call._entry_ptr.52 = internal global ptr @afs_make_call._entry.51, section ".printk_index", align 4
@afs_make_call._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%-6.6s]     ____MAKE %p{%s,%x} [%d]____\0A\00", [54 x i8] zeroinitializer }, align 32
@afs_make_call._entry_ptr.55 = internal global ptr @afs_make_call._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KSD\00", [28 x i8] zeroinitializer }, align 32
@afs_make_call._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.44, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_make_call._entry_ptr.58 = internal global ptr @afs_make_call._entry.57, section ".printk_index", align 4
@afs_wait_for_call_to_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.59, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"afs_wait_for_call_to_complete\00", [34 x i8] zeroinitializer }, align 32
@afs_wait_for_call_to_complete._entry_ptr = internal global ptr @afs_wait_for_call_to_complete._entry, section ".printk_index", align 4
@afs_wait_for_call_to_complete._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     call interrupted\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_wait_for_call_to_complete._entry_ptr.64 = internal global ptr @afs_wait_for_call_to_complete._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KWI\00", [28 x i8] zeroinitializer }, align 32
@afs_wait_for_call_to_complete._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     call complete\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_wait_for_call_to_complete._entry_ptr.68 = internal global ptr @afs_wait_for_call_to_complete._entry.66, section ".printk_index", align 4
@afs_wait_for_call_to_complete._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_wait_for_call_to_complete._entry_ptr.71 = internal global ptr @afs_wait_for_call_to_complete._entry.69, section ".printk_index", align 4
@afs_RXCMxxxx = internal constant { %struct.afs_call_type, [40 x i8] } { %struct.afs_call_type { ptr @.str.147, i32 0, ptr @afs_deliver_cm_op_id, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_charge_preallocation.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@afs_send_empty_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.72, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_send_empty_reply\00", [43 x i8] zeroinitializer }, align 32
@afs_send_empty_reply._entry_ptr = internal global ptr @afs_send_empty_reply._entry, section ".printk_index", align 4
@afs_send_empty_reply._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() [replied]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_send_empty_reply._entry_ptr.75 = internal global ptr @afs_send_empty_reply._entry.73, section ".printk_index", align 4
@afs_send_empty_reply._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%-6.6s]     oom\0A\00", [46 x i8] zeroinitializer }, align 32
@afs_send_empty_reply._entry_ptr.78 = internal global ptr @afs_send_empty_reply._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KOO\00", [28 x i8] zeroinitializer }, align 32
@afs_send_empty_reply._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.72, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] <== %s() [error]\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_send_empty_reply._entry_ptr.82 = internal global ptr @afs_send_empty_reply._entry.80, section ".printk_index", align 4
@afs_send_simple_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.83, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_send_simple_reply\00", [42 x i8] zeroinitializer }, align 32
@afs_send_simple_reply._entry_ptr = internal global ptr @afs_send_simple_reply._entry, section ".printk_index", align 4
@afs_send_simple_reply._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.83, ptr @.str.2, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_send_simple_reply._entry_ptr.85 = internal global ptr @afs_send_simple_reply._entry.84, section ".printk_index", align 4
@afs_send_simple_reply._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.83, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_send_simple_reply._entry_ptr.87 = internal global ptr @afs_send_simple_reply._entry.86, section ".printk_index", align 4
@afs_send_simple_reply._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.83, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_send_simple_reply._entry_ptr.89 = internal global ptr @afs_send_simple_reply._entry.88, section ".printk_index", align 4
@afs_extract_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] ==> %s({%s,%zu,%zu},%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_extract_data\00", [47 x i8] zeroinitializer }, align 32
@afs_extract_data._entry_ptr = internal global ptr @afs_extract_data._entry, section ".printk_index", align 4
@afs_extract_data._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s]     prem complete %d\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_extract_data._entry_ptr.94 = internal global ptr @afs_extract_data._entry.92, section ".printk_index", align 4
@__tracepoint_afs_call = external dso_local global %struct.tracepoint, align 4
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_debug_id = external dso_local global %struct.atomic_t, align 4
@afs_alloc_call.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&call->async_work)\00", [59 x i8] zeroinitializer }, align 32
@afs_alloc_call.__key.99 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@afs_alloc_call.__key.100 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&call->state_lock\00", [46 x i8] zeroinitializer }, align 32
@afs_process_async_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.102, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_process_async_call\00", [41 x i8] zeroinitializer }, align 32
@afs_process_async_call._entry_ptr = internal global ptr @afs_process_async_call._entry, section ".printk_index", align 4
@afs_process_async_call._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.102, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_process_async_call._entry_ptr.104 = internal global ptr @afs_process_async_call._entry.103, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_afs_send_data = external dso_local global %struct.tracepoint, align 4
@trace_afs_send_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_afs_sent_data = external dso_local global %struct.tracepoint, align 4
@trace_afs_sent_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_afs_call_done = external dso_local global %struct.tracepoint, align 4
@trace_afs_call_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_deliver_to_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_deliver_to_call\00", [44 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr = internal global ptr @afs_deliver_to_call._entry, section ".printk_index", align 4
@afs_deliver_to_call._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.106, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.108 = internal global ptr @afs_deliver_to_call._entry.107, section ".printk_index", align 4
@afs_deliver_to_call._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.106, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.110 = internal global ptr @afs_deliver_to_call._entry.109, section ".printk_index", align 4
@afs_deliver_to_call._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.106, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%lu > %lu is false\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.113 = internal global ptr @afs_deliver_to_call._entry.111, section ".printk_index", align 4
@afs_deliver_to_call._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.106, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0130x%lx > 0x%lx is false\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.116 = internal global ptr @afs_deliver_to_call._entry.114, section ".printk_index", align 4
@afs_deliver_to_call._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.106, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.118 = internal global ptr @afs_deliver_to_call._entry.117, section ".printk_index", align 4
@afs_deliver_to_call._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.106, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.120 = internal global ptr @afs_deliver_to_call._entry.119, section ".printk_index", align 4
@afs_deliver_to_call._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.106, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%lu == %lu is false\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.123 = internal global ptr @afs_deliver_to_call._entry.121, section ".printk_index", align 4
@afs_deliver_to_call._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.106, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0130x%lx == 0x%lx is false\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.126 = internal global ptr @afs_deliver_to_call._entry.124, section ".printk_index", align 4
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KIV\00", [28 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.106, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013kAFS: Call %u in bad state %u\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.130 = internal global ptr @afs_deliver_to_call._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KUM\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KER\00", [28 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.106, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_deliver_to_call._entry_ptr.134 = internal global ptr @afs_deliver_to_call._entry.133, section ".printk_index", align 4
@__tracepoint_afs_receive_data = external dso_local global %struct.tracepoint, align 4
@trace_afs_receive_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_queue_call_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.135 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&call->work)\00", [33 x i8] zeroinitializer }, align 32
@afs_wq = external dso_local local_unnamed_addr global ptr, align 4
@afs_log_error.max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unexpected EOF\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"client marshalling\00", [45 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"client unmarshalling\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"server marshalling\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"server unmarshalling\00", [43 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"opcode decode\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"server XDR cleanup\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"client XDR cleanup\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"insufficient data\00", [46 x i8] zeroinitializer }, align 32
@afs_log_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015kAFS: Peer reported %s failure on %s [%pISp]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_log_error\00", [18 x i8] zeroinitializer }, align 32
@afs_log_error._entry_ptr = internal global ptr @afs_log_error._entry, section ".printk_index", align 4
@__tracepoint_afs_call_state = external dso_local global %struct.tracepoint, align 4
@trace_afs_call_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_afs_notify_call = external dso_local global %struct.tracepoint, align 4
@trace_afs_notify_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CB.xxxx\00", [24 x i8] zeroinitializer }, align 32
@afs_deliver_cm_op_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s({%zu})\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_deliver_cm_op_id\00", [43 x i8] zeroinitializer }, align 32
@afs_deliver_cm_op_id._entry_ptr = internal global ptr @afs_deliver_cm_op_id._entry, section ".printk_index", align 4
@__tracepoint_afs_cb_call = external dso_local global %struct.tracepoint, align 4
@trace_afs_cb_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.150 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.153 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_afs_io_error = external dso_local global %struct.tracepoint, align 4
@trace_afs_io_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_afs_protocol_error = external dso_local global %struct.tracepoint, align 4
@trace_afs_protocol_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967193]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967285]
@__sancov_gen_cov_switch_values.156 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 4294966772, i64 4294967181, i64 4294967193, i64 4294967206, i64 4294967222, i64 4294967235, i64 4294967285, i64 4294967291]
@__sancov_gen_cov_switch_values.157 = internal global [11 x i64] [i64 9, i64 32, i64 4294966839, i64 4294966840, i64 4294966842, i64 4294966843, i64 4294966844, i64 4294966845, i64 4294966846, i64 4294967264, i64 4294967292]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 7]
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 42, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 93, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 99, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 108, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"afs_async_calls\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 17, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 118, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 121, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 127, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 128, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 172, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 174, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 175, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 252, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 266, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 300, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 302, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 303, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 305, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 395, i32 26 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 427, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 580, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 619, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 621, i32 34 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 644, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 646, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [13 x i8] c"afs_RXCMxxxx\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 27, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 729, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 819, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 833, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 837, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 839, i32 30 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 842, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 857, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 874, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 879, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 883, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 897, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 916, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 729, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 108, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 149, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 150, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 151, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 693, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 701, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 473, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 519, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 525, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 531, i32 24 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 534, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 544, i32 24 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 549, i32 24 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 558, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 215, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 436, i32 13 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 441, i32 23 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 442, i32 32 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 443, i32 33 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 444, i32 32 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 445, i32 33 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 446, i32 28 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 447, i32 32 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 448, i32 32 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 449, i32 20 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 457, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 28, i32 11 }
@___asan_gen_.536 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.543 = private constant [18 x i8] c"../fs/afs/rxrpc.c\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 776, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 45, i32 7 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 695, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 723, i32 2 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @afs_close_socket._entry, ptr @afs_close_socket._entry.10, ptr @afs_close_socket._entry.13, ptr @afs_close_socket._entry.16, ptr @afs_close_socket._entry.19, ptr @afs_close_socket._entry_ptr, ptr @afs_close_socket._entry_ptr.12, ptr @afs_close_socket._entry_ptr.15, ptr @afs_close_socket._entry_ptr.18, ptr @afs_close_socket._entry_ptr.21, ptr @afs_deliver_cm_op_id._entry, ptr @afs_deliver_cm_op_id._entry_ptr, ptr @afs_deliver_to_call._entry, ptr @afs_deliver_to_call._entry.107, ptr @afs_deliver_to_call._entry.109, ptr @afs_deliver_to_call._entry.111, ptr @afs_deliver_to_call._entry.114, ptr @afs_deliver_to_call._entry.117, ptr @afs_deliver_to_call._entry.119, ptr @afs_deliver_to_call._entry.121, ptr @afs_deliver_to_call._entry.124, ptr @afs_deliver_to_call._entry.128, ptr @afs_deliver_to_call._entry.133, ptr @afs_deliver_to_call._entry_ptr, ptr @afs_deliver_to_call._entry_ptr.108, ptr @afs_deliver_to_call._entry_ptr.110, ptr @afs_deliver_to_call._entry_ptr.113, ptr @afs_deliver_to_call._entry_ptr.116, ptr @afs_deliver_to_call._entry_ptr.118, ptr @afs_deliver_to_call._entry_ptr.120, ptr @afs_deliver_to_call._entry_ptr.123, ptr @afs_deliver_to_call._entry_ptr.126, ptr @afs_deliver_to_call._entry_ptr.130, ptr @afs_deliver_to_call._entry_ptr.134, ptr @afs_extract_data._entry, ptr @afs_extract_data._entry.92, ptr @afs_extract_data._entry_ptr, ptr @afs_extract_data._entry_ptr.94, ptr @afs_flat_call_destructor._entry, ptr @afs_flat_call_destructor._entry_ptr, ptr @afs_log_error._entry, ptr @afs_log_error._entry_ptr, ptr @afs_make_call._entry, ptr @afs_make_call._entry.45, ptr @afs_make_call._entry.47, ptr @afs_make_call._entry.49, ptr @afs_make_call._entry.51, ptr @afs_make_call._entry.53, ptr @afs_make_call._entry.57, ptr @afs_make_call._entry_ptr, ptr @afs_make_call._entry_ptr.46, ptr @afs_make_call._entry_ptr.48, ptr @afs_make_call._entry_ptr.50, ptr @afs_make_call._entry_ptr.52, ptr @afs_make_call._entry_ptr.55, ptr @afs_make_call._entry_ptr.58, ptr @afs_open_socket._entry, ptr @afs_open_socket._entry.3, ptr @afs_open_socket._entry.6, ptr @afs_open_socket._entry_ptr, ptr @afs_open_socket._entry_ptr.5, ptr @afs_open_socket._entry_ptr.8, ptr @afs_process_async_call._entry, ptr @afs_process_async_call._entry.103, ptr @afs_process_async_call._entry_ptr, ptr @afs_process_async_call._entry_ptr.104, ptr @afs_put_call._entry, ptr @afs_put_call._entry.24, ptr @afs_put_call._entry.27, ptr @afs_put_call._entry.30, ptr @afs_put_call._entry.33, ptr @afs_put_call._entry.35, ptr @afs_put_call._entry.37, ptr @afs_put_call._entry.39, ptr @afs_put_call._entry_ptr, ptr @afs_put_call._entry_ptr.26, ptr @afs_put_call._entry_ptr.29, ptr @afs_put_call._entry_ptr.32, ptr @afs_put_call._entry_ptr.34, ptr @afs_put_call._entry_ptr.36, ptr @afs_put_call._entry_ptr.38, ptr @afs_put_call._entry_ptr.40, ptr @afs_send_empty_reply._entry, ptr @afs_send_empty_reply._entry.73, ptr @afs_send_empty_reply._entry.76, ptr @afs_send_empty_reply._entry.80, ptr @afs_send_empty_reply._entry_ptr, ptr @afs_send_empty_reply._entry_ptr.75, ptr @afs_send_empty_reply._entry_ptr.78, ptr @afs_send_empty_reply._entry_ptr.82, ptr @afs_send_simple_reply._entry, ptr @afs_send_simple_reply._entry.84, ptr @afs_send_simple_reply._entry.86, ptr @afs_send_simple_reply._entry.88, ptr @afs_send_simple_reply._entry_ptr, ptr @afs_send_simple_reply._entry_ptr.85, ptr @afs_send_simple_reply._entry_ptr.87, ptr @afs_send_simple_reply._entry_ptr.89, ptr @afs_wait_for_call_to_complete._entry, ptr @afs_wait_for_call_to_complete._entry.62, ptr @afs_wait_for_call_to_complete._entry.66, ptr @afs_wait_for_call_to_complete._entry.69, ptr @afs_wait_for_call_to_complete._entry_ptr, ptr @afs_wait_for_call_to_complete._entry_ptr.64, ptr @afs_wait_for_call_to_complete._entry_ptr.68, ptr @afs_wait_for_call_to_complete._entry_ptr.71, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @afs_async_calls, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @afs_alloc_flat_call.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @afs_RXCMxxxx, ptr @afs_charge_preallocation.__key, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @afs_alloc_call.__key, ptr @.str.98, ptr @afs_alloc_call.__key.99, ptr @afs_alloc_call.__key.100, ptr @.str.101, ptr @.str.102, ptr @.str.105, ptr @.str.106, ptr @.str.112, ptr @.str.115, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @afs_queue_call_work.__key, ptr @.str.135, ptr @afs_log_error.max, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_open_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_open_socket._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_open_socket._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_close_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_async_calls to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_close_socket._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_close_socket._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_close_socket._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_close_socket._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_call._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_call._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_call._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_call._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_call._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_call._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_put_call._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_flat_call.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_flat_call_destructor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_make_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_make_call._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_make_call._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_make_call._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_make_call._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_make_call._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_make_call._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_call_to_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_call_to_complete._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_call_to_complete._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_call_to_complete._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_RXCMxxxx to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_charge_preallocation.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_send_empty_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_send_empty_reply._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_send_empty_reply._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_send_empty_reply._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_send_simple_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_send_simple_reply._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_send_simple_reply._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_send_simple_reply._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_extract_data._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_call.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_call.__key.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_call.__key.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_process_async_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_process_async_call._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_to_call._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_queue_call_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_log_error.max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_log_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_deliver_cm_op_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_open_socket(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %srx = alloca %struct.sockaddr_rxrpc, align 4
  %socket = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %srx) #12
  %0 = call ptr @memset(ptr %srx, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %socket) #12
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %socket, align 4, !annotation !304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !305

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %call8 = call i32 @sock_create_kern(ptr noundef %8, i32 noundef 33, i32 noundef 2, i32 noundef 10, ptr noundef nonnull %socket) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end6.do.body59_crit_edge, label %if.end10

do.end6.do.body59_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body59

if.end10:                                         ; preds = %do.end6
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk, align 16
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 41
  %13 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3136, ptr %sk_allocation, align 8
  %14 = getelementptr inbounds i8, ptr %srx, i32 12
  %15 = call ptr @memset(ptr %14, i32 0, i32 24)
  %16 = ptrtoint ptr %srx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 33, ptr %srx, align 4
  %srx_service = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 1
  %17 = ptrtoint ptr %srx_service to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %srx_service, align 2
  %transport_type = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 2
  %18 = ptrtoint ptr %transport_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %transport_type, align 4
  %transport_len = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 3
  %19 = ptrtoint ptr %transport_len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 28, ptr %transport_len, align 2
  %transport = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %20 = ptrtoint ptr %transport to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 10, ptr %transport, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 7001, ptr %sin6_port, align 2
  %22 = load ptr, ptr %sk, align 16
  %call13 = call i32 @rxrpc_sock_set_min_security_level(ptr noundef %22, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end10.error_2_crit_edge, label %if.end16

if.end10.error_2_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_2

if.end16:                                         ; preds = %if.end10
  %23 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %socket, align 4
  %call17 = call i32 @kernel_bind(ptr noundef %24, ptr noundef nonnull %srx, i32 noundef 36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -98, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -98
  br i1 %cmp18, label %if.then19, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %sin6_port, align 2
  %26 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %socket, align 4
  %call22 = call i32 @kernel_bind(ptr noundef %27, ptr noundef nonnull %srx, i32 noundef 36) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  %ret.0 = phi i32 [ %call22, %if.then19 ], [ %call17, %if.end16.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp24 = icmp slt i32 %ret.0, 0
  br i1 %cmp24, label %if.end23.error_2_crit_edge, label %if.end26

if.end23.error_2_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_2

if.end26:                                         ; preds = %if.end23
  %28 = ptrtoint ptr %srx_service to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2501, ptr %srx_service, align 2
  %29 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %socket, align 4
  %call28 = call i32 @kernel_bind(ptr noundef %30, ptr noundef nonnull %srx, i32 noundef 36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.error_2_crit_edge, label %if.end31

if.end26.error_2_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_2

if.end31:                                         ; preds = %if.end26
  %31 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socket, align 4
  call void @rxrpc_kernel_new_call_notification(ptr noundef %32, ptr noundef nonnull @afs_rx_new_call, ptr noundef nonnull @afs_rx_discard_new_call) #12
  %33 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %socket, align 4
  %call32 = call i32 @kernel_listen(ptr noundef %34, i32 noundef 2147483647) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.error_2_crit_edge, label %if.end35

if.end31.error_2_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_2

if.end35:                                         ; preds = %if.end31
  %35 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %socket, align 4
  %socket36 = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 3
  %37 = ptrtoint ptr %socket36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %socket36, align 4
  %charge_preallocation_work = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 5
  call void @afs_charge_preallocation(ptr noundef %charge_preallocation_work)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %38 = load i32, ptr @afs_debug, align 4
  %and38 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end35.cleanup_crit_edge, label %do.end49, !prof !305

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end49:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %39 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i92 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i92 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task52, align 8
  %comm53 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 101
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm53, ptr noundef nonnull @.str.1) #15
  br label %cleanup

error_2:                                          ; preds = %if.end31.error_2_crit_edge, %if.end26.error_2_crit_edge, %if.end23.error_2_crit_edge, %if.end10.error_2_crit_edge
  %ret.1 = phi i32 [ %call13, %if.end10.error_2_crit_edge ], [ %ret.0, %if.end23.error_2_crit_edge ], [ %call28, %if.end26.error_2_crit_edge ], [ %call32, %if.end31.error_2_crit_edge ]
  %43 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %socket, align 4
  call void @sock_release(ptr noundef %44) #12
  br label %do.body59

do.body59:                                        ; preds = %error_2, %do.end6.do.body59_crit_edge
  %ret.2 = phi i32 [ %call8, %do.end6.do.body59_crit_edge ], [ %ret.1, %error_2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %45 = load i32, ptr @afs_debug, align 4
  %and60 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.cleanup_crit_edge, label %do.end71, !prof !305

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end71:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %46 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i93 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i93 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task74, align 8
  %comm75 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm75, ptr noundef nonnull @.str.1, i32 noundef %ret.2) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %do.body59.cleanup_crit_edge, %do.end49, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end49 ], [ 0, %if.end35.cleanup_crit_edge ], [ %ret.2, %do.end71 ], [ %ret.2, %do.body59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %socket) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %srx) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_sock_set_min_security_level(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_kernel_new_call_notification(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_rx_new_call(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %rxcall, i32 noundef %user_call_ID) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_net_id to i32))
  %2 = load i32, ptr @afs_net_id, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !306
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.151, i32 noundef 696, ptr noundef nonnull @.str.152) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %gen.i.i, align 128
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.150, i32 noundef 45, ptr noundef nonnull @.str.96) #12
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %8, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i.i, label %do.end7.i.i.afs_sock2net.exit_crit_edge, label %land.lhs.true.i13.i.i

do.end7.i.i.afs_sock2net.exit_crit_edge:          ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_sock2net.exit

land.lhs.true.i13.i.i:                            ; preds = %do.end7.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.afs_sock2net.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.afs_sock2net.exit_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_sock2net.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.afs_sock2net.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.afs_sock2net.exit_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_sock2net.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.151, i32 noundef 724, ptr noundef nonnull @.str.153) #12
  br label %afs_sock2net.exit

afs_sock2net.exit:                                ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.afs_sock2net.exit_crit_edge, %land.lhs.true.i13.i.i.afs_sock2net.exit_crit_edge, %do.end7.i.i.afs_sock2net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !307
  %11 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i.i17.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %15 = load ptr, ptr @afs_wq, align 4
  %charge_preallocation_work = getelementptr inbounds %struct.afs_net, ptr %10, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %charge_preallocation_work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_rx_discard_new_call(ptr nocapture noundef readnone %rxcall, i32 noundef %user_call_ID) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %user_call_ID to ptr
  %rxcall1 = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %rxcall1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rxcall1, align 4
  tail call void @afs_put_call(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_charge_preallocation(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -32
  %spare_incoming_call = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %spare_incoming_call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spare_incoming_call, align 4
  %socket = getelementptr i8, ptr %work, i32 -8
  br label %for.cond

for.cond:                                         ; preds = %if.end4.for.cond_crit_edge, %entry
  %call.0 = phi ptr [ %1, %entry ], [ null, %if.end4.for.cond_crit_edge ]
  %tobool.not = icmp eq ptr %call.0, null
  br i1 %tobool.not, label %if.then, label %for.cond.if.end4_crit_edge

for.cond.if.end4_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %for.cond
  %call1 = tail call fastcc ptr @afs_alloc_call(ptr noundef %add.ptr, ptr noundef nonnull @afs_RXCMxxxx, i32 noundef 3264)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.for.end_crit_edge, label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %drop_ref = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 31
  %2 = ptrtoint ptr %drop_ref to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %drop_ref, align 2
  %async = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 33
  %3 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %async, align 4
  %state = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 21
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %state, align 8
  %waitq = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.41, ptr noundef nonnull @afs_charge_preallocation.__key) #12
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 11
  %5 = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 42
  %tmp.i = getelementptr inbounds %struct.anon.169, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %iov_len.i, align 4
  %7 = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tmp.i, ptr %7, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 15, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %7, i32 noundef 1, i32 noundef 4) #12
  br label %if.end4

if.end4:                                          ; preds = %if.end, %for.cond.if.end4_crit_edge
  %call.1 = phi ptr [ %call.0, %for.cond.if.end4_crit_edge ], [ %call1, %if.end ]
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 4
  %12 = ptrtoint ptr %call.1 to i32
  %debug_id = getelementptr inbounds %struct.afs_call, ptr %call.1, i32 0, i32 39
  %13 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_id, align 4
  %call5 = tail call i32 @rxrpc_kernel_charge_accept(ptr noundef %11, ptr noundef nonnull @afs_wake_up_async_call, ptr noundef nonnull @afs_rx_attach, i32 noundef %12, i32 noundef 3264, i32 noundef %14) #12
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.for.end_crit_edge, label %if.end4.for.cond_crit_edge

if.end4.for.cond_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %if.then.for.end_crit_edge
  %call.2 = phi ptr [ %call.1, %if.end4.for.end_crit_edge ], [ null, %if.then.for.end_crit_edge ]
  %15 = ptrtoint ptr %spare_incoming_call to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.2, ptr %spare_incoming_call, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_close_socket(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !305

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.9) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %socket = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 3
  %5 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %socket, align 4
  %call6 = tail call i32 @kernel_listen(ptr noundef %6, i32 noundef 0) #12
  %7 = load ptr, ptr @afs_async_calls, align 4
  tail call void @flush_workqueue(ptr noundef %7) #12
  %spare_incoming_call = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 4
  %8 = ptrtoint ptr %spare_incoming_call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spare_incoming_call, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %do.end5.do.body12_crit_edge, label %if.then8

do.end5.do.body12_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @afs_put_call(ptr noundef nonnull %9)
  %10 = ptrtoint ptr %spare_incoming_call to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %spare_incoming_call, align 4
  br label %do.body12

do.body12:                                        ; preds = %if.then8, %do.end5.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and13 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.body34_crit_edge, label %do.end23, !prof !305

do.body12.do.body34_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.end23:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i131 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i131 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task26, align 8
  %comm27 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %nr_outstanding_calls = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls, i32 noundef 4) #12
  %16 = ptrtoint ptr %nr_outstanding_calls to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %nr_outstanding_calls, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm27, i32 noundef %17) #15
  br label %do.body34

do.body34:                                        ; preds = %do.end23, %do.body12.do.body34_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 120) #12
  %nr_outstanding_calls38 = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 7
  %call.i.i129 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls38, i32 noundef 4) #12
  %18 = ptrtoint ptr %nr_outstanding_calls38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %nr_outstanding_calls38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool40.not = icmp eq i32 %19, 0
  br i1 %tobool40.not, label %do.body34.do.body55_crit_edge, label %if.end42

do.body34.do.body55_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body55

if.end42:                                         ; preds = %do.body34
  %call44 = tail call ptr @__var_waitqueue(ptr noundef %nr_outstanding_calls38) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #12
  %20 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %21 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %nr_outstanding_calls38, i32 noundef 0) #12
  %call46137 = call i32 @prepare_to_wait_event(ptr noundef %call44, ptr noundef %20, i32 noundef 2) #12
  %call.i.i130138 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls38, i32 noundef 4) #12
  %22 = ptrtoint ptr %nr_outstanding_calls38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %nr_outstanding_calls38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool49.not139 = icmp eq i32 %23, 0
  br i1 %tobool49.not139, label %if.end42.for.end_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  br label %cleanup

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end42.cleanup_crit_edge
  call void @schedule() #12
  %call46 = call i32 @prepare_to_wait_event(ptr noundef %call44, ptr noundef %20, i32 noundef 2) #12
  %call.i.i130 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls38, i32 noundef 4) #12
  %24 = ptrtoint ptr %nr_outstanding_calls38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %nr_outstanding_calls38, align 4
  %tobool49.not = icmp eq i32 %25, 0
  br i1 %tobool49.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end42.for.end_crit_edge
  call void @finish_wait(ptr noundef %call44, ptr noundef %20) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #12
  br label %do.body55

do.body55:                                        ; preds = %for.end, %do.body34.do.body55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and56 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.do.end74_crit_edge, label %do.end66, !prof !305

do.body55.do.end74_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

do.end66:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  %27 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i132 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i132 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task69, align 8
  %comm70 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm70) #15
  br label %do.end74

do.end74:                                         ; preds = %do.end66, %do.body55.do.end74_crit_edge
  %31 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socket, align 4
  %call76 = call i32 @kernel_sock_shutdown(ptr noundef %32, i32 noundef 2) #12
  %33 = load ptr, ptr @afs_async_calls, align 4
  call void @flush_workqueue(ptr noundef %33) #12
  %34 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %socket, align 4
  call void @sock_release(ptr noundef %35) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %36 = load i32, ptr @afs_debug, align 4
  %and79 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.end74.do.body98_crit_edge, label %do.end89, !prof !305

do.end74.do.body98_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body98

do.end89:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  %37 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i133 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i133 to ptr
  %task92 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task92 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task92, align 8
  %comm93 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm93) #15
  br label %do.body98

do.body98:                                        ; preds = %do.end89, %do.end74.do.body98_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %41 = load i32, ptr @afs_debug, align 4
  %and99 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body98.do.end117_crit_edge, label %do.end109, !prof !305

do.body98.do.end117_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end117

do.end109:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  %42 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i134 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i134 to ptr
  %task112 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task112 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task112, align 8
  %comm113 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %comm113, ptr noundef nonnull @.str.9) #15
  br label %do.end117

do.end117:                                        ; preds = %do.end109, %do.body98.do.end117_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %usage = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !309
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !310
  %nr_outstanding_calls = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 7
  %call.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls, i32 noundef 4) #12
  %3 = ptrtoint ptr %nr_outstanding_calls to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %nr_outstanding_calls, align 4
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_afs_call(ptr noundef %call, i32 noundef 3, i32 noundef %asmresult.i.i.i.i, i32 noundef %4, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %do.end, label %do.end30, !prof !311

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %asmresult.i.i.i.i, i32 noundef 0) #15
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %asmresult.i.i.i.i, i32 noundef 0) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rxrpc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #12, !srcloc !312
  unreachable

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp31 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp31, label %do.body33, label %do.end30.if.end114_crit_edge

do.end30.if.end114_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

do.body33:                                        ; preds = %do.end30
  %async_work = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %async_work to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %async_work, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool35.not = icmp eq i32 %and1.i, 0
  br i1 %tobool35.not, label %do.body66, label %do.end49, !prof !305

do.end49:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rxrpc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 174, 0\0A.popsection", ""() #12, !srcloc !313
  unreachable

do.body66:                                        ; preds = %do.body33
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp67.not = icmp eq ptr %11, null
  br i1 %cmp67.not, label %do.end79, label %do.end95, !prof !311

do.end79:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rxrpc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #12, !srcloc !314
  unreachable

do.end95:                                         ; preds = %do.body66
  %rxcall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxcall, align 4
  %tobool96.not = icmp eq ptr %13, null
  br i1 %tobool96.not, label %do.end95.if.end100_crit_edge, label %if.then97

do.end95.if.end100_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then97:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  %socket = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %socket, align 4
  tail call void @rxrpc_kernel_end_call(ptr noundef %15, ptr noundef nonnull %13) #12
  %16 = ptrtoint ptr %rxcall to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rxcall, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %do.end95.if.end100_crit_edge
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 8
  %destructor = getelementptr inbounds %struct.afs_call_type, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %destructor, align 4
  %tobool102.not = icmp eq ptr %20, null
  br i1 %tobool102.not, label %if.end100.if.end106_crit_edge, label %if.then103

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %20(ptr noundef %call) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end100.if.end106_crit_edge
  %21 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net1, align 4
  %server = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %23 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %server, align 8
  tail call void @afs_unuse_server_notime(ptr noundef %22, ptr noundef %24, i32 noundef 13) #12
  %alist = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %alist to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %alist, align 4
  tail call void @afs_put_addrlist(ptr noundef %26) #12
  %request = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %27 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request, align 8
  tail call void @kfree(ptr noundef %28) #12
  tail call fastcc void @trace_afs_call(ptr noundef %call, i32 noundef 1, i32 noundef 0, i32 noundef %4, ptr noundef %5)
  tail call void @kfree(ptr noundef %call) #12
  %call.i.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_outstanding_calls, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @llvm.prefetch.p0(ptr %nr_outstanding_calls, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_outstanding_calls, ptr %nr_outstanding_calls, i32 1, ptr elementtype(i32) %nr_outstanding_calls) #12, !srcloc !309
  %asmresult.i.i.i.i143 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i143)
  %cmp110 = icmp eq i32 %asmresult.i.i.i.i143, 0
  br i1 %cmp110, label %if.then111, label %if.end106.if.end114_crit_edge

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wake_up_var(ptr noundef %nr_outstanding_calls) #12
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end106.if.end114_crit_edge, %do.end30.if.end114_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_call(ptr noundef %call, i32 noundef %op, i32 noundef %usage, i32 noundef %outstanding, ptr noundef %where) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call, i32 0, i32 1), ptr blockaddress(@trace_afs_call, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  %call43 = tail call i32 @__traceiter_afs_call(ptr noundef null, ptr noundef %call, i32 noundef %op, i32 noundef %usage, i32 noundef %outstanding, ptr noundef %where) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !305

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_call.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 757, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_kernel_end_call(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_unuse_server_notime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_addrlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_alloc_flat_call(ptr noundef %net, ptr noundef %type, i32 noundef %request_size, i32 noundef %reply_max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc ptr @afs_alloc_call(ptr noundef %net, ptr noundef %type, i32 noundef 3136)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request_size)
  %tobool2.not = icmp eq i32 %request_size, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %request_size4 = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 26
  %0 = ptrtoint ptr %request_size4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %request_size, ptr %request_size4, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %request_size, i32 noundef 3136) #16
  %request = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 10
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i, ptr %request, align 8
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.then3.nomem_free_crit_edge, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3.nomem_free_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %nomem_free

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reply_max)
  %tobool11.not = icmp eq i32 %reply_max, 0
  br i1 %tobool11.not, label %if.end10.if.end19_crit_edge, label %if.then12

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then12:                                        ; preds = %if.end10
  %reply_max13 = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 27
  %2 = ptrtoint ptr %reply_max13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %reply_max, ptr %reply_max13, align 8
  %call9.i61 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %reply_max, i32 noundef 3136) #16
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 16
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i61, ptr %buffer, align 4
  %tobool16.not = icmp eq ptr %call9.i61, null
  br i1 %tobool16.not, label %if.then12.nomem_free_crit_edge, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then12.nomem_free_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %nomem_free

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %reply_max20 = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 27
  %4 = ptrtoint ptr %reply_max20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reply_max20, align 8
  %iov_len.i = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 11
  %buffer.i = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 16
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i, align 4
  %8 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %iov_len.i, align 4
  %9 = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %9, align 8
  %iov_len2.i.i = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 15, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %iov_len2.i.i, align 4
  %def_iter.i.i = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter.i.i, i32 noundef 0, ptr noundef %9, i32 noundef 1, i32 noundef %5) #12
  %op = getelementptr inbounds %struct.afs_call_type, ptr %type, i32 0, i32 1
  %12 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op, align 4
  %operation_ID = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 40
  %14 = ptrtoint ptr %operation_ID to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %operation_ID, align 8
  %waitq = getelementptr inbounds %struct.afs_call, ptr %call1, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.41, ptr noundef nonnull @afs_alloc_flat_call.__key) #12
  br label %cleanup

nomem_free:                                       ; preds = %if.then12.nomem_free_crit_edge, %if.then3.nomem_free_crit_edge
  tail call void @afs_put_call(ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %nomem_free, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end19 ], [ null, %entry.cleanup_crit_edge ], [ null, %nomem_free ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_alloc_call(ptr noundef %net, ptr noundef %type, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !305

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 9
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 352) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %type, ptr %call7.i.i, align 8
  %net3 = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %net3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %net, ptr %net3, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rxrpc_debug_id, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr nonnull @rxrpc_debug_id, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rxrpc_debug_id, ptr nonnull @rxrpc_debug_id, i32 1, ptr nonnull elementtype(i32) @rxrpc_debug_id) #12, !srcloc !321
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !322
  %debug_id = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 39
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %asmresult.i.i.i.i, ptr %debug_id, align 4
  %usage = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 20
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %usage, align 4
  %async_work = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %async_work, i32 noundef 0) #12
  %7 = ptrtoint ptr %async_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %async_work, align 4
  %lockdep_map = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.98, ptr noundef nonnull @afs_alloc_call.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry8 = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry8, ptr %entry8, align 8
  %prev.i = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @afs_process_async_call, ptr %func, align 8
  %waitq = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.41, ptr noundef nonnull @afs_alloc_call.__key.99) #12
  %state_lock = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.101, ptr noundef nonnull @afs_alloc_call.__key.100, i16 noundef signext 3) #12
  %def_iter = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 12
  %iter = getelementptr inbounds %struct.afs_call, ptr %call7.i.i, i32 0, i32 14
  %11 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %def_iter, ptr %iter, align 4
  %nr_outstanding_calls = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 7
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_outstanding_calls, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %nr_outstanding_calls, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_outstanding_calls, ptr %nr_outstanding_calls, i32 1, ptr elementtype(i32) %nr_outstanding_calls) #12, !srcloc !321
  %asmresult.i.i.i.i37 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !322
  %13 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_afs_call(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 1, i32 noundef %asmresult.i.i.i.i37, ptr noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_flat_call_destructor(ptr nocapture noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !305

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.42) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %request = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %request, align 8
  tail call void @kfree(ptr noundef %6) #12
  %7 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %request, align 8
  %buffer = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 16
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %9) #12
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %buffer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_make_call(ptr nocapture noundef %ac, ptr noundef %call, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [1 x %struct.kvec], align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac, align 4
  %index = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %idxprom = sext i8 %3 to i32
  %arrayidx = getelementptr %struct.afs_addr_list, ptr %1, i32 0, i32 10, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #12
  %4 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %5 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 4, !annotation !304
  %6 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %len, align 4, !annotation !304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end, !prof !305

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %transport = getelementptr %struct.afs_addr_list, ptr %1, i32 0, i32 10, i32 %idxprom, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm, ptr noundef nonnull @.str.44, ptr noundef %transport) #15
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 8
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %do.end20, label %do.body37, !prof !311

do.end20:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rxrpc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 302, 0\0A.popsection", ""() #12, !srcloc !323
  unreachable

do.body37:                                        ; preds = %do.body8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cmp39.not = icmp eq ptr %17, null
  br i1 %cmp39.not, label %do.end51, label %do.body68, !prof !311

do.end51:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rxrpc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 303, 0\0A.popsection", ""() #12, !srcloc !324
  unreachable

do.body68:                                        ; preds = %do.body37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %18 = load i32, ptr @afs_debug, align 4
  %and69 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.do.end93_crit_edge, label %do.end80, !prof !305

do.body68.do.end93_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end93

do.end80:                                         ; preds = %do.body68
  %19 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i314 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i314 to ptr
  %task83 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task83, align 8
  %comm84 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %key = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 6
  %23 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %key, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.end80.key_serial.exit_crit_edge, label %cond.true.i

do.end80.key_serial.exit_crit_edge:               ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i = getelementptr inbounds %struct.key, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end80.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %26, %cond.true.i ], [ 0, %do.end80.key_serial.exit_crit_edge ]
  %net = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net, align 4
  %nr_outstanding_calls = getelementptr inbounds %struct.afs_net, ptr %28, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls, i32 noundef 4) #12
  %29 = ptrtoint ptr %nr_outstanding_calls to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %nr_outstanding_calls, align 4
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm84, ptr noundef %call, ptr noundef nonnull %17, i32 noundef %cond.i, i32 noundef %30) #15
  br label %do.end93

do.end93:                                         ; preds = %key_serial.exit, %do.body68.do.end93_crit_edge
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %index, align 4
  %addr_ix = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 30
  %33 = ptrtoint ptr %addr_ix to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %addr_ix, align 1
  %34 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ac, align 4
  %tobool.not.i315 = icmp eq ptr %35, null
  br i1 %tobool.not.i315, label %do.end93.afs_get_addrlist.exit_crit_edge, label %if.then.i

do.end93.afs_get_addrlist.exit_crit_edge:         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_get_addrlist.exit

if.then.i:                                        ; preds = %do.end93
  %usage.i = getelementptr inbounds %struct.afs_addr_list, ptr %35, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !325
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !311

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %37 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !305

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_get_addrlist.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #12
  br label %afs_get_addrlist.exit

afs_get_addrlist.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge, %do.end93.afs_get_addrlist.exit_crit_edge
  %alist97 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %alist97 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %alist97, align 4
  %request_size = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 26
  %39 = ptrtoint ptr %request_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %request_size, align 4
  %conv = zext i32 %40 to i64
  %write_iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 13
  %41 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_iter, align 8
  %tobool98.not = icmp eq ptr %42, null
  br i1 %tobool98.not, label %afs_get_addrlist.exit.if.end103_crit_edge, label %if.then99

afs_get_addrlist.exit.if.end103_crit_edge:        ; preds = %afs_get_addrlist.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then99:                                        ; preds = %afs_get_addrlist.exit
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count.i, align 8
  %conv102 = zext i32 %44 to i64
  %add = add nuw nsw i64 %conv102, %conv
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %afs_get_addrlist.exit.if.end103_crit_edge
  %tx_total_len.0 = phi i64 [ %add, %if.then99 ], [ %conv, %afs_get_addrlist.exit.if.end103_crit_edge ]
  %async = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 33
  %45 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %async, align 4, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool104.not = icmp eq i8 %46, 0
  br i1 %tobool104.not, label %if.end103.if.end107_crit_edge, label %if.then105

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %usage.i316 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i316, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %usage.i316, i32 1, i32 3, i32 1) #12
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i316, ptr %usage.i316, i32 1, ptr elementtype(i32) %usage.i316) #12, !srcloc !321
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !322
  %net.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %48 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net.i, align 4
  %nr_outstanding_calls.i = getelementptr inbounds %struct.afs_net, ptr %49, i32 0, i32 7
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls.i, i32 noundef 4) #12
  %50 = ptrtoint ptr %nr_outstanding_calls.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %nr_outstanding_calls.i, align 4
  %52 = tail call ptr @llvm.returnaddress(i32 0) #12
  tail call fastcc void @trace_afs_call(ptr noundef %call, i32 noundef 2, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %51, ptr noundef %52) #12
  %drop_ref = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 31
  %53 = ptrtoint ptr %drop_ref to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %drop_ref, align 2
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end103.if.end107_crit_edge
  %net108 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %54 = ptrtoint ptr %net108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net108, align 4
  %socket = getelementptr inbounds %struct.afs_net, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %socket, align 4
  %key109 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 6
  %58 = ptrtoint ptr %key109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %key109, align 8
  %60 = ptrtoint ptr %call to i32
  %61 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %async, align 4, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool111.not = icmp eq i8 %62, 0
  %cond = select i1 %tobool111.not, ptr @afs_wake_up_call_waiter, ptr @afs_wake_up_async_call
  %upgrade = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 34
  %63 = ptrtoint ptr %upgrade to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %upgrade, align 1, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool113 = icmp ne i8 %64, 0
  %intr = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 36
  %65 = ptrtoint ptr %intr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %intr, align 1, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool114.not = icmp eq i8 %66, 0
  %cond116 = select i1 %tobool114.not, i32 2, i32 1
  %debug_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %67 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %debug_id, align 4
  %call117 = tail call ptr @rxrpc_kernel_begin_call(ptr noundef %57, ptr noundef %arrayidx, ptr noundef %59, i32 noundef %60, i64 noundef %tx_total_len.0, i32 noundef %gfp, ptr noundef nonnull %cond, i1 noundef zeroext %tobool113, i32 noundef %cond116, i32 noundef %68) #12
  %cmp.i = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %call117 to i32
  %error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %70 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %error, align 8
  br label %error_kill_call

if.end121:                                        ; preds = %if.end107
  %rxcall122 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %71 = ptrtoint ptr %rxcall122 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call117, ptr %rxcall122, align 4
  %max_lifespan = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 25
  %72 = ptrtoint ptr %max_lifespan to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_lifespan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool123.not = icmp eq i32 %73, 0
  br i1 %tobool123.not, label %if.end121.if.end128_crit_edge, label %if.then124

if.end121.if.end128_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %net108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net108, align 4
  %socket126 = getelementptr inbounds %struct.afs_net, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %socket126 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %socket126, align 4
  tail call void @rxrpc_kernel_set_max_life(ptr noundef %77, ptr noundef %call117, i32 noundef %73) #12
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.end121.if.end128_crit_edge
  %request = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 10
  %78 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %request, align 8
  %80 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %iov, align 4
  %81 = ptrtoint ptr %request_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %request_size, align 4
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %6, align 4
  %84 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %85 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %msg_namelen, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 1, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %82) #12
  %86 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %86, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %88 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %msg_controllen, align 8
  %89 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write_iter, align 8
  %tobool135.not = icmp eq ptr %90, null
  %or = select i1 %tobool135.not, i32 256, i32 33024
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %91 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or, ptr %msg_flags, align 4
  %92 = ptrtoint ptr %net108 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net108, align 4
  %socket138 = getelementptr inbounds %struct.afs_net, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %socket138 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %socket138, align 4
  %96 = ptrtoint ptr %request_size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %request_size, align 4
  %call140 = call i32 @rxrpc_kernel_send_data(ptr noundef %95, ptr noundef %call117, ptr noundef nonnull %msg, i32 noundef %97, ptr noundef nonnull @afs_notify_end_request_tx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.end128.error_do_abort_crit_edge, label %if.end144

if.end128.error_do_abort_crit_edge:               ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_do_abort

if.end144:                                        ; preds = %if.end128
  %98 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_iter, align 8
  %tobool146.not = icmp eq ptr %99, null
  br i1 %tobool146.not, label %if.end144.cleanup_crit_edge, label %if.then147

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then147:                                       ; preds = %if.end144
  %100 = call ptr @memcpy(ptr %msg_iter, ptr %99, i32 24)
  %101 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %msg_flags, align 4
  %and151 = and i32 %102, -32769
  store i32 %and151, ptr %msg_flags, align 4
  call fastcc void @trace_afs_send_data(ptr noundef %call, ptr noundef nonnull %msg)
  %103 = ptrtoint ptr %net108 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %net108, align 4
  %socket153 = getelementptr inbounds %struct.afs_net, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %socket153 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %socket153, align 4
  %107 = ptrtoint ptr %rxcall122 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rxcall122, align 4
  %count.i317 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %109 = ptrtoint ptr %count.i317 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %count.i317, align 8
  %call157 = call i32 @rxrpc_kernel_send_data(ptr noundef %106, ptr noundef %108, ptr noundef nonnull %msg, i32 noundef %110, ptr noundef nonnull @afs_notify_end_request_tx) #12
  %111 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write_iter, align 8
  %113 = call ptr @memcpy(ptr %112, ptr %msg_iter, i32 24)
  call fastcc void @trace_afs_sent_data(ptr noundef %call, ptr noundef nonnull %msg, i32 noundef %call157)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp160 = icmp slt i32 %call157, 0
  br i1 %cmp160, label %if.then147.error_do_abort_crit_edge, label %if.then147.cleanup_crit_edge

if.then147.cleanup_crit_edge:                     ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then147.error_do_abort_crit_edge:              ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_do_abort

error_do_abort:                                   ; preds = %if.then147.error_do_abort_crit_edge, %if.end128.error_do_abort_crit_edge
  %ret.0 = phi i32 [ %call140, %if.end128.error_do_abort_crit_edge ], [ %call157, %if.then147.error_do_abort_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -103, i32 %ret.0)
  %cmp165.not = icmp eq i32 %ret.0, -103
  br i1 %cmp165.not, label %if.else, label %if.then167

if.then167:                                       ; preds = %error_do_abort
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %net108 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %net108, align 4
  %socket169 = getelementptr inbounds %struct.afs_net, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %socket169 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %socket169, align 4
  %call170 = call zeroext i1 @rxrpc_kernel_abort_call(ptr noundef %117, ptr noundef %call117, i32 noundef -6, i32 noundef %ret.0, ptr noundef nonnull @.str.56) #12
  br label %if.end178

if.else:                                          ; preds = %error_do_abort
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %len, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %119 = ptrtoint ptr %net108 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net108, align 4
  %socket173 = getelementptr inbounds %struct.afs_net, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %socket173 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %socket173, align 4
  %abort_code = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %service_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 38
  %call175 = call i32 @rxrpc_kernel_recv_data(ptr noundef %122, ptr noundef %call117, ptr noundef %msg_iter, ptr noundef nonnull %len, i1 noundef zeroext false, ptr noundef %abort_code, ptr noundef %service_id) #12
  %123 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %abort_code, align 4
  %abort_code177 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 6
  %125 = ptrtoint ptr %abort_code177 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %abort_code177, align 4
  %responded = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 3
  %126 = ptrtoint ptr %responded to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %responded, align 1
  br label %if.end178

if.end178:                                        ; preds = %if.else, %if.then167
  %error179 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %127 = ptrtoint ptr %error179 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %ret.0, ptr %error179, align 8
  call fastcc void @trace_afs_call_done(ptr noundef %call)
  br label %error_kill_call

error_kill_call:                                  ; preds = %if.end178, %if.then119
  %ret.1 = phi i32 [ %69, %if.then119 ], [ %ret.0, %if.end178 ]
  %128 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call, align 8
  %done = getelementptr inbounds %struct.afs_call_type, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %done, align 4
  %tobool181.not = icmp eq ptr %131, null
  br i1 %tobool181.not, label %error_kill_call.if.end185_crit_edge, label %if.then182

error_kill_call.if.end185_crit_edge:              ; preds = %error_kill_call
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185

if.then182:                                       ; preds = %error_kill_call
  call void @__sanitizer_cov_trace_pc() #14
  call void %131(ptr noundef %call) #12
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %error_kill_call.if.end185_crit_edge
  %rxcall186 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %132 = ptrtoint ptr %rxcall186 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rxcall186, align 4
  %tobool187.not = icmp eq ptr %133, null
  br i1 %tobool187.not, label %if.end185.if.end193_crit_edge, label %if.then188

if.end185.if.end193_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.then188:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %net108 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %net108, align 4
  %socket190 = getelementptr inbounds %struct.afs_net, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %socket190 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %socket190, align 4
  call void @rxrpc_kernel_end_call(ptr noundef %137, ptr noundef nonnull %133) #12
  %138 = ptrtoint ptr %rxcall186 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %rxcall186, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then188, %if.end185.if.end193_crit_edge
  %139 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %async, align 4, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool195.not = icmp eq i8 %140, 0
  br i1 %tobool195.not, label %if.end193.if.end200_crit_edge, label %if.then196

if.end193.if.end200_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end200

if.then196:                                       ; preds = %if.end193
  %async_work = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 3
  %call197 = call zeroext i1 @cancel_work_sync(ptr noundef %async_work) #12
  br i1 %call197, label %if.then198, label %if.then196.if.end199_crit_edge

if.then196.if.end199_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then198:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #14
  call void @afs_put_call(ptr noundef %call)
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.then196.if.end199_crit_edge
  call void @afs_put_call(ptr noundef %call)
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.end193.if.end200_crit_edge
  %conv201 = trunc i32 %ret.1 to i16
  %error202 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 5
  %141 = ptrtoint ptr %error202 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv201, ptr %error202, align 4
  %state = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %142 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 7, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %143 = load i32, ptr @afs_debug, align 4
  %and204 = and i32 %143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end200.cleanup_crit_edge, label %do.end215, !prof !305

if.end200.cleanup_crit_edge:                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end215:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  %144 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i318 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i318 to ptr
  %task218 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %task218 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %task218, align 8
  %comm219 = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 101
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm219, ptr noundef nonnull @.str.44, i32 noundef %ret.1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end215, %if.end200.cleanup_crit_edge, %if.then147.cleanup_crit_edge, %if.end144.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_kernel_begin_call(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_wake_up_async_call(ptr nocapture noundef readnone %sk, ptr noundef %rxcall, i32 noundef %call_user_ID) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %call_user_ID to ptr
  tail call fastcc void @trace_afs_notify_call(ptr noundef %rxcall, ptr noundef %0)
  %need_attention = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 32
  %1 = ptrtoint ptr %need_attention to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %need_attention, align 1
  %usage = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !327
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 0, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !328
  %asmresult.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not.i.i, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !329
  %add = add i32 %asmresult.i.i, 1
  %net = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 7
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %nr_outstanding_calls = getelementptr inbounds %struct.afs_net, ptr %4, i32 0, i32 7
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls, i32 noundef 4) #12
  %5 = ptrtoint ptr %nr_outstanding_calls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %nr_outstanding_calls, align 4
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_afs_call(ptr noundef %0, i32 noundef 4, i32 noundef %add, i32 noundef %6, ptr noundef %7)
  %8 = load ptr, ptr @afs_async_calls, align 4
  %async_work = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %async_work) #12
  br i1 %call.i, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @afs_put_call(ptr noundef %0)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_wake_up_call_waiter(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %rxcall, i32 noundef %call_user_ID) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %call_user_ID to ptr
  %need_attention = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 32
  %1 = ptrtoint ptr %need_attention to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %need_attention, align 1
  %waitq = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_kernel_set_max_life(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_kernel_send_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_notify_end_request_tx(ptr nocapture noundef readnone %sock, ptr nocapture noundef readnone %rxcall, i32 noundef %call_user_ID) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %call_user_ID to ptr
  %state_lock.i = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock.i) #12
  %state.i = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %entry.afs_set_call_state.exit_crit_edge

entry.afs_set_call_state.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_set_call_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state.i, align 8
  tail call fastcc void @trace_afs_call_state(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  br label %afs_set_call_state.exit

afs_set_call_state.exit:                          ; preds = %if.then.i, %entry.afs_set_call_state.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_send_data(ptr noundef %call, ptr noundef %msg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_send_data, i32 0, i32 1), ptr blockaddress(@trace_afs_send_data, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !330
  %call43 = tail call i32 @__traceiter_afs_send_data(ptr noundef null, ptr noundef %call, ptr noundef %msg) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !331
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !305

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_send_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_send_data, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_send_data.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_send_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 972, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_sent_data(ptr noundef %call, ptr noundef %msg, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_sent_data, i32 0, i32 1), ptr blockaddress(@trace_afs_sent_data, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  %call43 = tail call i32 @__traceiter_afs_sent_data(ptr noundef null, ptr noundef %call, ptr noundef %msg, i32 noundef %ret) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !333
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !305

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_sent_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_sent_data, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_sent_data.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_sent_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 996, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_kernel_abort_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_kernel_recv_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_call_done(ptr noundef %call) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_done, i32 0, i32 1), ptr blockaddress(@trace_afs_call_done, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %call43 = tail call i32 @__traceiter_afs_call_done(ptr noundef null, ptr noundef %call) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !335
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !305

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_done, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_call_done.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_call_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 948, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_wait_for_call_to_complete(ptr noundef %call, ptr nocapture noundef %ac) #0 align 64 {
entry:
  %myself = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %myself) #12
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %myself, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %myself to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %myself, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !305

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.59) #15
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %do.end10.do.body283_crit_edge, label %if.end12

do.end10.do.body283_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body283

if.end12:                                         ; preds = %do.end10
  %waitq = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 2
  call void @add_wait_queue(ptr noundef %waitq, ptr noundef nonnull %myself) #12
  %state1.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %need_attention = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 32
  %net = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %rxcall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  br label %__here

__here:                                           ; preds = %__here.backedge, %if.end12
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@afs_wait_for_call_to_complete, %__here) to i32), ptr %task_state_change, align 4
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 2, ptr %21, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %23 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp.i = icmp eq i32 %24, 7
  br i1 %cmp.i, label %__here.if.end161_crit_edge, label %land.lhs.true

__here.if.end161_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161

land.lhs.true:                                    ; preds = %__here
  %25 = ptrtoint ptr %need_attention to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %need_attention, align 1, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool87.not = icmp eq i8 %26, 0
  br i1 %tobool87.not, label %land.lhs.true.if.end161_crit_edge, label %if.then88

land.lhs.true.if.end161_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161

if.then88:                                        ; preds = %land.lhs.true
  %27 = ptrtoint ptr %need_attention to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %need_attention, align 1
  br label %__here140

__here140:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %task_state_change144 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 212
  %30 = ptrtoint ptr %task_state_change144 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 ptrtoint (ptr blockaddress(@afs_wait_for_call_to_complete, %__here140) to i32), ptr %task_state_change144, align 4
  %31 = load ptr, ptr %task, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %31, align 128
  call fastcc void @afs_deliver_to_call(ptr noundef %call)
  br label %__here.backedge

__here.backedge:                                  ; preds = %if.end167, %__here140
  br label %__here

if.end161:                                        ; preds = %land.lhs.true.if.end161_crit_edge, %__here.if.end161_crit_edge
  %33 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %34)
  %cmp.i363 = icmp eq i32 %34, 7
  br i1 %cmp.i363, label %if.end161.for.end_crit_edge, label %if.end164

if.end161.for.end_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end164:                                        ; preds = %if.end161
  %35 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net, align 4
  %socket = getelementptr inbounds %struct.afs_net, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %socket, align 4
  %39 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rxcall, align 4
  %call165 = call zeroext i1 @rxrpc_kernel_check_life(ptr noundef %38, ptr noundef %40) #12
  br i1 %call165, label %if.end167, label %if.end164.for.end_crit_edge

if.end164.for.end_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end167:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  call void @schedule() #12
  br label %__here.backedge

for.end:                                          ; preds = %if.end164.for.end_crit_edge, %if.end161.for.end_crit_edge
  call void @remove_wait_queue(ptr noundef %waitq, ptr noundef nonnull %myself) #12
  br label %__here219

__here219:                                        ; preds = %for.end
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %task_state_change223 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212
  %43 = ptrtoint ptr %task_state_change223 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 ptrtoint (ptr blockaddress(@afs_wait_for_call_to_complete, %__here219) to i32), ptr %task_state_change223, align 4
  %44 = load ptr, ptr %task, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %44, align 128
  %46 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %cmp.i365 = icmp eq i32 %47, 7
  br i1 %cmp.i365, label %__here219.if.end274_crit_edge, label %if.then241

__here219.if.end274_crit_edge:                    ; preds = %__here219
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274

if.then241:                                       ; preds = %__here219
  br i1 %cmp.i363, label %do.body245, label %if.then243

if.then243:                                       ; preds = %if.then241
  %48 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %error, align 8
  %abort_code = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %50 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %abort_code, align 4
  %state_lock.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 22
  call void @_raw_spin_lock_bh(ptr noundef %state_lock.i) #12
  %52 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %53)
  %cmp.not.i = icmp eq i32 %53, 7
  br i1 %cmp.not.i, label %if.end9.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.then243
  %54 = ptrtoint ptr %abort_code to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %abort_code, align 4
  %55 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %49, ptr %error, align 8
  %56 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 7, ptr %state1.i, align 8
  call fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef %53, i32 noundef 7, i32 noundef %49, i32 noundef %51) #12
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  call fastcc void @trace_afs_call_done(ptr noundef %call) #12
  %drop_ref.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 31
  %57 = ptrtoint ptr %drop_ref.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %drop_ref.i, align 2, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool6.not.i = icmp eq i8 %58, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end274_crit_edge, label %if.then7.i

if.then.i.if.end274_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @afs_put_call(ptr noundef %call) #12
  br label %if.end274

if.end9.critedge.i:                               ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  br label %if.end274

do.body245:                                       ; preds = %if.then241
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %59 = load i32, ptr @afs_debug, align 4
  %and246 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %do.body245.do.end266_crit_edge, label %do.end257, !prof !305

do.body245.do.end266_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end266

do.end257:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task, align 8
  %comm261 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 101
  %call263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm261) #15
  br label %do.end266

do.end266:                                        ; preds = %do.end257, %do.body245.do.end266_crit_edge
  %62 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net, align 4
  %socket268 = getelementptr inbounds %struct.afs_net, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %socket268 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %socket268, align 4
  %66 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rxcall, align 4
  %call270 = call zeroext i1 @rxrpc_kernel_abort_call(ptr noundef %65, ptr noundef %67, i32 noundef -6, i32 noundef -4, ptr noundef nonnull @.str.65) #12
  br i1 %call270, label %if.then271, label %do.end266.if.end274_crit_edge

do.end266.if.end274_crit_edge:                    ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274

if.then271:                                       ; preds = %do.end266
  %state_lock.i367 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 22
  call void @_raw_spin_lock_bh(ptr noundef %state_lock.i367) #12
  %68 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %69)
  %cmp.not.i369 = icmp eq i32 %69, 7
  br i1 %cmp.not.i369, label %if.end9.critedge.i376, label %if.then.i374

if.then.i374:                                     ; preds = %if.then271
  %abort_code.i370 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %70 = ptrtoint ptr %abort_code.i370 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %abort_code.i370, align 4
  %71 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -4, ptr %error, align 8
  %72 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 7, ptr %state1.i, align 8
  call fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef %69, i32 noundef 7, i32 noundef -4, i32 noundef 0) #12
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i367) #12
  call fastcc void @trace_afs_call_done(ptr noundef %call) #12
  %drop_ref.i372 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 31
  %73 = ptrtoint ptr %drop_ref.i372 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %drop_ref.i372, align 2, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool6.not.i373 = icmp eq i8 %74, 0
  br i1 %tobool6.not.i373, label %if.then.i374.if.end274_crit_edge, label %if.then7.i375

if.then.i374.if.end274_crit_edge:                 ; preds = %if.then.i374
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274

if.then7.i375:                                    ; preds = %if.then.i374
  call void @__sanitizer_cov_trace_pc() #14
  call void @afs_put_call(ptr noundef %call) #12
  br label %if.end274

if.end9.critedge.i376:                            ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i367) #12
  br label %if.end274

if.end274:                                        ; preds = %if.end9.critedge.i376, %if.then7.i375, %if.then.i374.if.end274_crit_edge, %do.end266.if.end274_crit_edge, %if.end9.critedge.i, %if.then7.i, %if.then.i.if.end274_crit_edge, %__here219.if.end274_crit_edge
  %state_lock = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 22
  call void @_raw_spin_lock_bh(ptr noundef %state_lock) #12
  %abort_code275 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %75 = ptrtoint ptr %abort_code275 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %abort_code275, align 4
  %abort_code276 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 6
  %77 = ptrtoint ptr %abort_code276 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %abort_code276, align 4
  %78 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %error, align 8
  %conv = trunc i32 %79 to i16
  %error278 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 5
  %80 = ptrtoint ptr %error278 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv, ptr %error278, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #12
  %81 = ptrtoint ptr %error278 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %error278, align 4
  %conv281 = sext i16 %82 to i32
  %83 = zext i32 %conv281 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv281, label %if.end274.do.body283_crit_edge [
    i32 0, label %sw.bb
    i32 -103, label %if.end274.sw.bb282_crit_edge
  ]

if.end274.sw.bb282_crit_edge:                     ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb282

if.end274.do.body283_crit_edge:                   ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body283

sw.bb:                                            ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #14
  %84 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 17
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  store i32 0, ptr %84, align 8
  br label %sw.bb282

sw.bb282:                                         ; preds = %sw.bb, %if.end274.sw.bb282_crit_edge
  %ret.0 = phi i32 [ %conv281, %if.end274.sw.bb282_crit_edge ], [ %86, %sw.bb ]
  %responded = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 3
  %87 = ptrtoint ptr %responded to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %responded, align 1
  br label %do.body283

do.body283:                                       ; preds = %sw.bb282, %if.end274.do.body283_crit_edge, %do.end10.do.body283_crit_edge
  %ret.1 = phi i32 [ %17, %do.end10.do.body283_crit_edge ], [ %conv281, %if.end274.do.body283_crit_edge ], [ %ret.0, %sw.bb282 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %88 = load i32, ptr @afs_debug, align 4
  %and284 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284)
  %tobool285.not = icmp eq i32 %and284, 0
  br i1 %tobool285.not, label %do.body283.do.end304_crit_edge, label %do.end295, !prof !305

do.body283.do.end304_crit_edge:                   ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end304

do.end295:                                        ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task, align 8
  %comm299 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 101
  %call301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %comm299) #15
  br label %do.end304

do.end304:                                        ; preds = %do.end295, %do.body283.do.end304_crit_edge
  call void @afs_put_call(ptr noundef %call)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %91 = load i32, ptr @afs_debug, align 4
  %and306 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %do.end304.do.end326_crit_edge, label %do.end317, !prof !305

do.end304.do.end326_crit_edge:                    ; preds = %do.end304
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end326

do.end317:                                        ; preds = %do.end304
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task, align 8
  %comm321 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 101
  %94 = inttoptr i32 %ret.1 to ptr
  %call323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm321, ptr noundef nonnull @.str.59, ptr noundef %94) #15
  br label %do.end326

do.end326:                                        ; preds = %do.end317, %do.end304.do.end326_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %myself) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_deliver_to_call(ptr noundef %call) unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  %remote_abort = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_abort) #12
  %1 = ptrtoint ptr %remote_abort to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %remote_abort, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !305

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %comm, ptr noundef nonnull @.str.106, ptr noundef %10) #15
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %state12 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %11 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state12, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %12, label %do.end10.done_crit_edge [
    i32 6, label %if.then18
    i32 1, label %do.end10.if.end35_crit_edge
    i32 3, label %do.end10.if.end35_crit_edge273
    i32 4, label %do.end10.if.end35_crit_edge274
  ]

do.end10.if.end35_crit_edge274:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end10.if.end35_crit_edge273:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end10.if.end35_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end10.done_crit_edge:                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then18:                                        ; preds = %do.end10
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %len, align 4
  %def_iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 12
  tail call void @iov_iter_kvec(ptr noundef %def_iter, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %net = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  %socket = getelementptr inbounds %struct.afs_net, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %socket, align 4
  %rxcall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %19 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxcall, align 4
  %service_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 38
  %call20 = call i32 @rxrpc_kernel_recv_data(ptr noundef %18, ptr noundef %20, ptr noundef %def_iter, ptr noundef nonnull %len, i1 noundef zeroext false, ptr noundef nonnull %remote_abort, ptr noundef %service_id) #12
  call fastcc void @trace_afs_receive_data(ptr noundef %call, ptr noundef %def_iter, i32 noundef %call20)
  %21 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call20, label %if.end26 [
    i32 -115, label %if.then18.cleanup_crit_edge
    i32 -11, label %if.then18.cleanup_crit_edge275
  ]

if.then18.cleanup_crit_edge275:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp27 = icmp slt i32 %call20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp29 = icmp eq i32 %call20, 1
  %or.cond = or i1 %cmp27, %cmp29
  br i1 %or.cond, label %if.then30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %spec.store.select = select i1 %cmp29, i32 0, i32 %call20
  br label %call_complete

if.end35:                                         ; preds = %do.end10.if.end35_crit_edge, %do.end10.if.end35_crit_edge273, %do.end10.if.end35_crit_edge274
  %have_reply_time = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 35
  %22 = ptrtoint ptr %have_reply_time to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %have_reply_time, align 2, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %land.lhs.true, label %if.end35.if.end43_crit_edge

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end35
  %net37 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %24 = ptrtoint ptr %net37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net37, align 4
  %socket38 = getelementptr inbounds %struct.afs_net, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %socket38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %socket38, align 4
  %rxcall39 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %28 = ptrtoint ptr %rxcall39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rxcall39, align 4
  %reply_time = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 43
  %call40 = tail call zeroext i1 @rxrpc_kernel_get_reply_time(ptr noundef %27, ptr noundef %29, ptr noundef %reply_time) #12
  br i1 %call40, label %if.then41, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %have_reply_time to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %have_reply_time, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true.if.end43_crit_edge, %if.end35.if.end43_crit_edge
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 8
  %deliver = getelementptr inbounds %struct.afs_call_type, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %deliver to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %deliver, align 4
  %call45 = tail call i32 %34(ptr noundef %call) #12
  %35 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state12, align 8
  %37 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call45, label %sw.default [
    i32 0, label %land.lhs.true52
    i32 -90, label %if.end43.sw.bb157_crit_edge
    i32 -115, label %if.end43.do.body176_crit_edge
    i32 -11, label %if.end43.do.body176_crit_edge276
    i32 -103, label %do.body105
    i32 -524, label %sw.bb146
    i32 -5, label %do.end154
    i32 -61, label %if.end43.sw.bb157_crit_edge277
    i32 -74, label %if.end43.sw.bb157_crit_edge278
  ]

if.end43.sw.bb157_crit_edge278:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb157

if.end43.sw.bb157_crit_edge277:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb157

if.end43.do.body176_crit_edge276:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body176

if.end43.do.body176_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body176

if.end43.sw.bb157_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb157

land.lhs.true52:                                  ; preds = %if.end43
  %unmarshalling_error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 37
  %38 = ptrtoint ptr %unmarshalling_error to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %unmarshalling_error, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool53.not = icmp eq i8 %39, 0
  br i1 %tobool53.not, label %sw.bb, label %land.lhs.true52.sw.bb157_crit_edge

land.lhs.true52.sw.bb157_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb157

sw.bb:                                            ; preds = %land.lhs.true52
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 8
  %work.i = getelementptr inbounds %struct.afs_call_type, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %work.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %work.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %sw.bb.afs_queue_call_work.exit_crit_edge, label %do.body.i

sw.bb.afs_queue_call_work.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_queue_call_work.exit

do.body.i:                                        ; preds = %sw.bb
  %work1.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work1.i, i32 noundef 0) #12
  %44 = ptrtoint ptr %work1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %work1.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @afs_queue_call_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry5.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 4, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call, align 8
  %work7.i = getelementptr inbounds %struct.afs_call_type, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %work7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %work7.i, align 4
  %func.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %func.i, align 4
  %usage.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 20
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #12, !srcloc !321
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !322
  %net.i.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %53 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net.i.i, align 4
  %nr_outstanding_calls.i.i = getelementptr inbounds %struct.afs_net, ptr %54, i32 0, i32 7
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_outstanding_calls.i.i, i32 noundef 4) #12
  %55 = ptrtoint ptr %nr_outstanding_calls.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %nr_outstanding_calls.i.i, align 4
  %57 = tail call ptr @llvm.returnaddress(i32 0) #12
  tail call fastcc void @trace_afs_call(ptr noundef %call, i32 noundef 5, i32 noundef %asmresult.i.i.i.i.i.i, i32 noundef %56, ptr noundef %57) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %58 = load ptr, ptr @afs_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %work1.i) #12
  br i1 %call.i.i, label %do.body.i.afs_queue_call_work.exit_crit_edge, label %if.then12.i

do.body.i.afs_queue_call_work.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_queue_call_work.exit

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @afs_put_call(ptr noundef %call) #12
  br label %afs_queue_call_work.exit

afs_queue_call_work.exit:                         ; preds = %if.then12.i, %do.body.i.afs_queue_call_work.exit_crit_edge, %sw.bb.afs_queue_call_work.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp56 = icmp eq i32 %36, 2
  br i1 %cmp56, label %if.then57, label %do.body63

if.then57:                                        ; preds = %afs_queue_call_work.exit
  %op = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 18
  %59 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %op, align 4
  %tobool58.not = icmp eq ptr %60, null
  br i1 %tobool58.not, label %if.then57.call_complete_crit_edge, label %if.then59

if.then57.call_complete_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %call_complete

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %server = getelementptr inbounds %struct.afs_operation, ptr %60, i32 0, i32 20
  %61 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %server, align 8
  %flags = getelementptr inbounds %struct.afs_server, ptr %62, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #12
  br label %call_complete

do.body63:                                        ; preds = %afs_queue_call_work.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp64 = icmp ult i32 %36, 3
  br i1 %cmp64, label %do.end76, label %do.body63.done_crit_edge, !prof !311

do.body63.done_crit_edge:                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

do.end76:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %36, i32 noundef 2) #15
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %36, i32 noundef 2) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rxrpc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 519, 0\0A.popsection", ""() #12, !srcloc !337
  unreachable

do.body105:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %36)
  %cmp106.not = icmp eq i32 %36, 7
  br i1 %cmp106.not, label %do.end144, label %do.end118, !prof !305

do.end118:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %36, i32 noundef 7) #15
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %36, i32 noundef 7) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/afs/rxrpc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 525, 0\0A.popsection", ""() #12, !srcloc !338
  unreachable

do.end144:                                        ; preds = %do.body105
  %abort_code145 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %63 = ptrtoint ptr %abort_code145 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %abort_code145, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %64, label %do.end144.done_crit_edge [
    i32 -4, label %do.end144.sw.epilog.i_crit_edge
    i32 -450, label %sw.bb1.i
    i32 -451, label %sw.bb2.i
    i32 -452, label %sw.bb3.i
    i32 -453, label %sw.bb4.i
    i32 -454, label %sw.bb5.i
    i32 -456, label %sw.bb6.i
    i32 -457, label %sw.bb7.i
    i32 -32, label %sw.bb8.i
  ]

do.end144.sw.epilog.i_crit_edge:                  ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.end144.done_crit_edge:                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

sw.bb1.i:                                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end144.sw.epilog.i_crit_edge
  %msg.0.i = phi ptr [ @.str.144, %sw.bb8.i ], [ @.str.143, %sw.bb7.i ], [ @.str.142, %sw.bb6.i ], [ @.str.141, %sw.bb5.i ], [ @.str.140, %sw.bb4.i ], [ @.str.139, %sw.bb3.i ], [ @.str.138, %sw.bb2.i ], [ @.str.137, %sw.bb1.i ], [ @.str.136, %do.end144.sw.epilog.i_crit_edge ]
  %66 = load i32, ptr @afs_log_error.max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i = icmp slt i32 %66, 3
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.i.done_crit_edge

sw.epilog.i.done_crit_edge:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add nsw i32 %66, 1
  store i32 %add.i, ptr @afs_log_error.max, align 4
  %67 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %alist.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 1
  %71 = ptrtoint ptr %alist.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %alist.i, align 4
  %addr_ix.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 30
  %73 = ptrtoint ptr %addr_ix.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %addr_ix.i, align 1
  %idxprom.i = zext i8 %74 to i32
  %transport.i = getelementptr %struct.afs_addr_list, ptr %72, i32 0, i32 10, i32 %idxprom.i, i32 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull %msg.0.i, ptr noundef %70, ptr noundef %transport.i) #15
  br label %done

sw.bb146:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %net147 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %75 = ptrtoint ptr %net147 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net147, align 4
  %socket148 = getelementptr inbounds %struct.afs_net, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %socket148 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %socket148, align 4
  %rxcall149 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %79 = ptrtoint ptr %rxcall149 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rxcall149, align 4
  %call150 = tail call zeroext i1 @rxrpc_kernel_abort_call(ptr noundef %78, ptr noundef %80, i32 noundef -455, i32 noundef -524, ptr noundef nonnull @.str.127) #12
  br label %call_complete

do.end154:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %debug_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %81 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %debug_id, align 4
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %82, i32 noundef %36) #15
  br label %sw.bb157

sw.bb157:                                         ; preds = %do.end154, %land.lhs.true52.sw.bb157_crit_edge, %if.end43.sw.bb157_crit_edge, %if.end43.sw.bb157_crit_edge277, %if.end43.sw.bb157_crit_edge278
  %ret.0272 = phi i32 [ -5, %do.end154 ], [ -74, %land.lhs.true52.sw.bb157_crit_edge ], [ %call45, %if.end43.sw.bb157_crit_edge ], [ %call45, %if.end43.sw.bb157_crit_edge277 ], [ %call45, %if.end43.sw.bb157_crit_edge278 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp158.not = icmp eq i32 %36, 1
  %spec.store.select204 = select i1 %cmp158.not, i32 -451, i32 -453
  %net161 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %83 = ptrtoint ptr %net161 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net161, align 4
  %socket162 = getelementptr inbounds %struct.afs_net, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %socket162 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %socket162, align 4
  %rxcall163 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %87 = ptrtoint ptr %rxcall163 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rxcall163, align 4
  %call164 = tail call zeroext i1 @rxrpc_kernel_abort_call(ptr noundef %86, ptr noundef %88, i32 noundef %spec.store.select204, i32 noundef %ret.0272, ptr noundef nonnull @.str.131) #12
  br label %call_complete

sw.default:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %net165 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %89 = ptrtoint ptr %net165 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net165, align 4
  %socket166 = getelementptr inbounds %struct.afs_net, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %socket166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %socket166, align 4
  %rxcall167 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %93 = ptrtoint ptr %rxcall167 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rxcall167, align 4
  %call168 = tail call zeroext i1 @rxrpc_kernel_abort_call(ptr noundef %92, ptr noundef %94, i32 noundef -6, i32 noundef %call45, ptr noundef nonnull @.str.132) #12
  br label %call_complete

done:                                             ; preds = %if.end9.critedge.i, %if.then7.i, %if.then.i268.done_crit_edge, %if.then.i, %sw.epilog.i.done_crit_edge, %do.end144.done_crit_edge, %do.body63.done_crit_edge, %do.end10.done_crit_edge
  %95 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call, align 8
  %done170 = getelementptr inbounds %struct.afs_call_type, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %done170 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %done170, align 4
  %tobool171.not = icmp eq ptr %98, null
  br i1 %tobool171.not, label %done.do.body176_crit_edge, label %if.then172

done.do.body176_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body176

if.then172:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  call void %98(ptr noundef %call) #12
  br label %do.body176

do.body176:                                       ; preds = %if.then172, %done.do.body176_crit_edge, %if.end43.do.body176_crit_edge, %if.end43.do.body176_crit_edge276
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %99 = load i32, ptr @afs_debug, align 4
  %and177 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %do.body176.cleanup_crit_edge, label %do.end188, !prof !305

do.body176.cleanup_crit_edge:                     ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end188:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #14
  %100 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i267 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i267 to ptr
  %task191 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task191 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task191, align 8
  %comm192 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 101
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %comm192, ptr noundef nonnull @.str.106) #15
  br label %cleanup

call_complete:                                    ; preds = %sw.default, %sw.bb157, %sw.bb146, %if.then59, %if.then57.call_complete_crit_edge, %if.then30
  %ret.1 = phi i32 [ %spec.store.select, %if.then30 ], [ 0, %if.then59 ], [ 0, %if.then57.call_complete_crit_edge ], [ %call45, %sw.default ], [ %ret.0272, %sw.bb157 ], [ -524, %sw.bb146 ]
  %104 = ptrtoint ptr %remote_abort to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %remote_abort, align 4
  %state_lock.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 22
  call void @_raw_spin_lock_bh(ptr noundef %state_lock.i) #12
  %106 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %state12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %107)
  %cmp.not.i = icmp eq i32 %107, 7
  br i1 %cmp.not.i, label %if.end9.critedge.i, label %if.then.i268

if.then.i268:                                     ; preds = %call_complete
  %abort_code.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %108 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %105, ptr %abort_code.i, align 4
  %error2.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %109 = ptrtoint ptr %error2.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %ret.1, ptr %error2.i, align 8
  %110 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 7, ptr %state12, align 8
  call fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef %107, i32 noundef 7, i32 noundef %ret.1, i32 noundef %105) #12
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  call fastcc void @trace_afs_call_done(ptr noundef %call) #12
  %drop_ref.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 31
  %111 = ptrtoint ptr %drop_ref.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %drop_ref.i, align 2, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool6.not.i = icmp eq i8 %112, 0
  br i1 %tobool6.not.i, label %if.then.i268.done_crit_edge, label %if.then7.i

if.then.i268.done_crit_edge:                      ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then7.i:                                       ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #14
  call void @afs_put_call(ptr noundef %call) #12
  br label %done

if.end9.critedge.i:                               ; preds = %call_complete
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  br label %done

cleanup:                                          ; preds = %do.end188, %do.body176.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then18.cleanup_crit_edge275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_abort) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_kernel_check_life(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_kernel_charge_accept(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @afs_rx_attach(ptr noundef %rxcall, i32 noundef %user_call_ID) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %user_call_ID to ptr
  %rxcall1 = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %rxcall1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rxcall, ptr %rxcall1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_send_empty_reply(ptr nocapture noundef readonly %call) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #12
  %2 = getelementptr inbounds i8, ptr %msg, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !305

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.72) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %socket = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 4
  %rxcall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxcall, align 4
  tail call void @rxrpc_kernel_set_tx_length(ptr noundef %10, ptr noundef %12, i64 noundef 0) #12
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_namelen, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %15 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %17 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %18 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %msg_flags, align 4
  %19 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %socket, align 4
  %21 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rxcall, align 4
  %call11 = call i32 @rxrpc_kernel_send_data(ptr noundef %20, ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 0, ptr noundef nonnull @afs_notify_end_reply_tx) #12
  %23 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call11, label %do.end8.do.body60_crit_edge [
    i32 0, label %do.body12
    i32 -12, label %do.body35
  ]

do.end8.do.body60_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body60

do.body12:                                        ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %24 = load i32, ptr @afs_debug, align 4
  %and13 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.body12.cleanup.sink.split_crit_edge, !prof !305

do.body12.cleanup.sink.split_crit_edge:           ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body35:                                        ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %25 = load i32, ptr @afs_debug, align 4
  %and36 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.end56_crit_edge, label %do.end47, !prof !305

do.body35.do.end56_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

do.end47:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %26 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i89 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i89 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %comm51) #15
  br label %do.end56

do.end56:                                         ; preds = %do.end47, %do.body35.do.end56_crit_edge
  %30 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %socket, align 4
  %32 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxcall, align 4
  %call59 = call zeroext i1 @rxrpc_kernel_abort_call(ptr noundef %31, ptr noundef %33, i32 noundef -6, i32 noundef -12, ptr noundef nonnull @.str.79) #12
  br label %do.body60

do.body60:                                        ; preds = %do.end56, %do.end8.do.body60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %34 = load i32, ptr @afs_debug, align 4
  %and61 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.cleanup_crit_edge, label %do.body60.cleanup.sink.split_crit_edge, !prof !305

do.body60.cleanup.sink.split_crit_edge:           ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body60.cleanup.sink.split_crit_edge, %do.body12.cleanup.sink.split_crit_edge
  %.str.81.sink = phi ptr [ @.str.74, %do.body12.cleanup.sink.split_crit_edge ], [ @.str.81, %do.body60.cleanup.sink.split_crit_edge ]
  %35 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i90 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i90 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task75, align 8
  %comm76 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 101
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.81.sink, ptr noundef %comm76, ptr noundef nonnull @.str.72) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body60.cleanup_crit_edge, %do.body12.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_kernel_set_tx_length(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_notify_end_reply_tx(ptr nocapture noundef readnone %sock, ptr nocapture noundef readnone %rxcall, i32 noundef %call_user_ID) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %call_user_ID to ptr
  %state_lock.i = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock.i) #12
  %state.i = getelementptr inbounds %struct.afs_call, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp.i = icmp eq i32 %2, 5
  br i1 %cmp.i, label %if.then.i, label %entry.afs_set_call_state.exit_crit_edge

entry.afs_set_call_state.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_set_call_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %state.i, align 8
  tail call fastcc void @trace_afs_call_state(ptr noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 0, i32 noundef 0) #12
  br label %afs_set_call_state.exit

afs_set_call_state.exit:                          ; preds = %if.then.i, %entry.afs_set_call_state.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_send_simple_reply(ptr nocapture noundef readonly %call, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [1 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #12
  %2 = getelementptr inbounds i8, ptr %msg, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %4 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !305

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.83) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %socket = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 4
  %rxcall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxcall, align 4
  %conv = zext i32 %len to i64
  tail call void @rxrpc_kernel_set_tx_length(ptr noundef %11, ptr noundef %13, i64 noundef %conv) #12
  %14 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %iov, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len, ptr %4, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %msg_namelen, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 1, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %len) #12
  %18 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %18, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %20 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %21 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %msg_flags, align 4
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 4
  %24 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rxcall, align 4
  %call13 = call i32 @rxrpc_kernel_send_data(ptr noundef %23, ptr noundef %25, ptr noundef nonnull %msg, i32 noundef %len, ptr noundef nonnull @afs_notify_end_reply_tx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp = icmp sgt i32 %call13, -1
  br i1 %cmp, label %do.body16, label %if.end38

do.body16:                                        ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %26 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.cleanup_crit_edge, label %do.body16.cleanup.sink.split_crit_edge, !prof !305

do.body16.cleanup.sink.split_crit_edge:           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call13)
  %cmp39 = icmp eq i32 %call13, -12
  br i1 %cmp39, label %do.body42, label %if.end38.do.body68_crit_edge

if.end38.do.body68_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68

do.body42:                                        ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %27 = load i32, ptr @afs_debug, align 4
  %and43 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end63_crit_edge, label %do.end54, !prof !305

do.body42.do.end63_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

do.end54:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %28 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i103 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i103 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task57, align 8
  %comm58 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %comm58) #15
  br label %do.end63

do.end63:                                         ; preds = %do.end54, %do.body42.do.end63_crit_edge
  %32 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %socket, align 4
  %34 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rxcall, align 4
  %call66 = call zeroext i1 @rxrpc_kernel_abort_call(ptr noundef %33, ptr noundef %35, i32 noundef -6, i32 noundef -12, ptr noundef nonnull @.str.79) #12
  br label %do.body68

do.body68:                                        ; preds = %do.end63, %if.end38.do.body68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %36 = load i32, ptr @afs_debug, align 4
  %and69 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.cleanup_crit_edge, label %do.body68.cleanup.sink.split_crit_edge, !prof !305

do.body68.cleanup.sink.split_crit_edge:           ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body68.cleanup.sink.split_crit_edge, %do.body16.cleanup.sink.split_crit_edge
  %.str.81.sink = phi ptr [ @.str.74, %do.body16.cleanup.sink.split_crit_edge ], [ @.str.81, %do.body68.cleanup.sink.split_crit_edge ]
  %37 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i104 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i104 to ptr
  %task83 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task83, align 8
  %comm84 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.81.sink, ptr noundef %comm84, ptr noundef nonnull @.str.83) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body68.cleanup_crit_edge, %do.body16.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext %want_more) local_unnamed_addr #0 align 64 {
entry:
  %remote_abort = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %iter2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %iter2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_abort) #12
  %4 = ptrtoint ptr %remote_abort to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %remote_abort, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end, !prof !305

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %iov_len = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %14 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 8
  %conv = zext i1 %want_more to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %comm, ptr noundef nonnull @.str.91, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %conv) #15
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %socket = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %socket, align 4
  %rxcall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %20 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxcall, align 4
  %iov_len12 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 11
  %service_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 38
  %call14 = call i32 @rxrpc_kernel_recv_data(ptr noundef %19, ptr noundef %21, ptr noundef %3, ptr noundef %iov_len12, i1 noundef zeroext %want_more, ptr noundef nonnull %remote_abort, ptr noundef %service_id) #12
  %22 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call14, label %do.end22 [
    i32 0, label %do.end11.cleanup_crit_edge
    i32 -11, label %do.end11.cleanup_crit_edge76
  ]

do.end11.cleanup_crit_edge76:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end22:                                         ; preds = %do.end11
  %state24 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %23 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp25 = icmp eq i32 %call14, 1
  br i1 %cmp25, label %if.then27, label %if.end42

if.then27:                                        ; preds = %do.end22
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %24, label %if.then27.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb29
    i32 7, label %do.end34
  ]

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then27
  %state_lock.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 22
  call void @_raw_spin_lock_bh(ptr noundef %state_lock.i) #12
  %26 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp eq i32 %27, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.afs_set_call_state.exit_crit_edge

sw.bb.afs_set_call_state.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_set_call_state.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %state24, align 8
  call fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0) #12
  br label %afs_set_call_state.exit

afs_set_call_state.exit:                          ; preds = %if.then.i, %sw.bb.afs_set_call_state.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  br label %cleanup

sw.bb29:                                          ; preds = %if.then27
  %state_lock.i68 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 22
  call void @_raw_spin_lock_bh(ptr noundef %state_lock.i68) #12
  %29 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i70 = icmp eq i32 %30, 4
  br i1 %cmp.i70, label %if.then.i71, label %sw.bb29.afs_set_call_state.exit72_crit_edge

sw.bb29.afs_set_call_state.exit72_crit_edge:      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_set_call_state.exit72

if.then.i71:                                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %state24, align 8
  call fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef 4, i32 noundef 5, i32 noundef 0, i32 noundef 0) #12
  br label %afs_set_call_state.exit72

afs_set_call_state.exit72:                        ; preds = %if.then.i71, %sw.bb29.afs_set_call_state.exit72_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i68) #12
  br label %cleanup

do.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %32 = call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i73 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i73 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task37, align 8
  %comm38 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error, align 8
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %comm38, i32 noundef %37) #15
  %debug_id.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %38 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug_id.i, align 4
  call fastcc void @trace_afs_io_error(i32 noundef %39) #12
  br label %cleanup

if.end42:                                         ; preds = %do.end22
  %40 = ptrtoint ptr %remote_abort to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %remote_abort, align 4
  %state_lock.i74 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 22
  call void @_raw_spin_lock_bh(ptr noundef %state_lock.i74) #12
  %42 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %43)
  %cmp.not.i = icmp eq i32 %43, 7
  br i1 %cmp.not.i, label %if.end9.critedge.i, label %if.then.i75

if.then.i75:                                      ; preds = %if.end42
  %abort_code.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %44 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %abort_code.i, align 4
  %error2.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %45 = ptrtoint ptr %error2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call14, ptr %error2.i, align 8
  %46 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 7, ptr %state24, align 8
  call fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef %43, i32 noundef 7, i32 noundef %call14, i32 noundef %41) #12
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i74) #12
  call fastcc void @trace_afs_call_done(ptr noundef %call) #12
  %drop_ref.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 31
  %47 = ptrtoint ptr %drop_ref.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %drop_ref.i, align 2, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool6.not.i = icmp eq i8 %48, 0
  br i1 %tobool6.not.i, label %if.then.i75.cleanup_crit_edge, label %if.then7.i

if.then.i75.cleanup_crit_edge:                    ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i:                                       ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #14
  call void @afs_put_call(ptr noundef %call) #12
  br label %cleanup

if.end9.critedge.i:                               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i74) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9.critedge.i, %if.then7.i, %if.then.i75.cleanup_crit_edge, %do.end34, %afs_set_call_state.exit72, %afs_set_call_state.exit, %if.then27.cleanup_crit_edge, %do.end11.cleanup_crit_edge, %do.end11.cleanup_crit_edge76
  %retval.0 = phi i32 [ -5, %do.end34 ], [ %call14, %do.end11.cleanup_crit_edge ], [ %call14, %do.end11.cleanup_crit_edge76 ], [ 0, %if.then27.cleanup_crit_edge ], [ 0, %afs_set_call_state.exit72 ], [ 0, %afs_set_call_state.exit ], [ %call14, %if.then.i75.cleanup_crit_edge ], [ %call14, %if.then7.i ], [ %call14, %if.end9.critedge.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_abort) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_protocol_error(ptr noundef %call, i32 noundef %cause) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_afs_protocol_error(ptr noundef %call, i32 noundef %cause)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %unmarshalling_error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 37
  %0 = ptrtoint ptr %unmarshalling_error to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %unmarshalling_error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 -74
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_protocol_error(ptr noundef %call, i32 noundef %cause) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_protocol_error, i32 0, i32 1), ptr blockaddress(@trace_afs_protocol_error, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !339
  %call43 = tail call i32 @__traceiter_afs_protocol_error(ptr noundef null, ptr noundef %call, i32 noundef %cause) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !340
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !305

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_protocol_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_protocol_error, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_protocol_error.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_protocol_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 1172, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_process_async_call(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !305

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.102) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %state = getelementptr i8, ptr %work, i32 180
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp = icmp ult i32 %6, 7
  br i1 %cmp, label %land.lhs.true, label %do.end8.if.end12_crit_edge

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %do.end8
  %need_attention = getelementptr i8, ptr %work, i32 255
  %7 = ptrtoint ptr %need_attention to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %need_attention, align 1, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %need_attention to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %need_attention, align 1
  tail call fastcc void @afs_deliver_to_call(ptr noundef %add.ptr)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %do.end8.if.end12_crit_edge
  tail call void @afs_put_call(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %10 = load i32, ptr @afs_debug, align 4
  %and14 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.do.end34_crit_edge, label %do.end25, !prof !305

if.end12.do.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i39 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i39 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %comm29, ptr noundef nonnull @.str.102) #15
  br label %do.end34

do.end34:                                         ; preds = %do.end25, %if.end12.do.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_send_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_sent_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_call_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_receive_data(ptr noundef %call, ptr noundef %iter, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_receive_data, i32 0, i32 1), ptr blockaddress(@trace_afs_receive_data, %do.body)) #12
          to label %if.end50 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end71_crit_edge, label %cleanup.thread

cpu_online.exit.if.end71_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !341
  %call44 = tail call i32 @__traceiter_afs_receive_data(ptr noundef null, ptr noundef %call, ptr noundef %iter, i1 noundef zeroext false, i32 noundef %ret) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end50

if.end50:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu52 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu52, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end50.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end50.cpu_online.exit14_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end50
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !305

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end50.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end71_crit_edge, label %if.then54

cpu_online.exit14.if.end71_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then54:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_receive_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_receive_data, i32 0, i32 7), align 4
  %call60 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true, label %if.then54.do.end69_crit_edge

if.then54.do.end69_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

land.lhs.true:                                    ; preds = %if.then54
  %call62 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true.do.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_afs_receive_data.__warned, align 1
  br i1 %.b1, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_receive_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 681, ptr noundef nonnull @.str.96) #12
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true.do.end69_crit_edge, %if.then54.do.end69_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end71

if.end71:                                         ; preds = %do.end69, %cpu_online.exit14.if.end71_crit_edge, %cpu_online.exit.if.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_kernel_get_reply_time(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_receive_data(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef %from, i32 noundef %to, i32 noundef %ret, i32 noundef %remote_abort) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_state, i32 0, i32 1), ptr blockaddress(@trace_afs_call_state, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %call43 = tail call i32 @__traceiter_afs_call_state(ptr noundef null, ptr noundef %call, i32 noundef %from, i32 noundef %to, i32 noundef %ret, i32 noundef %remote_abort) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !344
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !305

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_call_state, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_call_state.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_call_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 1078, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_call_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_notify_call(ptr noundef %rxcall, ptr noundef %call) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_notify_call, i32 0, i32 1), ptr blockaddress(@trace_afs_notify_call, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !345
  %call43 = tail call i32 @__traceiter_afs_notify_call(ptr noundef null, ptr noundef %rxcall, ptr noundef %call) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !346
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !305

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_notify_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_notify_call, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_notify_call.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_notify_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 703, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_notify_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_deliver_cm_op_id(ptr noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !305

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %iter = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iter, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %comm, ptr noundef nonnull @.str.149, i32 noundef %8) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call9 = tail call i32 @afs_extract_data(ptr noundef %call, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %9 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp12 = getelementptr inbounds %struct.anon.169, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tmp12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp12, align 4
  %operation_ID = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 40
  %12 = ptrtoint ptr %operation_ID to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %operation_ID, align 8
  %state_lock.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock.i) #12
  %state.i = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 21
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i = icmp eq i32 %14, 3
  br i1 %cmp.i, label %if.then.i, label %if.end11.afs_set_call_state.exit_crit_edge

if.end11.afs_set_call_state.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %afs_set_call_state.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %state.i, align 8
  tail call fastcc void @trace_afs_call_state(ptr noundef %call, i32 noundef 3, i32 noundef 4, i32 noundef 0, i32 noundef 0) #12
  br label %afs_set_call_state.exit

afs_set_call_state.exit:                          ; preds = %if.then.i, %if.end11.afs_set_call_state.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  %call14 = tail call zeroext i1 @afs_cm_incoming_call(ptr noundef %call) #12
  br i1 %call14, label %if.end16, label %afs_set_call_state.exit.cleanup_crit_edge

afs_set_call_state.exit.cleanup_crit_edge:        ; preds = %afs_set_call_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %afs_set_call_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_afs_cb_call(ptr noundef %call)
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 8
  %deliver = getelementptr inbounds %struct.afs_call_type, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %deliver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %deliver, align 4
  %call17 = tail call i32 %19(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %afs_set_call_state.exit.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call9, %do.end8.cleanup_crit_edge ], [ -524, %afs_set_call_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_cm_incoming_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_cb_call(ptr noundef %call) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_call, i32 0, i32 1), ptr blockaddress(@trace_afs_cb_call, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  %call43 = tail call i32 @__traceiter_afs_cb_call(ptr noundef null, ptr noundef %call) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !348
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !305

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_cb_call, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_cb_call.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_cb_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 727, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_cb_call(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_io_error(i32 noundef %call) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 1), ptr blockaddress(@trace_afs_io_error, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !315

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !294) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !305

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !349
  %call43 = tail call i32 @__traceiter_afs_io_error(ptr noundef null, i32 noundef %call, i32 noundef -5, i32 noundef 1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !350
  %13 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !305

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_afs_io_error.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_afs_io_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 1194, ptr noundef nonnull @.str.96) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !294) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_io_error(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_protocol_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !89, !91, !92, !93, !95, !97, !99, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !162, !164, !165, !167, !168, !170, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !218, !220, !221, !222, !224, !226, !228, !229, !231, !232, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !258, !259, !260, !262, !263, !265, !266, !268, !270, !272, !273, !274, !275, !277, !278, !280, !281, !283, !284, !285, !287, !288, !290, !291, !293}
!llvm.named.register.sp = !{!294}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/rxrpc.c", i32 42, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_open_socket._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_open_socket._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/rxrpc.c", i32 93, i32 2}
!8 = !{ptr @afs_open_socket._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_open_socket._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/rxrpc.c", i32 99, i32 2}
!12 = !{ptr @afs_open_socket._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_open_socket._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/rxrpc.c", i32 108, i32 2}
!16 = !{ptr @afs_close_socket._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_close_socket._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/rxrpc.c", i32 118, i32 2}
!20 = !{ptr @afs_close_socket._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_close_socket._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/rxrpc.c", i32 121, i32 2}
!24 = !{ptr @afs_close_socket._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_close_socket._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/rxrpc.c", i32 127, i32 2}
!28 = !{ptr @afs_close_socket._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_close_socket._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/rxrpc.c", i32 128, i32 2}
!32 = !{ptr @afs_close_socket._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_close_socket._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/afs/rxrpc.c", i32 172, i32 2}
!36 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @afs_put_call._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @afs_put_call._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @afs_put_call._entry.24, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @afs_put_call._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !35, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @afs_put_call._entry.27, !35, !"_entry", i1 false, i1 false}
!44 = !{ptr @afs_put_call._entry_ptr.29, !35, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.31, !35, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @afs_put_call._entry.30, !35, !"_entry", i1 false, i1 false}
!47 = !{ptr @afs_put_call._entry_ptr.32, !35, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @afs_put_call._entry.33, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../fs/afs/rxrpc.c", i32 174, i32 3}
!50 = !{ptr @afs_put_call._entry_ptr.34, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @afs_put_call._entry.35, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @afs_put_call._entry_ptr.36, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @afs_put_call._entry.37, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../fs/afs/rxrpc.c", i32 175, i32 3}
!55 = !{ptr @afs_put_call._entry_ptr.38, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @afs_put_call._entry.39, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @afs_put_call._entry_ptr.40, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @afs_alloc_flat_call.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../fs/afs/rxrpc.c", i32 252, i32 2}
!60 = !{ptr @.str.41, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.42, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/afs/rxrpc.c", i32 266, i32 2}
!63 = !{ptr @afs_flat_call_destructor._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @afs_flat_call_destructor._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/afs/rxrpc.c", i32 300, i32 2}
!67 = !{ptr @.str.44, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @afs_make_call._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @afs_make_call._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @afs_make_call._entry.45, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../fs/afs/rxrpc.c", i32 302, i32 2}
!72 = !{ptr @afs_make_call._entry_ptr.46, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @afs_make_call._entry.47, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @afs_make_call._entry_ptr.48, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @afs_make_call._entry.49, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../fs/afs/rxrpc.c", i32 303, i32 2}
!77 = !{ptr @afs_make_call._entry_ptr.50, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @afs_make_call._entry.51, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @afs_make_call._entry_ptr.52, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.54, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/afs/rxrpc.c", i32 305, i32 2}
!82 = !{ptr @afs_make_call._entry.53, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @afs_make_call._entry_ptr.55, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.56, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/afs/rxrpc.c", i32 395, i32 26}
!86 = !{ptr @afs_make_call._entry.57, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../fs/afs/rxrpc.c", i32 427, i32 2}
!88 = !{ptr @afs_make_call._entry_ptr.58, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.59, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/afs/rxrpc.c", i32 580, i32 2}
!91 = !{ptr @afs_wait_for_call_to_complete._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @afs_wait_for_call_to_complete._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../fs/afs/rxrpc.c", i32 588, i32 3}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../fs/afs/rxrpc.c", i32 594, i32 4}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../fs/afs/rxrpc.c", i32 612, i32 2}
!99 = !{ptr @.str.63, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/afs/rxrpc.c", i32 619, i32 4}
!101 = !{ptr @afs_wait_for_call_to_complete._entry.62, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @afs_wait_for_call_to_complete._entry_ptr.64, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/afs/rxrpc.c", i32 621, i32 34}
!105 = !{ptr @.str.67, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/afs/rxrpc.c", i32 644, i32 2}
!107 = !{ptr @afs_wait_for_call_to_complete._entry.66, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @afs_wait_for_call_to_complete._entry_ptr.68, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.70, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/afs/rxrpc.c", i32 646, i32 2}
!111 = !{ptr @afs_wait_for_call_to_complete._entry.69, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @afs_wait_for_call_to_complete._entry_ptr.71, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @afs_charge_preallocation.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../fs/afs/rxrpc.c", i32 729, i32 4}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/afs/rxrpc.c", i32 819, i32 2}
!117 = !{ptr @afs_send_empty_reply._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @afs_send_empty_reply._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/afs/rxrpc.c", i32 833, i32 3}
!121 = !{ptr @afs_send_empty_reply._entry.73, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @afs_send_empty_reply._entry_ptr.75, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.77, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/afs/rxrpc.c", i32 837, i32 3}
!125 = !{ptr @afs_send_empty_reply._entry.76, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @afs_send_empty_reply._entry_ptr.78, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.79, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/afs/rxrpc.c", i32 839, i32 30}
!129 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/afs/rxrpc.c", i32 842, i32 3}
!131 = !{ptr @afs_send_empty_reply._entry.80, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @afs_send_empty_reply._entry_ptr.82, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.83, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/afs/rxrpc.c", i32 857, i32 2}
!135 = !{ptr @afs_send_simple_reply._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @afs_send_simple_reply._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @afs_send_simple_reply._entry.84, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../fs/afs/rxrpc.c", i32 874, i32 3}
!139 = !{ptr @afs_send_simple_reply._entry_ptr.85, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @afs_send_simple_reply._entry.86, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../fs/afs/rxrpc.c", i32 879, i32 3}
!142 = !{ptr @afs_send_simple_reply._entry_ptr.87, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @afs_send_simple_reply._entry.88, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../fs/afs/rxrpc.c", i32 883, i32 2}
!145 = !{ptr @afs_send_simple_reply._entry_ptr.89, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/afs/rxrpc.c", i32 897, i32 2}
!148 = !{ptr @.str.91, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @afs_extract_data._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @afs_extract_data._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.93, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/afs/rxrpc.c", i32 916, i32 4}
!153 = !{ptr @afs_extract_data._entry.92, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @afs_extract_data._entry_ptr.94, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @afs_async_calls, !156, !"afs_async_calls", i1 false, i1 false}
!156 = !{!"../fs/afs/rxrpc.c", i32 17, i32 26}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../include/trace/events/afs.h", i32 729, i32 1}
!159 = !{ptr @.str.95, !158, !"<string literal>", i1 false, i1 false}
!160 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!161 = !{ptr @.str.96, !158, !"<string literal>", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!164 = !{ptr @.str.97, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @afs_alloc_call.__key, !166, !"__key", i1 false, i1 false}
!166 = !{!"../fs/afs/rxrpc.c", i32 149, i32 2}
!167 = !{ptr @.str.98, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @afs_alloc_call.__key.99, !169, !"__key", i1 false, i1 false}
!169 = !{!"../fs/afs/rxrpc.c", i32 150, i32 2}
!170 = !{ptr @afs_alloc_call.__key.100, !171, !"__key", i1 false, i1 false}
!171 = !{!"../fs/afs/rxrpc.c", i32 151, i32 2}
!172 = !{ptr @.str.101, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.102, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/afs/rxrpc.c", i32 693, i32 2}
!175 = !{ptr @afs_process_async_call._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @afs_process_async_call._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @afs_process_async_call._entry.103, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../fs/afs/rxrpc.c", i32 701, i32 2}
!179 = !{ptr @afs_process_async_call._entry_ptr.104, !178, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../include/trace/events/afs.h", i32 950, i32 1}
!182 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../include/trace/events/afs.h", i32 974, i32 1}
!185 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!186 = distinct !{null, !187, !"__already_done", i1 false, i1 false}
!187 = !{!"../include/trace/events/afs.h", i32 924, i32 1}
!188 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!189 = !{ptr @.str.105, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/afs/rxrpc.c", i32 473, i32 2}
!191 = !{ptr @.str.106, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @afs_deliver_to_call._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @afs_deliver_to_call._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @afs_deliver_to_call._entry.107, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../fs/afs/rxrpc.c", i32 519, i32 4}
!196 = !{ptr @afs_deliver_to_call._entry_ptr.108, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @afs_deliver_to_call._entry.109, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @afs_deliver_to_call._entry_ptr.110, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @afs_deliver_to_call._entry.111, !195, !"_entry", i1 false, i1 false}
!201 = !{ptr @afs_deliver_to_call._entry_ptr.113, !195, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.115, !195, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @afs_deliver_to_call._entry.114, !195, !"_entry", i1 false, i1 false}
!204 = !{ptr @afs_deliver_to_call._entry_ptr.116, !195, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @afs_deliver_to_call._entry.117, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../fs/afs/rxrpc.c", i32 525, i32 4}
!207 = !{ptr @afs_deliver_to_call._entry_ptr.118, !206, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @afs_deliver_to_call._entry.119, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @afs_deliver_to_call._entry_ptr.120, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.122, !206, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @afs_deliver_to_call._entry.121, !206, !"_entry", i1 false, i1 false}
!212 = !{ptr @afs_deliver_to_call._entry_ptr.123, !206, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.125, !206, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @afs_deliver_to_call._entry.124, !206, !"_entry", i1 false, i1 false}
!215 = !{ptr @afs_deliver_to_call._entry_ptr.126, !206, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.127, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/afs/rxrpc.c", i32 531, i32 24}
!218 = !{ptr @.str.129, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/afs/rxrpc.c", i32 534, i32 4}
!220 = !{ptr @afs_deliver_to_call._entry.128, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @afs_deliver_to_call._entry_ptr.130, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.131, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/afs/rxrpc.c", i32 544, i32 24}
!224 = !{ptr @.str.132, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/afs/rxrpc.c", i32 549, i32 24}
!226 = !{ptr @afs_deliver_to_call._entry.133, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../fs/afs/rxrpc.c", i32 558, i32 2}
!228 = !{ptr @afs_deliver_to_call._entry_ptr.134, !227, !"_entry_ptr", i1 false, i1 false}
!229 = distinct !{null, !230, !"__already_done", i1 false, i1 false}
!230 = !{!"../include/trace/events/afs.h", i32 650, i32 1}
!231 = distinct !{null, !230, !"__warned", i1 false, i1 false}
!232 = !{ptr @afs_queue_call_work.__key, !233, !"__key", i1 false, i1 false}
!233 = !{!"../fs/afs/rxrpc.c", i32 215, i32 3}
!234 = !{ptr @.str.135, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @afs_log_error.max, !236, !"max", i1 false, i1 false}
!236 = !{!"../fs/afs/rxrpc.c", i32 436, i32 13}
!237 = !{ptr @.str.136, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/afs/rxrpc.c", i32 441, i32 23}
!239 = !{ptr @.str.137, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/afs/rxrpc.c", i32 442, i32 32}
!241 = !{ptr @.str.138, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/afs/rxrpc.c", i32 443, i32 33}
!243 = !{ptr @.str.139, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/afs/rxrpc.c", i32 444, i32 32}
!245 = !{ptr @.str.140, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/afs/rxrpc.c", i32 445, i32 33}
!247 = !{ptr @.str.141, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/afs/rxrpc.c", i32 446, i32 28}
!249 = !{ptr @.str.142, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/afs/rxrpc.c", i32 447, i32 32}
!251 = !{ptr @.str.143, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/afs/rxrpc.c", i32 448, i32 32}
!253 = !{ptr @.str.144, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/afs/rxrpc.c", i32 449, i32 20}
!255 = !{ptr @.str.145, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/afs/rxrpc.c", i32 457, i32 3}
!257 = !{ptr @.str.146, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @afs_log_error._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @afs_log_error._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = distinct !{null, !261, !"__already_done", i1 false, i1 false}
!261 = !{!"../include/trace/events/afs.h", i32 1050, i32 1}
!262 = distinct !{null, !261, !"__warned", i1 false, i1 false}
!263 = distinct !{null, !264, !"__already_done", i1 false, i1 false}
!264 = !{!"../include/trace/events/afs.h", i32 683, i32 1}
!265 = distinct !{null, !264, !"__warned", i1 false, i1 false}
!266 = !{ptr @.str.147, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/afs/rxrpc.c", i32 28, i32 11}
!268 = !{ptr @afs_RXCMxxxx, !269, !"afs_RXCMxxxx", i1 false, i1 false}
!269 = !{!"../fs/afs/rxrpc.c", i32 27, i32 35}
!270 = !{ptr @.str.148, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/afs/rxrpc.c", i32 776, i32 2}
!272 = !{ptr @.str.149, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @afs_deliver_cm_op_id._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @afs_deliver_cm_op_id._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = distinct !{null, !276, !"__already_done", i1 false, i1 false}
!276 = !{!"../include/trace/events/afs.h", i32 705, i32 1}
!277 = distinct !{null, !276, !"__warned", i1 false, i1 false}
!278 = distinct !{null, !279, !"__warned", i1 false, i1 false}
!279 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!280 = !{ptr @.str.150, !279, !"<string literal>", i1 false, i1 false}
!281 = distinct !{null, !282, !"__warned", i1 false, i1 false}
!282 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!283 = !{ptr @.str.151, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.152, !282, !"<string literal>", i1 false, i1 false}
!285 = distinct !{null, !286, !"__warned", i1 false, i1 false}
!286 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!287 = !{ptr @.str.153, !286, !"<string literal>", i1 false, i1 false}
!288 = distinct !{null, !289, !"__already_done", i1 false, i1 false}
!289 = !{!"../include/trace/events/afs.h", i32 1174, i32 1}
!290 = distinct !{null, !289, !"__warned", i1 false, i1 false}
!291 = distinct !{null, !292, !"__already_done", i1 false, i1 false}
!292 = !{!"../include/trace/events/afs.h", i32 1154, i32 1}
!293 = distinct !{null, !292, !"__warned", i1 false, i1 false}
!294 = !{!"sp"}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{!"auto-init"}
!305 = !{!"branch_weights", i32 2000, i32 1}
!306 = !{i64 2149938783}
!307 = !{i64 2149939049}
!308 = !{i64 2148690388}
!309 = !{i64 2148605097, i64 2148605129, i64 2148605158, i64 2148605192, i64 2148605223, i64 2148605246}
!310 = !{i64 2148690617}
!311 = !{!"branch_weights", i32 1, i32 2000}
!312 = !{i64 2157820659, i64 2157821138, i64 2157820696, i64 2157820752, i64 2157820786, i64 2157820810, i64 2157820851, i64 2157820872, i64 2157820900, i64 2157820934}
!313 = !{i64 2157825304, i64 2157825783, i64 2157825341, i64 2157825397, i64 2157825431, i64 2157825455, i64 2157825496, i64 2157825517, i64 2157825545, i64 2157825579}
!314 = !{i64 2157829696, i64 2157830175, i64 2157829733, i64 2157829789, i64 2157829823, i64 2157829847, i64 2157829888, i64 2157829909, i64 2157829937, i64 2157829971}
!315 = !{i64 2148222638, i64 2148222643, i64 2148222656, i64 2148222700, i64 2148222734, i64 2148222755}
!316 = !{i64 2157264177}
!317 = !{i64 2157264426}
!318 = !{i64 2149947342}
!319 = !{i64 2149948378}
!320 = !{i64 2148687347}
!321 = !{i64 2148602632, i64 2148602664, i64 2148602693, i64 2148602727, i64 2148602758, i64 2148602781}
!322 = !{i64 2148687576}
!323 = !{i64 2157839012, i64 2157839491, i64 2157839049, i64 2157839105, i64 2157839139, i64 2157839163, i64 2157839204, i64 2157839225, i64 2157839253, i64 2157839287}
!324 = !{i64 2157843404, i64 2157843883, i64 2157843441, i64 2157843497, i64 2157843531, i64 2157843555, i64 2157843596, i64 2157843617, i64 2157843645, i64 2157843679}
!325 = !{i64 2148603442, i64 2148603474, i64 2148603503, i64 2148603537, i64 2148603568, i64 2148603591}
!326 = !{i8 0, i8 2}
!327 = !{i64 2148601331}
!328 = !{i64 1087931, i64 1087956, i64 1087978, i64 1087994, i64 1088006, i64 1088026, i64 1088050, i64 1088066, i64 1088078}
!329 = !{i64 2148601519}
!330 = !{i64 2157389586}
!331 = !{i64 2157389793}
!332 = !{i64 2157406008}
!333 = !{i64 2157406225}
!334 = !{i64 2157369354}
!335 = !{i64 2157369551}
!336 = !{i64 2157888293}
!337 = !{i64 2157865010, i64 2157865489, i64 2157865047, i64 2157865103, i64 2157865137, i64 2157865161, i64 2157865202, i64 2157865223, i64 2157865251, i64 2157865285}
!338 = !{i64 2157872790, i64 2157873269, i64 2157872827, i64 2157872883, i64 2157872917, i64 2157872941, i64 2157872982, i64 2157873003, i64 2157873031, i64 2157873065}
!339 = !{i64 2157515494}
!340 = !{i64 2157515715}
!341 = !{i64 2157210381}
!342 = !{i64 2157210628}
!343 = !{i64 2157461880}
!344 = !{i64 2157462137}
!345 = !{i64 2157227201}
!346 = !{i64 2157227418}
!347 = !{i64 2157247258}
!348 = !{i64 2157247451}
!349 = !{i64 2157536324}
!350 = !{i64 2157536547}
