; ModuleID = '/llk/IR_all_yes/kernel/taskstats.c_pt.bc'
source_filename = "../kernel/taskstats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.listener_list = type { %struct.rw_semaphore, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.28 }
%union.anon.28 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.103 }
%union.anon.103 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.76, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.76 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.95, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%union.anon = type { i32 }
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
%union.anon.95 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.taskstats = type { i16, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8], i8, [3 x i8], [4 x i8], i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { %union.anon.56, %union.anon.59, %union.anon.60, [48 x i8], %union.anon.61, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.63, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, ptr, %union.anon.58 }
%union.anon.58 = type { ptr }
%union.anon.59 = type { ptr }
%union.anon.60 = type { i64 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { i32, ptr }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.65, i32, i32, i32, i16, i16, %union.anon.67, i32, %union.anon.68, %union.anon.69, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.65 = type { i32 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i16 }
%struct.listener = type { %struct.list_head, i32, i8 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@family_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@listener_array = weak dso_local global %struct.listener_list zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"taskstats\00", [22 x i8] zeroinitializer }, align 32
@taskstats_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@taskstats_init_early.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(per_cpu(listener_array, i).sem)\00", [62 x i8] zeroinitializer }, align 32
@__initcall__kmod_taskstats__299_698_taskstats_init7 = internal global ptr @taskstats_init, section ".initcall7.init", align 4
@__pcpu_unique_taskstats_seqnum = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@taskstats_seqnum = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_unique_listener_array = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"TASKSTATS\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0, i8 2, i8 0, i8 0, ptr null, ptr null, ptr null, ptr @taskstats_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@taskstats_ops = internal constant { [2 x %struct.genl_ops], [40 x i8] } { [2 x %struct.genl_ops] [%struct.genl_ops { ptr @taskstats_user_cmd, ptr null, ptr null, ptr null, ptr @taskstats_cmd_get_policy, i32 4, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @cgroupstats_user_cmd, ptr null, ptr null, ptr null, ptr @cgroupstats_cmd_get_policy, i32 1, i8 4, i8 0, i8 0, i8 3 }], [40 x i8] zeroinitializer }, align 32
@taskstats_cmd_get_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.103 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.103 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.103 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.103 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@cgroupstats_cmd_get_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.103 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@taskstats_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016registered taskstats version %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"taskstats_init\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/taskstats.c\00", [45 x i8] zeroinitializer }, align 32
@taskstats_init._entry_ptr = internal global ptr @taskstats_init._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"family_registered\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 674, i32 20 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"taskstats_cache\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 33, i32 20 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 677, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"taskstats_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 643, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"taskstats_cmd_get_policy\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 37, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"cgroupstats_cmd_get_policy\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 43, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 991, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [22 x i8] c"../kernel/taskstats.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 690, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_taskstats__299_698_taskstats_init7, ptr @taskstats_init._entry, ptr @taskstats_init._entry_ptr, ptr @family_registered, ptr @.str, ptr @taskstats_cache, ptr @taskstats_init_early.__key, ptr @.str.1, ptr @taskstats_ops, ptr @taskstats_cmd_get_policy, ptr @cgroupstats_cmd_get_policy, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @family_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taskstats_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taskstats_init_early.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taskstats_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taskstats_cmd_get_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroupstats_cmd_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taskstats_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @taskstats_exit(ptr noundef %tsk, i32 noundef %group_dead) local_unnamed_addr #0 align 64 {
entry:
  %rep_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rep_skb) #12
  %0 = ptrtoint ptr %rep_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rep_skb, align 4, !annotation !54
  %.b = load i1, ptr @family_registered, align 4
  br i1 %.b, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %1 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %signal.i, align 16
  %stats1.i = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 53
  %3 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %stats1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !55
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false.i:                                  ; preds = %if.end
  %thread_group.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 80
  %5 = ptrtoint ptr %thread_group.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %thread_group.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %6, %thread_group.i.i
  br i1 %cmp.i.i.not.i, label %lor.lhs.false.i.do.body_crit_edge, label %if.end.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.i:                                         ; preds = %lor.lhs.false.i
  %7 = load ptr, ptr @taskstats_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3520) #12
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 112
  %8 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #12
  %10 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats1.i, align 8
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %taskstats_tgid_alloc.exit, label %if.end33.i

if.end33.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %13) #12
  %tobool36.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool36.not.i, label %if.end33.i.if.then5_crit_edge, label %if.then37.i

if.end33.i.if.then5_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = load ptr, ptr @taskstats_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef nonnull %call.i.i) #12
  br label %if.then5

taskstats_tgid_alloc.exit:                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !56
  %15 = ptrtoint ptr %stats1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call.i.i, ptr %stats1.i, align 8
  %16 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %17) #12
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %taskstats_tgid_alloc.exit.do.body_crit_edge, label %taskstats_tgid_alloc.exit.if.then5_crit_edge

taskstats_tgid_alloc.exit.if.then5_crit_edge:     ; preds = %taskstats_tgid_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

taskstats_tgid_alloc.exit.do.body_crit_edge:      ; preds = %taskstats_tgid_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then5:                                         ; preds = %taskstats_tgid_alloc.exit.if.then5_crit_edge, %if.then37.i, %if.end33.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %sighand.i47 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 112
  %18 = ptrtoint ptr %sighand.i47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sighand.i47, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #12
  %20 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i, align 16
  %stats.i = getelementptr inbounds %struct.signal_struct, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats.i, align 8
  %tobool.not.i49 = icmp eq ptr %23, null
  br i1 %tobool.not.i49, label %if.then5.fill_tgid_exit.exit_crit_edge, label %if.end.i50

if.then5.fill_tgid_exit.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_tgid_exit.exit

if.end.i50:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call i32 @delayacct_add_tsk(ptr noundef nonnull %23, ptr noundef %tsk) #12
  br label %fill_tgid_exit.exit

fill_tgid_exit.exit:                              ; preds = %if.end.i50, %if.then5.fill_tgid_exit.exit_crit_edge
  %24 = ptrtoint ptr %sighand.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sighand.i47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call2.i) #12
  br label %do.body

