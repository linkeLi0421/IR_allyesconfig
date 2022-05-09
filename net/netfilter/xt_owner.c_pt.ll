; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_owner.c_pt.bc'
source_filename = "../net/netfilter/xt_owner.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.xt_owner_match_info = type { i32, i32, i32, i32, i8, i8 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.file = type { %union.anon.42, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.42 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.54 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.54 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.72 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@owner_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"owner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @owner_mt, ptr @owner_check, ptr null, ptr null, ptr null, i32 20, i32 0, i32 24, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_owner__478_144_owner_mt_init6 = internal global ptr @owner_mt_init, section ".initcall6.init", align 4
@__exitcall_owner_mt_exit = internal global ptr @owner_mt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author479 = internal constant [52 x i8] c"xt_owner.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description480 = internal constant [52 x i8] c"xt_owner.description=Xtables: socket owner matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file481 = internal constant [37 x i8] c"xt_owner.file=net/netfilter/xt_owner\00", section ".modinfo", align 1
@__UNIQUE_ID_license482 = internal constant [21 x i8] c"xt_owner.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias483 = internal constant [25 x i8] c"xt_owner.alias=ipt_owner\00", section ".modinfo", align 1
@__UNIQUE_ID_alias484 = internal constant [26 x i8] c"xt_owner.alias=ip6t_owner\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias483, ptr @__UNIQUE_ID_alias484, ptr @__UNIQUE_ID_author479, ptr @__UNIQUE_ID_description480, ptr @__UNIQUE_ID_file481, ptr @__UNIQUE_ID_license482, ptr @__exitcall_owner_mt_exit, ptr @__initcall__kmod_xt_owner__478_144_owner_mt_init6, ptr @owner_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @owner_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @owner_mt_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @owner_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @owner_mt_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @owner_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.lor.lhs.false_crit_edge

land.lhs.true.i.i.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %8 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.then_crit_edge, label %skb_to_full_sk.exit.lor.lhs.false_crit_edge

skb_to_full_sk.exit.lor.lhs.false_crit_edge:      ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %skb_to_full_sk.exit.lor.lhs.false_crit_edge, %land.lhs.true.i.i.lor.lhs.false_crit_edge
  %sk.addr.0.i.i210 = phi ptr [ %10, %skb_to_full_sk.exit.lor.lhs.false_crit_edge ], [ %5, %land.lhs.true.i.i.lor.lhs.false_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in, align 4
  %.in = getelementptr inbounds %struct.nf_hook_state, ptr %.pn, i32 0, i32 5
  %12 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.in, align 4
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i210, i32 0, i32 71
  %14 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_socket, align 8
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i.i210, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %13, %17
  br i1 %cmp.i.not, label %if.else, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %skb_to_full_sk.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %match = getelementptr inbounds %struct.xt_owner_match_info, ptr %2, i32 0, i32 4
  %18 = ptrtoint ptr %match to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %match, align 4
  %invert = getelementptr inbounds %struct.xt_owner_match_info, ptr %2, i32 0, i32 5
  %20 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %invert, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp = icmp eq i8 %19, %21
  br label %cleanup133

if.else:                                          ; preds = %lor.lhs.false3
  %match9 = getelementptr inbounds %struct.xt_owner_match_info, ptr %2, i32 0, i32 4
  %22 = ptrtoint ptr %match9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %match9, align 4
  %invert11 = getelementptr inbounds %struct.xt_owner_match_info, ptr %2, i32 0, i32 5
  %24 = ptrtoint ptr %invert11 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %invert11, align 1
  %and190 = and i8 %23, 4
  %26 = and i8 %and190, %25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14.not = icmp eq i8 %26, 0
  br i1 %tobool14.not, label %if.end16, label %if.else.cleanup133_crit_edge

if.else.cleanup133_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup133

if.end16:                                         ; preds = %if.else
  %file = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 3
  %27 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %file, align 4
  %cmp18 = icmp eq ptr %28, null
  br i1 %cmp18, label %if.then20, label %if.end29

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %xor25194 = xor i8 %25, %23
  %29 = and i8 %xor25194, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp27 = icmp eq i8 %29, 0
  br label %cleanup133

if.end29:                                         ; preds = %if.end16
  %30 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  br i1 %tobool33.not, label %if.end29.if.end60_crit_edge, label %if.then34

if.end29.if.end60_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then34:                                        ; preds = %if.end29
  %user_ns = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 11
  %31 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %2, align 4
  %call36 = tail call i32 @make_kuid(ptr noundef %32, i32 noundef %34) #4
  %35 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %user_ns, align 4
  %uid_max38 = getelementptr inbounds %struct.xt_owner_match_info, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %uid_max38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %uid_max38, align 4
  %call39 = tail call i32 @make_kuid(ptr noundef %36, i32 noundef %38) #4
  %f_cred = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 12
  %39 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f_cred, align 8
  %fsuid = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack192 = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack192, i32 %call36)
  %cmp.i195.not = icmp uge i32 %.unpack192, %call36
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack192, i32 %call39)
  %cmp.i196 = icmp ule i32 %.unpack192, %call39
  %narrow = select i1 %cmp.i195.not, i1 %cmp.i196, i1 false
  %42 = ptrtoint ptr %invert11 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %invert11, align 1
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = zext i1 %narrow to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %46)
  %tobool56.not = icmp eq i8 %45, %46
  br i1 %tobool56.not, label %if.then34.if.end60_crit_edge, label %if.then34.cleanup133_crit_edge

