; ModuleID = '/llk/IR_all_yes/net/atm/svc.c_pt.bc'
source_filename = "../net/atm/svc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
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
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.140, i8, %union.anon.142 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i8, i8 }
%union.anon.142 = type { %struct.anon.145 }
%struct.anon.145 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.146 }
%struct.anon.146 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%union.anon.85 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.atmsvc_msg = type { i32, %struct.atm_kptr_t, %struct.atm_kptr_t, i32, %struct.sockaddr_atmpvc, %struct.sockaddr_atmsvc, %struct.atm_qos, %struct.atm_sap, i32, %struct.sockaddr_atmsvc }
%struct.atm_kptr_t = type { [8 x i8] }
%struct.sockaddr_atmpvc = type { i16, %struct.anon.152 }
%struct.anon.152 = type { i16, i16, i32 }

@sigd = external dso_local local_unnamed_addr global ptr, align 4
@svc_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 20, ptr @svc_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@svc_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 20, ptr null, ptr @svc_release, ptr @svc_bind, ptr @svc_connect, ptr @sock_no_socketpair, ptr @svc_accept, ptr @svc_getname, ptr @vcc_poll, ptr @svc_ioctl, ptr @sock_gettstamp, ptr @svc_listen, ptr @svc_shutdown, ptr @svc_setsockopt, ptr @svc_getsockopt, ptr null, ptr @vcc_sendmsg, ptr @vcc_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@svc_release.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"atm\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"svc_release\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/atm/svc.c\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%p\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atm:%s: %p\0A\00", [20 x i8] zeroinitializer }, align 32
@svc_disconnect.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"svc_disconnect\00", [17 x i8] zeroinitializer }, align 32
@svc_disconnect.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LISTEN REL\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atm:%s: LISTEN REL\0A\00", [44 x i8] zeroinitializer }, align 32
@svc_connect.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"svc_connect\00", [20 x i8] zeroinitializer }, align 32
@svc_connect.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"*ABORT*\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atm:%s: *ABORT*\0A\00", [47 x i8] zeroinitializer }, align 32
@svc_accept.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"svc_accept\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%p -> %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atm:%s: %p -> %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@svc_addparty.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"svc_addparty\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"added wait queue\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atm:%s: added wait queue\0A\00", [38 x i8] zeroinitializer }, align 32
@svc_listen.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.3, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"svc_listen\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1074029045, i64 1074291188]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1107492904, i64 1107623940]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"svc_family_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 673, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"svc_proto_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 629, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 82, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 52, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 67, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 160, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 222, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 340, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 156, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 542, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [17 x i8] c"../net/atm/svc.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 289, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @svc_family_ops, ptr @svc_proto_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_change_qos(ptr noundef %vcc, ptr noundef %qos) local_unnamed_addr #0 align 64 {
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %flags5 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  call void @_set_bit(i32 noundef 12, ptr noundef %flags5) #8
  %local = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 19
  call void @sigd_enq2(ptr noundef %vcc, i32 noundef 11, ptr noundef null, ptr noundef null, ptr noundef %local, ptr noundef %qos, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  call void @prepare_to_wait(ptr noundef %15, ptr noundef nonnull %wait, i32 noundef 2) #8
  %16 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags5, align 4
  %18 = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not28 = icmp eq i32 %18, 0
  br i1 %tobool.not28, label %entry.for.end_crit_edge, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %19 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags5, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %22 = load ptr, ptr @sigd, align 4
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %lor.lhs.false12.for.end_crit_edge, label %if.end

lor.lhs.false12.for.end_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false12
  call void @schedule() #8
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %13, align 8
  call void @prepare_to_wait(ptr noundef %24, ptr noundef nonnull %wait, i32 noundef 2) #8
  %25 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags5, align 4
  %27 = and i32 %26, 4096
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.lor.lhs.false_crit_edge

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %lor.lhs.false12.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %13, align 8
  call void @finish_wait(ptr noundef %29, ptr noundef nonnull %wait) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %30 = load ptr, ptr @sigd, align 4
  %tobool15.not = icmp eq ptr %30, null
  br i1 %tobool15.not, label %for.end.cleanup_crit_edge, label %if.end17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %sk_err = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 51
  %31 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end17 ], [ -49, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sigd_enq2(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmsvc_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_register(ptr noundef nonnull @svc_family_ops) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atmsvc_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sock_unregister(i32 noundef 20) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_create(ptr noundef readnone %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @svc_proto_ops, ptr %ops, align 4
  %call1 = tail call i32 @vcc_create(ptr noundef nonnull @init_net, ptr noundef %sock, i32 noundef %protocol, i32 noundef 20, i32 noundef %kern) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk.i, align 16
  %local = getelementptr inbounds %struct.atm_vcc, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %local to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 20, ptr %local, align 4
  %4 = load ptr, ptr %sk.i, align 16
  %remote = getelementptr inbounds %struct.atm_vcc, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %remote to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 20, ptr %remote, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -97, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_release(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_release.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_release, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !55

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @svc_release.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  tail call fastcc void @svc_disconnect(ptr noundef nonnull %1)
  %call7 = tail call i32 @vcc_release(ptr noundef %sock) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %sockaddr, i32 noundef %sockaddr_len) #0 align 64 {
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sk4 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk4, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %sockaddr_len)
  %cmp.not = icmp eq i32 %sockaddr_len, 44
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #8
  %15 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sock, align 128
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.then10 [
    i32 3, label %if.end.out_crit_edge
    i32 1, label %if.end11
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %if.end
  %18 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk4, align 16
  %20 = ptrtoint ptr %sockaddr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sockaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %21)
  %cmp13.not = icmp eq i16 %21, 20
  br i1 %cmp13.not, label %if.end16, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %if.end11
  %flags17 = getelementptr inbounds %struct.atm_vcc, ptr %19, i32 0, i32 1
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags17) #8
  %22 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags17, align 4
  %24 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end16.out_crit_edge, label %if.end21

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21:                                         ; preds = %if.end16
  %local = getelementptr inbounds %struct.atm_vcc, ptr %19, i32 0, i32 19
  %25 = call ptr @memcpy(ptr %local, ptr %sockaddr, i32 44)
  call void @_set_bit(i32 noundef 12, ptr noundef %flags17) #8
  call void @sigd_enq(ptr noundef %19, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %local) #8
  %26 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %26, align 8
  call void @prepare_to_wait(ptr noundef %28, ptr noundef nonnull %wait, i32 noundef 2) #8
  %29 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags17, align 4
  %31 = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool27.not64 = icmp eq i32 %31, 0
  br i1 %tobool27.not64, label %if.end21.for.end_crit_edge, label %if.end21.lor.lhs.false_crit_edge

if.end21.lor.lhs.false_crit_edge:                 ; preds = %if.end21
  br label %lor.lhs.false

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end30.lor.lhs.false_crit_edge, %if.end21.lor.lhs.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %32 = load ptr, ptr @sigd, align 4
  %tobool28.not = icmp eq ptr %32, null
  br i1 %tobool28.not, label %lor.lhs.false.for.end_crit_edge, label %if.end30

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end30:                                         ; preds = %lor.lhs.false
  call void @schedule() #8
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %26, align 8
  call void @prepare_to_wait(ptr noundef %34, ptr noundef nonnull %wait, i32 noundef 2) #8
  %35 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags17, align 4
  %37 = and i32 %36, 4096
  %tobool27.not = icmp eq i32 %37, 0
  br i1 %tobool27.not, label %if.end30.for.end_crit_edge, label %if.end30.lor.lhs.false_crit_edge

if.end30.lor.lhs.false_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end30.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end21.for.end_crit_edge
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %26, align 8
  call void @finish_wait(ptr noundef %39, ptr noundef nonnull %wait) #8
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags17) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %40 = load ptr, ptr @sigd, align 4
  %tobool33.not = icmp eq ptr %40, null
  br i1 %tobool33.not, label %for.end.out_crit_edge, label %if.end35

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end35:                                         ; preds = %for.end
  %sk_err = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %41 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool36.not = icmp eq i32 %42, 0
  br i1 %tobool36.not, label %if.then37, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 4, ptr noundef %flags17) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %43 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %44
  br label %out