do.body:                                          ; preds = %fill_tgid_exit.exit, %taskstats_tgid_alloc.exit.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge
  %tobool2.not57 = phi i1 [ false, %fill_tgid_exit.exit ], [ true, %taskstats_tgid_alloc.exit.do.body_crit_edge ], [ true, %lor.lhs.false.i.do.body_crit_edge ]
  %size.0 = phi i32 [ 768, %fill_tgid_exit.exit ], [ 384, %taskstats_tgid_alloc.exit.do.body_crit_edge ], [ 384, %lor.lhs.false.i.do.body_crit_edge ]
  %26 = tail call i32 @llvm.read_register.i32(metadata !44) #12
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %add = add i32 %31, ptrtoint (ptr @listener_array to i32)
  %32 = inttoptr i32 %add to ptr
  %list = getelementptr inbounds %struct.listener_list, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %34, %list
  br i1 %cmp.i.not, label %do.body.cleanup_crit_edge, label %if.end12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %call13 = call fastcc i32 @prepare_reply(ptr noundef null, i8 noundef zeroext 2, ptr noundef nonnull %rep_skb, i32 noundef %size.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %35 = ptrtoint ptr %rep_skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rep_skb, align 4
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %tsk, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #12
  %call17 = tail call fastcc ptr @mk_reply(ptr noundef %36, i32 noundef 1, i32 noundef %call.i)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.err_crit_edge, label %if.end20

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end20:                                         ; preds = %if.end15
  %37 = call ptr @memset(ptr %call17, i32 0, i32 368)
  %call.i51 = tail call i32 @delayacct_add_tsk(ptr noundef nonnull %call17, ptr noundef %tsk) #12
  %38 = ptrtoint ptr %call17 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 11, ptr %call17, align 8
  %nvcsw.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 90
  %39 = ptrtoint ptr %nvcsw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nvcsw.i, align 16
  %conv.i52 = zext i32 %40 to i64
  %nvcsw1.i = getelementptr inbounds %struct.taskstats, ptr %call17, i32 0, i32 37
  %41 = ptrtoint ptr %nvcsw1.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv.i52, ptr %nvcsw1.i, align 8
  %nivcsw.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 91
  %42 = ptrtoint ptr %nivcsw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nivcsw.i, align 4
  %conv2.i = zext i32 %43 to i64
  %nivcsw3.i = getelementptr inbounds %struct.taskstats, ptr %call17, i32 0, i32 38
  %44 = ptrtoint ptr %nivcsw3.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv2.i, ptr %nivcsw3.i, align 8
  tail call void @bacct_add_tsk(ptr noundef nonnull @init_user_ns, ptr noundef nonnull @init_pid_ns, ptr noundef nonnull %call17, ptr noundef %tsk) #12
  tail call void @xacct_add_tsk(ptr noundef nonnull %call17, ptr noundef %tsk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_dead)
  %tobool22.not = icmp eq i32 %group_dead, 0
  %or.cond = or i1 %tobool22.not, %tobool2.not57
  br i1 %or.cond, label %if.end20.send_crit_edge, label %if.end24

if.end20.send_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %send

if.end24:                                         ; preds = %if.end20
  %call.i53 = tail call i32 @__task_pid_nr_ns(ptr noundef %tsk, i32 noundef 1, ptr noundef nonnull @init_pid_ns) #12
  %call26 = tail call fastcc ptr @mk_reply(ptr noundef %36, i32 noundef 2, i32 noundef %call.i53)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end24.err_crit_edge, label %if.end29

if.end24.err_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %signal.i, align 16
  %stats30 = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 53
  %47 = ptrtoint ptr %stats30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stats30, align 8
  %49 = call ptr @memcpy(ptr %call26, ptr %48, i32 368)
  br label %send

send:                                             ; preds = %if.end29, %if.end20.send_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.ptr.sub.i.i.i, ptr %51, align 4
  tail call void @down_read(ptr noundef %32) #12
  %55 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %55)
  %s.093.i = load ptr, ptr %list, align 4
  %cmp.not94.i = icmp eq ptr %s.093.i, %list
  br i1 %cmp.not94.i, label %send.for.end.i_crit_edge, label %send.for.body.i_crit_edge

send.for.body.i_crit_edge:                        ; preds = %send
  br label %for.body.i

send.for.end.i_crit_edge:                         ; preds = %send
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %send.for.body.i_crit_edge
  %s.099.i = phi ptr [ %s.0.i, %if.end16.i.for.body.i_crit_edge ], [ %s.093.i, %send.for.body.i_crit_edge ]
  %skb_cur.097.i = phi ptr [ %skb_next.0.i, %if.end16.i.for.body.i_crit_edge ], [ %36, %send.for.body.i_crit_edge ]
  %delcount.095.i = phi i32 [ %delcount.1.i, %if.end16.i.for.body.i_crit_edge ], [ 0, %send.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %s.099.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s.099.i, align 4
  %cmp.i.not.i = icmp eq ptr %57, %list
  br i1 %cmp.i.not.i, label %for.body.i.if.end12.i_crit_edge, label %if.then.i

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then.i:                                        ; preds = %for.body.i
  %call9.i = tail call ptr @skb_clone(ptr noundef %skb_cur.097.i, i32 noundef 3264) #12
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.if.end12.i_crit_edge

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end12.i:                                       ; preds = %if.then.i.if.end12.i_crit_edge, %for.body.i.if.end12.i_crit_edge
  %skb_next.0.i = phi ptr [ null, %for.body.i.if.end12.i_crit_edge ], [ %call9.i, %if.then.i.if.end12.i_crit_edge ]
  %pid.i = getelementptr inbounds %struct.listener, ptr %s.099.i, i32 0, i32 1
  %58 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %60, ptr noundef %skb_cur.097.i, i32 noundef %59, i32 noundef 64) #12
  %61 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -111, i32 %61)
  %cmp14.i = icmp eq i32 %61, -111
  br i1 %cmp14.i, label %if.then15.i, label %if.end12.i.if.end16.i_crit_edge

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %valid.i = getelementptr inbounds %struct.listener, ptr %s.099.i, i32 0, i32 2
  %62 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %valid.i, align 4
  %inc.i = add i32 %delcount.095.i, 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end16.i_crit_edge
  %delcount.1.i = phi i32 [ %inc.i, %if.then15.i ], [ %delcount.095.i, %if.end12.i.if.end16.i_crit_edge ]
  %63 = ptrtoint ptr %s.099.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %s.0.i = load ptr, ptr %s.099.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, %list
  br i1 %cmp.not.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge, %send.for.end.i_crit_edge
  %delcount.0.lcssa.i = phi i32 [ 0, %send.for.end.i_crit_edge ], [ %delcount.1.i, %if.end16.i.for.end.i_crit_edge ], [ %delcount.095.i, %if.then.i.for.end.i_crit_edge ]
  %skb_cur.0.lcssa.i = phi ptr [ %36, %send.for.end.i_crit_edge ], [ %skb_next.0.i, %if.end16.i.for.end.i_crit_edge ], [ %skb_cur.097.i, %if.then.i.for.end.i_crit_edge ]
  tail call void @up_read(ptr noundef %32) #12
  %tobool23.not.i = icmp eq ptr %skb_cur.0.lcssa.i, null
  br i1 %tobool23.not.i, label %for.end.i.if.end25.i_crit_edge, label %if.then24.i

for.end.i.if.end25.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then24.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb_cur.0.lcssa.i, i32 noundef 0) #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %for.end.i.if.end25.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delcount.0.lcssa.i)
  %tobool26.not.i = icmp eq i32 %delcount.0.lcssa.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.cleanup_crit_edge, label %if.end28.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28.i:                                       ; preds = %if.end25.i
  tail call void @down_write(ptr noundef %32) #12
  %64 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list, align 4
  %cmp43.not104.i = icmp eq ptr %65, %list
  br i1 %cmp43.not104.i, label %if.end28.i.for.end57.i_crit_edge, label %if.end28.i.for.body45.i_crit_edge

if.end28.i.for.body45.i_crit_edge:                ; preds = %if.end28.i
  br label %for.body45.i

if.end28.i.for.end57.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end57.i

for.body45.i:                                     ; preds = %for.inc51.i.for.body45.i_crit_edge, %if.end28.i.for.body45.i_crit_edge
  %s.1105.i = phi ptr [ %tmp.0107.i, %for.inc51.i.for.body45.i_crit_edge ], [ %65, %if.end28.i.for.body45.i_crit_edge ]
  %66 = ptrtoint ptr %s.1105.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %tmp.0107.i = load ptr, ptr %s.1105.i, align 4
  %valid46.i = getelementptr inbounds %struct.listener, ptr %s.1105.i, i32 0, i32 2
  %67 = ptrtoint ptr %valid46.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %valid46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool47.not.i = icmp eq i8 %68, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %for.body45.i.for.inc51.i_crit_edge

for.body45.i.for.inc51.i_crit_edge:               ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc51.i

if.then48.i:                                      ; preds = %for.body45.i
  %call.i.i92.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s.1105.i) #12
  br i1 %call.i.i92.i, label %if.end.i.i.i, label %if.then48.i.list_del.exit.i_crit_edge