if.then34.cleanup133_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup133

if.then34.if.end60_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end60:                                         ; preds = %if.then34.if.end60_crit_edge, %if.end29.if.end60_crit_edge
  %47 = ptrtoint ptr %match9 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %match9, align 4
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool64.not = icmp eq i8 %49, 0
  br i1 %tobool64.not, label %if.end60.if.end132_crit_edge, label %if.then65

if.end60.if.end132_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

if.then65:                                        ; preds = %if.end60
  %user_ns67 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 11
  %50 = ptrtoint ptr %user_ns67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user_ns67, align 4
  %gid_min68 = getelementptr inbounds %struct.xt_owner_match_info, ptr %2, i32 0, i32 2
  %52 = ptrtoint ptr %gid_min68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gid_min68, align 4
  %call69 = tail call i32 @make_kgid(ptr noundef %51, i32 noundef %53) #4
  %54 = ptrtoint ptr %user_ns67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %user_ns67, align 4
  %gid_max72 = getelementptr inbounds %struct.xt_owner_match_info, ptr %2, i32 0, i32 3
  %56 = ptrtoint ptr %gid_max72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %gid_max72, align 4
  %call73 = tail call i32 @make_kgid(ptr noundef %55, i32 noundef %57) #4
  %f_cred75 = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 12
  %58 = ptrtoint ptr %f_cred75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %f_cred75, align 8
  %group_info = getelementptr inbounds %struct.cred, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %group_info, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %59, i32 0, i32 11
  %62 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack = load i32, ptr %fsgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %call69)
  %cmp.i197 = icmp ult i32 %.unpack, %call69
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %call73)
  %cmp.i198.not = icmp ugt i32 %.unpack, %call73
  %or.cond215 = select i1 %cmp.i197, i1 true, i1 %cmp.i198.not
  br i1 %or.cond215, label %land.lhs.true90, label %if.then65.if.end114_crit_edge

if.then65.if.end114_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

land.lhs.true90:                                  ; preds = %if.then65
  %63 = ptrtoint ptr %match9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %match9, align 4
  %65 = and i8 %64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool94.not = icmp eq i8 %65, 0
  %tobool96.not = icmp eq ptr %61, null
  %or.cond = select i1 %tobool94.not, i1 true, i1 %tobool96.not
  br i1 %or.cond, label %land.lhs.true90.if.end114_crit_edge, label %for.cond.preheader

land.lhs.true90.if.end114_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

for.cond.preheader:                               ; preds = %land.lhs.true90
  %ngroups = getelementptr inbounds %struct.group_info, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp98217.not = icmp eq i32 %67, 0
  br i1 %cmp98217.not, label %for.cond.preheader.if.end114_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end114_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0218, 1
  %exitcond.not = icmp eq i32 %inc, %67
  br i1 %exitcond.not, label %for.cond.if.end114_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.if.end114_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0218 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.group_info, ptr %61, i32 0, i32 2, i32 %i.0218
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %group.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %group.sroa.0.0.copyload, i32 %call69)
  %cmp.i199 = icmp uge i32 %group.sroa.0.0.copyload, %call69
  call void @__sanitizer_cov_trace_cmp4(i32 %group.sroa.0.0.copyload, i32 %call73)
  %cmp.i200 = icmp ule i32 %group.sroa.0.0.copyload, %call73
  %or.cond216 = select i1 %cmp.i199, i1 %cmp.i200, i1 false
  br i1 %or.cond216, label %for.body.if.end114_crit_edge, label %for.cond