out:                                              ; preds = %if.end39, %for.end.out_crit_edge, %if.end16.out_crit_edge, %if.end11.out_crit_edge, %if.then10, %if.end.out_crit_edge
  %error.0 = phi i32 [ -22, %if.then10 ], [ %sub, %if.end39 ], [ -106, %if.end.out_crit_edge ], [ -97, %if.end11.out_crit_edge ], [ -77, %if.end16.out_crit_edge ], [ -49, %for.end.out_crit_edge ]
  call void @release_sock(ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_connect(ptr noundef %sock, ptr nocapture noundef readonly %sockaddr, i32 noundef %sockaddr_len, i32 noundef %flags) #0 align 64 {
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sk5 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk5, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_connect.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_connect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @svc_connect.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, ptr noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %sockaddr_len)
  %cmp.not = icmp eq i32 %sockaddr_len, 44
  br i1 %cmp.not, label %if.end11, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %do.end
  %15 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sock, align 128
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %16, label %if.end11.out_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb12
    i32 1, label %sw.bb23
  ]

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb12:                                          ; preds = %if.end11
  %flags13 = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags13, align 4
  %20 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.end17, label %sw.bb12.out_crit_edge

sw.bb12.out_crit_edge:                            ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end17:                                         ; preds = %sw.bb12
  %21 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %sock, align 128
  %sk_err = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %22 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool19.not = icmp eq i32 %23, 0
  br i1 %tobool19.not, label %if.end17.sw.epilog_crit_edge, label %if.then20

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 0, %23
  br label %out

sw.bb23:                                          ; preds = %if.end11
  %24 = ptrtoint ptr %sockaddr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sockaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %25)
  %cmp24.not = icmp eq i16 %25, 20
  br i1 %cmp24.not, label %if.end27, label %sw.bb23.out_crit_edge

sw.bb23.out_crit_edge:                            ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end27:                                         ; preds = %sw.bb23
  %flags28 = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 1
  %26 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags28, align 4
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not = icmp eq i32 %28, 0
  br i1 %tobool30.not, label %if.end27.out_crit_edge, label %if.end32

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end32:                                         ; preds = %if.end27
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7
  %29 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %30)
  %cmp34 = icmp eq i8 %30, 5
  br i1 %cmp34, label %if.end32.out_crit_edge, label %lor.lhs.false

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end32
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp39 = icmp eq i8 %32, 5
  br i1 %cmp39, label %lor.lhs.false.out_crit_edge, label %if.end42

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end42:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool46.not = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool50.not = icmp eq i8 %32, 0
  %or.cond = select i1 %tobool46.not, i1 %tobool50.not, i1 false
  br i1 %or.cond, label %if.end42.out_crit_edge, label %if.end52

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end52:                                         ; preds = %if.end42
  %remote = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 20
  %33 = call ptr @memcpy(ptr %remote, ptr %sockaddr, i32 44)
  call void @_set_bit(i32 noundef 12, ptr noundef %flags28) #8
  call void @sigd_enq(ptr noundef %14, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %remote) #8
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %sock, align 128
  br label %out

if.end58:                                         ; preds = %if.end52
  %35 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %35, align 8
  call void @prepare_to_wait(ptr noundef %37, ptr noundef nonnull %wait, i32 noundef 1) #8
  %38 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags28, align 4
  %40 = and i32 %39, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool62.not247 = icmp eq i32 %40, 0
  br i1 %tobool62.not247, label %if.end58.if.end117_crit_edge, label %if.end58.land.rhs_crit_edge

if.end58.land.rhs_crit_edge:                      ; preds = %if.end58
  br label %land.rhs

if.end58.if.end117_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

land.rhs:                                         ; preds = %if.then68.land.rhs_crit_edge, %if.end58.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %41 = load ptr, ptr @sigd, align 4
  %tobool63.not = icmp eq ptr %41, null
  br i1 %tobool63.not, label %land.rhs.if.end117_crit_edge, label %while.body

land.rhs.if.end117_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

while.body:                                       ; preds = %land.rhs
  call void @schedule() #8
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stack.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %48 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.do.body71_crit_edge, !prof !56

while.body.do.body71_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

signal_pending.exit:                              ; preds = %while.body
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %45, align 4
  %and1.i.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool67.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool67.not, label %if.then68, label %signal_pending.exit.do.body71_crit_edge

signal_pending.exit.do.body71_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.then68:                                        ; preds = %signal_pending.exit
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %35, align 8
  call void @prepare_to_wait(ptr noundef %52, ptr noundef nonnull %wait, i32 noundef 1) #8
  %53 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags28, align 4
  %55 = and i32 %54, 4096
  %tobool62.not = icmp eq i32 %55, 0
  br i1 %tobool62.not, label %if.then68.if.end117_crit_edge, label %if.then68.land.rhs_crit_edge

if.then68.land.rhs_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.then68.if.end117_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