if.then48.i.list_del.exit.i_crit_edge:            ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %s.1105.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %s.1105.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s.1105.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then48.i.list_del.exit.i_crit_edge
  %75 = ptrtoint ptr %s.1105.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 256 to ptr), ptr %s.1105.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s.1105.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %s.1105.i) #12
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %list_del.exit.i, %for.body45.i.for.inc51.i_crit_edge
  %cmp43.not.i = icmp eq ptr %tmp.0107.i, %list
  br i1 %cmp43.not.i, label %for.inc51.i.for.end57.i_crit_edge, label %for.inc51.i.for.body45.i_crit_edge

for.inc51.i.for.body45.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body45.i

for.inc51.i.for.end57.i_crit_edge:                ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end57.i

for.end57.i:                                      ; preds = %for.inc51.i.for.end57.i_crit_edge, %if.end28.i.for.end57.i_crit_edge
  tail call void @up_write(ptr noundef %32) #12
  br label %cleanup

err:                                              ; preds = %if.end24.err_crit_edge, %if.end15.err_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %36, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end57.i, %if.end25.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rep_skb) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_reply(ptr noundef readonly %info, i8 noundef zeroext %cmd, ptr nocapture noundef writeonly %skbp, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i.i = add i32 %size, 7
  %and.i.i = and i32 %sub.i.i, -4
  %sub.i.i.i = add i32 %and.i.i, 19
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %info, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !57
  %1 = tail call i32 @llvm.read_register.i32(metadata !44) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @taskstats_seqnum to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add14 = add i32 %9, 1
  store i32 %add14, ptr %7, align 4
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !58
  %and.i.i51 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool24.not = icmp eq i32 %and.i.i51, 0
  br i1 %tobool24.not, label %if.then28, label %if.then2.do.end31_crit_edge, !prof !59

if.then2.do.end31_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

if.then28:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %if.then2.do.end31_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !60
  %call36 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %9, ptr noundef nonnull @family, i32 noundef 0, i8 noundef zeroext %cmd) #12
  br label %if.end38

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_portid.i, align 4
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %12, i32 noundef %14, ptr noundef nonnull @family, i32 noundef 0, i8 noundef zeroext %cmd) #12
  br label %if.end38

if.end38:                                         ; preds = %if.else, %do.end31
  %reply.0 = phi ptr [ %call.i, %if.else ], [ %call36, %do.end31 ]
  %cmp39 = icmp eq ptr %reply.0, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %skbp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i.i, ptr %skbp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then41 ], [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mk_reply(ptr noundef %skb, i32 noundef %type, i32 noundef %pid) unnamed_addr #0 align 64 {
entry:
  %pid.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pid.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %pid, ptr %pid.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %cond = select i1 %cmp, i32 4, i32 5
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %1 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %cond, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not34 = icmp eq ptr %2, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not34
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @nla_put(ptr noundef %skb, i32 noundef %type, i32 noundef 4, ptr noundef nonnull %pid.addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.i.i, label %if.end4

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %4, %2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !59

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @nla_reserve_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 368, i32 noundef 6) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then.i.i26, label %if.end8

if.then.i.i26:                                    ; preds = %if.end4
  %data.i.i24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i24, align 4
  %cmp.i.i25 = icmp ugt ptr %8, %2
  br i1 %cmp.i.i25, label %do.end.i.i27, label %if.then.i.i26.nla_nest_cancel.exit32_crit_edge, !prof !59

if.then.i.i26.nla_nest_cancel.exit32_crit_edge:   ; preds = %if.then.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit32

do.end.i.i27:                                     ; preds = %if.then.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit32

nla_nest_cancel.exit32:                           ; preds = %do.end.i.i27, %if.then.i.i26.nla_nest_cancel.exit32_crit_edge
  %9 = ptrtoint ptr %data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i24, align 4
  %sub.ptr.lhs.cast.i.i28 = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i29 = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i30 = sub i32 %sub.ptr.lhs.cast.i.i28, %sub.ptr.rhs.cast.i.i29
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i30) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %2, align 2
  %add.ptr.i = getelementptr i8, ptr %call5, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %nla_nest_cancel.exit32, %nla_nest_cancel.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.i, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %nla_nest_cancel.exit32 ], [ null, %nla_nest_cancel.exit ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @taskstats_init_early() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 368, i32 noundef 8, i32 noundef 262144, ptr noundef null) #12
  store ptr %call, ptr @taskstats_cache, align 4
  %call118 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call118, i32 %0)
  %cmp19 = icmp ult i32 %call118, %0
  br i1 %cmp19, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call120 = phi i32 [ %call1, %do.body.do.body_crit_edge ], [ %call118, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call120
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @listener_array to i32)
  %3 = inttoptr i32 %add to ptr
  %list = getelementptr inbounds %struct.listener_list, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.listener_list, ptr %3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %6 = load i32, ptr %arrayidx, align 4
  %add12 = add i32 %6, ptrtoint (ptr @listener_array to i32)
  %7 = inttoptr i32 %add12 to ptr
  tail call void @__init_rwsem(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @taskstats_init_early.__key) #12
  %call1 = tail call i32 @cpumask_next(i32 noundef %call120, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %8
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @taskstats_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @family) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @family_registered, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delayacct_add_tsk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taskstats_user_cmd(ptr nocapture noundef readnone %skb, ptr noundef %info) #0 align 64 {
entry:
  %flags.i.i = alloca i32, align 4
  %rep_skb.i65 = alloca ptr, align 4
  %rep_skb.i = alloca ptr, align 4
  %mask.i26 = alloca ptr, align 4
  %mask.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #12
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask.i, align 4, !annotation !54
  %call.i = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %mask.i, i32 noundef 3264) #12
  br i1 %call.i, label %if.end.i, label %if.then.cmd_attr_register_cpumask.exit_crit_edge

if.then.cmd_attr_register_cpumask.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_attr_register_cpumask.exit

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 3
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mask.i, align 4
  %cmp.i.i = icmp eq ptr %8, null
  br i1 %cmp.i.i, label %if.end.i.if.end3.i_crit_edge, label %if.end.i.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.end.i.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %8, align 2
  %conv.i.i.i = zext i16 %12 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %12)
  %cmp1.i.i = icmp ugt i16 %12, 128
  br i1 %cmp1.i.i, label %if.end.i.i.out.i_crit_edge, label %if.end3.i.i

if.end.i.i.out.i_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %12)
  %cmp4.i.i = icmp ult i16 %12, 5
  br i1 %cmp4.i.i, label %if.end3.i.i.out.i_crit_edge, label %if.end8.i.i.i

if.end3.i.i.out.i_crit_edge:                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end8.i.i.i:                                    ; preds = %if.end3.i.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i.i.i, i32 noundef 3264) #17
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.out.i_crit_edge, label %parse.exit.i

if.end8.i.i.i.out.i_crit_edge:                    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

parse.exit.i:                                     ; preds = %if.end8.i.i.i
  %call10.i.i = call i32 @nla_strscpy(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %8, i32 noundef %sub.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = call i32 @bitmap_parselist(ptr noundef nonnull %call9.i.i.i, ptr noundef %10, i32 noundef %13) #12
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %parse.exit.i.out.i_crit_edge, label %parse.exit.i.if.end3.i_crit_edge

parse.exit.i.if.end3.i_crit_edge:                 ; preds = %parse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

parse.exit.i.out.i_crit_edge:                     ; preds = %parse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end3.i:                                        ; preds = %parse.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_portid.i, align 4
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mask.i, align 4
  %call4.i = call fastcc i32 @add_del_listener(i32 noundef %15, ptr noundef %17, i32 noundef 0) #12
  br label %out.i

out.i:                                            ; preds = %if.end3.i, %parse.exit.i.out.i_crit_edge, %if.end8.i.i.i.out.i_crit_edge, %if.end3.i.i.out.i_crit_edge, %if.end.i.i.out.i_crit_edge
  %rc.0.i = phi i32 [ %call.i.i.i, %parse.exit.i.out.i_crit_edge ], [ %call4.i, %if.end3.i ], [ -12, %if.end8.i.i.i.out.i_crit_edge ], [ -22, %if.end3.i.i.out.i_crit_edge ], [ -7, %if.end.i.i.out.i_crit_edge ]
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mask.i, align 4
  call void @free_cpumask_var(ptr noundef %19) #12
  br label %cmd_attr_register_cpumask.exit

cmd_attr_register_cpumask.exit:                   ; preds = %out.i, %if.then.cmd_attr_register_cpumask.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.0.i, %out.i ], [ -12, %if.then.cmd_attr_register_cpumask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #12
  br label %return

if.else:                                          ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 4
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %21, null
  br i1 %tobool3.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i26) #12
  %22 = ptrtoint ptr %mask.i26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask.i26, align 4, !annotation !54
  %call.i27 = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %mask.i26, i32 noundef 3264) #12
  br i1 %call.i27, label %if.end.i31, label %if.then4.cmd_attr_deregister_cpumask.exit_crit_edge