for.body.if.end114_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.end114:                                        ; preds = %for.body.if.end114_crit_edge, %for.cond.if.end114_crit_edge, %for.cond.preheader.if.end114_crit_edge, %land.lhs.true90.if.end114_crit_edge, %if.then65.if.end114_crit_edge
  %match66.3 = phi i32 [ 0, %land.lhs.true90.if.end114_crit_edge ], [ 1, %if.then65.if.end114_crit_edge ], [ 0, %for.cond.preheader.if.end114_crit_edge ], [ 0, %for.cond.if.end114_crit_edge ], [ 1, %for.body.if.end114_crit_edge ]
  %69 = ptrtoint ptr %invert11 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %invert11, align 1
  %71 = lshr i8 %70, 1
  %.lobit = and i8 %71, 1
  %72 = xor i8 %.lobit, 1
  %73 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %match66.3, i32 %73)
  %tobool122.not = icmp eq i32 %match66.3, %73
  br i1 %tobool122.not, label %if.end114.if.end132_crit_edge, label %if.end114.cleanup133_crit_edge

if.end114.cleanup133_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup133

if.end114.if.end132_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

if.end132:                                        ; preds = %if.end114.if.end132_crit_edge, %if.end60.if.end132_crit_edge
  br label %cleanup133

cleanup133:                                       ; preds = %if.end132, %if.end114.cleanup133_crit_edge, %if.then34.cleanup133_crit_edge, %if.then20, %if.else.cleanup133_crit_edge, %if.then
  %retval.3 = phi i1 [ %cmp27, %if.then20 ], [ true, %if.end132 ], [ false, %if.end114.cleanup133_crit_edge ], [ false, %if.then34.cleanup133_crit_edge ], [ %cmp, %if.then ], [ false, %if.else.cleanup133_crit_edge ]
  ret i1 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owner_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %match = getelementptr inbounds %struct.xt_owner_match_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %match, align 4
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup76_crit_edge

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

if.end:                                           ; preds = %entry
  %and4 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %do.end

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.end:                                           ; preds = %if.end
  %6 = tail call i32 @llvm.read_register.i32(metadata !19) #4
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %user_ns7 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %user_ns7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns7, align 4
  %cmp.not = icmp eq ptr %13, %15
  br i1 %cmp.not, label %do.end.if.end10_crit_edge, label %do.end.cleanup76_crit_edge

do.end.cleanup76_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %do.end.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %16 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %if.end10.if.end40_crit_edge, label %if.then15

if.end10.if.end40_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then15:                                        ; preds = %if.end10
  %user_ns16 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %user_ns16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns16, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %call18 = tail call i32 @make_kuid(ptr noundef %18, i32 noundef %20) #4
  %21 = ptrtoint ptr %user_ns16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ns16, align 4
  %uid_max20 = getelementptr inbounds %struct.xt_owner_match_info, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %uid_max20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %uid_max20, align 4
  %call21 = tail call i32 @make_kuid(ptr noundef %22, i32 noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp.i = icmp ne i32 %call18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp.i115 = icmp ne i32 %call21, -1
  %or.cond = select i1 %cmp.i, i1 %cmp.i115, i1 false
  br i1 %or.cond, label %lor.lhs.false27, label %if.then15.cleanup76_crit_edge

if.then15.cleanup76_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

lor.lhs.false27:                                  ; preds = %if.then15
  %25 = ptrtoint ptr %uid_max20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uid_max20, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp30 = icmp ult i32 %26, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %call18)
  %cmp.i116 = icmp ult i32 %call21, %call18
  %or.cond120 = select i1 %cmp30, i1 true, i1 %cmp.i116
  br i1 %or.cond120, label %lor.lhs.false27.cleanup76_crit_edge, label %lor.lhs.false27.if.end40_crit_edge

lor.lhs.false27.if.end40_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