do.body71:                                        ; preds = %signal_pending.exit.do.body71_crit_edge, %while.body.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_connect.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_connect, %if.then83)) #8
          to label %do.end86 [label %if.then83], !srcloc !55

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @svc_connect.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #8
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body71
  call void @sigd_enq(ptr noundef %14, i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %56 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags28, align 4
  %58 = and i32 %57, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool90.not248 = icmp eq i32 %58, 0
  br i1 %tobool90.not248, label %do.end86.while.end_crit_edge, label %do.end86.land.rhs91_crit_edge

do.end86.land.rhs91_crit_edge:                    ; preds = %do.end86
  br label %land.rhs91

do.end86.while.end_crit_edge:                     ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs91:                                       ; preds = %while.body94.land.rhs91_crit_edge, %do.end86.land.rhs91_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %59 = load ptr, ptr @sigd, align 4
  %tobool92.not = icmp eq ptr %59, null
  br i1 %tobool92.not, label %land.rhs91.while.end_crit_edge, label %while.body94

land.rhs91.while.end_crit_edge:                   ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body94:                                     ; preds = %land.rhs91
  %60 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %35, align 8
  call void @prepare_to_wait(ptr noundef %61, ptr noundef nonnull %wait, i32 noundef 1) #8
  call void @schedule() #8
  %62 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags28, align 4
  %64 = and i32 %63, 4096
  %tobool90.not = icmp eq i32 %64, 0
  br i1 %tobool90.not, label %while.body94.while.end_crit_edge, label %while.body94.land.rhs91_crit_edge

while.body94.land.rhs91_crit_edge:                ; preds = %while.body94
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs91

while.body94.while.end_crit_edge:                 ; preds = %while.body94
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body94.while.end_crit_edge, %land.rhs91.while.end_crit_edge, %do.end86.while.end_crit_edge
  %sk_err96 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %65 = ptrtoint ptr %sk_err96 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sk_err96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool97.not = icmp eq i32 %66, 0
  br i1 %tobool97.not, label %while.cond99.preheader, label %while.end.while.end113_crit_edge

while.end.while.end113_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end113

while.cond99.preheader:                           ; preds = %while.end
  %67 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags28, align 4
  %69 = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool102.not249 = icmp eq i32 %69, 0
  br i1 %tobool102.not249, label %while.cond99.preheader.land.rhs103_crit_edge, label %while.cond99.preheader.while.end113_crit_edge

while.cond99.preheader.while.end113_crit_edge:    ; preds = %while.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end113

while.cond99.preheader.land.rhs103_crit_edge:     ; preds = %while.cond99.preheader
  br label %land.rhs103

land.rhs103:                                      ; preds = %while.body106.land.rhs103_crit_edge, %while.cond99.preheader.land.rhs103_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %70 = load ptr, ptr @sigd, align 4
  %tobool104.not = icmp eq ptr %70, null
  br i1 %tobool104.not, label %land.rhs103.while.end113_crit_edge, label %while.body106

land.rhs103.while.end113_crit_edge:               ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end113

while.body106:                                    ; preds = %land.rhs103
  %71 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %35, align 8
  call void @prepare_to_wait(ptr noundef %72, ptr noundef nonnull %wait, i32 noundef 1) #8
  call void @schedule() #8
  %73 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags28, align 4
  %75 = and i32 %74, 32
  %tobool102.not = icmp eq i32 %75, 0
  br i1 %tobool102.not, label %while.body106.land.rhs103_crit_edge, label %while.body106.while.end113_crit_edge

while.body106.while.end113_crit_edge:             ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end113

while.body106.land.rhs103_crit_edge:              ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs103

while.end113:                                     ; preds = %while.body106.while.end113_crit_edge, %land.rhs103.while.end113_crit_edge, %while.cond99.preheader.while.end113_crit_edge, %while.end.while.end113_crit_edge
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags28) #8
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags28) #8
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags28) #8
  %76 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %35, align 8
  call void @finish_wait(ptr noundef %77, ptr noundef nonnull %wait) #8
  br label %out

if.end117:                                        ; preds = %if.then68.if.end117_crit_edge, %land.rhs.if.end117_crit_edge, %if.end58.if.end117_crit_edge
  %78 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %35, align 8
  call void @finish_wait(ptr noundef %79, ptr noundef nonnull %wait) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %80 = load ptr, ptr @sigd, align 4
  %tobool118.not = icmp eq ptr %80, null
  br i1 %tobool118.not, label %if.end117.out_crit_edge, label %if.end120

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end120:                                        ; preds = %if.end117
  %sk_err121 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %81 = ptrtoint ptr %sk_err121 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sk_err121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool122.not = icmp eq i32 %82, 0
  br i1 %tobool122.not, label %if.end120.sw.epilog_crit_edge, label %if.then123

if.end120.sw.epilog_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %sub125 = sub i32 0, %82
  br label %out

sw.epilog:                                        ; preds = %if.end120.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge
  %pcr = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7, i32 0, i32 2
  %83 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pcr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool129.not = icmp eq i32 %84, 0
  br i1 %tobool129.not, label %cond.false, label %sw.epilog.cond.end157_crit_edge

sw.epilog.cond.end157_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end157

cond.false:                                       ; preds = %sw.epilog
  %max_pcr = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7, i32 0, i32 1
  %85 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_pcr, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %86, label %cond.false.cond.end157_crit_edge [
    i32 0, label %cond.false.cond.false146_crit_edge
    i32 -1, label %cond.false.cond.false146_crit_edge250
  ]

cond.false.cond.false146_crit_edge250:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false146

cond.false.cond.false146_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false146

cond.false.cond.end157_crit_edge:                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end157

cond.false146:                                    ; preds = %cond.false.cond.false146_crit_edge, %cond.false.cond.false146_crit_edge250
  %min_pcr = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7, i32 0, i32 3
  %88 = ptrtoint ptr %min_pcr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %min_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool149.not = icmp eq i32 %89, 0
  %spec.select = select i1 %tobool149.not, i32 -1, i32 %89
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false146, %cond.false.cond.end157_crit_edge, %sw.epilog.cond.end157_crit_edge
  %cond158 = phi i32 [ %84, %sw.epilog.cond.end157_crit_edge ], [ %86, %cond.false.cond.end157_crit_edge ], [ %spec.select, %cond.false146 ]
  %max_pcr161 = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7, i32 0, i32 1
  %90 = ptrtoint ptr %max_pcr161 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cond158, ptr %max_pcr161, align 4
  %91 = ptrtoint ptr %pcr to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %pcr, align 8
  %min_pcr167 = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7, i32 0, i32 3
  %92 = ptrtoint ptr %min_pcr167 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %min_pcr167, align 4
  %itf = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 18
  %93 = ptrtoint ptr %itf to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %itf, align 8
  %conv168 = sext i16 %94 to i32
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 2
  %95 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vpi, align 4
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 3
  %97 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vci, align 8
  %call169 = call i32 @vcc_connect(ptr noundef %sock, i32 noundef %conv168, i16 noundef signext %96, i32 noundef %98) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then171, label %if.else

if.then171:                                       ; preds = %cond.end157
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 3, ptr %sock, align 128
  br label %out

if.else:                                          ; preds = %cond.end157
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @svc_disconnect(ptr noundef %14)
  br label %out

out:                                              ; preds = %if.else, %if.then171, %if.then123, %if.end117.out_crit_edge, %while.end113, %if.then56, %if.end42.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end32.out_crit_edge, %if.end27.out_crit_edge, %sw.bb23.out_crit_edge, %if.then20, %sw.bb12.out_crit_edge, %sw.bb, %if.end11.out_crit_edge, %do.end.out_crit_edge
  %error.1 = phi i32 [ -115, %if.then56 ], [ -4, %while.end113 ], [ %sub125, %if.then123 ], [ %call169, %if.else ], [ 0, %if.then171 ], [ %sub, %if.then20 ], [ -106, %sw.bb ], [ -22, %do.end.out_crit_edge ], [ -22, %if.end11.out_crit_edge ], [ -114, %sw.bb12.out_crit_edge ], [ -97, %sw.bb23.out_crit_edge ], [ -77, %if.end27.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end32.out_crit_edge ], [ -22, %if.end42.out_crit_edge ], [ -49, %if.end117.out_crit_edge ]
  call void @release_sock(ptr noundef %14) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not.i, label %if.end.i, label %entry.cleanup95_crit_edge

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup95