if.then4.cmd_attr_deregister_cpumask.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_attr_deregister_cpumask.exit

if.end.i31:                                       ; preds = %if.then4
  %23 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %attrs, align 4
  %arrayidx.i29 = getelementptr ptr, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i29, align 4
  %27 = ptrtoint ptr %mask.i26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mask.i26, align 4
  %cmp.i.i30 = icmp eq ptr %26, null
  br i1 %cmp.i.i30, label %if.end.i31.if.end3.i52_crit_edge, label %if.end.i.i35

if.end.i31.if.end3.i52_crit_edge:                 ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i52

if.end.i.i35:                                     ; preds = %if.end.i31
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %26, align 2
  %conv.i.i.i32 = zext i16 %30 to i32
  %sub.i.i.i33 = add nsw i32 %conv.i.i.i32, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %30)
  %cmp1.i.i34 = icmp ugt i16 %30, 128
  br i1 %cmp1.i.i34, label %if.end.i.i35.out.i54_crit_edge, label %if.end3.i.i37

if.end.i.i35.out.i54_crit_edge:                   ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i54

if.end3.i.i37:                                    ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %30)
  %cmp4.i.i36 = icmp ult i16 %30, 5
  br i1 %cmp4.i.i36, label %if.end3.i.i37.out.i54_crit_edge, label %if.end8.i.i.i42

if.end3.i.i37.out.i54_crit_edge:                  ; preds = %if.end3.i.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i54

if.end8.i.i.i42:                                  ; preds = %if.end3.i.i37
  %call9.i.i.i41 = call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i.i.i33, i32 noundef 3264) #17
  %tobool.not.i.i44 = icmp eq ptr %call9.i.i.i41, null
  br i1 %tobool.not.i.i44, label %if.end8.i.i.i42.out.i54_crit_edge, label %parse.exit.i49

if.end8.i.i.i42.out.i54_crit_edge:                ; preds = %if.end8.i.i.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i54

parse.exit.i49:                                   ; preds = %if.end8.i.i.i42
  %call10.i.i46 = call i32 @nla_strscpy(ptr noundef nonnull %call9.i.i.i41, ptr noundef nonnull %26, i32 noundef %sub.i.i.i33) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i47 = call i32 @bitmap_parselist(ptr noundef nonnull %call9.i.i.i41, ptr noundef %28, i32 noundef %31) #12
  call void @kfree(ptr noundef nonnull %call9.i.i.i41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i47)
  %cmp.i48 = icmp slt i32 %call.i.i.i47, 0
  br i1 %cmp.i48, label %parse.exit.i49.out.i54_crit_edge, label %parse.exit.i49.if.end3.i52_crit_edge

parse.exit.i49.if.end3.i52_crit_edge:             ; preds = %parse.exit.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i52

parse.exit.i49.out.i54_crit_edge:                 ; preds = %parse.exit.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i54

if.end3.i52:                                      ; preds = %parse.exit.i49.if.end3.i52_crit_edge, %if.end.i31.if.end3.i52_crit_edge
  %snd_portid.i50 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %32 = ptrtoint ptr %snd_portid.i50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %snd_portid.i50, align 4
  %34 = ptrtoint ptr %mask.i26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mask.i26, align 4
  %call4.i51 = call fastcc i32 @add_del_listener(i32 noundef %33, ptr noundef %35, i32 noundef 1) #12
  br label %out.i54

out.i54:                                          ; preds = %if.end3.i52, %parse.exit.i49.out.i54_crit_edge, %if.end8.i.i.i42.out.i54_crit_edge, %if.end3.i.i37.out.i54_crit_edge, %if.end.i.i35.out.i54_crit_edge
  %rc.0.i53 = phi i32 [ %call.i.i.i47, %parse.exit.i49.out.i54_crit_edge ], [ %call4.i51, %if.end3.i52 ], [ -12, %if.end8.i.i.i42.out.i54_crit_edge ], [ -22, %if.end3.i.i37.out.i54_crit_edge ], [ -7, %if.end.i.i35.out.i54_crit_edge ]
  %36 = ptrtoint ptr %mask.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mask.i26, align 4
  call void @free_cpumask_var(ptr noundef %37) #12
  br label %cmd_attr_deregister_cpumask.exit

cmd_attr_deregister_cpumask.exit:                 ; preds = %out.i54, %if.then4.cmd_attr_deregister_cpumask.exit_crit_edge
  %retval.0.i55 = phi i32 [ %rc.0.i53, %out.i54 ], [ -12, %if.then4.cmd_attr_deregister_cpumask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i26) #12
  br label %return

if.else6:                                         ; preds = %if.else
  %arrayidx8 = getelementptr ptr, ptr %1, i32 1
  %38 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %39, null
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rep_skb.i) #12
  %40 = ptrtoint ptr %rep_skb.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %rep_skb.i, align 4, !annotation !54
  %call1.i = call fastcc i32 @prepare_reply(ptr noundef %info, i8 noundef zeroext 2, ptr noundef nonnull %rep_skb.i, i32 noundef 384) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i56 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i56, label %if.then10.cmd_attr_pid.exit_crit_edge, label %if.end.i59

if.then10.cmd_attr_pid.exit_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_attr_pid.exit

if.end.i59:                                       ; preds = %if.then10
  %41 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %attrs, align 4
  %arrayidx.i58 = getelementptr ptr, ptr %42, i32 1
  %43 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i58, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i.i, align 4
  %47 = ptrtoint ptr %rep_skb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rep_skb.i, align 4
  %call3.i = tail call fastcc ptr @mk_reply(ptr noundef %48, i32 noundef 1, i32 noundef %46) #12
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i59.err.i_crit_edge, label %if.end5.i

if.end.i59.err.i_crit_edge:                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end5.i:                                        ; preds = %if.end.i59
  %call.i.i = tail call ptr @find_get_task_by_vpid(i32 noundef %46) #12
  %tobool.not.i.i60 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i60, label %if.end5.i.err.i_crit_edge, label %do.end.i.i

if.end5.i.err.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