lor.lhs.false27.cleanup76_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

if.end40:                                         ; preds = %lor.lhs.false27.if.end40_crit_edge, %if.end10.if.end40_crit_edge
  %29 = ptrtoint ptr %match to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %match, align 4
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool44.not = icmp eq i8 %31, 0
  br i1 %tobool44.not, label %if.end40.cleanup76_crit_edge, label %if.then45

if.end40.cleanup76_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

if.then45:                                        ; preds = %if.end40
  %user_ns46 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %32 = ptrtoint ptr %user_ns46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %user_ns46, align 4
  %gid_min47 = getelementptr inbounds %struct.xt_owner_match_info, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %gid_min47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gid_min47, align 4
  %call48 = tail call i32 @make_kgid(ptr noundef %33, i32 noundef %35) #4
  %36 = ptrtoint ptr %user_ns46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %user_ns46, align 4
  %gid_max51 = getelementptr inbounds %struct.xt_owner_match_info, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %gid_max51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gid_max51, align 4
  %call52 = tail call i32 @make_kgid(ptr noundef %37, i32 noundef %39) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call48)
  %cmp.i117 = icmp ne i32 %call48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call52)
  %cmp.i118 = icmp ne i32 %call52, -1
  %or.cond121 = select i1 %cmp.i117, i1 %cmp.i118, i1 false
  br i1 %or.cond121, label %lor.lhs.false59, label %if.then45.cleanup76_crit_edge

if.then45.cleanup76_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

lor.lhs.false59:                                  ; preds = %if.then45
  %40 = ptrtoint ptr %gid_max51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gid_max51, align 4
  %42 = ptrtoint ptr %gid_min47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gid_min47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp62 = icmp ult i32 %41, %43
  br i1 %cmp62, label %lor.lhs.false59.cleanup76_crit_edge, label %lor.lhs.false64

lor.lhs.false59.cleanup76_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

lor.lhs.false64:                                  ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call52, i32 %call48)
  %cmp.i119 = icmp ult i32 %call52, %call48
  %spec.select = select i1 %cmp.i119, i32 -22, i32 0
  br label %cleanup76

cleanup76:                                        ; preds = %lor.lhs.false64, %lor.lhs.false59.cleanup76_crit_edge, %if.then45.cleanup76_crit_edge, %if.end40.cleanup76_crit_edge, %lor.lhs.false27.cleanup76_crit_edge, %if.then15.cleanup76_crit_edge, %do.end.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  %retval.3 = phi i32 [ -22, %entry.cleanup76_crit_edge ], [ -22, %do.end.cleanup76_crit_edge ], [ -22, %if.then15.cleanup76_crit_edge ], [ -22, %lor.lhs.false27.cleanup76_crit_edge ], [ -22, %if.then45.cleanup76_crit_edge ], [ -22, %lor.lhs.false59.cleanup76_crit_edge ], [ 0, %if.end40.cleanup76_crit_edge ], [ %spec.select, %lor.lhs.false64 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_xt_owner__478_144_owner_mt_init6, !1, !"__initcall__kmod_xt_owner__478_144_owner_mt_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_owner.c", i32 144, i32 1}
!2 = !{ptr @__exitcall_owner_mt_exit, !3, !"__exitcall_owner_mt_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_owner.c", i32 145, i32 1}
!4 = !{ptr @__UNIQUE_ID_author479, !5, !"__UNIQUE_ID_author479", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_owner.c", i32 146, i32 1}
!6 = !{ptr @__UNIQUE_ID_description480, !7, !"__UNIQUE_ID_description480", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_owner.c", i32 147, i32 1}
!8 = !{ptr @__UNIQUE_ID_file481, !9, !"__UNIQUE_ID_file481", i1 false, i1 false}
!9 = !{!"../net/netfilter/xt_owner.c", i32 148, i32 1}
!10 = !{ptr @__UNIQUE_ID_license482, !9, !"__UNIQUE_ID_license482", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias483, !12, !"__UNIQUE_ID_alias483", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_owner.c", i32 149, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias484, !14, !"__UNIQUE_ID_alias484", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_owner.c", i32 150, i32 1}
!15 = !{ptr @owner_mt_reg, !16, !"owner_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_owner.c", i32 122, i32 24}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_owner.c", i32 32, i32 7}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