if.end.i:                                         ; preds = %entry
  %conv = zext i1 %kern to i32
  %ops.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 5
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @svc_proto_ops, ptr %ops.i, align 4
  %call1.i = tail call i32 @vcc_create(ptr noundef nonnull @init_net, ptr noundef %newsock, i32 noundef 0, i32 noundef 20, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup95_crit_edge

if.end.i.cleanup95_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup95

if.end:                                           ; preds = %if.end.i
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %5 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk.i.i, align 16
  %local.i = getelementptr inbounds %struct.atm_vcc, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %local.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 20, ptr %local.i, align 4
  %8 = load ptr, ptr %sk.i.i, align 16
  %remote.i = getelementptr inbounds %struct.atm_vcc, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %remote.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 20, ptr %remote.i, align 8
  %10 = load ptr, ptr %sk.i.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_accept.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_accept, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !55

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @svc_accept.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %1, ptr noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %15 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %flags24 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %10, i32 0, i32 7
  %flags52 = getelementptr inbounds %struct.atm_vcc, ptr %10, i32 0, i32 1
  %remote = getelementptr inbounds %struct.atm_vcc, ptr %10, i32 0, i32 20
  %local = getelementptr inbounds %struct.atm_vcc, ptr %10, i32 0, i32 19
  %sap = getelementptr inbounds %struct.atm_vcc, ptr %10, i32 0, i32 8
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %16 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 17
  %sk_err81 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 51
  %17 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %19 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wait, align 4
  %20 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %11, align 4
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @autoremove_wake_function, ptr %12, align 4
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %13, ptr %13, align 4
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %13, ptr %14, align 4
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %15, align 8
  call void @prepare_to_wait(ptr noundef %29, ptr noundef nonnull %wait, i32 noundef 1) #8
  %call20176 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #8
  %tobool21.not177 = icmp eq ptr %call20176, null
  br i1 %tobool21.not177, label %while.cond.land.rhs_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  br label %land.rhs

land.rhs:                                         ; preds = %if.end42.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %30 = load ptr, ptr @sigd, align 4
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %land.rhs.while.end_crit_edge, label %while.body23

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body23:                                     ; preds = %land.rhs
  %31 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags24, align 4
  %33 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool26.not = icmp eq i32 %33, 0
  br i1 %tobool26.not, label %if.end28, label %while.body23.while.end_crit_edge

while.body23.while.end_crit_edge:                 ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end28:                                         ; preds = %while.body23
  %34 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags24, align 4
  %36 = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool31.not = icmp eq i32 %36, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %38
  br label %while.end

if.end33:                                         ; preds = %if.end28
  br i1 %tobool34.not, label %if.end36, label %if.end33.while.end_crit_edge

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end36:                                         ; preds = %if.end33
  call void @release_sock(ptr noundef %1) #8
  call void @schedule() #8
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stack.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end36.while.end_crit_edge, !prof !56

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

signal_pending.exit:                              ; preds = %if.end36
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %and1.i.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool40.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool40.not, label %if.end42, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end42:                                         ; preds = %signal_pending.exit
  %48 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %15, align 8
  call void @prepare_to_wait(ptr noundef %49, ptr noundef nonnull %wait, i32 noundef 1) #8
  %call20 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end42.land.rhs_crit_edge, label %if.end42.while.end_crit_edge

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end42.land.rhs_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end36.while.end_crit_edge, %if.end33.while.end_crit_edge, %if.then32, %while.body23.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %call20171 = phi ptr [ null, %if.then32 ], [ %call20176, %while.cond.while.end_crit_edge ], [ null, %land.rhs.while.end_crit_edge ], [ null, %while.body23.while.end_crit_edge ], [ %call20, %if.end42.while.end_crit_edge ], [ null, %if.end33.while.end_crit_edge ], [ null, %signal_pending.exit.while.end_crit_edge ], [ null, %if.end36.while.end_crit_edge ]
  %tobool21.not169 = phi i1 [ true, %if.then32 ], [ false, %while.cond.while.end_crit_edge ], [ true, %land.rhs.while.end_crit_edge ], [ true, %while.body23.while.end_crit_edge ], [ false, %if.end42.while.end_crit_edge ], [ true, %if.end33.while.end_crit_edge ], [ true, %signal_pending.exit.while.end_crit_edge ], [ true, %if.end36.while.end_crit_edge ]
  %error.1 = phi i32 [ %sub, %if.then32 ], [ 0, %while.cond.while.end_crit_edge ], [ 0, %land.rhs.while.end_crit_edge ], [ 0, %while.body23.while.end_crit_edge ], [ 0, %if.end42.while.end_crit_edge ], [ -11, %if.end33.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -512, %if.end36.while.end_crit_edge ]
  %50 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %15, align 8
  call void @finish_wait(ptr noundef %51, ptr noundef nonnull %wait) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool45.not = icmp ne i32 %error.1, 0
  %brmerge = or i1 %tobool45.not, %tobool21.not169
  br i1 %brmerge, label %cleanup.thread.loopexit.split.loop.exit200, label %if.end50

if.end50:                                         ; preds = %while.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call20171, i32 0, i32 19
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %qos51 = getelementptr inbounds %struct.atmsvc_msg, ptr %53, i32 0, i32 6
  %54 = call ptr @memcpy(ptr %qos, ptr %qos51, i32 84)
  call void @_set_bit(i32 noundef 6, ptr noundef %flags52) #8
  %svc = getelementptr inbounds %struct.atmsvc_msg, ptr %53, i32 0, i32 9
  %55 = call ptr @memcpy(ptr %remote, ptr %svc, i32 44)
  %local53 = getelementptr inbounds %struct.atmsvc_msg, ptr %53, i32 0, i32 5
  %56 = call ptr @memcpy(ptr %local, ptr %local53, i32 44)
  %sap54 = getelementptr inbounds %struct.atmsvc_msg, ptr %53, i32 0, i32 7
  %57 = call ptr @memcpy(ptr %sap, ptr %sap54, i32 40)
  %sap_addr = getelementptr inbounds %struct.atmsvc_msg, ptr %53, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %sap_addr to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sap_addr, align 4
  %conv55 = sext i16 %59 to i32
  %vpi = getelementptr inbounds %struct.atmsvc_msg, ptr %53, i32 0, i32 4, i32 1, i32 1
  %60 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vpi, align 2
  %vci = getelementptr inbounds %struct.atmsvc_msg, ptr %53, i32 0, i32 4, i32 1, i32 2
  %62 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vci, align 4
  %call60 = call i32 @vcc_connect(ptr noundef %newsock, i32 noundef %conv55, i16 noundef signext %61, i32 noundef %63) #8
  call void @consume_skb(ptr noundef nonnull %call20171) #8
  %64 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %65, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end65, label %if.then62

if.then62:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %qos63 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 7
  call void @sigd_enq2(ptr noundef null, i32 noundef 4, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %qos63, i32 noundef %call60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call60)
  %cmp = icmp eq i32 %call60, -11
  %spec.select = select i1 %cmp, i32 -16, i32 %call60
  br label %cleanup.thread

if.end65:                                         ; preds = %if.end50
  call void @_set_bit(i32 noundef 12, ptr noundef %flags52) #8
  call void @sigd_enq(ptr noundef %10, i32 noundef 3, ptr noundef %1, ptr noundef null, ptr noundef null) #8
  %66 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %16, align 8
  call void @prepare_to_wait(ptr noundef %67, ptr noundef nonnull %wait, i32 noundef 2) #8
  %68 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags52, align 4
  %70 = and i32 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool71.not197 = icmp eq i32 %70, 0
  br i1 %tobool71.not197, label %if.end65.for.end_crit_edge, label %if.end65.lor.lhs.false_crit_edge

if.end65.lor.lhs.false_crit_edge:                 ; preds = %if.end65
  br label %lor.lhs.false

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end74.lor.lhs.false_crit_edge, %if.end65.lor.lhs.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %71 = load ptr, ptr @sigd, align 4
  %tobool72.not = icmp eq ptr %71, null
  br i1 %tobool72.not, label %lor.lhs.false.for.end_crit_edge, label %if.end74

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end74:                                         ; preds = %lor.lhs.false
  call void @release_sock(ptr noundef %1) #8
  call void @schedule() #8
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %72 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %16, align 8
  call void @prepare_to_wait(ptr noundef %73, ptr noundef nonnull %wait, i32 noundef 2) #8
  %74 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags52, align 4
  %76 = and i32 %75, 4096
  %tobool71.not = icmp eq i32 %76, 0
  br i1 %tobool71.not, label %if.end74.for.end_crit_edge, label %if.end74.lor.lhs.false_crit_edge

if.end74.lor.lhs.false_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end74.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end65.for.end_crit_edge
  %77 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %16, align 8
  call void @finish_wait(ptr noundef %78, ptr noundef nonnull %wait) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %79 = load ptr, ptr @sigd, align 4
  %tobool77.not = icmp eq ptr %79, null
  br i1 %tobool77.not, label %for.end.cleanup.thread_crit_edge, label %if.end79

for.end.cleanup.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end79:                                         ; preds = %for.end
  %80 = ptrtoint ptr %sk_err81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sk_err81, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %81, label %if.then89 [
    i32 0, label %while.end94
    i32 512, label %cleanup
  ]

if.then89:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %sub92 = sub i32 0, %81
  br label %cleanup.thread

cleanup.thread.loopexit.split.loop.exit200:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %error.1.mux.le = select i1 %tobool45.not, i32 %error.1, i32 -49
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.loopexit.split.loop.exit200, %if.then89, %for.end.cleanup.thread_crit_edge, %if.then62
  %error.2.ph = phi i32 [ %sub92, %if.then89 ], [ %spec.select, %if.then62 ], [ %error.1.mux.le, %cleanup.thread.loopexit.split.loop.exit200 ], [ -49, %for.end.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br label %cleanup95

cleanup:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br label %while.cond

while.end94:                                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  %83 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %newsock, align 128
  br label %cleanup95

cleanup95:                                        ; preds = %while.end94, %cleanup.thread, %if.end.i.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %error.3 = phi i32 [ 0, %while.end94 ], [ %error.2.ph, %cleanup.thread ], [ %call1.i, %if.end.i.cleanup95_crit_edge ], [ -97, %entry.cleanup95_crit_edge ]
  call void @release_sock(ptr noundef %1) #8
  ret i32 %error.3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @svc_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %sockaddr, i32 noundef %peer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  %sk.i3 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i3, align 16
  %remote = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 20
  %local = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 19
  %cond = select i1 %tobool.not, ptr %local, ptr %remote
  %2 = call ptr @memcpy(ptr %sockaddr, ptr %cond, i32 44)
  ret i32 44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_ioctl(ptr noundef %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %ep_ref = alloca i32, align 4
  %sa = alloca %struct.sockaddr_atmsvc, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep_ref) #8
  %0 = ptrtoint ptr %ep_ref to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ep_ref, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %sa) #8
  %1 = call ptr @memset(ptr %sa, i32 255, i32 44)
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk.i, align 16
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %cmd, label %sw.default [
    i32 1074291188, label %sw.bb
    i32 1074029045, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %8 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 44, i32 -1226833920) #11, !srcloc !58
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !56

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sa, i32 noundef 44) #8
  %10 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !59
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sa, ptr noundef %8, i32 noundef 44) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #8, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !56

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i58 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 44, %if.end.if.then11.i.i_crit_edge ], [ 44, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 44, %res.0.i.i58
  %add.ptr.i.i = getelementptr i8, ptr %sa, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i58)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call fastcc i32 @svc_addparty(ptr noundef %sock, ptr noundef nonnull %sa)
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %flags8 = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags8, align 4
  %16 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %sw.bb7.cleanup_crit_edge, label %if.end12

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %sw.bb7
  %17 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #8
  %call.i.i35 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i35, label %if.end12.if.then11.i.i51_crit_edge, label %land.lhs.true.i.i38

