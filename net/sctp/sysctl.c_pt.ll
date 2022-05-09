; ModuleID = '/llk/IR_all_yes/net/sctp/sysctl.c_pt.bc'
source_filename = "../net/sctp/sysctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.151, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.151 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.92, i32, %struct.spinlock }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.142, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.143, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.144, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.138, [0 x i32], %union.anon.139, i16, i16, %union.anon.140, %struct.refcount_struct, [0 x i32], %union.anon.141 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.106 }
%union.anon.106 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { %struct.hlist_node }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.142 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.143 = type { ptr }
%union.anon.144 = type { ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.149 }
%union.anon.149 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.sctp_bind_addr = type { i16, %struct.list_head }

@sctp_net_table = internal global { [35 x %struct.ctl_table], [308 x i8] } { [35 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr getelementptr (i8, ptr @init_net, i64 2632), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @timer_max }, %struct.ctl_table { ptr @.str.2, ptr getelementptr (i8, ptr @init_net, i64 2636), i32 4, i16 420, ptr null, ptr @proc_sctp_do_rto_min, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @init_net, i64 2640) }, %struct.ctl_table { ptr @.str.3, ptr getelementptr (i8, ptr @init_net, i64 2640), i32 4, i16 420, ptr null, ptr @proc_sctp_do_rto_max, ptr null, ptr getelementptr (i8, ptr @init_net, i64 2636), ptr @timer_max }, %struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @init_net, i64 2644), i32 4, i16 420, ptr null, ptr @proc_sctp_do_alpha_beta, ptr null, ptr @rto_alpha_min, ptr @rto_alpha_max }, %struct.ctl_table { ptr @.str.5, ptr getelementptr (i8, ptr @init_net, i64 2648), i32 4, i16 420, ptr null, ptr @proc_sctp_do_alpha_beta, ptr null, ptr @rto_beta_min, ptr @rto_beta_max }, %struct.ctl_table { ptr @.str.6, ptr getelementptr (i8, ptr @init_net, i64 2652), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.7, ptr getelementptr (i8, ptr @init_net, i64 2656), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr getelementptr (i8, ptr @init_net, i64 2660), i32 8, i16 420, ptr null, ptr @proc_sctp_do_hmac_alg, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.9, ptr getelementptr (i8, ptr @init_net, i64 2664), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @timer_max }, %struct.ctl_table { ptr @.str.10, ptr getelementptr (i8, ptr @init_net, i64 2668), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @sack_timer_min, ptr @sack_timer_max }, %struct.ctl_table { ptr @.str.11, ptr getelementptr (i8, ptr @init_net, i64 2672), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @timer_max }, %struct.ctl_table { ptr @.str.12, ptr getelementptr (i8, ptr @init_net, i64 2680), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.13, ptr getelementptr (i8, ptr @init_net, i64 2684), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.14, ptr getelementptr (i8, ptr @init_net, i64 2688), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.15, ptr getelementptr (i8, ptr @init_net, i64 2692), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @init_net, i64 2696) }, %struct.ctl_table { ptr @.str.16, ptr getelementptr (i8, ptr @init_net, i64 2696), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @init_net, i64 2692), ptr @ps_retrans_max }, %struct.ctl_table { ptr @.str.17, ptr getelementptr (i8, ptr @init_net, i64 2708), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.18, ptr getelementptr (i8, ptr @init_net, i64 2712), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr getelementptr (i8, ptr @init_net, i64 2716), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.20, ptr getelementptr (i8, ptr @init_net, i64 2720), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.21, ptr getelementptr (i8, ptr @init_net, i64 2724), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr getelementptr (i8, ptr @init_net, i64 2728), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr getelementptr (i8, ptr @init_net, i64 2732), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr getelementptr (i8, ptr @init_net, i64 2736), i32 4, i16 420, ptr null, ptr @proc_sctp_do_auth, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.25, ptr getelementptr (i8, ptr @init_net, i64 2740), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr getelementptr (i8, ptr @init_net, i64 2744), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr getelementptr (i8, ptr @init_net, i64 2676), i32 4, i16 420, ptr null, ptr @proc_sctp_do_probe_interval, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr getelementptr (i8, ptr @init_net, i64 2464), i32 4, i16 420, ptr null, ptr @proc_sctp_do_udp_port, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @udp_port_max }, %struct.ctl_table { ptr @.str.29, ptr getelementptr (i8, ptr @init_net, i64 2468), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @udp_port_max }, %struct.ctl_table { ptr @.str.30, ptr getelementptr (i8, ptr @init_net, i64 2748), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @addr_scope_max }, %struct.ctl_table { ptr @.str.31, ptr getelementptr (i8, ptr @init_net, i64 2752), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @rwnd_scale_max }, %struct.ctl_table { ptr @.str.32, ptr getelementptr (i8, ptr @init_net, i64 2756), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @max_autoclose_min, ptr @max_autoclose_max }, %struct.ctl_table { ptr @.str.33, ptr getelementptr (i8, ptr @init_net, i64 2700), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr getelementptr (i8, ptr @init_net, i64 2704), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @pf_expose_max }, %struct.ctl_table zeroinitializer], [308 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/sctp\00", [23 x i8] zeroinitializer }, align 32
@sctp_table = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.41, ptr @sysctl_sctp_mem, i32 12, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.42, ptr @sysctl_sctp_rmem, i32 12, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.43, ptr @sysctl_sctp_wmem, i32 12, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sctp_sysctl_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rto_initial\00", [20 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@timer_max = internal global { i32, [28 x i8] } { i32 86400000, [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rto_min\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rto_max\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rto_alpha_exp_divisor\00", [42 x i8] zeroinitializer }, align 32
@rto_alpha_min = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rto_alpha_max = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rto_beta_exp_divisor\00", [43 x i8] zeroinitializer }, align 32
@rto_beta_min = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rto_beta_max = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max_burst\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cookie_preserve_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cookie_hmac_alg\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"valid_cookie_life\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sack_timeout\00", [19 x i8] zeroinitializer }, align 32
@sack_timer_min = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@sack_timer_max = internal global { i32, [28 x i8] } { i32 500, [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hb_interval\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"association_max_retrans\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"path_max_retrans\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max_init_retransmits\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pf_retrans\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ps_retrans\00", [21 x i8] zeroinitializer }, align 32
@ps_retrans_max = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sndbuf_policy\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rcvbuf_policy\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"default_auto_asconf\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"addip_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"addip_noauth_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prsctp_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reconf_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"auth_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"intl_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecn_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"plpmtud_probe_interval\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"udp_port\00", [23 x i8] zeroinitializer }, align 32
@udp_port_max = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"encap_port\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"addr_scope_policy\00", [46 x i8] zeroinitializer }, align 32
@addr_scope_max = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rwnd_update_shift\00", [46 x i8] zeroinitializer }, align 32
@rwnd_scale_max = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_autoclose\00", [18 x i8] zeroinitializer }, align 32
@max_autoclose_min = internal global { i32, [28 x i8] } zeroinitializer, align 32
@max_autoclose_max = internal global { i32, [28 x i8] } { i32 21474836, [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pf_enable\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pf_expose\00", [22 x i8] zeroinitializer }, align 32
@pf_expose_max = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@proc_sctp_do_alpha_beta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@proc_sctp_do_alpha_beta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.37, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014sctp: Changing rto_alpha or rto_beta may lead to suboptimal rtt/srtt estimations!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"proc_sctp_do_alpha_beta\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/sctp/sysctl.c\00", [46 x i8] zeroinitializer }, align 32
@proc_sctp_do_alpha_beta._entry_ptr = internal global ptr @proc_sctp_do_alpha_beta._entry, section ".printk_index", align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sctp_mem\00", [23 x i8] zeroinitializer }, align 32
@sysctl_sctp_mem = external dso_local global [3 x i32], align 4
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sctp_rmem\00", [22 x i8] zeroinitializer }, align 32
@sysctl_sctp_rmem = external dso_local global [3 x i32], align 4
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sctp_wmem\00", [22 x i8] zeroinitializer }, align 32
@sysctl_sctp_wmem = external dso_local global [3 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1852796517, i64 1936220465]
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"sctp_net_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 87, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 589, i32 53 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"sctp_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 61, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"sctp_sysctl_header\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 606, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 89, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"timer_max\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 28, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 98, i32 15 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 107, i32 15 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 116, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"rto_alpha_min\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 33, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"rto_alpha_max\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 35, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 125, i32 15 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"rto_beta_min\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 34, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"rto_beta_max\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 36, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 134, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 143, i32 15 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 150, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 157, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 166, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"sack_timer_min\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 29, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"sack_timer_max\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 30, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 175, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 184, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 193, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 202, i32 15 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 211, i32 15 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 220, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"ps_retrans_max\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 38, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 229, i32 15 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 236, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 243, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 250, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 257, i32 15 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 264, i32 15 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 271, i32 15 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 278, i32 15 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 285, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 292, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 299, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 306, i32 15 }
@___asan_gen_.164 = private unnamed_addr constant [13 x i8] c"udp_port_max\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 39, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 315, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 324, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant [15 x i8] c"addr_scope_max\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 31, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 333, i32 15 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"rwnd_scale_max\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 32, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 342, i32 15 }
@___asan_gen_.185 = private unnamed_addr constant [18 x i8] c"max_autoclose_min\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 41, i32 22 }
@___asan_gen_.188 = private unnamed_addr constant [18 x i8] c"max_autoclose_max\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 42, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 351, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 358, i32 15 }
@___asan_gen_.197 = private unnamed_addr constant [14 x i8] c"pf_expose_max\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 37, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 475, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 376, i32 15 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 393, i32 21 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 399, i32 21 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 63, i32 15 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 70, i32 15 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [21 x i8] c"../net/sctp/sysctl.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 77, i32 15 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @proc_sctp_do_alpha_beta._entry, ptr @proc_sctp_do_alpha_beta._entry_ptr, ptr @sctp_net_table, ptr @.str, ptr @sctp_table, ptr @sctp_sysctl_header, ptr @.str.1, ptr @timer_max, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rto_alpha_min, ptr @rto_alpha_max, ptr @.str.5, ptr @rto_beta_min, ptr @rto_beta_max, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sack_timer_min, ptr @sack_timer_max, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ps_retrans_max, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @udp_port_max, ptr @.str.29, ptr @.str.30, ptr @addr_scope_max, ptr @.str.31, ptr @rwnd_scale_max, ptr @.str.32, ptr @max_autoclose_min, ptr @max_autoclose_max, ptr @.str.33, ptr @.str.34, ptr @pf_expose_max, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_net_table to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_sysctl_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rto_alpha_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rto_alpha_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rto_beta_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rto_beta_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sack_timer_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sack_timer_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_retrans_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_port_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_scope_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwnd_scale_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_autoclose_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_autoclose_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_expose_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sctp_do_alpha_beta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_sysctl_net_register(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef nonnull @sctp_net_table, i32 noundef 1260, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %data20 = getelementptr %struct.ctl_table, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data20, align 4
  %tobool1.not21 = icmp eq ptr %1, null
  br i1 %tobool1.not21, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sctp = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38
  %sub.ptr.lhs.cast = ptrtoint ptr %sctp to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 38) to i32)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %2 = phi ptr [ %1, %for.body.lr.ph ], [ %5, %for.body.for.body_crit_edge ]
  %data23 = phi ptr [ %data20, %for.body.lr.ph ], [ %data, %for.body.for.body_crit_edge ]
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 %sub.ptr.sub
  %3 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %data23, align 4
  %inc = add i32 %i.022, 1
  %data = getelementptr %struct.ctl_table, ptr %call, i32 %inc, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call4 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str, ptr noundef nonnull %call) #7
  %sysctl_header = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 2
  %6 = ptrtoint ptr %sysctl_header to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %sysctl_header, align 8
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then8, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_sysctl_net_unregister(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_header = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 2
  %0 = ptrtoint ptr %sysctl_header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl_header, align 8
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_sysctl_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str, ptr noundef nonnull @sctp_table) #7
  store ptr %call, ptr @sctp_sysctl_header, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_sysctl_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sctp_sysctl_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sctp_do_rto_min(ptr nocapture noundef readonly %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %tbl = alloca %struct.ctl_table, align 4
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 7
  %8 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 8
  %12 = ptrtoint ptr %extra2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extra2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #7
  %16 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %new_value, align 4, !annotation !133
  %17 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 2
  %18 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %maxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %rto_min = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 15
  %spec.select = select i1 %tobool.not, ptr %rto_min, ptr %new_value
  %19 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select, ptr %19, align 4
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %entry
  %21 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp5 = icmp ugt i32 %22, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %11)
  %cmp6 = icmp ult i32 %22, %11
  %or.cond22 = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond22, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %rto_min10 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 15
  %23 = ptrtoint ptr %rto_min10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rto_min10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4.cleanup_crit_edge ], [ 0, %if.end8 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sctp_do_rto_max(ptr nocapture noundef readonly %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %tbl = alloca %struct.ctl_table, align 4
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 7
  %8 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 8
  %12 = ptrtoint ptr %extra2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extra2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #7
  %16 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %new_value, align 4, !annotation !133
  %17 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 2
  %18 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %maxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %rto_max = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 16
  %spec.select = select i1 %tobool.not, ptr %rto_max, ptr %new_value
  %19 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select, ptr %19, align 4
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %entry
  %21 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp5 = icmp ugt i32 %22, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %11)
  %cmp6 = icmp ult i32 %22, %11
  %or.cond22 = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond22, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %rto_max10 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 16
  %23 = ptrtoint ptr %rto_max10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rto_max10, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4.cleanup_crit_edge ], [ 0, %if.end8 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sctp_do_alpha_beta(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.end:                                         ; preds = %entry
  %.b18 = load i1, ptr @proc_sctp_do_alpha_beta.__already_done, align 1
  br i1 %.b18, label %land.end.if.end14_crit_edge, label %if.then6, !prof !134

land.end.if.end14_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @proc_sctp_do_alpha_beta.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %land.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %call15 = tail call i32 @proc_dointvec_minmax(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sctp_do_hmac_alg(ptr nocapture noundef readnone %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %tbl = alloca %struct.ctl_table, align 4
  %tmp = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #7
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %tmp, align 8
  %9 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sctp_hmac_alg = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 21
  %10 = ptrtoint ptr %sctp_hmac_alg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sctp_hmac_alg, align 4
  %tobool1.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool1.not, ptr @.str.38, ptr %11
  %call4 = tail call i32 @strlen(ptr noundef %spec.select) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %tmp.sink = phi ptr [ %spec.select, %if.else ], [ %tmp, %entry.if.end_crit_edge ]
  %.sink = phi i32 [ %call4, %if.else ], [ 8, %entry.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tmp.sink, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  %call6 = call i32 @proc_dostring(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then8, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then8:                                         ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %tmp, ptr noundef nonnull dereferenceable(3) @.str.39, i32 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.then12, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %sctp_hmac_alg14 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 21
  %16 = ptrtoint ptr %sctp_hmac_alg14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.39, ptr %sctp_hmac_alg14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then8.if.end15_crit_edge
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %lhsv = load i32, ptr %tmp, align 8
  %18 = zext i32 %lhsv to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %lhsv, label %if.end29 [
    i32 1936220465, label %if.end15.if.end29.thread.sink.split_crit_edge
    i32 1852796517, label %if.then26
  ]

if.end15.if.end29.thread.sink.split_crit_edge:    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread.sink.split

if.then26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread.sink.split

if.end29:                                         ; preds = %if.end15
  br i1 %tobool11.not, label %if.end29.if.end29.thread_crit_edge, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end29.if.end29.thread_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread

if.end29.thread.sink.split:                       ; preds = %if.then26, %if.end15.if.end29.thread.sink.split_crit_edge
  %.str.40.sink = phi ptr [ null, %if.then26 ], [ @.str.40, %if.end15.if.end29.thread.sink.split_crit_edge ]
  %sctp_hmac_alg21 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 21
  %19 = ptrtoint ptr %sctp_hmac_alg21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.str.40.sink, ptr %sctp_hmac_alg21, align 4
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.end29.thread.sink.split, %if.end29.if.end29.thread_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.end29.thread, %if.end29.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.if.end33_crit_edge ], [ 0, %if.end29.thread ], [ -22, %if.end29.if.end33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sctp_do_auth(ptr nocapture noundef readnone %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %tbl = alloca %struct.ctl_table, align 4
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #7
  %8 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %new_value, align 4, !annotation !133
  %9 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 2
  %10 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %maxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %auth_enable = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 40
  %spec.select = select i1 %tobool.not, ptr %auth_enable, ptr %new_value
  %11 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.select, ptr %11, align 4
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then4, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_sock = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 3
  %13 = ptrtoint ptr %ctl_sock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl_sock, align 4
  %15 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %new_value, align 4
  %auth_enable7 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 40
  %17 = ptrtoint ptr %auth_enable7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %auth_enable7, align 8
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #7
  %18 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %new_value, align 4
  %conv = trunc i32 %19 to i8
  %ep = getelementptr inbounds %struct.sctp_sock, ptr %14, i32 0, i32 5
  %20 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep, align 8
  %auth_enable9 = getelementptr inbounds %struct.sctp_endpoint, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %auth_enable9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %auth_enable9, align 2
  %bf.value = shl i8 %conv, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %auth_enable9, align 2
  call void @release_sock(ptr noundef %14) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sctp_do_probe_interval(ptr nocapture noundef readnone %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %tbl = alloca %struct.ctl_table, align 4
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #7
  %8 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %new_value, align 4, !annotation !133
  %9 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 2
  %10 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %maxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %probe_interval = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 25
  %spec.select = select i1 %tobool.not, ptr %probe_interval, ptr %new_value
  %11 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.select, ptr %11, align 4
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %entry
  %13 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %14)
  %cmp7 = icmp slt i32 %14, 5000
  %or.cond20 = and i1 %tobool5.not, %cmp7
  br i1 %or.cond20, label %if.then4.cleanup_crit_edge, label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %probe_interval11 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 25
  %15 = ptrtoint ptr %probe_interval11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %probe_interval11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4.cleanup_crit_edge ], [ 0, %if.end9 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sctp_do_udp_port(ptr nocapture noundef readonly %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %tbl = alloca %struct.ctl_table, align 4
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 7
  %8 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 8
  %12 = ptrtoint ptr %extra2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extra2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #7
  %16 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %new_value, align 4, !annotation !133
  %17 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 2
  %18 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %maxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %udp_port = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 6
  %spec.select = select i1 %tobool.not, ptr %udp_port, ptr %new_value
  %19 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select, ptr %19, align 4
  %call2 = call i32 @proc_dointvec(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then4, label %entry.cleanup26_crit_edge

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.then4:                                         ; preds = %entry
  %ctl_sock = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 3
  %21 = ptrtoint ptr %ctl_sock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctl_sock, align 4
  %23 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %15)
  %cmp6 = icmp ugt i32 %24, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %11)
  %cmp7 = icmp ult i32 %24, %11
  %or.cond45 = select i1 %cmp6, i1 true, i1 %cmp7
  br i1 %or.cond45, label %if.then4.cleanup26_crit_edge, label %if.end9

if.then4.cleanup26_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.end9:                                          ; preds = %if.then4
  %udp_port11 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 38, i32 6
  %25 = ptrtoint ptr %udp_port11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %udp_port11, align 8
  call void @sctp_udp_sock_stop(ptr noundef %7) #7
  %26 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %new_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  br i1 %tobool12.not, label %if.end9.cleanup.thread_crit_edge, label %if.then13

if.end9.cleanup.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then13:                                        ; preds = %if.end9
  %call14 = call i32 @sctp_udp_sock_start(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.cleanup.thread_crit_edge, label %if.then16

if.then13.cleanup.thread_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %udp_port11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %udp_port11, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then16, %if.then13.cleanup.thread_crit_edge, %if.end9.cleanup.thread_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then16 ], [ 0, %if.then13.cleanup.thread_crit_edge ], [ 0, %if.end9.cleanup.thread_crit_edge ]
  call void @lock_sock_nested(ptr noundef %22, i32 noundef 0) #7
  %29 = ptrtoint ptr %udp_port11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %udp_port11, align 8
  %conv = trunc i32 %30 to i16
  %udp_port24 = getelementptr inbounds %struct.sctp_sock, ptr %22, i32 0, i32 16
  %31 = ptrtoint ptr %udp_port24 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %udp_port24, align 4
  call void @release_sock(ptr noundef %22) #7
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup.thread, %if.then4.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.1 = phi i32 [ -22, %if.then4.cleanup26_crit_edge ], [ %call2, %entry.cleanup26_crit_edge ], [ %ret.0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_udp_sock_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_udp_sock_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/sysctl.c", i32 589, i32 53}
!2 = !{ptr @sctp_sysctl_header, !3, !"sctp_sysctl_header", i1 false, i1 false}
!3 = !{!"../net/sctp/sysctl.c", i32 606, i32 33}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/sctp/sysctl.c", i32 89, i32 15}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sctp/sysctl.c", i32 98, i32 15}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sctp/sysctl.c", i32 107, i32 15}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sctp/sysctl.c", i32 116, i32 15}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sctp/sysctl.c", i32 125, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/sctp/sysctl.c", i32 134, i32 15}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sctp/sysctl.c", i32 143, i32 15}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sctp/sysctl.c", i32 150, i32 15}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/sctp/sysctl.c", i32 157, i32 15}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sctp/sysctl.c", i32 166, i32 15}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/sctp/sysctl.c", i32 175, i32 15}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sctp/sysctl.c", i32 184, i32 15}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sctp/sysctl.c", i32 193, i32 15}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sctp/sysctl.c", i32 202, i32 15}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sctp/sysctl.c", i32 211, i32 15}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/sctp/sysctl.c", i32 220, i32 15}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/sctp/sysctl.c", i32 229, i32 15}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/sctp/sysctl.c", i32 236, i32 15}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/sctp/sysctl.c", i32 243, i32 15}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/sctp/sysctl.c", i32 250, i32 15}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/sctp/sysctl.c", i32 257, i32 15}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/sctp/sysctl.c", i32 264, i32 15}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/sctp/sysctl.c", i32 271, i32 15}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sctp/sysctl.c", i32 278, i32 15}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/sctp/sysctl.c", i32 285, i32 15}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/sctp/sysctl.c", i32 292, i32 15}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/sctp/sysctl.c", i32 299, i32 15}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/sctp/sysctl.c", i32 306, i32 15}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sctp/sysctl.c", i32 315, i32 15}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/sctp/sysctl.c", i32 324, i32 15}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/sctp/sysctl.c", i32 333, i32 15}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/sctp/sysctl.c", i32 342, i32 15}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/sctp/sysctl.c", i32 351, i32 15}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/sctp/sysctl.c", i32 358, i32 15}
!72 = !{ptr @sctp_net_table, !73, !"sctp_net_table", i1 false, i1 false}
!73 = !{!"../net/sctp/sysctl.c", i32 87, i32 25}
!74 = !{ptr @timer_max, !75, !"timer_max", i1 false, i1 false}
!75 = !{!"../net/sctp/sysctl.c", i32 28, i32 12}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../net/sctp/sysctl.c", i32 475, i32 3}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @proc_sctp_do_alpha_beta._entry, !77, !"_entry", i1 false, i1 false}
!82 = !{ptr @proc_sctp_do_alpha_beta._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @rto_alpha_min, !84, !"rto_alpha_min", i1 false, i1 false}
!84 = !{!"../net/sctp/sysctl.c", i32 33, i32 12}
!85 = !{ptr @rto_alpha_max, !86, !"rto_alpha_max", i1 false, i1 false}
!86 = !{!"../net/sctp/sysctl.c", i32 35, i32 12}
!87 = !{ptr @rto_beta_min, !88, !"rto_beta_min", i1 false, i1 false}
!88 = !{!"../net/sctp/sysctl.c", i32 34, i32 12}
!89 = !{ptr @rto_beta_max, !90, !"rto_beta_max", i1 false, i1 false}
!90 = !{!"../net/sctp/sysctl.c", i32 36, i32 12}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/sctp/sysctl.c", i32 376, i32 15}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/sctp/sysctl.c", i32 393, i32 21}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/sctp/sysctl.c", i32 399, i32 21}
!97 = !{ptr @sack_timer_min, !98, !"sack_timer_min", i1 false, i1 false}
!98 = !{!"../net/sctp/sysctl.c", i32 29, i32 12}
!99 = !{ptr @sack_timer_max, !100, !"sack_timer_max", i1 false, i1 false}
!100 = !{!"../net/sctp/sysctl.c", i32 30, i32 12}
!101 = !{ptr @ps_retrans_max, !102, !"ps_retrans_max", i1 false, i1 false}
!102 = !{!"../net/sctp/sysctl.c", i32 38, i32 12}
!103 = !{ptr @udp_port_max, !104, !"udp_port_max", i1 false, i1 false}
!104 = !{!"../net/sctp/sysctl.c", i32 39, i32 12}
!105 = !{ptr @addr_scope_max, !106, !"addr_scope_max", i1 false, i1 false}
!106 = !{!"../net/sctp/sysctl.c", i32 31, i32 12}
!107 = !{ptr @rwnd_scale_max, !108, !"rwnd_scale_max", i1 false, i1 false}
!108 = !{!"../net/sctp/sysctl.c", i32 32, i32 12}
!109 = !{ptr @max_autoclose_min, !110, !"max_autoclose_min", i1 false, i1 false}
!110 = !{!"../net/sctp/sysctl.c", i32 41, i32 22}
!111 = !{ptr @max_autoclose_max, !112, !"max_autoclose_max", i1 false, i1 false}
!112 = !{!"../net/sctp/sysctl.c", i32 42, i32 22}
!113 = !{ptr @pf_expose_max, !114, !"pf_expose_max", i1 false, i1 false}
!114 = !{!"../net/sctp/sysctl.c", i32 37, i32 12}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/sctp/sysctl.c", i32 63, i32 15}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/sctp/sysctl.c", i32 70, i32 15}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/sctp/sysctl.c", i32 77, i32 15}
!121 = !{ptr @sctp_table, !122, !"sctp_table", i1 false, i1 false}
!122 = !{!"../net/sctp/sysctl.c", i32 61, i32 25}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{!"branch_weights", i32 2000, i32 1}