do.end.i.i:                                       ; preds = %if.end5.i
  %49 = tail call i32 @llvm.read_register.i32(metadata !44) #12
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 99
  %53 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cred.i.i, align 16
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 25
  %55 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_ns.i.i, align 4
  %call5.i.i = tail call ptr @task_active_pid_ns(ptr noundef %52) #12
  %57 = call ptr @memset(ptr %call3.i, i32 0, i32 368)
  %call.i.i.i61 = tail call i32 @delayacct_add_tsk(ptr noundef nonnull %call3.i, ptr noundef nonnull %call.i.i) #12
  %58 = ptrtoint ptr %call3.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 11, ptr %call3.i, align 8
  %nvcsw.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 90
  %59 = ptrtoint ptr %nvcsw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nvcsw.i.i.i, align 16
  %conv.i.i.i62 = zext i32 %60 to i64
  %nvcsw1.i.i.i = getelementptr inbounds %struct.taskstats, ptr %call3.i, i32 0, i32 37
  %61 = ptrtoint ptr %nvcsw1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv.i.i.i62, ptr %nvcsw1.i.i.i, align 8
  %nivcsw.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 91
  %62 = ptrtoint ptr %nivcsw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nivcsw.i.i.i, align 4
  %conv2.i.i.i = zext i32 %63 to i64
  %nivcsw3.i.i.i = getelementptr inbounds %struct.taskstats, ptr %call3.i, i32 0, i32 38
  %64 = ptrtoint ptr %nivcsw3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv2.i.i.i, ptr %nivcsw3.i.i.i, align 8
  tail call void @bacct_add_tsk(ptr noundef %56, ptr noundef %call5.i.i, ptr noundef nonnull %call3.i, ptr noundef nonnull %call.i.i) #12
  tail call void @xacct_add_tsk(ptr noundef nonnull %call3.i, ptr noundef nonnull %call.i.i) #12
  %usage.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #12
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #12, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end9.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.i.if.end9.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i.i, i32 noundef 3) #12
  br label %if.end9.i

if.then.i.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !64
  tail call void @__put_task_struct(ptr noundef nonnull %call.i.i) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end9.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 19
  %66 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %67, align 4
  %_net.i.i.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %71 = ptrtoint ptr %_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_net.i.i.i.i, align 4
  %snd_portid.i.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %73 = ptrtoint ptr %snd_portid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %snd_portid.i.i.i, align 4
  %genl_sock.i.i.i.i = getelementptr inbounds %struct.net, ptr %72, i32 0, i32 21
  %75 = ptrtoint ptr %genl_sock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %genl_sock.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @netlink_unicast(ptr noundef %76, ptr noundef %48, i32 noundef %74, i32 noundef 64) #12
  %77 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i.i.i, i32 0) #12
  br label %cmd_attr_pid.exit

err.i:                                            ; preds = %if.end5.i.err.i_crit_edge, %if.end.i59.err.i_crit_edge
  %rc.0.i63 = phi i32 [ -22, %if.end.i59.err.i_crit_edge ], [ -3, %if.end5.i.err.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %48, i32 noundef 0) #12
  br label %cmd_attr_pid.exit

cmd_attr_pid.exit:                                ; preds = %err.i, %if.end9.i, %if.then10.cmd_attr_pid.exit_crit_edge
  %retval.0.i64 = phi i32 [ %rc.0.i63, %err.i ], [ %77, %if.end9.i ], [ %call1.i, %if.then10.cmd_attr_pid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rep_skb.i) #12
  br label %return

if.else12:                                        ; preds = %if.else6
  %arrayidx14 = getelementptr ptr, ptr %1, i32 2
  %78 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %79, null
  br i1 %tobool15.not, label %if.else12.return_crit_edge, label %if.then16

if.else12.return_crit_edge:                       ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then16:                                        ; preds = %if.else12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rep_skb.i65) #12
  %80 = ptrtoint ptr %rep_skb.i65 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 -1 to ptr), ptr %rep_skb.i65, align 4, !annotation !54
  %call1.i66 = call fastcc i32 @prepare_reply(ptr noundef %info, i8 noundef zeroext 2, ptr noundef nonnull %rep_skb.i65, i32 noundef 384) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %cmp.i67 = icmp slt i32 %call1.i66, 0
  br i1 %cmp.i67, label %if.then16.cmd_attr_tgid.exit_crit_edge, label %if.end.i73

if.then16.cmd_attr_tgid.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_attr_tgid.exit

if.end.i73:                                       ; preds = %if.then16
  %81 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %attrs, align 4
  %arrayidx.i69 = getelementptr ptr, ptr %82, i32 2
  %83 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i69, align 4
  %add.ptr.i.i.i70 = getelementptr i8, ptr %84, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i.i70, align 4
  %87 = ptrtoint ptr %rep_skb.i65 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rep_skb.i65, align 4
  %call3.i71 = tail call fastcc ptr @mk_reply(ptr noundef %88, i32 noundef 2, i32 noundef %86) #12
  %tobool.not.i72 = icmp eq ptr %call3.i71, null
  br i1 %tobool.not.i72, label %if.end.i73.err.i92_crit_edge, label %if.end5.i75

if.end.i73.err.i92_crit_edge:                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i92

if.end5.i75:                                      ; preds = %if.end.i73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #12
  %89 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %flags.i.i, align 4, !annotation !54
  %90 = tail call i32 @llvm.read_register.i32(metadata !44) #12
  %and.i.i.i.i.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %93, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i74 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i74, label %if.end5.i75.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end5.i75.rcu_read_lock.exit.i.i_crit_edge:     ; preds = %if.end5.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end5.i75
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i76

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i76:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i76, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end5.i75.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i77 = tail call ptr @find_task_by_vpid(i32 noundef %86) #12
  %tobool.not.i.i78 = icmp eq ptr %call.i.i77, null
  br i1 %tobool.not.i.i78, label %rcu_read_lock.exit.i.i.out.i.i_crit_edge, label %lor.lhs.false.i.i

rcu_read_lock.exit.i.i.out.i.i_crit_edge:         ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call.i315.i.i = call ptr @__lock_task_sighand(ptr noundef nonnull %call.i.i77, ptr noundef nonnull %flags.i.i) #12
  %tobool2.not.i.i = icmp eq ptr %call.i315.i.i, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.out.i.i_crit_edge, label %if.end.i.i79

lor.lhs.false.i.i.out.i.i_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end.i.i79:                                     ; preds = %lor.lhs.false.i.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i.i77, i32 0, i32 111
  %94 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %signal.i.i, align 16
  %stats3.i.i = getelementptr inbounds %struct.signal_struct, ptr %95, i32 0, i32 53
  %96 = ptrtoint ptr %stats3.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %stats3.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %97, null
  br i1 %tobool4.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  %98 = call ptr @memcpy(ptr %call3.i71, ptr %97, i32 368)
  br label %if.end8.i.i