if.end12.if.then11.i.i51_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i51

land.lhs.true.i.i38:                              ; preds = %if.end12
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 4, i32 -1226833920) #11, !srcloc !58
  %asmresult.i.i36 = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i36)
  %cmp.i6.i37 = icmp eq i32 %asmresult.i.i36, 0
  br i1 %cmp.i6.i37, label %if.end.i.i48, label %land.lhs.true.i.i38.if.then11.i.i51_crit_edge, !prof !56

land.lhs.true.i.i38.if.then11.i.i51_crit_edge:    ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i51

if.end.i.i48:                                     ; preds = %land.lhs.true.i.i38
  %call.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ep_ref, i32 noundef 4) #8
  %19 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i.i40 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i40 to ptr
  %cpu_domain.i.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i41) #4, !srcloc !59
  %and.i.i.i.i42 = and i32 %21, -13
  %or.i.i.i.i43 = or i32 %and.i.i.i.i42, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i43) #8, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %call1.i.i.i44 = call i32 @arm_copy_from_user(ptr noundef nonnull %ep_ref, ptr noundef %17, i32 noundef 4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #8, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i44)
  %tobool4.not.i.i47 = icmp eq i32 %call1.i.i.i44, 0
  br i1 %tobool4.not.i.i47, label %if.end16, label %if.end.i.i48.if.then11.i.i51_crit_edge, !prof !56

if.end.i.i48.if.then11.i.i51_crit_edge:           ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i51

if.then11.i.i51:                                  ; preds = %if.end.i.i48.if.then11.i.i51_crit_edge, %land.lhs.true.i.i38.if.then11.i.i51_crit_edge, %if.end12.if.then11.i.i51_crit_edge
  %res.0.i.i4663 = phi i32 [ %call1.i.i.i44, %if.end.i.i48.if.then11.i.i51_crit_edge ], [ 4, %if.end12.if.then11.i.i51_crit_edge ], [ 4, %land.lhs.true.i.i38.if.then11.i.i51_crit_edge ]
  %sub.i.i49 = sub i32 4, %res.0.i.i4663
  %add.ptr.i.i50 = getelementptr i8, ptr %ep_ref, i32 %sub.i.i49
  %22 = call ptr @memset(ptr %add.ptr.i.i50, i32 0, i32 %res.0.i.i4663)
  br label %cleanup

if.end16:                                         ; preds = %if.end.i.i48
  %23 = ptrtoint ptr %ep_ref to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ep_ref, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %28 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wait.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %25, align 4
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @autoremove_wake_function, ptr %26, align 4
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %27, ptr %27, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %27, ptr %28, align 4
  %38 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk.i, align 16
  call void @lock_sock_nested(ptr noundef %39, i32 noundef 0) #8
  %flags6.i = getelementptr inbounds %struct.atm_vcc, ptr %39, i32 0, i32 1
  call void @_set_bit(i32 noundef 12, ptr noundef %flags6.i) #8
  call void @sigd_enq2(ptr noundef %39, i32 noundef 15, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %24) #8
  %40 = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 17
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %40, align 8
  call void @prepare_to_wait(ptr noundef %42, ptr noundef nonnull %wait.i, i32 noundef 1) #8
  %43 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags6.i, align 4
  %45 = and i32 %44, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not38.i = icmp eq i32 %45, 0
  br i1 %tobool.not38.i, label %if.end16.for.end.i_crit_edge, label %if.end16.lor.lhs.false.i_crit_edge

if.end16.lor.lhs.false.i_crit_edge:               ; preds = %if.end16
  br label %lor.lhs.false.i

if.end16.for.end.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i.lor.lhs.false.i_crit_edge, %if.end16.lor.lhs.false.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %46 = load ptr, ptr @sigd, align 4
  %tobool10.not.i = icmp eq ptr %46, null
  br i1 %tobool10.not.i, label %lor.lhs.false.i.for.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @schedule() #8
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %40, align 8
  call void @prepare_to_wait(ptr noundef %48, ptr noundef nonnull %wait.i, i32 noundef 1) #8
  %49 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags6.i, align 4
  %51 = and i32 %50, 4096
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.lor.lhs.false.i_crit_edge

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %lor.lhs.false.i.for.end.i_crit_edge, %if.end16.for.end.i_crit_edge
  %52 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %40, align 8
  call void @finish_wait(ptr noundef %53, ptr noundef nonnull %wait.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %54 = load ptr, ptr @sigd, align 4
  %tobool12.not.i = icmp eq ptr %54, null
  br i1 %tobool12.not.i, label %for.end.i.svc_dropparty.exit_crit_edge, label %if.end14.i

for.end.i.svc_dropparty.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %svc_dropparty.exit

if.end14.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_err_soft.i = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 52
  %call.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err_soft.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  call void @llvm.prefetch.p0(ptr %sk_err_soft.i, i32 1, i32 3, i32 1) #8
  %55 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err_soft.i) #8, !srcloc !63
  %asmresult.i.i55 = extractvalue { i32, i32 } %55, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  %sub.i = sub i32 0, %asmresult.i.i55
  br label %svc_dropparty.exit

svc_dropparty.exit:                               ; preds = %if.end14.i, %for.end.i.svc_dropparty.exit_crit_edge
  %error.0.i = phi i32 [ %sub.i, %if.end14.i ], [ -49, %for.end.i.svc_dropparty.exit_crit_edge ]
  call void @release_sock(ptr noundef %39) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 @vcc_ioctl(ptr noundef %sock, i32 noundef %cmd, i32 noundef %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %svc_dropparty.exit, %if.then11.i.i51, %sw.bb7.cleanup_crit_edge, %if.end5, %if.then11.i.i, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ %call18, %sw.default ], [ %error.0.i, %svc_dropparty.exit ], [ %call6, %if.end5 ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i51 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sa) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep_ref) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sk4 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk4, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_listen.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_listen, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @svc_listen.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, ptr noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #8
  %flags9 = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags9, align 4
  %17 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %if.end13, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end13:                                         ; preds = %do.end
  %18 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags9, align 4
  %20 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end13
  call void @_set_bit(i32 noundef 12, ptr noundef %flags9) #8
  %local = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 19
  call void @sigd_enq(ptr noundef %14, i32 noundef 5, ptr noundef null, ptr noundef null, ptr noundef %local) #8
  %21 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %21, align 8
  call void @prepare_to_wait(ptr noundef %23, ptr noundef nonnull %wait, i32 noundef 2) #8
  %24 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags9, align 4
  %26 = and i32 %25, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not52 = icmp eq i32 %26, 0
  br i1 %tobool23.not52, label %if.end18.for.end_crit_edge, label %if.end18.lor.lhs.false_crit_edge

if.end18.lor.lhs.false_crit_edge:                 ; preds = %if.end18
  br label %lor.lhs.false

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end26.lor.lhs.false_crit_edge, %if.end18.lor.lhs.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %27 = load ptr, ptr @sigd, align 4
  %tobool24.not = icmp eq ptr %27, null
  br i1 %tobool24.not, label %lor.lhs.false.for.end_crit_edge, label %if.end26

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end26:                                         ; preds = %lor.lhs.false
  call void @schedule() #8
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %21, align 8
  call void @prepare_to_wait(ptr noundef %29, ptr noundef nonnull %wait, i32 noundef 2) #8
  %30 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags9, align 4
  %32 = and i32 %31, 4096
  %tobool23.not = icmp eq i32 %32, 0
  br i1 %tobool23.not, label %if.end26.for.end_crit_edge, label %if.end26.lor.lhs.false_crit_edge

if.end26.lor.lhs.false_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end18.for.end_crit_edge
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %21, align 8
  call void @finish_wait(ptr noundef %34, ptr noundef nonnull %wait) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %35 = load ptr, ptr @sigd, align 4
  %tobool28.not = icmp eq ptr %35, null
  br i1 %tobool28.not, label %for.end.out_crit_edge, label %if.end30

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 7, ptr noundef %flags9) #8
  call void @vcc_insert_socket(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backlog)
  %cmp = icmp sgt i32 %backlog, 0
  %spec.select = select i1 %cmp, i32 %backlog, i32 32
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 54
  %36 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select, ptr %sk_max_ack_backlog, align 8
  %sk_err = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %37 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %38
  br label %out

out:                                              ; preds = %if.end30, %for.end.out_crit_edge, %if.end13.out_crit_edge, %do.end.out_crit_edge
  %error.0 = phi i32 [ %sub, %if.end30 ], [ -22, %do.end.out_crit_edge ], [ -98, %if.end13.out_crit_edge ], [ -49, %for.end.out_crit_edge ]
  call void @release_sock(ptr noundef %14) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %error.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @svc_shutdown(ptr nocapture noundef readnone %sock, i32 noundef %how) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_setsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !57
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %3 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %optname, label %sw.default [
    i32 1107492904, label %sw.bb
    i32 1107623940, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %level)
  %cmp.not = icmp eq i32 %level, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %optlen)
  %cmp2.not = icmp eq i32 %optlen, 40
  %or.cond = and i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %sw.bb
  %sap = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 8
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %4 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #8
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 40, i32 -1226833920) #11, !srcloc !58
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !56

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sap, i32 noundef 40) #8
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !59
  %and.i.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %call1.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %sap, ptr noundef %4, i32 noundef 40) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end5_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !56

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end5_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i85 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 40, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 40, %res.0.i.i.i.i85
  %add.ptr.i.i.i.i = getelementptr i8, ptr %sap, i32 %sub.i.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i85)
  br label %out

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call ptr @memcpy(ptr %sap, ptr %4, i32 40)
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end5_crit_edge
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #8
  br label %out

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %level)
  %cmp7.not = icmp eq i32 %level, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp9.not = icmp eq i32 %optlen, 4
  %or.cond54 = and i1 %cmp7.not, %cmp9.not
  br i1 %or.cond54, label %if.end11, label %sw.bb6.out_crit_edge