if.else.i.i:                                      ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  %99 = call ptr @memset(ptr %call3.i71, i32 0, i32 368)
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else.i.i, %if.then5.i.i
  %call.i316.i.i = call i64 @ktime_get() #12
  %ac_etime.i.i = getelementptr inbounds %struct.taskstats, ptr %call3.i71, i32 0, i32 21
  %ac_utime.i.i = getelementptr inbounds %struct.taskstats, ptr %call3.i71, i32 0, i32 22
  %ac_stime.i.i = getelementptr inbounds %struct.taskstats, ptr %call3.i71, i32 0, i32 23
  %nvcsw207.i.i = getelementptr inbounds %struct.taskstats, ptr %call3.i71, i32 0, i32 37
  %nivcsw210.i.i = getelementptr inbounds %struct.taskstats, ptr %call3.i71, i32 0, i32 38
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end8.i.i
  %tsk.0.i.i = phi ptr [ %call.i.i77, %if.end8.i.i ], [ %add.ptr.i.i22.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %exit_state.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0.i.i, i32 0, i32 57
  %100 = ptrtoint ptr %exit_state.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %exit_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool10.not.i.i = icmp eq i32 %101, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %do.body.i.i.do.cond.i.i_crit_edge

do.body.i.i.do.cond.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i.i

if.end12.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i = call i32 @delayacct_add_tsk(ptr noundef nonnull %call3.i71, ptr noundef %tsk.0.i.i) #12
  %start_time14.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0.i.i, i32 0, i32 92
  %102 = ptrtoint ptr %start_time14.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %start_time14.i.i, align 8
  %sub.i.i = sub i64 %call.i316.i.i, %103
  %104 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i.i, i32 0) #18, !srcloc !66
  %asmresult.i.i.i = extractvalue { i64, i32 } %104, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %104, 1
  %105 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !67
  %asmresult10.i.i.i = extractvalue { i64, i32 } %105, 0
  %div178314.i.i = lshr i64 %asmresult10.i.i.i, 9
  %106 = ptrtoint ptr %ac_etime.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %ac_etime.i.i, align 8
  %add200.i.i = add i64 %div178314.i.i, %107
  store i64 %add200.i.i, ptr %ac_etime.i.i, align 8
  %utime1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0.i.i, i32 0, i32 86
  %108 = ptrtoint ptr %utime1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %utime1.i.i.i, align 8
  %stime2.i.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0.i.i, i32 0, i32 87
  %110 = ptrtoint ptr %stime2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %stime2.i.i.i, align 32
  %112 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %109, i32 0) #18, !srcloc !66
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %112, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %112, 1
  %113 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %109, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #18, !srcloc !67
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %113, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %114 = ptrtoint ptr %ac_utime.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ac_utime.i.i, align 8
  %add203.i.i = add i64 %div1581.i.i.i.i, %115
  store i64 %add203.i.i, ptr %ac_utime.i.i, align 8
  %116 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %111, i32 0) #18, !srcloc !66
  %asmresult.i.i.i317.i.i = extractvalue { i64, i32 } %116, 0
  %asmresult4.i.i.i318.i.i = extractvalue { i64, i32 } %116, 1
  %117 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %111, i64 %asmresult.i.i.i317.i.i, i32 %asmresult4.i.i.i318.i.i) #18, !srcloc !67
  %asmresult10.i.i.i319.i.i = extractvalue { i64, i32 } %117, 0
  %div1581.i.i320.i.i = lshr i64 %asmresult10.i.i.i319.i.i, 9
  %118 = ptrtoint ptr %ac_stime.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ac_stime.i.i, align 8
  %add205.i.i = add i64 %div1581.i.i320.i.i, %119
  store i64 %add205.i.i, ptr %ac_stime.i.i, align 8
  %nvcsw.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0.i.i, i32 0, i32 90
  %120 = ptrtoint ptr %nvcsw.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nvcsw.i.i, align 16
  %conv206.i.i = zext i32 %121 to i64
  %122 = ptrtoint ptr %nvcsw207.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %nvcsw207.i.i, align 8
  %add208.i.i = add i64 %123, %conv206.i.i
  store i64 %add208.i.i, ptr %nvcsw207.i.i, align 8
  %nivcsw.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0.i.i, i32 0, i32 91
  %124 = ptrtoint ptr %nivcsw.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nivcsw.i.i, align 4
  %conv209.i.i = zext i32 %125 to i64
  %126 = ptrtoint ptr %nivcsw210.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %nivcsw210.i.i, align 8
  %add211.i.i = add i64 %127, %conv209.i.i
  store i64 %add211.i.i, ptr %nivcsw210.i.i, align 8
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end12.i.i, %do.body.i.i.do.cond.i.i_crit_edge
  %thread_group.i.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0.i.i, i32 0, i32 80
  %128 = ptrtoint ptr %thread_group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %thread_group.i.i.i, align 4
  %add.ptr.i.i22.i = getelementptr i8, ptr %129, i32 -1396
  %cmp213.not.i.i = icmp eq ptr %add.ptr.i.i22.i, %call.i.i77
  br i1 %cmp213.not.i.i, label %do.end.i.i80, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.end.i.i80:                                     ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sighand.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i.i77, i32 0, i32 112
  %130 = ptrtoint ptr %sighand.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sighand.i.i.i, align 4
  %132 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %131, i32 noundef %133) #12
  br label %out.i.i

out.i.i:                                          ; preds = %do.end.i.i80, %lor.lhs.false.i.i.out.i.i_crit_edge, %rcu_read_lock.exit.i.i.out.i.i_crit_edge
  %cmp7.i = phi i1 [ false, %do.end.i.i80 ], [ true, %lor.lhs.false.i.i.out.i.i_crit_edge ], [ true, %rcu_read_lock.exit.i.i.out.i.i_crit_edge ]
  %rc.0.i.i = phi i32 [ 0, %do.end.i.i80 ], [ -3, %lor.lhs.false.i.i.out.i.i_crit_edge ], [ -3, %rcu_read_lock.exit.i.i.out.i.i_crit_edge ]
  %call.i321.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i321.i.i, label %out.i.i.fill_stats_for_tgid.exit.i_crit_edge, label %land.lhs.true.i324.i.i

out.i.i.fill_stats_for_tgid.exit.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_stats_for_tgid.exit.i

land.lhs.true.i324.i.i:                           ; preds = %out.i.i
  %call1.i322.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i322.i.i)
  %tobool.not.i323.i.i = icmp eq i32 %call1.i322.i.i, 0
  br i1 %tobool.not.i323.i.i, label %land.lhs.true.i324.i.i.fill_stats_for_tgid.exit.i_crit_edge, label %land.lhs.true2.i326.i.i

land.lhs.true.i324.i.i.fill_stats_for_tgid.exit.i_crit_edge: ; preds = %land.lhs.true.i324.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_stats_for_tgid.exit.i

land.lhs.true2.i326.i.i:                          ; preds = %land.lhs.true.i324.i.i
  %.b4.i325.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i325.i.i, label %land.lhs.true2.i326.i.i.fill_stats_for_tgid.exit.i_crit_edge, label %if.then.i327.i.i

land.lhs.true2.i326.i.i.fill_stats_for_tgid.exit.i_crit_edge: ; preds = %land.lhs.true2.i326.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_stats_for_tgid.exit.i

if.then.i327.i.i:                                 ; preds = %land.lhs.true2.i326.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %fill_stats_for_tgid.exit.i

fill_stats_for_tgid.exit.i:                       ; preds = %if.then.i327.i.i, %land.lhs.true2.i326.i.i.fill_stats_for_tgid.exit.i_crit_edge, %land.lhs.true.i324.i.i.fill_stats_for_tgid.exit.i_crit_edge, %out.i.i.fill_stats_for_tgid.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !68
  %134 = call i32 @llvm.read_register.i32(metadata !44) #12
  %and.i.i.i.i.i328.i.i = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i.i.i328.i.i to ptr
  %preempt_count.i.i.i.i329.i.i = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %preempt_count.i.i.i.i329.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %preempt_count.i.i.i.i329.i.i, align 4
  %sub.i.i.i.i.i = add i32 %137, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i329.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %138 = ptrtoint ptr %call3.i71 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 11, ptr %call3.i71, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #12
  br i1 %cmp7.i, label %fill_stats_for_tgid.exit.i.err.i92_crit_edge, label %if.end9.i90

fill_stats_for_tgid.exit.i.err.i92_crit_edge:     ; preds = %fill_stats_for_tgid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i92

if.end9.i90:                                      ; preds = %fill_stats_for_tgid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 19
  %139 = ptrtoint ptr %data.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i.i.i81, align 4
  %tail.i.i.i.i.i82 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 16
  %141 = ptrtoint ptr %tail.i.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tail.i.i.i.i.i82, align 8
  %sub.ptr.lhs.cast.i.i.i.i83 = ptrtoint ptr %142 to i32
  %sub.ptr.rhs.cast.i.i.i.i84 = ptrtoint ptr %140 to i32
  %sub.ptr.sub.i.i.i.i85 = sub i32 %sub.ptr.lhs.cast.i.i.i.i83, %sub.ptr.rhs.cast.i.i.i.i84
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %sub.ptr.sub.i.i.i.i85, ptr %140, align 4
  %_net.i.i.i.i86 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %144 = ptrtoint ptr %_net.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %_net.i.i.i.i86, align 4
  %snd_portid.i.i.i87 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %146 = ptrtoint ptr %snd_portid.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %snd_portid.i.i.i87, align 4
  %genl_sock.i.i.i.i88 = getelementptr inbounds %struct.net, ptr %145, i32 0, i32 21
  %148 = ptrtoint ptr %genl_sock.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %genl_sock.i.i.i.i88, align 4
  %call.i.i.i.i.i89 = call i32 @netlink_unicast(ptr noundef %149, ptr noundef %88, i32 noundef %147, i32 noundef 64) #12
  %150 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i.i89, i32 0) #12
  br label %cmd_attr_tgid.exit