sw.bb6.out_crit_edge:                             ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %sw.bb6
  %src.coerce.fca.0.extract.i.i55 = extractvalue [2 x i32] %optval.coerce, 0
  %11 = inttoptr i32 %src.coerce.fca.0.extract.i.i55 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i56 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i56)
  %bf.cast.i.i.i57 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i56, 0
  br i1 %bf.cast.i.i.i57, label %if.end.i.i80, label %if.end59.i.i.i.i62

if.end59.i.i.i.i62:                               ; preds = %if.end11
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #8
  %call.i.i.i.i63 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i63, label %if.end59.i.i.i.i62.if.then11.i.i.i.i79_crit_edge, label %land.lhs.true.i.i.i.i66

if.end59.i.i.i.i62.if.then11.i.i.i.i79_crit_edge: ; preds = %if.end59.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i79

land.lhs.true.i.i.i.i66:                          ; preds = %if.end59.i.i.i.i62
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 4, i32 -1226833920) #11, !srcloc !58
  %asmresult.i.i.i.i64 = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i64)
  %cmp.i6.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i64, 0
  br i1 %cmp.i6.i.i.i65, label %if.end.i.i.i.i76, label %land.lhs.true.i.i.i.i66.if.then11.i.i.i.i79_crit_edge, !prof !56

land.lhs.true.i.i.i.i66.if.then11.i.i.i.i79_crit_edge: ; preds = %land.lhs.true.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i79

if.end.i.i.i.i76:                                 ; preds = %land.lhs.true.i.i.i.i66
  %call.i.i.i.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value, i32 noundef 4) #8
  %13 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i.i.i.i68 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i.i68 to ptr
  %cpu_domain.i.i.i.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i69) #4, !srcloc !59
  %and.i.i.i.i.i.i70 = and i32 %15, -13
  %or.i.i.i.i.i.i71 = or i32 %and.i.i.i.i.i.i70, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i71) #8, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %call1.i.i.i.i.i72 = call i32 @arm_copy_from_user(ptr noundef nonnull %value, ptr noundef %11, i32 noundef 4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i72)
  %tobool4.not.i.i.i.i75 = icmp eq i32 %call1.i.i.i.i.i72, 0
  br i1 %tobool4.not.i.i.i.i75, label %if.end15thread-pre-split, label %if.end.i.i.i.i76.if.then11.i.i.i.i79_crit_edge, !prof !56

if.end.i.i.i.i76.if.then11.i.i.i.i79_crit_edge:   ; preds = %if.end.i.i.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i79

if.then11.i.i.i.i79:                              ; preds = %if.end.i.i.i.i76.if.then11.i.i.i.i79_crit_edge, %land.lhs.true.i.i.i.i66.if.then11.i.i.i.i79_crit_edge, %if.end59.i.i.i.i62.if.then11.i.i.i.i79_crit_edge
  %res.0.i.i.i.i7490 = phi i32 [ %call1.i.i.i.i.i72, %if.end.i.i.i.i76.if.then11.i.i.i.i79_crit_edge ], [ 4, %if.end59.i.i.i.i62.if.then11.i.i.i.i79_crit_edge ], [ 4, %land.lhs.true.i.i.i.i66.if.then11.i.i.i.i79_crit_edge ]
  %sub.i.i.i.i77 = sub i32 4, %res.0.i.i.i.i7490
  %add.ptr.i.i.i.i78 = getelementptr i8, ptr %value, i32 %sub.i.i.i.i77
  %16 = call ptr @memset(ptr %add.ptr.i.i.i.i78, i32 0, i32 %res.0.i.i.i.i7490)
  br label %out

if.end.i.i80:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %11, align 1
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %value, align 4
  br label %if.end15

if.end15thread-pre-split:                         ; preds = %if.end.i.i.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %value, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15thread-pre-split, %if.end.i.i80
  %21 = phi i32 [ %.pr, %if.end15thread-pre-split ], [ %18, %if.end.i.i80 ]
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %21, label %if.end15.out_crit_edge [
    i32 1, label %if.then17
    i32 0, label %if.then20
  ]

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %flags18 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  call void @_set_bit(i32 noundef 9, ptr noundef %flags18) #8
  br label %out

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %flags21 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags21) #8
  br label %out

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 @vcc_setsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #8
  br label %out

out:                                              ; preds = %sw.default, %if.then20, %if.then17, %if.end15.out_crit_edge, %if.then11.i.i.i.i79, %sw.bb6.out_crit_edge, %if.end5, %if.then11.i.i.i.i, %sw.bb.out_crit_edge
  %error.0 = phi i32 [ %call25, %sw.default ], [ 0, %if.then17 ], [ 0, %if.then20 ], [ 0, %if.end5 ], [ -22, %sw.bb.out_crit_edge ], [ -22, %sw.bb6.out_crit_edge ], [ -22, %if.end15.out_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i.i79 ]
  call void @release_sock(ptr noundef %1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_getsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %shr = ashr i32 %optname, 22
  %and = and i32 %level, 511
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %and)
  %cmp = icmp eq i32 %shr, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 1107492904, i32 %optname)
  %cmp2.not = icmp eq i32 %optname, 1107492904
  %or.cond = and i1 %cmp2.not, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @vcc_getsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #8
  br label %out

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 509) #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !59
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #8, !srcloc !65
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end
  %asmresult4 = extractvalue { i32, i32 } %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %asmresult4)
  %cmp8.not = icmp eq i32 %asmresult4, 40
  br i1 %cmp8.not, label %if.end10, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk1, align 16
  %sap = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 8
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end10.out_crit_edge, label %if.end.i.i

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i:                                       ; preds = %if.end10
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 40, i32 -1226833920) #11, !srcloc !66
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.out_crit_edge

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sap, i32 noundef 40) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %sap, i32 noundef 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool13.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit, %if.end.i.i.out_crit_edge, %if.end10.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %if.then
  %error.0 = phi i32 [ %call, %if.then ], [ -14, %if.end.out_crit_edge ], [ -22, %if.end7.out_crit_edge ], [ -14, %if.end10.out_crit_edge ], [ -14, %if.end.i.i.out_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @release_sock(ptr noundef %1) #8
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_disconnect(ptr noundef %vcc) unnamed_addr #0 align 64 {
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_disconnect.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_disconnect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @svc_disconnect.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %vcc) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags8 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  %13 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags8, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %do.end.if.end20_crit_edge, label %if.then11

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then11:                                        ; preds = %do.end
  call void @sigd_enq(ptr noundef %vcc, i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %16 = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 17
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %16, align 8
  call void @prepare_to_wait(ptr noundef %18, ptr noundef nonnull %wait, i32 noundef 2) #8
  %19 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags8, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not57 = icmp eq i32 %21, 0
  br i1 %tobool15.not57, label %if.then11.lor.lhs.false_crit_edge, label %if.then11.for.end_crit_edge

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then11.lor.lhs.false_crit_edge:                ; preds = %if.then11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18.lor.lhs.false_crit_edge, %if.then11.lor.lhs.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %22 = load ptr, ptr @sigd, align 4
  %tobool16.not = icmp eq ptr %22, null
  br i1 %tobool16.not, label %lor.lhs.false.for.end_crit_edge, label %if.end18

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end18:                                         ; preds = %lor.lhs.false
  call void @schedule() #8
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %16, align 8
  call void @prepare_to_wait(ptr noundef %24, ptr noundef nonnull %wait, i32 noundef 2) #8
  %25 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags8, align 4
  %27 = and i32 %26, 32
  %tobool15.not = icmp eq i32 %27, 0
  br i1 %tobool15.not, label %if.end18.lor.lhs.false_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end18.lor.lhs.false_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.then11.for.end_crit_edge
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %16, align 8
  call void @finish_wait(ptr noundef %29, ptr noundef nonnull %wait) #8
  br label %if.end20

if.end20:                                         ; preds = %for.end, %do.end.if.end20_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 8
  %call2159 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #8
  %cmp.not60 = icmp eq ptr %call2159, null
  br i1 %cmp.not60, label %if.end20.while.end_crit_edge, label %while.body.lr.ph

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end20
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %do.end37.while.body_crit_edge, %while.body.lr.ph
  %call2161 = phi ptr [ %call2159, %while.body.lr.ph ], [ %call21, %do.end37.while.body_crit_edge ]
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call2161, i32 0, i32 20
  %30 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %truesize, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #8
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %31, ptr elementtype(i32) %sk_backlog.i) #8, !srcloc !67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_disconnect.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_disconnect, %if.then34)) #8
          to label %do.end37 [label %if.then34], !srcloc !55

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @svc_disconnect.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %while.body
  call void @sigd_enq2(ptr noundef null, i32 noundef 4, ptr noundef %vcc, ptr noundef null, ptr noundef null, ptr noundef %qos, i32 noundef 0) #8
  call void @consume_skb(ptr noundef nonnull %call2161) #8
  %call21 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #8
  %cmp.not = icmp eq ptr %call21, null
  br i1 %cmp.not, label %do.end37.while.end_crit_edge, label %do.end37.while.body_crit_edge

do.end37.while.body_crit_edge:                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end37.while.end_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end37.while.end_crit_edge, %if.end20.while.end_crit_edge
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags8) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sigd_enq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_connect(ptr noundef, i32 noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_addparty(ptr nocapture noundef readonly %sock, ptr noundef %sockaddr) unnamed_addr #0 align 64 {
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sk5 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk5, align 16
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #8
  %flags7 = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 1
  call void @_set_bit(i32 noundef 12, ptr noundef %flags7) #8
  call void @sigd_enq(ptr noundef %14, i32 noundef 14, ptr noundef null, ptr noundef null, ptr noundef %sockaddr) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_addparty.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_addparty, %if.then12)) #8
          to label %do.end [label %if.then12], !srcloc !55

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @svc_addparty.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %entry
  %15 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %15, align 8
  call void @prepare_to_wait(ptr noundef %17, ptr noundef nonnull %wait, i32 noundef 1) #8
  %18 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags7, align 4
  %20 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not2 = icmp eq i32 %20, 0
  br i1 %tobool17.not2, label %do.end.for.end_crit_edge, label %do.end.lor.lhs.false_crit_edge

do.end.lor.lhs.false_crit_edge:                   ; preds = %do.end
  br label %lor.lhs.false

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end20.lor.lhs.false_crit_edge, %do.end.lor.lhs.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sigd to i32))
  %21 = load ptr, ptr @sigd, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %lor.lhs.false.for.end_crit_edge, label %if.end20

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end20:                                         ; preds = %lor.lhs.false
  call void @schedule() #8
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %15, align 8
  call void @prepare_to_wait(ptr noundef %23, ptr noundef nonnull %wait, i32 noundef 1) #8
  %24 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags7, align 4
  %26 = and i32 %25, 4096
  %tobool17.not = icmp eq i32 %26, 0
  br i1 %tobool17.not, label %if.end20.for.end_crit_edge, label %if.end20.lor.lhs.false_crit_edge

if.end20.lor.lhs.false_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %do.end.for.end_crit_edge
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %15, align 8
  call void @finish_wait(ptr noundef %28, ptr noundef nonnull %wait) #8
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 52
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err_soft, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @llvm.prefetch.p0(ptr %sk_err_soft, i32 1, i32 3, i32 1) #8
  %29 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err_soft) #8, !srcloc !63
  %asmresult.i = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !69
  %sub = sub i32 0, %asmresult.i
  call void @release_sock(ptr noundef %14) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_insert_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcc_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !5, !7, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !38, !40, !41, !42, !43, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{!"sp"}
!1 = !{ptr @svc_family_ops, !2, !"svc_family_ops", i1 false, i1 false}
!2 = !{!"../net/atm/svc.c", i32 673, i32 38}
!3 = !{ptr @svc_proto_ops, !4, !"svc_proto_ops", i1 false, i1 false}
!4 = !{!"../net/atm/svc.c", i32 629, i32 31}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/atm/svc.c", i32 82, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @svc_release.__UNIQUE_ID_ddebug459, !6, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!11 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/atm/svc.c", i32 52, i32 2}
!14 = !{ptr @svc_disconnect.__UNIQUE_ID_ddebug457, !13, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/atm/svc.c", i32 67, i32 3}
!17 = !{ptr @svc_disconnect.__UNIQUE_ID_ddebug458, !16, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/atm/svc.c", i32 160, i32 2}
!21 = !{ptr @svc_connect.__UNIQUE_ID_ddebug460, !20, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/atm/svc.c", i32 222, i32 4}
!24 = !{ptr @svc_connect.__UNIQUE_ID_ddebug461, !23, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/atm/svc.c", i32 340, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @svc_accept.__UNIQUE_ID_ddebug463, !27, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!33 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/atm/svc.c", i32 542, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @svc_addparty.__UNIQUE_ID_ddebug464, !39, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!42 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/atm/svc.c", i32 289, i32 2}
!45 = !{ptr @svc_listen.__UNIQUE_ID_ddebug462, !44, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148199895, i64 2148199900, i64 2148199913, i64 2148199957, i64 2148199991, i64 2148200012}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!"auto-init"}
!58 = !{i64 2152224708, i64 2152224733}
!59 = !{i64 4720263}
!60 = !{i64 4720460}
!61 = !{i64 2152205693}
!62 = !{i64 2156914736}
!63 = !{i64 879778, i64 879795, i64 879819, i64 879845, i64 879863}
!64 = !{i64 2156915079}
!65 = !{i64 2156905952, i64 2156906232, i64 2156906566, i64 2156906900}
!66 = !{i64 2152225389, i64 2152225414}
!67 = !{i64 2148375475, i64 2148375501, i64 2148375530, i64 2148375564, i64 2148375595, i64 2148375618}
!68 = !{i64 2156913055}
!69 = !{i64 2156913398}