err.i92:                                          ; preds = %fill_stats_for_tgid.exit.i.err.i92_crit_edge, %if.end.i73.err.i92_crit_edge
  %rc.0.i91 = phi i32 [ %rc.0.i.i, %fill_stats_for_tgid.exit.i.err.i92_crit_edge ], [ -22, %if.end.i73.err.i92_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %88, i32 noundef 0) #12
  br label %cmd_attr_tgid.exit

cmd_attr_tgid.exit:                               ; preds = %err.i92, %if.end9.i90, %if.then16.cmd_attr_tgid.exit_crit_edge
  %retval.0.i93 = phi i32 [ %rc.0.i91, %err.i92 ], [ %150, %if.end9.i90 ], [ %call1.i66, %if.then16.cmd_attr_tgid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rep_skb.i65) #12
  br label %return

return:                                           ; preds = %cmd_attr_tgid.exit, %if.else12.return_crit_edge, %cmd_attr_pid.exit, %cmd_attr_deregister_cpumask.exit, %cmd_attr_register_cpumask.exit
  %retval.0 = phi i32 [ %retval.0.i, %cmd_attr_register_cpumask.exit ], [ %retval.0.i55, %cmd_attr_deregister_cpumask.exit ], [ %retval.0.i64, %cmd_attr_pid.exit ], [ %retval.0.i93, %cmd_attr_tgid.exit ], [ -22, %if.else12.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroupstats_user_cmd(ptr nocapture noundef readnone %skb, ptr noundef %info) #0 align 64 {
entry:
  %rep_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rep_skb) #12
  %0 = ptrtoint ptr %rep_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rep_skb, align 4, !annotation !54
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %call.i = tail call i32 @__fdget(i32 noundef %6) #12, !noalias !69
  %and.i.i = and i32 %call.i, -4
  %7 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call fastcc i32 @prepare_reply(ptr noundef %info, i8 noundef zeroext 5, ptr noundef nonnull %rep_skb, i32 noundef 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end5.err_crit_edge, label %if.end9

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end9:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %rep_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rep_skb, align 4
  %call10 = tail call ptr @nla_reserve(ptr noundef %9, i32 noundef 1, i32 noundef 40) #12
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #12
  br label %err

if.end13:                                         ; preds = %if.end9
  %add.ptr.i = getelementptr i8, ptr %call10, i32 4
  %10 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 40)
  %dentry = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry, align 4
  %call16 = tail call i32 @cgroupstats_build(ptr noundef %add.ptr.i, ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #12
  br label %err

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.ptr.sub.i.i.i, ptr %14, align 4
  %_net.i.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %18 = ptrtoint ptr %_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_net.i.i.i, align 4
  %snd_portid.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %20 = ptrtoint ptr %snd_portid.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %snd_portid.i.i, align 4
  %genl_sock.i.i.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 21
  %22 = ptrtoint ptr %genl_sock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %genl_sock.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @netlink_unicast(ptr noundef %23, ptr noundef %9, i32 noundef %21, i32 noundef 64) #12
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 0) #12
  br label %err

err:                                              ; preds = %if.end19, %if.then18, %if.then12, %if.end5.err_crit_edge
  %rc.0 = phi i32 [ %call7, %if.end5.err_crit_edge ], [ -90, %if.then12 ], [ %call16, %if.then18 ], [ %24, %if.end19 ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %err.cleanup_crit_edge, label %if.then.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fput(ptr noundef nonnull %7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %rc.0, %err.cleanup_crit_edge ], [ %rc.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rep_skb) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_del_listener(i32 noundef %pid, ptr noundef %mask, i32 noundef %isadd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i132 = tail call i32 @__bitmap_subset(ptr noundef %mask, ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132)
  %tobool.not = icmp eq i32 %call.i.i132, 0
  br i1 %tobool.not, label %entry.cleanup95_crit_edge, label %do.end

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !44) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns, align 4
  %cmp.not = icmp eq ptr %8, @init_user_ns
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup95_crit_edge

do.end.cleanup95_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

if.end5:                                          ; preds = %do.end
  %call8 = tail call ptr @task_active_pid_ns(ptr noundef %4) #12
  %cmp9.not = icmp eq ptr %call8, @init_pid_ns
  br i1 %cmp9.not, label %if.end11, label %if.end5.cleanup95_crit_edge

if.end5.cleanup95_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isadd)
  %cmp12 = icmp eq i32 %isadd, 0
  br i1 %cmp12, label %for.cond.preheader, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end11
  %call14141 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call14141, i32 %9)
  %cmp15142 = icmp ult i32 %call14141, %9
  br i1 %cmp15142, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup95_crit_edge

for.cond.preheader.cleanup95_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %exists.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call14143 = phi i32 [ %call14, %exists.for.body_crit_edge ], [ %call14141, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 16) #19
  %tobool17.not = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not, label %for.body.cleanup_crit_edge, label %if.end19

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %pid20 = getelementptr inbounds %struct.listener, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pid20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %pid, ptr %pid20, align 8
  %valid = getelementptr inbounds %struct.listener, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %valid, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call14143
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, ptrtoint (ptr @listener_array to i32)
  %15 = inttoptr i32 %add to ptr
  tail call void @down_write(ptr noundef %15) #12
  %list = getelementptr inbounds %struct.listener_list, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %s2.0138 = load ptr, ptr %list, align 4
  %cmp30.not139 = icmp eq ptr %s2.0138, %list
  br i1 %cmp30.not139, label %if.end19.for.end_crit_edge, label %if.end19.for.body31_crit_edge

if.end19.for.body31_crit_edge:                    ; preds = %if.end19
  br label %for.body31

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body31:                                       ; preds = %for.inc.for.body31_crit_edge, %if.end19.for.body31_crit_edge
  %s2.0140 = phi ptr [ %s2.0, %for.inc.for.body31_crit_edge ], [ %s2.0138, %if.end19.for.body31_crit_edge ]
  %pid32 = getelementptr inbounds %struct.listener, ptr %s2.0140, i32 0, i32 1
  %17 = ptrtoint ptr %pid32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %pid)
  %cmp33 = icmp eq i32 %18, %pid
  br i1 %cmp33, label %land.lhs.true, label %for.body31.for.inc_crit_edge

for.body31.for.inc_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body31
  %valid34 = getelementptr inbounds %struct.listener, ptr %s2.0140, i32 0, i32 2
  %19 = ptrtoint ptr %valid34 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %valid34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool35.not = icmp eq i8 %20, 0
  br i1 %tobool35.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.exists_crit_edge

land.lhs.true.exists_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %exists

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body31.for.inc_crit_edge
  %21 = ptrtoint ptr %s2.0140 to i32
  call void @__asan_load4_noabort(i32 %21)
  %s2.0 = load ptr, ptr %s2.0140, align 4
  %cmp30.not = icmp eq ptr %s2.0, %list
  br i1 %cmp30.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body31_crit_edge

for.inc.for.body31_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list, align 4
  %call.i.i133 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %list, ptr noundef %23) #12
  br i1 %call.i.i133, label %if.end.i.i, label %for.end.exists_crit_edge

for.end.exists_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exists

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %call.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call.i.i, ptr %list, align 4
  br label %exists

exists:                                           ; preds = %if.end.i.i, %for.end.exists_crit_edge, %land.lhs.true.exists_crit_edge
  %s.0 = phi ptr [ null, %for.end.exists_crit_edge ], [ null, %if.end.i.i ], [ %call.i.i, %land.lhs.true.exists_crit_edge ]
  tail call void @up_write(ptr noundef %15) #12
  tail call void @kfree(ptr noundef %s.0) #12
  %call14 = tail call i32 @cpumask_next(i32 noundef %call14143, ptr noundef %mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp15 = icmp ult i32 %call14, %28
  br i1 %cmp15, label %exists.for.body_crit_edge, label %exists.cleanup95_crit_edge

exists.cleanup95_crit_edge:                       ; preds = %exists
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

exists.for.body_crit_edge:                        ; preds = %exists
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %ret.0 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  %call49144 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call49144, i32 %29)
  %cmp50145 = icmp ult i32 %call49144, %29
  br i1 %cmp50145, label %cleanup.do.body53_crit_edge, label %cleanup.cleanup95_crit_edge

cleanup.cleanup95_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

cleanup.do.body53_crit_edge:                      ; preds = %cleanup
  br label %do.body53

do.body53:                                        ; preds = %for.end92.do.body53_crit_edge, %cleanup.do.body53_crit_edge
  %call49146 = phi i32 [ %call49, %for.end92.do.body53_crit_edge ], [ %call49144, %cleanup.do.body53_crit_edge ]
  %arrayidx60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call49146
  %30 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %31, ptrtoint (ptr @listener_array to i32)
  %32 = inttoptr i32 %add61 to ptr
  tail call void @down_write(ptr noundef %32) #12
  %list64 = getelementptr inbounds %struct.listener_list, ptr %32, i32 0, i32 1
  br label %for.cond73

for.cond73:                                       ; preds = %for.body79.for.cond73_crit_edge, %do.body53
  %s.1.in = phi ptr [ %list64, %do.body53 ], [ %s.1, %for.body79.for.cond73_crit_edge ]
  %33 = ptrtoint ptr %s.1.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %s.1 = load ptr, ptr %s.1.in, align 4
  %cmp76.not = icmp eq ptr %s.1, %list64
  br i1 %cmp76.not, label %for.cond73.for.end92_crit_edge, label %for.body79

for.cond73.for.end92_crit_edge:                   ; preds = %for.cond73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end92

for.body79:                                       ; preds = %for.cond73
  %pid80 = getelementptr inbounds %struct.listener, ptr %s.1, i32 0, i32 1
  %34 = ptrtoint ptr %pid80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid80, align 4
  %cmp81 = icmp eq i32 %35, %pid
  br i1 %cmp81, label %if.then83, label %for.body79.for.cond73_crit_edge

for.body79.for.cond73_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond73

if.then83:                                        ; preds = %for.body79
  %call.i.i134 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s.1) #12
  br i1 %call.i.i134, label %if.end.i.i135, label %if.then83.list_del.exit_crit_edge

if.then83.list_del.exit_crit_edge:                ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i135:                                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s.1, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %s.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s.1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i135, %if.then83.list_del.exit_crit_edge
  %42 = ptrtoint ptr %s.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %s.1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %s.1, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %s.1) #12
  br label %for.end92

for.end92:                                        ; preds = %list_del.exit, %for.cond73.for.end92_crit_edge
  tail call void @up_write(ptr noundef %32) #12
  %call49 = tail call i32 @cpumask_next(i32 noundef %call49146, ptr noundef %mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %cmp50 = icmp ult i32 %call49, %44
  br i1 %cmp50, label %for.end92.do.body53_crit_edge, label %for.end92.cleanup95_crit_edge

for.end92.cleanup95_crit_edge:                    ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

for.end92.do.body53_crit_edge:                    ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

cleanup95:                                        ; preds = %for.end92.cleanup95_crit_edge, %cleanup.cleanup95_crit_edge, %exists.cleanup95_crit_edge, %for.cond.preheader.cleanup95_crit_edge, %if.end5.cleanup95_crit_edge, %do.end.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup95_crit_edge ], [ -22, %do.end.cleanup95_crit_edge ], [ -22, %if.end5.cleanup95_crit_edge ], [ %ret.0, %cleanup.cleanup95_crit_edge ], [ 0, %for.cond.preheader.cleanup95_crit_edge ], [ %ret.0, %for.end92.cleanup95_crit_edge ], [ 0, %exists.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
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
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroupstats_build(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_64bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bacct_add_tsk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xacct_add_tsk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !41, !42, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/taskstats.c", i32 674, i32 20}
!2 = !{ptr @taskstats_init_early.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../kernel/taskstats.c", i32 677, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_taskstats__299_698_taskstats_init7, !6, !"__initcall__kmod_taskstats__299_698_taskstats_init7", i1 false, i1 false}
!6 = !{!"../kernel/taskstats.c", i32 698, i32 1}
!7 = !{ptr @__pcpu_unique_taskstats_seqnum, !8, !"__pcpu_unique_taskstats_seqnum", i1 false, i1 false}
!8 = !{!"../kernel/taskstats.c", i32 31, i32 8}
!9 = !{ptr @taskstats_seqnum, !8, !"taskstats_seqnum", i1 false, i1 false}
!10 = distinct !{null, !11, !"family_registered", i1 false, i1 false}
!11 = !{!"../kernel/taskstats.c", i32 32, i32 12}
!12 = !{ptr @taskstats_cache, !13, !"taskstats_cache", i1 false, i1 false}
!13 = !{!"../kernel/taskstats.c", i32 33, i32 20}
!14 = !{ptr @__pcpu_unique_listener_array, !15, !"__pcpu_unique_listener_array", i1 false, i1 false}
!15 = !{!"../kernel/taskstats.c", i32 57, i32 8}
!16 = !{ptr @listener_array, !15, !"listener_array", i1 false, i1 false}
!17 = !{ptr @family, !18, !"family", i1 false, i1 false}
!18 = !{!"../kernel/taskstats.c", i32 661, i32 27}
!19 = !{ptr @taskstats_ops, !20, !"taskstats_ops", i1 false, i1 false}
!20 = !{!"../kernel/taskstats.c", i32 643, i32 30}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../kernel/taskstats.c", i32 284, i32 6}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../kernel/taskstats.c", i32 186, i32 13}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @taskstats_cmd_get_policy, !33, !"taskstats_cmd_get_policy", i1 false, i1 false}
!33 = !{!"../kernel/taskstats.c", i32 37, i32 32}
!34 = !{ptr @cgroupstats_cmd_get_policy, !35, !"cgroupstats_cmd_get_policy", i1 false, i1 false}
!35 = !{!"../kernel/taskstats.c", i32 43, i32 32}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/netlink.h", i32 991, i32 3}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/taskstats.c", i32 690, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @taskstats_init._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @taskstats_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{i64 2155437759}
!56 = !{i64 2155439989}
!57 = !{i64 615814, i64 615875}
!58 = !{i64 618546}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 618831}
!61 = !{i64 2148312864}
!62 = !{i64 2148227328, i64 2148227360, i64 2148227389, i64 2148227423, i64 2148227454, i64 2148227477}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2149644272}
!65 = !{i64 2149207032}
!66 = !{i64 1128323, i64 1128350, i64 1128372, i64 1128400}
!67 = !{i64 1128731, i64 1128758, i64 1128791, i64 1128812, i64 1128839, i64 1128865}
!68 = !{i64 2149207298}
!69 = !{!70}
!70 = distinct !{!70, !71, !"fdget: %agg.result"}
!71 = distinct !{!71, !"fdget"}
