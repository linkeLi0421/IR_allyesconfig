; ModuleID = '/llk/IR_all_yes/kernel/auditfilter.c_pt.bc'
source_filename = "../kernel/auditfilter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.audit_field = type { i32, %union.anon.1, i32 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.audit_krule = type { i32, i32, i32, i32, [64 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i64 }
%struct.audit_entry = type { %struct.list_head, %struct.callback_head, %struct.audit_krule }
%struct.callback_head = type { ptr, ptr }
%struct.audit_rule_data = type { i32, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.77, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.49 }
%struct.llist_node = type { ptr }
%union.anon.49 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.77 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.56 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.56 = type { %struct.callback_head }
%struct.sk_buff = type { %union.anon.2, %union.anon.129, %union.anon.130, [48 x i8], %union.anon.131, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.133, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.129 = type { ptr }
%union.anon.130 = type { i64 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, ptr }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.135, i32, i32, i32, i16, i16, %union.anon.137, i32, %union.anon.138, %union.anon.139, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.135 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i16 }
%struct.sock_common = type { %union.anon.102, %union.anon.104, %union.anon.105, i16, i8, i8, i32, %union.anon.107, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.110, [0 x i32], %union.anon.111, i16, i16, %union.anon.112, %struct.refcount_struct, [0 x i32], %union.anon.113 }
%union.anon.102 = type { i64 }
%union.anon.104 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { %struct.hlist_node }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
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
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.101, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.101 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.99, i32, %struct.spinlock }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
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
%struct.audit_netlink_list = type { i32, ptr, %struct.sk_buff_head }
%struct.qstr = type { %union.anon.45, ptr }
%union.anon.45 = type { i64 }

@audit_filter_list = dso_local global { [8 x %struct.list_head], [32 x i8] } { [8 x %struct.list_head] [%struct.list_head { ptr @audit_filter_list, ptr @audit_filter_list }, %struct.list_head { ptr getelementptr (i8, ptr @audit_filter_list, i64 8), ptr getelementptr (i8, ptr @audit_filter_list, i64 8) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_filter_list, i64 16), ptr getelementptr (i8, ptr @audit_filter_list, i64 16) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_filter_list, i64 24), ptr getelementptr (i8, ptr @audit_filter_list, i64 24) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_filter_list, i64 32), ptr getelementptr (i8, ptr @audit_filter_list, i64 32) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_filter_list, i64 40), ptr getelementptr (i8, ptr @audit_filter_list, i64 40) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_filter_list, i64 48), ptr getelementptr (i8, ptr @audit_filter_list, i64 48) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_filter_list, i64 56), ptr getelementptr (i8, ptr @audit_filter_list, i64 56) }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"audit_filter_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@audit_filter_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @audit_filter_mutex, i64 52), ptr getelementptr (i8, ptr @audit_filter_mutex, i64 52) }, ptr @audit_filter_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audit_filter_mutex\00", [45 x i8] zeroinitializer }, align 32
@classes = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_rule\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remove_rule\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/auditfilter.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"audit_send_list\00", [16 x i8] zeroinitializer }, align 32
@audit_filter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@audit_rules_list = internal global { [8 x %struct.list_head], [32 x i8] } { [8 x %struct.list_head] [%struct.list_head { ptr @audit_rules_list, ptr @audit_rules_list }, %struct.list_head { ptr getelementptr (i8, ptr @audit_rules_list, i64 8), ptr getelementptr (i8, ptr @audit_rules_list, i64 8) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_rules_list, i64 16), ptr getelementptr (i8, ptr @audit_rules_list, i64 16) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_rules_list, i64 24), ptr getelementptr (i8, ptr @audit_rules_list, i64 24) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_rules_list, i64 32), ptr getelementptr (i8, ptr @audit_rules_list, i64 32) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_rules_list, i64 40), ptr getelementptr (i8, ptr @audit_rules_list, i64 40) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_rules_list, i64 48), ptr getelementptr (i8, ptr @audit_rules_list, i64 48) }, %struct.list_head { ptr getelementptr (i8, ptr @audit_rules_list, i64 56), ptr getelementptr (i8, ptr @audit_rules_list, i64 56) }], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@audit_dupe_lsm_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014auditfilter: audit rule for LSM '%s' is invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"audit_dupe_lsm_field\00", [43 x i8] zeroinitializer }, align 32
@audit_dupe_lsm_field._entry_ptr = internal global ptr @audit_dupe_lsm_field._entry, section ".printk_index", align 4
@audit_inode_hash = external dso_local global [32 x %struct.list_head], align 4
@audit_data_to_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.4, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audit_data_to_entry\00", [44 x i8] zeroinitializer }, align 32
@audit_data_to_entry._entry_ptr = internal global ptr @audit_data_to_entry._entry, section ".printk_index", align 4
@audit_to_entry_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013auditfilter: AUDIT_POSSIBLE is deprecated\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"audit_to_entry_common\00", [42 x i8] zeroinitializer }, align 32
@audit_to_entry_common._entry_ptr = internal global ptr @audit_to_entry_common._entry, section ".printk_index", align 4
@audit_ops = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1073741824, i32 805306368, i32 134217728, i32 1207959552, i32 268435456, i32 536870912, i32 1342177280, i32 1610612736], [32 x i8] zeroinitializer }, align 32
@prio_high = internal global { i64, [24 x i8] } { i64 9223372036854775806, [24 x i8] zeroinitializer }, align 32
@prio_low = internal global { i64, [24 x i8] } { i64 9223372036854775807, [24 x i8] zeroinitializer }, align 32
@audit_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" op=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" list=%d res=%d\00", [16 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error updating LSM filters\00", [37 x i8] zeroinitializer }, align 32
@switch.table.audit_data_to_entry = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 4, i32 0, i32 5, i32 0, i32 1, i32 0, i32 0, i32 3, i32 6, i32 0, i32 7], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.23 = internal global [14 x i64] [i64 12, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 112, i64 210]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.25 = internal global [12 x i64] [i64 10, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1011, i64 1012]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [12 x i64] [i64 10, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 26, i64 106]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 26, i64 210]
@__sancov_gen_cov_switch_values.34 = internal global [48 x i64] [i64 46, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 200, i64 201, i64 202, i64 203, i64 210]
@__sancov_gen_cov_switch_values.35 = internal global [34 x i64] [i64 32, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 102, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 210]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [12 x i64] [i64 10, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.39 = internal global [17 x i64] [i64 15, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 105, i64 107, i64 112, i64 210]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.43 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 5, i64 9, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 24, i64 112]
@__sancov_gen_cov_switch_values.44 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.48 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.49 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.50 = internal global [27 x i64] [i64 25, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 105, i64 107, i64 109, i64 110, i64 112, i64 210]
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"audit_filter_list\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 39, i32 18 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"audit_filter_mutex\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 63, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 166, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1143, i32 25 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1150, i32 25 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1153, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1193, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1335, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"audit_rules_list\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 52, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 805, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 536, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 263, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [10 x i8] c"audit_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 306, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [10 x i8] c"prio_high\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 935, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"prio_low\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 934, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1119, i32 23 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1121, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1984, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 695, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 723, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [24 x i8] c"../kernel/auditfilter.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1416, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant [33 x i8] c"switch.table.audit_data_to_entry\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @audit_data_to_entry._entry, ptr @audit_data_to_entry._entry_ptr, ptr @audit_dupe_lsm_field._entry, ptr @audit_dupe_lsm_field._entry_ptr, ptr @audit_to_entry_common._entry, ptr @audit_to_entry_common._entry_ptr, ptr @audit_filter_list, ptr @.str, ptr @audit_filter_mutex, ptr @.str.1, ptr @classes, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @audit_rules_list, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @audit_ops, ptr @prio_high, ptr @prio_low, ptr @.str.15, ptr @.str.16, ptr @skb_queue_head_init.__key, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @switch.table.audit_data_to_entry], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_filter_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_filter_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @classes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_rules_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_dupe_lsm_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_data_to_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_to_entry_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prio_high to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prio_low to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.audit_data_to_entry to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_free_rule_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fields.i = getelementptr i8, ptr %head, i32 292
  %0 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fields.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %entry.audit_free_rule.exit_crit_edge, label %for.cond.preheader.i

entry.audit_free_rule.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

for.cond.preheader.i:                             ; preds = %entry
  %field_count.i = getelementptr i8, ptr %head, i32 284
  %2 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not.i = icmp eq i32 %3, 0
  br i1 %cmp14.not.i, label %for.cond.preheader.i.audit_free_rule.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.audit_free_rule.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

for.body.i:                                       ; preds = %audit_free_lsm_field.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %audit_free_lsm_field.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fields.i, align 4
  %arrayidx.i = getelementptr %struct.audit_field, ptr %5, i32 %i.015.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %for.body.i.audit_free_lsm_field.exit.i_crit_edge [
    i32 13, label %for.body.i.sw.bb.i.i_crit_edge
    i32 14, label %for.body.i.sw.bb.i.i_crit_edge1
    i32 15, label %for.body.i.sw.bb.i.i_crit_edge2
    i32 16, label %for.body.i.sw.bb.i.i_crit_edge3
    i32 17, label %for.body.i.sw.bb.i.i_crit_edge4
    i32 19, label %for.body.i.sw.bb.i.i_crit_edge5
    i32 20, label %for.body.i.sw.bb.i.i_crit_edge6
    i32 21, label %for.body.i.sw.bb.i.i_crit_edge7
    i32 22, label %for.body.i.sw.bb.i.i_crit_edge8
    i32 23, label %for.body.i.sw.bb.i.i_crit_edge9
  ]

for.body.i.sw.bb.i.i_crit_edge9:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge8:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge7:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge6:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge5:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge4:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge3:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge2:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge1:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.audit_free_lsm_field.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_lsm_field.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i.sw.bb.i.i_crit_edge, %for.body.i.sw.bb.i.i_crit_edge1, %for.body.i.sw.bb.i.i_crit_edge2, %for.body.i.sw.bb.i.i_crit_edge3, %for.body.i.sw.bb.i.i_crit_edge4, %for.body.i.sw.bb.i.i_crit_edge5, %for.body.i.sw.bb.i.i_crit_edge6, %for.body.i.sw.bb.i.i_crit_edge7, %for.body.i.sw.bb.i.i_crit_edge8, %for.body.i.sw.bb.i.i_crit_edge9
  %9 = getelementptr %struct.audit_field, ptr %5, i32 %i.015.i, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %11) #15
  %lsm_rule.i.i = getelementptr %struct.audit_field, ptr %5, i32 %i.015.i, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %lsm_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lsm_rule.i.i, align 4
  tail call void @security_audit_rule_free(ptr noundef %13) #15
  br label %audit_free_lsm_field.exit.i

audit_free_lsm_field.exit.i:                      ; preds = %sw.bb.i.i, %for.body.i.audit_free_lsm_field.exit.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %14 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %audit_free_lsm_field.exit.i.for.body.i_crit_edge, label %audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge

audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge: ; preds = %audit_free_lsm_field.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

audit_free_lsm_field.exit.i.for.body.i_crit_edge: ; preds = %audit_free_lsm_field.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

audit_free_rule.exit:                             ; preds = %audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge, %for.cond.preheader.i.audit_free_rule.exit_crit_edge, %entry.audit_free_rule.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -8
  %16 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fields.i, align 4
  tail call void @kfree(ptr noundef %17) #15
  %filterkey.i = getelementptr i8, ptr %head, i32 288
  %18 = ptrtoint ptr %filterkey.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %filterkey.i, align 8
  tail call void @kfree(ptr noundef %19) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @audit_unpack_string(ptr nocapture noundef %bufp, ptr nocapture noundef %remain, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bufp, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false1:                                   ; preds = %entry
  %2 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %remain, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp2 = icmp ult i32 %3, %len
  br i1 %cmp2, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp3 = icmp ugt i32 %len, 4096
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end8.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %add = add nuw nsw i32 %len, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.end8.i.cleanup_crit_edge, label %if.end14, !prof !77

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufp, align 4
  %6 = call ptr @memcpy(ptr %call9.i, ptr %5, i32 %len)
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %len
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %5, i32 %len
  store ptr %add.ptr, ptr %bufp, align 4
  %8 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %remain, align 4
  %sub = sub i32 %9, %len
  store i32 %sub, ptr %remain, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %if.end14 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false1.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_register_class(i32 noundef %class, ptr nocapture noundef readonly %list) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #19
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup11_crit_edge, label %while.cond.preheader

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup11

while.cond.preheader:                             ; preds = %entry
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.not23 = icmp eq i32 %2, -1
  br i1 %cmp.not23, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %if.end3.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %3 = phi i32 [ %7, %if.end3.while.body_crit_edge ], [ %2, %while.cond.preheader.while.body_crit_edge ]
  %list.addr.024 = phi ptr [ %incdec.ptr, %if.end3.while.body_crit_edge ], [ %list, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2031, i32 %3)
  %cmp1 = icmp ugt i32 %3, 2031
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %cleanup11

if.end3:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i32, ptr %list.addr.024, i32 1
  %div22 = lshr i32 %3, 5
  %sub = and i32 %3, 31
  %shl = shl nuw i32 1, %sub
  %arrayidx = getelementptr i32, ptr %call7.i.i.i, i32 %div22
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %7, -1
  br i1 %cmp.not, label %if.end3.while.end_crit_edge, label %if.end3.while.body_crit_edge

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end3.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %class)
  %cmp5 = icmp sgt i32 %class, 15
  br i1 %cmp5, label %while.end.if.then8_crit_edge, label %lor.lhs.false

while.end.if.then8_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

lor.lhs.false:                                    ; preds = %while.end
  %arrayidx6 = getelementptr [16 x ptr], ptr @classes, i32 0, i32 %class
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %while.end.if.then8_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %cleanup11

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %arrayidx6, align 4
  br label %cleanup11

cleanup11:                                        ; preds = %if.end9, %if.then8, %if.then2, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ -22, %if.then8 ], [ 0, %if.end9 ], [ -12, %entry.cleanup11_crit_edge ], [ -22, %if.then2 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @audit_match_class(i32 noundef %class, i32 noundef %syscall) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %syscall)
  %cmp = icmp ugt i32 %syscall, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %class)
  %cmp2 = icmp sgt i32 %class, 15
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.return_crit_edge, label %lor.rhs, !prof !78

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.rhs:                                          ; preds = %entry
  %arrayidx = getelementptr [16 x ptr], ptr @classes, i32 0, i32 %class
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %lor.rhs.return_crit_edge, label %if.end13, !prof !77

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end13:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %div22 = lshr i32 %syscall, 5
  %arrayidx15 = getelementptr i32, ptr %1, i32 %div22
  %2 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx15, align 4
  %sub = and i32 %syscall, 31
  %shl = shl nuw i32 1, %sub
  %and = and i32 %3, %shl
  br label %return

return:                                           ; preds = %if.end13, %lor.rhs.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and, %if.end13 ], [ 0, %entry.return_crit_edge ], [ 0, %lor.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @audit_dupe_rule(ptr nocapture noundef readonly %old) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %field_count = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 6
  %0 = ptrtoint ptr %field_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 352) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !77

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 16) #15
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end.i.if.then15.i_crit_edge, label %if.end7.i.i.i, !prof !77

if.end.i.if.then15.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #18
  %tobool6.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool6.not.i, label %if.end7.i.i.i.if.then15.i_crit_edge, label %if.end, !prof !77

if.end7.i.i.i.if.then15.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end7.i.i.i.if.then15.i_crit_edge, %if.end.i.if.then15.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i.i
  %fields17.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %fields17.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i.i, ptr %fields17.i, align 4
  %rule = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2
  %flags = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %flags6 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flags6, align 4
  %10 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old, align 8
  %12 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rule, align 8
  %listnr = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 2
  %13 = ptrtoint ptr %listnr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %listnr, align 8
  %listnr8 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %listnr8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %listnr8, align 8
  %action = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 3
  %16 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %action, align 4
  %action9 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %action9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %action9, align 4
  %uglygep = getelementptr i8, ptr %call7.i.i.i, i32 32
  %uglygep132 = getelementptr i8, ptr %old, i32 16
  %19 = call ptr @memcpy(ptr %uglygep, ptr %uglygep132, i32 256)
  %prio = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 16
  %20 = ptrtoint ptr %prio to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %prio, align 8
  %prio12 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 16
  %22 = ptrtoint ptr %prio12 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %prio12, align 8
  %buflen = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 5
  %23 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buflen, align 8
  %buflen13 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %buflen13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %buflen13, align 8
  %inode_f = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 10
  %26 = ptrtoint ptr %inode_f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %inode_f, align 4
  %inode_f14 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %inode_f14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %inode_f14, align 4
  %29 = ptrtoint ptr %field_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field_count, align 4
  %field_count16 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %field_count16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %field_count16, align 4
  %tree = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 12
  %32 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tree, align 4
  %tree17 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 12
  %34 = ptrtoint ptr %tree17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %tree17, align 4
  %fields18 = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 8
  %35 = ptrtoint ptr %fields18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fields18, align 4
  %mul = shl nuw i32 %1, 4
  %37 = call ptr @memcpy(ptr %call8.i.i.i, ptr %36, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20127.not = icmp eq i32 %1, 0
  br i1 %cmp20127.not, label %if.end.for.end53_crit_edge, label %for.body21.lr.ph

if.end.for.end53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end53

for.body21.lr.ph:                                 ; preds = %if.end
  %filterkey = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 7
  %filterkey41 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 7
  br label %for.body21

for.body21:                                       ; preds = %for.inc51.for.body21_crit_edge, %for.body21.lr.ph
  %i.1128 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc52, %for.inc51.for.body21_crit_edge ]
  %38 = ptrtoint ptr %fields17.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fields17.i, align 4
  %arrayidx23 = getelementptr %struct.audit_field, ptr %39, i32 %i.1128
  %40 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx23, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %41, label %for.body21.for.inc51_crit_edge [
    i32 13, label %for.body21.sw.bb_crit_edge
    i32 14, label %for.body21.sw.bb_crit_edge141
    i32 15, label %for.body21.sw.bb_crit_edge142
    i32 16, label %for.body21.sw.bb_crit_edge143
    i32 17, label %for.body21.sw.bb_crit_edge144
    i32 19, label %for.body21.sw.bb_crit_edge145
    i32 20, label %for.body21.sw.bb_crit_edge146
    i32 21, label %for.body21.sw.bb_crit_edge147
    i32 22, label %for.body21.sw.bb_crit_edge148
    i32 23, label %for.body21.sw.bb_crit_edge149
    i32 210, label %sw.bb29
    i32 112, label %for.body21.if.then45_crit_edge
  ]

for.body21.if.then45_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45

for.body21.sw.bb_crit_edge149:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge148:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge147:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge146:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge145:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge144:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge143:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge142:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge141:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.sw.bb_crit_edge:                       ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

for.body21.for.inc51_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51

sw.bb:                                            ; preds = %for.body21.sw.bb_crit_edge, %for.body21.sw.bb_crit_edge141, %for.body21.sw.bb_crit_edge142, %for.body21.sw.bb_crit_edge143, %for.body21.sw.bb_crit_edge144, %for.body21.sw.bb_crit_edge145, %for.body21.sw.bb_crit_edge146, %for.body21.sw.bb_crit_edge147, %for.body21.sw.bb_crit_edge148, %for.body21.sw.bb_crit_edge149
  %43 = ptrtoint ptr %fields18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fields18, align 4
  %45 = getelementptr %struct.audit_field, ptr %44, i32 %i.1128, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call.i = tail call noalias ptr @kstrdup(ptr noundef %47, i32 noundef 3264) #15
  %tobool.not.i112 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i112, label %sw.bb.if.then45thread-pre-split_crit_edge, label %if.end.i113, !prof !77

sw.bb.if.then45thread-pre-split_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45thread-pre-split

if.end.i113:                                      ; preds = %sw.bb
  %48 = getelementptr %struct.audit_field, ptr %39, i32 %i.1128, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %48, align 4
  %50 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx23, align 4
  %op.i = getelementptr %struct.audit_field, ptr %39, i32 %i.1128, i32 2
  %52 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %op.i, align 4
  %lsm_rule.i = getelementptr %struct.audit_field, ptr %39, i32 %i.1128, i32 1, i32 0, i32 1
  %call7.i = tail call i32 @security_audit_rule_init(i32 noundef %51, i32 noundef %53, ptr noundef nonnull %call.i, ptr noundef %lsm_rule.i) #15
  %54 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call7.i, label %if.end.i113.if.then45thread-pre-split_crit_edge [
    i32 -22, label %do.end.i
    i32 0, label %if.end.i113.for.inc51_crit_edge
  ]

if.end.i113.for.inc51_crit_edge:                  ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51

if.end.i113.if.then45thread-pre-split_crit_edge:  ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45thread-pre-split

do.end.i:                                         ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %48, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %56) #20
  br label %for.inc51

sw.bb29:                                          ; preds = %for.body21
  %57 = ptrtoint ptr %filterkey to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %filterkey, align 8
  %call30 = tail call noalias ptr @kstrdup(ptr noundef %58, i32 noundef 3264) #15
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %sw.bb29.if.then45thread-pre-split_crit_edge, label %if.else, !prof !77

sw.bb29.if.then45thread-pre-split_crit_edge:      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45thread-pre-split

if.else:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %filterkey41 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call30, ptr %filterkey41, align 8
  br label %for.inc51

if.then45thread-pre-split:                        ; preds = %sw.bb29.if.then45thread-pre-split_crit_edge, %if.end.i113.if.then45thread-pre-split_crit_edge, %sw.bb.if.then45thread-pre-split_crit_edge
  %err.1124.ph = phi i32 [ -12, %sw.bb29.if.then45thread-pre-split_crit_edge ], [ -12, %sw.bb.if.then45thread-pre-split_crit_edge ], [ %call7.i, %if.end.i113.if.then45thread-pre-split_crit_edge ]
  %60 = ptrtoint ptr %fields17.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load ptr, ptr %fields17.i, align 4
  br label %if.then45

if.then45:                                        ; preds = %if.then45thread-pre-split, %for.body21.if.then45_crit_edge
  %61 = phi ptr [ %.pr, %if.then45thread-pre-split ], [ %39, %for.body21.if.then45_crit_edge ]
  %err.1124 = phi i32 [ %err.1124.ph, %if.then45thread-pre-split ], [ -22, %for.body21.if.then45_crit_edge ]
  %tobool1.not.i = icmp eq ptr %61, null
  br i1 %tobool1.not.i, label %if.then45.audit_free_rule.exit_crit_edge, label %for.cond.preheader.i

if.then45.audit_free_rule.exit_crit_edge:         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

for.cond.preheader.i:                             ; preds = %if.then45
  %62 = ptrtoint ptr %field_count16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %field_count16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp14.not.i = icmp eq i32 %63, 0
  br i1 %cmp14.not.i, label %for.cond.preheader.i.audit_free_rule.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.audit_free_rule.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

for.body.i:                                       ; preds = %audit_free_lsm_field.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %audit_free_lsm_field.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %64 = ptrtoint ptr %fields17.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fields17.i, align 4
  %arrayidx.i = getelementptr %struct.audit_field, ptr %65, i32 %i.015.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %67, label %for.body.i.audit_free_lsm_field.exit.i_crit_edge [
    i32 13, label %for.body.i.sw.bb.i.i_crit_edge
    i32 14, label %for.body.i.sw.bb.i.i_crit_edge150
    i32 15, label %for.body.i.sw.bb.i.i_crit_edge151
    i32 16, label %for.body.i.sw.bb.i.i_crit_edge152
    i32 17, label %for.body.i.sw.bb.i.i_crit_edge153
    i32 19, label %for.body.i.sw.bb.i.i_crit_edge154
    i32 20, label %for.body.i.sw.bb.i.i_crit_edge155
    i32 21, label %for.body.i.sw.bb.i.i_crit_edge156
    i32 22, label %for.body.i.sw.bb.i.i_crit_edge157
    i32 23, label %for.body.i.sw.bb.i.i_crit_edge158
  ]

for.body.i.sw.bb.i.i_crit_edge158:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge157:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge156:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge155:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge154:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge153:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge152:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge151:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge150:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.audit_free_lsm_field.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_lsm_field.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i.sw.bb.i.i_crit_edge, %for.body.i.sw.bb.i.i_crit_edge150, %for.body.i.sw.bb.i.i_crit_edge151, %for.body.i.sw.bb.i.i_crit_edge152, %for.body.i.sw.bb.i.i_crit_edge153, %for.body.i.sw.bb.i.i_crit_edge154, %for.body.i.sw.bb.i.i_crit_edge155, %for.body.i.sw.bb.i.i_crit_edge156, %for.body.i.sw.bb.i.i_crit_edge157, %for.body.i.sw.bb.i.i_crit_edge158
  %69 = getelementptr %struct.audit_field, ptr %65, i32 %i.015.i, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  tail call void @kfree(ptr noundef %71) #15
  %lsm_rule.i.i = getelementptr %struct.audit_field, ptr %65, i32 %i.015.i, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %lsm_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lsm_rule.i.i, align 4
  tail call void @security_audit_rule_free(ptr noundef %73) #15
  br label %audit_free_lsm_field.exit.i

audit_free_lsm_field.exit.i:                      ; preds = %sw.bb.i.i, %for.body.i.audit_free_lsm_field.exit.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %74 = ptrtoint ptr %field_count16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %field_count16, align 4
  %cmp.i115 = icmp ult i32 %inc.i, %75
  br i1 %cmp.i115, label %audit_free_lsm_field.exit.i.for.body.i_crit_edge, label %audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge

audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge: ; preds = %audit_free_lsm_field.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

audit_free_lsm_field.exit.i.for.body.i_crit_edge: ; preds = %audit_free_lsm_field.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

audit_free_rule.exit:                             ; preds = %audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge, %for.cond.preheader.i.audit_free_rule.exit_crit_edge, %if.then45.audit_free_rule.exit_crit_edge
  %76 = ptrtoint ptr %fields17.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fields17.i, align 4
  tail call void @kfree(ptr noundef %77) #15
  %78 = ptrtoint ptr %filterkey41 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %filterkey41, align 8
  tail call void @kfree(ptr noundef %79) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  %80 = inttoptr i32 %err.1124 to ptr
  br label %cleanup

for.inc51:                                        ; preds = %if.else, %do.end.i, %if.end.i113.for.inc51_crit_edge, %for.body21.for.inc51_crit_edge
  %inc52 = add nuw i32 %i.1128, 1
  %exitcond.not = icmp eq i32 %inc52, %1
  br i1 %exitcond.not, label %for.inc51.for.end53_crit_edge, label %for.inc51.for.body21_crit_edge

for.inc51.for.body21_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21

for.inc51.for.end53_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end53

for.end53:                                        ; preds = %for.inc51.for.end53_crit_edge, %if.end.for.end53_crit_edge
  %watch = getelementptr inbounds %struct.audit_krule, ptr %old, i32 0, i32 11
  %81 = ptrtoint ptr %watch to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %watch, align 8
  %tobool54.not = icmp eq ptr %82, null
  br i1 %tobool54.not, label %for.end53.cleanup_crit_edge, label %do.end58

for.end53.cleanup_crit_edge:                      ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end58:                                         ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #17
  %watch60 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i, i32 0, i32 2, i32 11
  %83 = ptrtoint ptr %watch60 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %watch60, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %for.end53.cleanup_crit_edge, %audit_free_rule.exit, %if.then15.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %80, %audit_free_rule.exit ], [ %call7.i.i.i, %do.end58 ], [ %call7.i.i.i, %for.end53.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then15.i ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_del_rule(ptr nocapture noundef readonly %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @audit_filter_mutex, i32 noundef 0) #15
  %rule.i = getelementptr inbounds %struct.audit_entry, ptr %entry1, i32 0, i32 2
  %inode_f.i = getelementptr inbounds %struct.audit_entry, ptr %entry1, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %inode_f.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode_f.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = getelementptr inbounds %struct.audit_field, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and.i.i = and i32 %4, 31
  %arrayidx.i = getelementptr [32 x %struct.list_head], ptr @audit_inode_hash, i32 0, i32 %and.i.i
  br label %if.end28.i

if.else.i:                                        ; preds = %entry
  %watch.i = getelementptr inbounds %struct.audit_entry, ptr %entry1, i32 0, i32 2, i32 11
  %5 = ptrtoint ptr %watch.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %watch.i, align 8
  %tobool5.not.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i, label %if.else24.i, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc22.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %h.073.i = phi i32 [ %inc.i, %for.inc22.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr [32 x %struct.list_head], ptr @audit_inode_hash, i32 0, i32 %h.073.i
  br label %for.cond8.i

for.cond8.i:                                      ; preds = %for.body11.i.for.cond8.i_crit_edge, %for.body.i
  %e.0.in.i = phi ptr [ %arrayidx7.i, %for.body.i ], [ %e.0.i, %for.body11.i.for.cond8.i_crit_edge ]
  %7 = ptrtoint ptr %e.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %e.0.i = load ptr, ptr %e.0.in.i, align 4
  %cmp10.not.i = icmp eq ptr %e.0.i, %arrayidx7.i
  br i1 %cmp10.not.i, label %for.inc22.i, label %for.body11.i

for.body11.i:                                     ; preds = %for.cond8.i
  %rule13.i = getelementptr inbounds %struct.audit_entry, ptr %e.0.i, i32 0, i32 2
  %call14.i = tail call fastcc i32 @audit_compare_rule(ptr noundef %rule.i, ptr noundef %rule13.i) #15
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.body11.i.audit_find_rule.exit_crit_edge, label %for.body11.i.for.cond8.i_crit_edge

for.body11.i.for.cond8.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond8.i

for.body11.i.audit_find_rule.exit_crit_edge:      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_find_rule.exit

for.inc22.i:                                      ; preds = %for.cond8.i
  %inc.i = add nuw nsw i32 %h.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc22.i.out_crit_edge, label %for.inc22.i.for.body.i_crit_edge

for.inc22.i.for.body.i_crit_edge:                 ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc22.i.out_crit_edge:                        ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %listnr.i = getelementptr inbounds %struct.audit_entry, ptr %entry1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %listnr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %listnr.i, align 8
  %arrayidx26.i = getelementptr [8 x %struct.list_head], ptr @audit_filter_list, i32 0, i32 %9
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else24.i, %if.then.i
  %storemerge.i = phi ptr [ %arrayidx26.i, %if.else24.i ], [ %arrayidx.i, %if.then.i ]
  br label %for.cond33.i

for.cond33.i:                                     ; preds = %for.body37.i.for.cond33.i_crit_edge, %if.end28.i
  %e.1.in.i = phi ptr [ %storemerge.i, %if.end28.i ], [ %e.1.i, %for.body37.i.for.cond33.i_crit_edge ]
  %10 = ptrtoint ptr %e.1.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %e.1.i = load ptr, ptr %e.1.in.i, align 4
  %cmp35.not.i = icmp eq ptr %e.1.i, %storemerge.i
  br i1 %cmp35.not.i, label %for.cond33.i.out_crit_edge, label %for.body37.i

for.cond33.i.out_crit_edge:                       ; preds = %for.cond33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body37.i:                                     ; preds = %for.cond33.i
  %rule39.i = getelementptr inbounds %struct.audit_entry, ptr %e.1.i, i32 0, i32 2
  %call40.i = tail call fastcc i32 @audit_compare_rule(ptr noundef %rule.i, ptr noundef %rule39.i) #15
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %for.body37.i.audit_find_rule.exit_crit_edge, label %for.body37.i.for.cond33.i_crit_edge

for.body37.i.for.cond33.i_crit_edge:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond33.i

for.body37.i.audit_find_rule.exit_crit_edge:      ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_find_rule.exit

audit_find_rule.exit:                             ; preds = %for.body37.i.audit_find_rule.exit_crit_edge, %for.body11.i.audit_find_rule.exit_crit_edge
  %found.0.i = phi ptr [ %e.1.i, %for.body37.i.audit_find_rule.exit_crit_edge ], [ %e.0.i, %for.body11.i.audit_find_rule.exit_crit_edge ]
  %tobool.not = icmp eq ptr %found.0.i, null
  br i1 %tobool.not, label %audit_find_rule.exit.out_crit_edge, label %if.end

audit_find_rule.exit.out_crit_edge:               ; preds = %audit_find_rule.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %audit_find_rule.exit
  %watch = getelementptr inbounds %struct.audit_entry, ptr %found.0.i, i32 0, i32 2, i32 11
  %11 = ptrtoint ptr %watch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %watch, align 8
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/auditfilter.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1048, 0\0A.popsection", ""() #15, !srcloc !79
  unreachable

if.end9:                                          ; preds = %if.end
  %tree11 = getelementptr inbounds %struct.audit_entry, ptr %found.0.i, i32 0, i32 2, i32 12
  %13 = ptrtoint ptr %tree11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tree11, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end20, label %do.body14

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/auditfilter.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1051, 0\0A.popsection", ""() #15, !srcloc !80
  unreachable

if.end20:                                         ; preds = %if.end9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %found.0.i) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_del_rcu.exit_crit_edge

if.end20.list_del_rcu.exit_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %found.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %found.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %found.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end20.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %found.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %list30 = getelementptr inbounds %struct.audit_entry, ptr %found.0.i, i32 0, i32 2, i32 15
  %call.i.i44 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list30) #15
  br i1 %call.i.i44, label %if.end.i.i47, label %list_del_rcu.exit.list_del.exit_crit_edge

list_del_rcu.exit.list_del.exit_crit_edge:        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i47:                                     ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i45 = getelementptr inbounds %struct.audit_entry, ptr %found.0.i, i32 0, i32 2, i32 15, i32 1
  %22 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i45, align 4
  %24 = ptrtoint ptr %list30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list30, align 4
  %prev1.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i46, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i47, %list_del_rcu.exit.list_del.exit_crit_edge
  %28 = ptrtoint ptr %list30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %list30, align 4
  %prev.i48 = getelementptr inbounds %struct.audit_entry, ptr %found.0.i, i32 0, i32 2, i32 15, i32 1
  %29 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i48, align 4
  %rcu = getelementptr inbounds %struct.audit_entry, ptr %found.0.i, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @audit_free_rule_rcu) #15
  br label %out

out:                                              ; preds = %list_del.exit, %audit_find_rule.exit.out_crit_edge, %for.cond33.i.out_crit_edge, %for.inc22.i.out_crit_edge
  %ret.0 = phi i32 [ 0, %list_del.exit ], [ -2, %audit_find_rule.exit.out_crit_edge ], [ -2, %for.cond33.i.out_crit_edge ], [ -2, %for.inc22.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @audit_filter_mutex) #15
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_rule_change(i32 noundef %type, i32 noundef %seq, ptr noundef %data, i32 noundef %datasz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %type, label %do.end [
    i32 1011, label %sw.bb
    i32 1012, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc ptr @audit_data_to_entry(ptr noundef %data, i32 noundef %datasz)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %watch2.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %watch2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %watch2.i, align 8
  %tree4.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 12
  %4 = ptrtoint ptr %tree4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tree4.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @audit_filter_mutex, i32 noundef 0) #15
  %rule.i.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2
  %inode_f.i.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 10
  %6 = ptrtoint ptr %inode_f.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode_f.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = getelementptr inbounds %struct.audit_field, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i.i = and i32 %10, 31
  %arrayidx.i.i = getelementptr [32 x %struct.list_head], ptr @audit_inode_hash, i32 0, i32 %and.i.i.i
  br label %if.end28.i.i

if.else.i.i:                                      ; preds = %if.end
  %11 = ptrtoint ptr %watch2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %watch2.i, align 8
  %tobool5.not.i.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i.i, label %if.else24.i.i, label %if.else.i.i.for.body.i.i_crit_edge

if.else.i.i.for.body.i.i_crit_edge:               ; preds = %if.else.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc22.i.i.for.body.i.i_crit_edge, %if.else.i.i.for.body.i.i_crit_edge
  %h.073.i.i = phi i32 [ %inc.i.i, %for.inc22.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.i.for.body.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr [32 x %struct.list_head], ptr @audit_inode_hash, i32 0, i32 %h.073.i.i
  br label %for.cond8.i.i

for.cond8.i.i:                                    ; preds = %for.body11.i.i.for.cond8.i.i_crit_edge, %for.body.i.i
  %e.0.in.i.i = phi ptr [ %arrayidx7.i.i, %for.body.i.i ], [ %e.0.i.i, %for.body11.i.i.for.cond8.i.i_crit_edge ]
  %13 = ptrtoint ptr %e.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %e.0.i.i = load ptr, ptr %e.0.in.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %e.0.i.i, %arrayidx7.i.i
  br i1 %cmp10.not.i.i, label %for.inc22.i.i, label %for.body11.i.i

for.body11.i.i:                                   ; preds = %for.cond8.i.i
  %rule13.i.i = getelementptr inbounds %struct.audit_entry, ptr %e.0.i.i, i32 0, i32 2
  %call14.i.i = tail call fastcc i32 @audit_compare_rule(ptr noundef %rule.i.i, ptr noundef %rule13.i.i) #15
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %for.body11.i.i.audit_find_rule.exit.i_crit_edge, label %for.body11.i.i.for.cond8.i.i_crit_edge

for.body11.i.i.for.cond8.i.i_crit_edge:           ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond8.i.i

for.body11.i.i.audit_find_rule.exit.i_crit_edge:  ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_find_rule.exit.i

for.inc22.i.i:                                    ; preds = %for.cond8.i.i
  %inc.i.i = add nuw nsw i32 %h.073.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc22.i.i.if.end7.i_crit_edge, label %for.inc22.i.i.for.body.i.i_crit_edge

for.inc22.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc22.i.i.if.end7.i_crit_edge:                ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.else24.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %listnr.i.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %listnr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %listnr.i.i, align 8
  %arrayidx26.i.i = getelementptr [8 x %struct.list_head], ptr @audit_filter_list, i32 0, i32 %15
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.else24.i.i, %if.then.i.i
  %storemerge.i.i = phi ptr [ %arrayidx26.i.i, %if.else24.i.i ], [ %arrayidx.i.i, %if.then.i.i ]
  br label %for.cond33.i.i

for.cond33.i.i:                                   ; preds = %for.body37.i.i.for.cond33.i.i_crit_edge, %if.end28.i.i
  %e.1.in.i.i = phi ptr [ %storemerge.i.i, %if.end28.i.i ], [ %e.1.i.i, %for.body37.i.i.for.cond33.i.i_crit_edge ]
  %16 = ptrtoint ptr %e.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %e.1.i.i = load ptr, ptr %e.1.in.i.i, align 4
  %cmp35.not.i.i = icmp eq ptr %e.1.i.i, %storemerge.i.i
  br i1 %cmp35.not.i.i, label %for.cond33.i.i.if.end7.i_crit_edge, label %for.body37.i.i

for.cond33.i.i.if.end7.i_crit_edge:               ; preds = %for.cond33.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

for.body37.i.i:                                   ; preds = %for.cond33.i.i
  %rule39.i.i = getelementptr inbounds %struct.audit_entry, ptr %e.1.i.i, i32 0, i32 2
  %call40.i.i = tail call fastcc i32 @audit_compare_rule(ptr noundef %rule.i.i, ptr noundef %rule39.i.i) #15
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %for.body37.i.i.audit_find_rule.exit.i_crit_edge, label %for.body37.i.i.for.cond33.i.i_crit_edge

for.body37.i.i.for.cond33.i.i_crit_edge:          ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond33.i.i

for.body37.i.i.audit_find_rule.exit.i_crit_edge:  ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_find_rule.exit.i

audit_find_rule.exit.i:                           ; preds = %for.body37.i.i.audit_find_rule.exit.i_crit_edge, %for.body11.i.i.audit_find_rule.exit.i_crit_edge
  %list.0.i = phi ptr [ %storemerge.i.i, %for.body37.i.i.audit_find_rule.exit.i_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.body11.i.i.audit_find_rule.exit.i_crit_edge ]
  %found.0.i.i = phi ptr [ %e.1.i.i, %for.body37.i.i.audit_find_rule.exit.i_crit_edge ], [ %e.0.i.i, %for.body11.i.i.audit_find_rule.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %found.0.i.i, null
  br i1 %tobool.not.i, label %audit_find_rule.exit.i.if.end7.i_crit_edge, label %audit_find_rule.exit.i.sw.epilog_crit_edge

audit_find_rule.exit.i.sw.epilog_crit_edge:       ; preds = %audit_find_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

audit_find_rule.exit.i.if.end7.i_crit_edge:       ; preds = %audit_find_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.end7.i:                                        ; preds = %audit_find_rule.exit.i.if.end7.i_crit_edge, %for.cond33.i.i.if.end7.i_crit_edge, %for.inc22.i.i.if.end7.i_crit_edge
  %list.0102.i = phi ptr [ %list.0.i, %audit_find_rule.exit.i.if.end7.i_crit_edge ], [ %storemerge.i.i, %for.cond33.i.i.if.end7.i_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.inc22.i.i.if.end7.i_crit_edge ]
  %tobool8.not.i = icmp eq ptr %3, null
  %tobool20.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %tobool8.not.i, i1 %tobool20.not.i, i1 false
  br i1 %or.cond.i, label %if.end25.i, label %if.end7.i.sw.epilog_crit_edge

if.end7.i.sw.epilog_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end25.i:                                       ; preds = %if.end7.i
  %prio.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 16
  %17 = ptrtoint ptr %prio.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %prio.i, align 8
  %listnr.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %listnr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %listnr.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %19, label %if.end25.i.if.end40.i_crit_edge [
    i32 4, label %if.end25.i.if.then31.i_crit_edge
    i32 7, label %if.end25.i.if.then31.i_crit_edge96
  ]

if.end25.i.if.then31.i_crit_edge96:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then31.i

if.end25.i.if.then31.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then31.i

if.end25.i.if.end40.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.then31.i:                                      ; preds = %if.end25.i.if.then31.i_crit_edge, %if.end25.i.if.then31.i_crit_edge96
  %flags.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool33.not.i, label %if.else.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = load i64, ptr @prio_high, align 8
  %inc.i = add i64 %23, 1
  store i64 %inc.i, ptr @prio_high, align 8
  br label %if.end40.sink.split.i

if.else.i:                                        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = load i64, ptr @prio_low, align 8
  %dec.i = add i64 %24, -1
  store i64 %dec.i, ptr @prio_low, align 8
  br label %if.end40.sink.split.i

if.end40.sink.split.i:                            ; preds = %if.else.i, %if.then34.i
  %inc.sink.i = phi i64 [ %inc.i, %if.then34.i ], [ %dec.i, %if.else.i ]
  %25 = ptrtoint ptr %prio.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %inc.sink.i, ptr %prio.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end40.sink.split.i, %if.end25.i.if.end40.i_crit_edge
  %flags42.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %flags42.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags42.i, align 4
  %and43.i = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %list56.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 15
  %arrayidx59.i = getelementptr [8 x %struct.list_head], ptr @audit_rules_list, i32 0, i32 %19
  br i1 %tobool44.not.i, label %if.else54.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end40.i
  %28 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx59.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list56.i, ptr noundef %arrayidx59.i, ptr noundef %29) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then45.i.list_add.exit.i_crit_edge

if.then45.i.list_add.exit.i_crit_edge:            ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list56.i, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %list56.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %list56.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 15, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx59.i, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list56.i, ptr %arrayidx59.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then45.i.list_add.exit.i_crit_edge
  %34 = ptrtoint ptr %list.0102.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list.0102.i, align 4
  %call.i.i89.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call, ptr noundef %list.0102.i, ptr noundef %35) #15
  br i1 %call.i.i89.i, label %if.end.i.i90.i, label %list_add.exit.i.list_add_rcu.exit.i_crit_edge

list_add.exit.i.list_add_rcu.exit.i_crit_edge:    ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_rcu.exit.i

if.end.i.i90.i:                                   ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %call, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %37 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list.0102.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  %38 = ptrtoint ptr %list.0102.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call, ptr %list.0102.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call, ptr %prev37.i.i.i, align 4
  br label %list_add_rcu.exit.i

list_add_rcu.exit.i:                              ; preds = %if.end.i.i90.i, %list_add.exit.i.list_add_rcu.exit.i_crit_edge
  %40 = ptrtoint ptr %flags42.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags42.i, align 4
  %and53.i = and i32 %41, -17
  store i32 %and53.i, ptr %flags42.i, align 4
  br label %sw.epilog

if.else54.i:                                      ; preds = %if.end40.i
  %prev.i.i = getelementptr [8 x %struct.list_head], ptr @audit_rules_list, i32 0, i32 %19, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 4
  %call.i.i91.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list56.i, ptr noundef %43, ptr noundef %arrayidx59.i) #15
  br i1 %call.i.i91.i, label %if.end.i.i93.i, label %if.else54.i.list_add_tail.exit.i_crit_edge

if.else54.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i93.i:                                   ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list56.i, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %list56.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx59.i, ptr %list56.i, align 4
  %prev3.i.i92.i = getelementptr inbounds %struct.audit_entry, ptr %call, i32 0, i32 2, i32 15, i32 1
  %46 = ptrtoint ptr %prev3.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i92.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list56.i, ptr %43, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i93.i, %if.else54.i.list_add_tail.exit.i_crit_edge
  %prev.i94.i = getelementptr inbounds %struct.list_head, ptr %list.0102.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i94.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i94.i, align 4
  %call.i.i95.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call, ptr noundef %49, ptr noundef %list.0102.i) #15
  br i1 %call.i.i95.i, label %if.end.i.i97.i, label %list_add_tail.exit.i.sw.epilog_crit_edge

list_add_tail.exit.i.sw.epilog_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i.i97.i:                                   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list.0102.i, ptr %call, align 4
  %prev2.i.i96.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %51 = ptrtoint ptr %prev2.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %prev2.i.i96.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call, ptr %49, align 4
  %53 = ptrtoint ptr %prev.i94.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call, ptr %prev.i94.i, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = tail call fastcc ptr @audit_data_to_entry(ptr noundef %data, i32 noundef %datasz)
  %cmp.i63 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.then8, label %sw.epilog.thread

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %call6 to i32
  br label %cleanup

sw.epilog.thread:                                 ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 @audit_del_rule(ptr noundef %call6)
  %rule12 = getelementptr inbounds %struct.audit_entry, ptr %call6, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  %lnot.ext15 = zext i1 %tobool13.not to i32
  tail call fastcc void @audit_log_rule_change(ptr noundef nonnull @.str.3, ptr noundef %rule12, i32 noundef %lnot.ext15)
  br label %if.then37

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1153, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i.i97.i, %list_add_tail.exit.i.sw.epilog_crit_edge, %list_add_rcu.exit.i, %if.end7.i.sw.epilog_crit_edge, %audit_find_rule.exit.i.sw.epilog_crit_edge
  %tobool.not = phi i32 [ 1, %if.end.i.i97.i ], [ 1, %list_add_tail.exit.i.sw.epilog_crit_edge ], [ 1, %list_add_rcu.exit.i ], [ 0, %if.end7.i.sw.epilog_crit_edge ], [ 0, %audit_find_rule.exit.i.sw.epilog_crit_edge ]
  %tobool36.not = phi i1 [ false, %if.end.i.i97.i ], [ false, %list_add_tail.exit.i.sw.epilog_crit_edge ], [ false, %list_add_rcu.exit.i ], [ true, %if.end7.i.sw.epilog_crit_edge ], [ true, %audit_find_rule.exit.i.sw.epilog_crit_edge ]
  %retval.0.i = phi i32 [ 0, %if.end.i.i97.i ], [ 0, %list_add_tail.exit.i.sw.epilog_crit_edge ], [ 0, %list_add_rcu.exit.i ], [ -22, %if.end7.i.sw.epilog_crit_edge ], [ -17, %audit_find_rule.exit.i.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @audit_filter_mutex) #15
  tail call fastcc void @audit_log_rule_change(ptr noundef nonnull @.str.2, ptr noundef %rule.i.i, i32 noundef %tobool.not)
  br i1 %tobool36.not, label %sw.epilog.if.then37_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.epilog.if.then37_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

if.then37:                                        ; preds = %sw.epilog.if.then37_crit_edge, %sw.epilog.thread
  %entry1.072 = phi ptr [ %call6, %sw.epilog.thread ], [ %call, %sw.epilog.if.then37_crit_edge ]
  %err.071 = phi i32 [ %call11, %sw.epilog.thread ], [ %retval.0.i, %sw.epilog.if.then37_crit_edge ]
  %fields.i = getelementptr inbounds %struct.audit_entry, ptr %entry1.072, i32 0, i32 2, i32 8
  %55 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fields.i, align 4
  %tobool1.not.i = icmp eq ptr %56, null
  br i1 %tobool1.not.i, label %if.then37.audit_free_rule.exit_crit_edge, label %for.cond.preheader.i

if.then37.audit_free_rule.exit_crit_edge:         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

for.cond.preheader.i:                             ; preds = %if.then37
  %field_count.i = getelementptr inbounds %struct.audit_entry, ptr %entry1.072, i32 0, i32 2, i32 6
  %57 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %field_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp14.not.i = icmp eq i32 %58, 0
  br i1 %cmp14.not.i, label %for.cond.preheader.i.audit_free_rule.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.audit_free_rule.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

for.body.i:                                       ; preds = %audit_free_lsm_field.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i64, %audit_free_lsm_field.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fields.i, align 4
  %arrayidx.i = getelementptr %struct.audit_field, ptr %60, i32 %i.015.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %62, label %for.body.i.audit_free_lsm_field.exit.i_crit_edge [
    i32 13, label %for.body.i.sw.bb.i.i_crit_edge
    i32 14, label %for.body.i.sw.bb.i.i_crit_edge97
    i32 15, label %for.body.i.sw.bb.i.i_crit_edge98
    i32 16, label %for.body.i.sw.bb.i.i_crit_edge99
    i32 17, label %for.body.i.sw.bb.i.i_crit_edge100
    i32 19, label %for.body.i.sw.bb.i.i_crit_edge101
    i32 20, label %for.body.i.sw.bb.i.i_crit_edge102
    i32 21, label %for.body.i.sw.bb.i.i_crit_edge103
    i32 22, label %for.body.i.sw.bb.i.i_crit_edge104
    i32 23, label %for.body.i.sw.bb.i.i_crit_edge105
  ]

for.body.i.sw.bb.i.i_crit_edge105:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge104:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge103:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge102:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge101:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge100:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge99:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge98:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge97:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.audit_free_lsm_field.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_lsm_field.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i.sw.bb.i.i_crit_edge, %for.body.i.sw.bb.i.i_crit_edge97, %for.body.i.sw.bb.i.i_crit_edge98, %for.body.i.sw.bb.i.i_crit_edge99, %for.body.i.sw.bb.i.i_crit_edge100, %for.body.i.sw.bb.i.i_crit_edge101, %for.body.i.sw.bb.i.i_crit_edge102, %for.body.i.sw.bb.i.i_crit_edge103, %for.body.i.sw.bb.i.i_crit_edge104, %for.body.i.sw.bb.i.i_crit_edge105
  %64 = getelementptr %struct.audit_field, ptr %60, i32 %i.015.i, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  tail call void @kfree(ptr noundef %66) #15
  %lsm_rule.i.i = getelementptr %struct.audit_field, ptr %60, i32 %i.015.i, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %lsm_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lsm_rule.i.i, align 4
  tail call void @security_audit_rule_free(ptr noundef %68) #15
  br label %audit_free_lsm_field.exit.i

audit_free_lsm_field.exit.i:                      ; preds = %sw.bb.i.i, %for.body.i.audit_free_lsm_field.exit.i_crit_edge
  %inc.i64 = add nuw i32 %i.015.i, 1
  %69 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %field_count.i, align 4
  %cmp.i65 = icmp ult i32 %inc.i64, %70
  br i1 %cmp.i65, label %audit_free_lsm_field.exit.i.for.body.i_crit_edge, label %audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge

audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge: ; preds = %audit_free_lsm_field.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

audit_free_lsm_field.exit.i.for.body.i_crit_edge: ; preds = %audit_free_lsm_field.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

audit_free_rule.exit:                             ; preds = %audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge, %for.cond.preheader.i.audit_free_rule.exit_crit_edge, %if.then37.audit_free_rule.exit_crit_edge
  %71 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fields.i, align 4
  tail call void @kfree(ptr noundef %72) #15
  %filterkey.i = getelementptr inbounds %struct.audit_entry, ptr %entry1.072, i32 0, i32 2, i32 7
  %73 = ptrtoint ptr %filterkey.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %filterkey.i, align 8
  tail call void @kfree(ptr noundef %74) #15
  tail call void @kfree(ptr noundef %entry1.072) #15
  br label %cleanup

cleanup:                                          ; preds = %audit_free_rule.exit, %sw.epilog.cleanup_crit_edge, %do.end, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ %54, %if.then8 ], [ %1, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %err.071, %audit_free_rule.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @audit_data_to_entry(ptr noundef %data, i32 noundef %datasz) unnamed_addr #0 align 64 {
entry:
  %bufp = alloca ptr, align 4
  %remain = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bufp) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remain) #15
  %sub = add i32 %datasz, -1040
  %0 = ptrtoint ptr %remain to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sub, ptr %remain, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %and.i = and i32 %2, -17
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and.i, label %entry.cleanup167_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 5, label %entry.sw.epilog.i_crit_edge536
    i32 6, label %entry.sw.epilog.i_crit_edge537
  ]

entry.sw.epilog.i_crit_edge537:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge536:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

entry.cleanup167_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup167

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge536, %entry.sw.epilog.i_crit_edge537
  %action.i = getelementptr inbounds %struct.audit_rule_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %5, label %sw.epilog.i.cleanup167_crit_edge [
    i32 1, label %do.end.i
    i32 0, label %sw.epilog.i.if.end8.i_crit_edge
    i32 2, label %sw.epilog.i.if.end8.i_crit_edge538
  ], !prof !82

sw.epilog.i.if.end8.i_crit_edge538:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

sw.epilog.i.if.end8.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

sw.epilog.i.cleanup167_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup167

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #20
  br label %cleanup167

if.end8.i:                                        ; preds = %sw.epilog.i.if.end8.i_crit_edge, %sw.epilog.i.if.end8.i_crit_edge538
  %field_count.i = getelementptr inbounds %struct.audit_rule_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %field_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp9.i = icmp ugt i32 %8, 64
  br i1 %cmp9.i, label %if.end8.i.cleanup167_crit_edge, label %if.end11.i

if.end8.i.cleanup167_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup167

if.end11.i:                                       ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 352) #19
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end11.i.cleanup167_crit_edge, label %if.end7.i.i.i.i, !prof !77

if.end11.i.cleanup167_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup167

if.end7.i.i.i.i:                                  ; preds = %if.end11.i
  %10 = shl nuw nsw i32 %8, 4
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #18
  %tobool6.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.then15.i.i, label %if.end16.i, !prof !77

if.then15.i.i:                                    ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #15
  br label %cleanup167

if.end16.i:                                       ; preds = %if.end7.i.i.i.i
  %fields17.i.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %fields17.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i.i.i, ptr %fields17.i.i, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %and18.i = and i32 %13, 16
  %flags20.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %flags20.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and18.i, ptr %flags20.i, align 4
  %listnr22.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %listnr22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %listnr22.i, align 8
  %16 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %action.i, align 4
  %action25.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %action25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %action25.i, align 4
  %19 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field_count.i, align 4
  %field_count28.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 6
  %21 = ptrtoint ptr %field_count28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %field_count28.i, align 4
  %uglygep.i = getelementptr i8, ptr %call7.i.i.i.i, i32 32
  %uglygep117.i = getelementptr i8, ptr %data, i32 12
  %22 = call ptr @memcpy(ptr %uglygep.i, ptr %uglygep117.i, i32 256)
  br label %for.body35.i

for.body35.i:                                     ; preds = %cleanup.i.for.body35.i_crit_edge, %if.end16.i
  %i.1115.i = phi i32 [ %inc68.i, %cleanup.i.for.body35.i_crit_edge ], [ 0, %if.end16.i ]
  %sub36.i = sub nuw nsw i32 2047, %i.1115.i
  %div.udiv119.i = lshr i32 %sub36.i, 5
  %arrayidx39.i = getelementptr %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 4, i32 %div.udiv119.i
  %23 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx39.i, align 4
  %mul.neg.i = mul nsw i32 %div.udiv119.i, -32
  %sub41.i = add nsw i32 %mul.neg.i, %sub36.i
  %shl.i = shl nuw i32 1, %sub41.i
  %and42.i = and i32 %shl.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %for.body35.i.cleanup.i_crit_edge, label %if.end45.i

for.body35.i.cleanup.i_crit_edge:                 ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end45.i:                                       ; preds = %for.body35.i
  %neg.i = xor i32 %shl.i, -1
  %and50.i = and i32 %24, %neg.i
  %25 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and50.i, ptr %arrayidx39.i, align 4
  %arrayidx51.i = getelementptr [16 x ptr], ptr @classes, i32 0, i32 %i.1115.i
  %26 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx51.i, align 4
  %tobool52.not.i = icmp eq ptr %27, null
  br i1 %tobool52.not.i, label %if.end45.i.cleanup.i_crit_edge, label %if.end45.i.for.body56.i_crit_edge

if.end45.i.for.body56.i_crit_edge:                ; preds = %if.end45.i
  br label %for.body56.i

if.end45.i.cleanup.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

for.body56.i:                                     ; preds = %for.body56.i.for.body56.i_crit_edge, %if.end45.i.for.body56.i_crit_edge
  %j.0114.i = phi i32 [ %inc62.i, %for.body56.i.for.body56.i_crit_edge ], [ 0, %if.end45.i.for.body56.i_crit_edge ]
  %arrayidx57.i = getelementptr i32, ptr %27, i32 %j.0114.i
  %28 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx57.i, align 4
  %arrayidx60.i = getelementptr %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 4, i32 %j.0114.i
  %30 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx60.i, align 4
  %or.i = or i32 %31, %29
  store i32 %or.i, ptr %arrayidx60.i, align 4
  %inc62.i = add nuw nsw i32 %j.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc62.i, 64
  br i1 %exitcond.not.i, label %for.body56.i.cleanup.i_crit_edge, label %for.body56.i.for.body56.i_crit_edge

for.body56.i.for.body56.i_crit_edge:              ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body56.i

for.body56.i.cleanup.i_crit_edge:                 ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body56.i.cleanup.i_crit_edge, %if.end45.i.cleanup.i_crit_edge, %for.body35.i.cleanup.i_crit_edge
  %inc68.i = add nuw nsw i32 %i.1115.i, 1
  %exitcond118.not.i = icmp eq i32 %inc68.i, 16
  br i1 %exitcond118.not.i, label %audit_to_entry_common.exit, label %cleanup.i.for.body35.i_crit_edge

cleanup.i.for.body35.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body35.i

audit_to_entry_common.exit:                       ; preds = %cleanup.i
  %cmp.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %audit_to_entry_common.exit.cleanup167_crit_edge, label %if.end

audit_to_entry_common.exit.cleanup167_crit_edge:  ; preds = %audit_to_entry_common.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup167

if.end:                                           ; preds = %audit_to_entry_common.exit
  %buf = getelementptr inbounds %struct.audit_rule_data, ptr %data, i32 0, i32 8
  %32 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf, ptr %bufp, align 4
  %33 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %field_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp427.not = icmp eq i32 %34, 0
  br i1 %cmp427.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %rule = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2
  %filterkey = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 7
  %buflen113 = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 5
  %inode_f.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 10
  %watch.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 11
  %tree.i = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 12
  %arch_f = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0428 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %fields17.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fields17.i.i, align 4
  %arrayidx = getelementptr %struct.audit_field, ptr %36, i32 %i.0428
  %arrayidx3 = getelementptr %struct.audit_rule_data, ptr %data, i32 0, i32 6, i32 %i.0428
  %37 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx3, align 4
  %39 = add i32 %38, -134217728
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %40)
  %41 = icmp ult i32 %40, 12
  br i1 %41, label %switch.hole_check, label %for.body.audit_to_op.exit_crit_edge

for.body.audit_to_op.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_to_op.exit

audit_to_op.exit:                                 ; preds = %switch.hole_check.audit_to_op.exit_crit_edge, %for.body.audit_to_op.exit_crit_edge
  %op = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 2
  %42 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %op, align 4
  br label %exit_free

switch.hole_check:                                ; preds = %for.body
  %switch.maskindex = trunc i32 %40 to i16
  %switch.shifted = lshr i16 2987, %switch.maskindex
  %43 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %switch.lobit.not = icmp eq i16 %43, 0
  br i1 %switch.lobit.not, label %switch.hole_check.audit_to_op.exit_crit_edge, label %switch.lookup

switch.hole_check.audit_to_op.exit_crit_edge:     ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_to_op.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.audit_data_to_entry, i32 0, i32 %40
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load i32, ptr %switch.gep, align 4
  %op372 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 2
  %45 = ptrtoint ptr %op372 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %switch.load, ptr %op372, align 4
  %arrayidx10 = getelementptr %struct.audit_rule_data, ptr %data, i32 0, i32 4, i32 %i.0428
  %46 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx10, align 4
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr %struct.audit_rule_data, ptr %data, i32 0, i32 5, i32 %i.0428
  %49 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %47)
  %cmp13 = icmp eq i32 %47, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp14 = icmp eq i32 %50, -1
  %or.cond = select i1 %cmp13, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then15, label %switch.lookup.if.end18_crit_edge

switch.lookup.if.end18_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then15:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 24, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rule, align 8
  %or = or i32 %53, 1
  store i32 %or, ptr %rule, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %switch.lookup.if.end18_crit_edge
  %f_val.0 = phi i32 [ 0, %if.then15 ], [ %50, %switch.lookup.if.end18_crit_edge ]
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %55, label %sw.epilog.i268thread-pre-split [
    i32 12, label %sw.bb.i
    i32 26, label %sw.bb5.i
    i32 106, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.end18
  %57 = ptrtoint ptr %listnr22.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %listnr22.i, align 8
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %58, label %sw.bb.i.exit_free_crit_edge [
    i32 5, label %sw.bb.i.sw.bb26.i_crit_edge
    i32 0, label %sw.bb.i.sw.bb26.i_crit_edge539
  ]

sw.bb.i.sw.bb26.i_crit_edge539:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.bb.i.sw.bb26.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.bb.i.exit_free_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb5.i:                                         ; preds = %if.end18
  %60 = ptrtoint ptr %listnr22.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %listnr22.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %61)
  %cmp8.not.i = icmp eq i32 %61, 6
  br i1 %cmp8.not.i, label %sw.bb5.i.sw.bb32.i_crit_edge, label %sw.bb5.i.exit_free_crit_edge

sw.bb5.i.exit_free_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb5.i.sw.bb32.i_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.bb11.i:                                        ; preds = %if.end18
  %62 = ptrtoint ptr %listnr22.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %listnr22.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %cmp14.i = icmp eq i32 %63, 7
  br i1 %cmp14.i, label %sw.bb11.i.exit_free_crit_edge, label %sw.bb11.i.sw.epilog.i268_crit_edge

sw.bb11.i.sw.epilog.i268_crit_edge:               ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i268

sw.bb11.i.exit_free_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.epilog.i268thread-pre-split:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %listnr22.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr = load i32, ptr %listnr22.i, align 8
  br label %sw.epilog.i268

sw.epilog.i268:                                   ; preds = %sw.epilog.i268thread-pre-split, %sw.bb11.i.sw.epilog.i268_crit_edge
  %65 = phi i32 [ %.pr, %sw.epilog.i268thread-pre-split ], [ %63, %sw.bb11.i.sw.epilog.i268_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %65)
  %cond.i = icmp eq i32 %65, 6
  br i1 %cond.i, label %sw.bb19.i, label %sw.epilog.i268.sw.epilog23.i_crit_edge

sw.epilog.i268.sw.epilog23.i_crit_edge:           ; preds = %sw.epilog.i268
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog23.i

sw.bb19.i:                                        ; preds = %sw.epilog.i268
  %66 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %55, label %sw.bb19.i.exit_free_crit_edge [
    i32 26, label %sw.bb19.i.sw.epilog23.i_crit_edge
    i32 210, label %sw.bb19.i.sw.epilog23.i_crit_edge540
  ]

sw.bb19.i.sw.epilog23.i_crit_edge540:             ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog23.i

sw.bb19.i.sw.epilog23.i_crit_edge:                ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog23.i

sw.bb19.i.exit_free_crit_edge:                    ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.epilog23.i:                                    ; preds = %sw.bb19.i.sw.epilog23.i_crit_edge, %sw.bb19.i.sw.epilog23.i_crit_edge540, %sw.epilog.i268.sw.epilog23.i_crit_edge
  %67 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %55, label %sw.epilog23.i.exit_free_crit_edge [
    i32 200, label %sw.epilog23.i.sw.epilog41.i_crit_edge
    i32 201, label %sw.epilog23.i.sw.epilog41.i_crit_edge541
    i32 202, label %sw.epilog23.i.sw.epilog41.i_crit_edge542
    i32 203, label %sw.epilog23.i.sw.epilog41.i_crit_edge543
    i32 10, label %sw.epilog23.i.sw.epilog41.i_crit_edge544
    i32 101, label %sw.epilog23.i.sw.epilog41.i_crit_edge545
    i32 1, label %sw.epilog23.i.sw.bb26.i_crit_edge
    i32 2, label %sw.epilog23.i.sw.bb26.i_crit_edge546
    i32 3, label %sw.epilog23.i.sw.bb26.i_crit_edge547
    i32 4, label %sw.epilog23.i.sw.bb26.i_crit_edge548
    i32 9, label %sw.epilog23.i.sw.bb26.i_crit_edge549
    i32 109, label %sw.epilog23.i.sw.bb26.i_crit_edge550
    i32 5, label %sw.epilog23.i.sw.bb26.i_crit_edge551
    i32 6, label %sw.epilog23.i.sw.bb26.i_crit_edge552
    i32 7, label %sw.epilog23.i.sw.bb26.i_crit_edge553
    i32 8, label %sw.epilog23.i.sw.bb26.i_crit_edge554
    i32 110, label %sw.epilog23.i.sw.bb26.i_crit_edge555
    i32 0, label %sw.epilog23.i.sw.bb26.i_crit_edge556
    i32 12, label %sw.epilog23.i.sw.bb26.i_crit_edge557
    i32 18, label %sw.epilog23.i.sw.bb26.i_crit_edge558
    i32 100, label %sw.epilog23.i.sw.bb26.i_crit_edge559
    i32 103, label %sw.epilog23.i.sw.bb26.i_crit_edge560
    i32 104, label %sw.epilog23.i.sw.bb26.i_crit_edge561
    i32 102, label %sw.epilog23.i.sw.bb26.i_crit_edge562
    i32 25, label %sw.epilog23.i.sw.bb26.i_crit_edge563
    i32 16, label %sw.epilog23.i.sw.bb26.i_crit_edge564
    i32 17, label %sw.epilog23.i.sw.bb26.i_crit_edge565
    i32 22, label %sw.epilog23.i.sw.bb26.i_crit_edge566
    i32 23, label %sw.epilog23.i.sw.bb26.i_crit_edge567
    i32 113, label %sw.epilog23.i.sw.bb26.i_crit_edge568
    i32 13, label %sw.epilog23.i.sw.bb32.i_crit_edge
    i32 14, label %sw.epilog23.i.sw.bb32.i_crit_edge569
    i32 15, label %sw.epilog23.i.sw.bb32.i_crit_edge570
    i32 19, label %sw.epilog23.i.sw.bb32.i_crit_edge571
    i32 20, label %sw.epilog23.i.sw.bb32.i_crit_edge572
    i32 21, label %sw.epilog23.i.sw.bb32.i_crit_edge573
    i32 105, label %sw.epilog23.i.sw.bb32.i_crit_edge574
    i32 107, label %sw.epilog23.i.sw.bb32.i_crit_edge575
    i32 210, label %sw.epilog23.i.sw.bb32.i_crit_edge576
    i32 24, label %sw.epilog23.i.sw.bb32.i_crit_edge577
    i32 11, label %sw.epilog23.i.sw.bb32.i_crit_edge578
    i32 26, label %sw.epilog23.i.sw.bb32.i_crit_edge579
    i32 106, label %sw.epilog23.i.sw.bb32.i_crit_edge580
    i32 108, label %sw.epilog23.i.sw.bb32.i_crit_edge581
    i32 111, label %sw.epilog23.i.sw.bb32.i_crit_edge582
    i32 112, label %sw.epilog23.i.sw.bb32.i_crit_edge583
  ]

sw.epilog23.i.sw.bb32.i_crit_edge583:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge582:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge581:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge580:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge579:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge578:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge577:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge576:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge575:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge574:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge573:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge572:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge571:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge570:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge569:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb32.i_crit_edge:                ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb32.i

sw.epilog23.i.sw.bb26.i_crit_edge568:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge567:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge566:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge565:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge564:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge563:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge562:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge561:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge560:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge559:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge558:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge557:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge556:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge555:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge554:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge553:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge552:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge551:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge550:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge549:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge548:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge547:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge546:             ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.bb26.i_crit_edge:                ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb26.i

sw.epilog23.i.sw.epilog41.i_crit_edge545:         ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog41.i

sw.epilog23.i.sw.epilog41.i_crit_edge544:         ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog41.i

sw.epilog23.i.sw.epilog41.i_crit_edge543:         ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog41.i

sw.epilog23.i.sw.epilog41.i_crit_edge542:         ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog41.i

sw.epilog23.i.sw.epilog41.i_crit_edge541:         ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog41.i

sw.epilog23.i.sw.epilog41.i_crit_edge:            ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog41.i

sw.epilog23.i.exit_free_crit_edge:                ; preds = %sw.epilog23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb26.i:                                        ; preds = %sw.epilog23.i.sw.bb26.i_crit_edge, %sw.epilog23.i.sw.bb26.i_crit_edge546, %sw.epilog23.i.sw.bb26.i_crit_edge547, %sw.epilog23.i.sw.bb26.i_crit_edge548, %sw.epilog23.i.sw.bb26.i_crit_edge549, %sw.epilog23.i.sw.bb26.i_crit_edge550, %sw.epilog23.i.sw.bb26.i_crit_edge551, %sw.epilog23.i.sw.bb26.i_crit_edge552, %sw.epilog23.i.sw.bb26.i_crit_edge553, %sw.epilog23.i.sw.bb26.i_crit_edge554, %sw.epilog23.i.sw.bb26.i_crit_edge555, %sw.epilog23.i.sw.bb26.i_crit_edge556, %sw.epilog23.i.sw.bb26.i_crit_edge557, %sw.epilog23.i.sw.bb26.i_crit_edge558, %sw.epilog23.i.sw.bb26.i_crit_edge559, %sw.epilog23.i.sw.bb26.i_crit_edge560, %sw.epilog23.i.sw.bb26.i_crit_edge561, %sw.epilog23.i.sw.bb26.i_crit_edge562, %sw.epilog23.i.sw.bb26.i_crit_edge563, %sw.epilog23.i.sw.bb26.i_crit_edge564, %sw.epilog23.i.sw.bb26.i_crit_edge565, %sw.epilog23.i.sw.bb26.i_crit_edge566, %sw.epilog23.i.sw.bb26.i_crit_edge567, %sw.epilog23.i.sw.bb26.i_crit_edge568, %sw.bb.i.sw.bb26.i_crit_edge, %sw.bb.i.sw.bb26.i_crit_edge539
  %68 = ptrtoint ptr %op372 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %op372, align 4
  %70 = and i32 %69, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %switch.i = icmp eq i32 %70, 2
  br i1 %switch.i, label %sw.bb26.i.exit_free_crit_edge, label %sw.bb26.i.sw.epilog41.i_crit_edge

sw.bb26.i.sw.epilog41.i_crit_edge:                ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog41.i

sw.bb26.i.exit_free_crit_edge:                    ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb32.i:                                        ; preds = %sw.epilog23.i.sw.bb32.i_crit_edge, %sw.epilog23.i.sw.bb32.i_crit_edge569, %sw.epilog23.i.sw.bb32.i_crit_edge570, %sw.epilog23.i.sw.bb32.i_crit_edge571, %sw.epilog23.i.sw.bb32.i_crit_edge572, %sw.epilog23.i.sw.bb32.i_crit_edge573, %sw.epilog23.i.sw.bb32.i_crit_edge574, %sw.epilog23.i.sw.bb32.i_crit_edge575, %sw.epilog23.i.sw.bb32.i_crit_edge576, %sw.epilog23.i.sw.bb32.i_crit_edge577, %sw.epilog23.i.sw.bb32.i_crit_edge578, %sw.epilog23.i.sw.bb32.i_crit_edge579, %sw.epilog23.i.sw.bb32.i_crit_edge580, %sw.epilog23.i.sw.bb32.i_crit_edge581, %sw.epilog23.i.sw.bb32.i_crit_edge582, %sw.epilog23.i.sw.bb32.i_crit_edge583, %sw.bb5.i.sw.bb32.i_crit_edge
  %71 = ptrtoint ptr %op372 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %op372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %switch87.i = icmp ult i32 %72, 2
  br i1 %switch87.i, label %sw.bb32.i.sw.epilog41.i_crit_edge, label %sw.bb32.i.exit_free_crit_edge

sw.bb32.i.exit_free_crit_edge:                    ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb32.i.sw.epilog41.i_crit_edge:                ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog41.i

sw.epilog41.i:                                    ; preds = %sw.bb32.i.sw.epilog41.i_crit_edge, %sw.bb26.i.sw.epilog41.i_crit_edge, %sw.epilog23.i.sw.epilog41.i_crit_edge, %sw.epilog23.i.sw.epilog41.i_crit_edge541, %sw.epilog23.i.sw.epilog41.i_crit_edge542, %sw.epilog23.i.sw.epilog41.i_crit_edge543, %sw.epilog23.i.sw.epilog41.i_crit_edge544, %sw.epilog23.i.sw.epilog41.i_crit_edge545
  %73 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %55, label %sw.epilog41.i.sw.default_crit_edge [
    i32 24, label %sw.bb43.i
    i32 106, label %sw.bb49.i
    i32 108, label %sw.bb52.i
    i32 111, label %sw.bb57.i
    i32 113, label %sw.bb61.i
    i32 9, label %sw.epilog41.i.sw.bb_crit_edge
    i32 1, label %sw.epilog41.i.sw.bb_crit_edge584
    i32 2, label %sw.epilog41.i.sw.bb_crit_edge585
    i32 3, label %sw.epilog41.i.sw.bb_crit_edge586
    i32 4, label %sw.epilog41.i.sw.bb_crit_edge587
    i32 109, label %sw.epilog41.i.sw.bb_crit_edge588
    i32 5, label %sw.epilog41.i.sw.bb31_crit_edge
    i32 6, label %sw.epilog41.i.sw.bb31_crit_edge589
    i32 7, label %sw.epilog41.i.sw.bb31_crit_edge590
    i32 8, label %sw.epilog41.i.sw.bb31_crit_edge591
    i32 110, label %sw.epilog41.i.sw.bb31_crit_edge592
    i32 11, label %sw.bb48
    i32 13, label %sw.epilog41.i.sw.bb50_crit_edge
    i32 14, label %sw.epilog41.i.sw.bb50_crit_edge593
    i32 15, label %sw.epilog41.i.sw.bb50_crit_edge594
    i32 16, label %sw.epilog41.i.sw.bb50_crit_edge595
    i32 17, label %sw.epilog41.i.sw.bb50_crit_edge596
    i32 19, label %sw.epilog41.i.sw.bb50_crit_edge597
    i32 20, label %sw.epilog41.i.sw.bb50_crit_edge598
    i32 21, label %sw.epilog41.i.sw.bb50_crit_edge599
    i32 22, label %sw.epilog41.i.sw.bb50_crit_edge600
    i32 23, label %sw.epilog41.i.sw.bb50_crit_edge601
    i32 105, label %sw.bb71
    i32 107, label %sw.bb83
    i32 102, label %sw.bb95
    i32 210, label %sw.bb101
    i32 112, label %sw.bb117
  ]

sw.epilog41.i.sw.bb50_crit_edge601:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge600:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge599:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge598:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge597:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge596:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge595:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge594:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge593:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb50_crit_edge:                  ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

sw.epilog41.i.sw.bb31_crit_edge592:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb31

sw.epilog41.i.sw.bb31_crit_edge591:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb31

sw.epilog41.i.sw.bb31_crit_edge590:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb31

sw.epilog41.i.sw.bb31_crit_edge589:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb31

sw.epilog41.i.sw.bb31_crit_edge:                  ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb31

sw.epilog41.i.sw.bb_crit_edge588:                 ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.epilog41.i.sw.bb_crit_edge587:                 ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.epilog41.i.sw.bb_crit_edge586:                 ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.epilog41.i.sw.bb_crit_edge585:                 ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.epilog41.i.sw.bb_crit_edge584:                 ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.epilog41.i.sw.bb_crit_edge:                    ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.epilog41.i.sw.default_crit_edge:               ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb43.i:                                        ; preds = %sw.epilog41.i
  %74 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %switch88.i = icmp ult i32 %76, 2
  br i1 %switch88.i, label %sw.bb43.i.sw.default_crit_edge, label %sw.bb43.i.exit_free_crit_edge

sw.bb43.i.exit_free_crit_edge:                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb43.i.sw.default_crit_edge:                   ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb49.i:                                        ; preds = %sw.epilog41.i
  %77 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %79)
  %tobool.not.i = icmp ult i32 %79, 16
  br i1 %tobool.not.i, label %sw.bb49.i.sw.default_crit_edge, label %sw.bb49.i.exit_free_crit_edge

sw.bb49.i.exit_free_crit_edge:                    ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb49.i.sw.default_crit_edge:                   ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb52.i:                                        ; preds = %sw.epilog41.i
  %80 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %and53.i = and i32 %82, -61441
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %sw.bb52.i.sw.default_crit_edge, label %sw.bb52.i.exit_free_crit_edge

sw.bb52.i.exit_free_crit_edge:                    ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb52.i.sw.default_crit_edge:                   ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb57.i:                                        ; preds = %sw.epilog41.i
  %83 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %85)
  %cmp58.i = icmp ugt i32 %85, 25
  br i1 %cmp58.i, label %sw.bb57.i.exit_free_crit_edge, label %sw.bb57.i.sw.default_crit_edge

sw.bb57.i.sw.default_crit_edge:                   ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb57.i.exit_free_crit_edge:                    ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb61.i:                                        ; preds = %sw.epilog41.i
  %86 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %88)
  %cmp62.i = icmp ugt i32 %88, 45
  br i1 %cmp62.i, label %sw.bb61.i.exit_free_crit_edge, label %sw.bb61.i.sw.default_crit_edge

sw.bb61.i.sw.default_crit_edge:                   ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb61.i.exit_free_crit_edge:                    ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb:                                            ; preds = %sw.epilog41.i.sw.bb_crit_edge, %sw.epilog41.i.sw.bb_crit_edge584, %sw.epilog41.i.sw.bb_crit_edge585, %sw.epilog41.i.sw.bb_crit_edge586, %sw.epilog41.i.sw.bb_crit_edge587, %sw.epilog41.i.sw.bb_crit_edge588
  %89 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %90 = tail call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i270 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i270 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 99
  %94 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %95, i32 0, i32 25
  %96 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %user_ns, align 4
  %call26 = tail call i32 @make_kuid(ptr noundef %97, i32 noundef %f_val.0) #15
  %98 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call26, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26)
  %cmp.i271.not = icmp eq i32 %call26, -1
  br i1 %cmp.i271.not, label %sw.bb.exit_free_crit_edge, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb.exit_free_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb31:                                          ; preds = %sw.epilog41.i.sw.bb31_crit_edge, %sw.epilog41.i.sw.bb31_crit_edge589, %sw.epilog41.i.sw.bb31_crit_edge590, %sw.epilog41.i.sw.bb31_crit_edge591, %sw.epilog41.i.sw.bb31_crit_edge592
  %99 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %100 = tail call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i272 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i272 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task39, align 8
  %cred40 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 99
  %104 = ptrtoint ptr %cred40 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cred40, align 16
  %user_ns41 = getelementptr inbounds %struct.cred, ptr %105, i32 0, i32 25
  %106 = ptrtoint ptr %user_ns41 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %user_ns41, align 4
  %call42 = tail call i32 @make_kgid(ptr noundef %107, i32 noundef %f_val.0) #15
  %108 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call42, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call42)
  %cmp.i273.not = icmp eq i32 %call42, -1
  br i1 %cmp.i273.not, label %sw.bb31.exit_free_crit_edge, label %sw.bb31.for.inc_crit_edge

sw.bb31.for.inc_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb31.exit_free_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

sw.bb48:                                          ; preds = %sw.epilog41.i
  call void @__sanitizer_cov_trace_pc() #17
  %109 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %f_val.0, ptr %109, align 4
  %111 = ptrtoint ptr %arch_f to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %arrayidx, ptr %arch_f, align 8
  br label %for.inc

sw.bb50:                                          ; preds = %sw.epilog41.i.sw.bb50_crit_edge, %sw.epilog41.i.sw.bb50_crit_edge593, %sw.epilog41.i.sw.bb50_crit_edge594, %sw.epilog41.i.sw.bb50_crit_edge595, %sw.epilog41.i.sw.bb50_crit_edge596, %sw.epilog41.i.sw.bb50_crit_edge597, %sw.epilog41.i.sw.bb50_crit_edge598, %sw.epilog41.i.sw.bb50_crit_edge599, %sw.epilog41.i.sw.bb50_crit_edge600, %sw.epilog41.i.sw.bb50_crit_edge601
  %112 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bufp, align 4
  %tobool.not.i274 = icmp eq ptr %113, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_val.0)
  %cmp.i275 = icmp eq i32 %f_val.0, 0
  %or.cond.i = or i1 %cmp.i275, %tobool.not.i274
  br i1 %or.cond.i, label %sw.bb50.if.then53_crit_edge, label %lor.lhs.false1.i

sw.bb50.if.then53_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

lor.lhs.false1.i:                                 ; preds = %sw.bb50
  %114 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %remain, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %f_val.0)
  %cmp2.i = icmp ult i32 %115, %f_val.0
  br i1 %cmp2.i, label %lor.lhs.false1.i.if.then53_crit_edge, label %if.end.i

lor.lhs.false1.i.if.then53_crit_edge:             ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.end.i:                                         ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %f_val.0)
  %cmp3.i = icmp ugt i32 %f_val.0, 4096
  br i1 %cmp3.i, label %if.end.i.if.then53_crit_edge, label %if.end8.i.i

if.end.i.if.then53_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.end8.i.i:                                      ; preds = %if.end.i
  %add.i = add nuw nsw i32 %f_val.0, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #18
  %tobool8.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not.i, label %if.end8.i.i.if.then53_crit_edge, label %audit_unpack_string.exit, !prof !77

if.end8.i.i.if.then53_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

audit_unpack_string.exit:                         ; preds = %if.end8.i.i
  %116 = call ptr @memcpy(ptr %call9.i.i, ptr %113, i32 %f_val.0)
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %f_val.0
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx.i, align 1
  %add.ptr.i = getelementptr i8, ptr %113, i32 %f_val.0
  %118 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr.i, ptr %bufp, align 4
  %sub.i = sub i32 %115, %f_val.0
  %119 = ptrtoint ptr %remain to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %sub.i, ptr %remain, align 4
  %cmp.i278 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %audit_unpack_string.exit.if.then53_crit_edge, label %if.end55

audit_unpack_string.exit.if.then53_crit_edge:     ; preds = %audit_unpack_string.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then53:                                        ; preds = %audit_unpack_string.exit.if.then53_crit_edge, %if.end8.i.i.if.then53_crit_edge, %if.end.i.if.then53_crit_edge, %lor.lhs.false1.i.if.then53_crit_edge, %sw.bb50.if.then53_crit_edge
  %retval.0.i276379 = phi ptr [ %call9.i.i, %audit_unpack_string.exit.if.then53_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.if.then53_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end.i.if.then53_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb50.if.then53_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false1.i.if.then53_crit_edge ]
  %120 = ptrtoint ptr %retval.0.i276379 to i32
  br label %exit_free

if.end55:                                         ; preds = %audit_unpack_string.exit
  %121 = ptrtoint ptr %buflen113 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %buflen113, align 8
  %add = add i32 %122, %f_val.0
  store i32 %add, ptr %buflen113, align 8
  %123 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call9.i.i, ptr %123, align 4
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx, align 4
  %127 = ptrtoint ptr %op372 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %op372, align 4
  %lsm_rule = getelementptr inbounds %struct.anon, ptr %123, i32 0, i32 1
  %call59 = tail call i32 @security_audit_rule_init(i32 noundef %126, i32 noundef %128, ptr noundef nonnull %call9.i.i, ptr noundef %lsm_rule) #15
  %129 = zext i32 %call59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call59, label %if.end55.exit_free_crit_edge [
    i32 -22, label %do.end64
    i32 0, label %if.end55.for.inc_crit_edge
  ]

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end55.exit_free_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call9.i.i) #20
  br label %for.inc

sw.bb71:                                          ; preds = %sw.epilog41.i
  %130 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bufp, align 4
  %tobool.not.i279 = icmp eq ptr %131, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_val.0)
  %cmp.i280 = icmp eq i32 %f_val.0, 0
  %or.cond.i281 = or i1 %cmp.i280, %tobool.not.i279
  br i1 %or.cond.i281, label %sw.bb71.if.then74_crit_edge, label %lor.lhs.false1.i283

sw.bb71.if.then74_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then74

lor.lhs.false1.i283:                              ; preds = %sw.bb71
  %132 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %remain, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %f_val.0)
  %cmp2.i282 = icmp ult i32 %133, %f_val.0
  br i1 %cmp2.i282, label %lor.lhs.false1.i283.if.then74_crit_edge, label %if.end.i285

lor.lhs.false1.i283.if.then74_crit_edge:          ; preds = %lor.lhs.false1.i283
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then74

if.end.i285:                                      ; preds = %lor.lhs.false1.i283
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %f_val.0)
  %cmp3.i284 = icmp ugt i32 %f_val.0, 4096
  br i1 %cmp3.i284, label %if.end.i285.if.then74_crit_edge, label %if.end8.i.i306

if.end.i285.if.then74_crit_edge:                  ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then74

if.end8.i.i306:                                   ; preds = %if.end.i285
  %add.i286 = add nuw nsw i32 %f_val.0, 1
  %call9.i.i305 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i286, i32 noundef 3264) #18
  %tobool8.not.i308 = icmp eq ptr %call9.i.i305, null
  br i1 %tobool8.not.i308, label %if.end8.i.i306.if.then74_crit_edge, label %audit_unpack_string.exit316, !prof !77

if.end8.i.i306.if.then74_crit_edge:               ; preds = %if.end8.i.i306
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then74

audit_unpack_string.exit316:                      ; preds = %if.end8.i.i306
  %134 = call ptr @memcpy(ptr %call9.i.i305, ptr %131, i32 %f_val.0)
  %arrayidx.i310 = getelementptr i8, ptr %call9.i.i305, i32 %f_val.0
  %135 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx.i310, align 1
  %add.ptr.i311 = getelementptr i8, ptr %131, i32 %f_val.0
  %136 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %add.ptr.i311, ptr %bufp, align 4
  %sub.i312 = sub i32 %133, %f_val.0
  %137 = ptrtoint ptr %remain to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub.i312, ptr %remain, align 4
  %cmp.i317 = icmp ugt ptr %call9.i.i305, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %audit_unpack_string.exit316.if.then74_crit_edge, label %if.then78

audit_unpack_string.exit316.if.then74_crit_edge:  ; preds = %audit_unpack_string.exit316
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then74

if.then74:                                        ; preds = %audit_unpack_string.exit316.if.then74_crit_edge, %if.end8.i.i306.if.then74_crit_edge, %if.end.i285.if.then74_crit_edge, %lor.lhs.false1.i283.if.then74_crit_edge, %sw.bb71.if.then74_crit_edge
  %retval.0.i314382 = phi ptr [ %call9.i.i305, %audit_unpack_string.exit316.if.then74_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i306.if.then74_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end.i285.if.then74_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb71.if.then74_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false1.i283.if.then74_crit_edge ]
  %138 = ptrtoint ptr %retval.0.i314382 to i32
  br label %exit_free

if.then78:                                        ; preds = %audit_unpack_string.exit316
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i305) #15
  br label %exit_free

sw.bb83:                                          ; preds = %sw.epilog41.i
  %139 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bufp, align 4
  %tobool.not.i318 = icmp eq ptr %140, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f_val.0)
  %cmp.i319 = icmp eq i32 %f_val.0, 0
  %or.cond.i320 = or i1 %cmp.i319, %tobool.not.i318
  br i1 %or.cond.i320, label %sw.bb83.if.then86_crit_edge, label %lor.lhs.false1.i322

sw.bb83.if.then86_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

lor.lhs.false1.i322:                              ; preds = %sw.bb83
  %141 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %remain, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %f_val.0)
  %cmp2.i321 = icmp ult i32 %142, %f_val.0
  br i1 %cmp2.i321, label %lor.lhs.false1.i322.if.then86_crit_edge, label %if.end.i324

lor.lhs.false1.i322.if.then86_crit_edge:          ; preds = %lor.lhs.false1.i322
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.end.i324:                                      ; preds = %lor.lhs.false1.i322
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %f_val.0)
  %cmp3.i323 = icmp ugt i32 %f_val.0, 4096
  br i1 %cmp3.i323, label %if.end.i324.if.then86_crit_edge, label %if.end8.i.i345

if.end.i324.if.then86_crit_edge:                  ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.end8.i.i345:                                   ; preds = %if.end.i324
  %add.i325 = add nuw nsw i32 %f_val.0, 1
  %call9.i.i344 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i325, i32 noundef 3264) #18
  %tobool8.not.i347 = icmp eq ptr %call9.i.i344, null
  br i1 %tobool8.not.i347, label %if.end8.i.i345.if.then86_crit_edge, label %audit_unpack_string.exit355, !prof !77

if.end8.i.i345.if.then86_crit_edge:               ; preds = %if.end8.i.i345
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

audit_unpack_string.exit355:                      ; preds = %if.end8.i.i345
  %143 = call ptr @memcpy(ptr %call9.i.i344, ptr %140, i32 %f_val.0)
  %arrayidx.i349 = getelementptr i8, ptr %call9.i.i344, i32 %f_val.0
  %144 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %arrayidx.i349, align 1
  %add.ptr.i350 = getelementptr i8, ptr %140, i32 %f_val.0
  %145 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %add.ptr.i350, ptr %bufp, align 4
  %sub.i351 = sub i32 %142, %f_val.0
  %146 = ptrtoint ptr %remain to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %sub.i351, ptr %remain, align 4
  %cmp.i356 = icmp ugt ptr %call9.i.i344, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i356, label %audit_unpack_string.exit355.if.then86_crit_edge, label %if.end88

audit_unpack_string.exit355.if.then86_crit_edge:  ; preds = %audit_unpack_string.exit355
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.then86:                                        ; preds = %audit_unpack_string.exit355.if.then86_crit_edge, %if.end8.i.i345.if.then86_crit_edge, %if.end.i324.if.then86_crit_edge, %lor.lhs.false1.i322.if.then86_crit_edge, %sw.bb83.if.then86_crit_edge
  %retval.0.i353385 = phi ptr [ %call9.i.i344, %audit_unpack_string.exit355.if.then86_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i345.if.then86_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end.i324.if.then86_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb83.if.then86_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false1.i322.if.then86_crit_edge ]
  %147 = ptrtoint ptr %retval.0.i353385 to i32
  br label %exit_free

if.end88:                                         ; preds = %audit_unpack_string.exit355
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i344) #15
  br label %exit_free

sw.bb95:                                          ; preds = %sw.epilog41.i
  %148 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %f_val.0, ptr %148, align 4
  %150 = ptrtoint ptr %listnr22.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %listnr22.i, align 8
  %152 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %151, label %sw.bb95.exit_free_crit_edge [
    i32 4, label %sw.bb95.lor.lhs.false.i_crit_edge
    i32 7, label %sw.bb95.lor.lhs.false.i_crit_edge602
  ]

sw.bb95.lor.lhs.false.i_crit_edge602:             ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i

sw.bb95.lor.lhs.false.i_crit_edge:                ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i

sw.bb95.exit_free_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

lor.lhs.false.i:                                  ; preds = %sw.bb95.lor.lhs.false.i_crit_edge, %sw.bb95.lor.lhs.false.i_crit_edge602
  %153 = ptrtoint ptr %inode_f.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %inode_f.i, align 4
  %tobool.not.i358 = icmp eq ptr %154, null
  br i1 %tobool.not.i358, label %lor.lhs.false3.i, label %lor.lhs.false.i.exit_free_crit_edge

lor.lhs.false.i.exit_free_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %155 = ptrtoint ptr %watch.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %watch.i, align 8
  %tobool4.not.i = icmp eq ptr %156, null
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false3.i.exit_free_crit_edge

lor.lhs.false3.i.exit_free_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false3.i
  %157 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tree.i, align 4
  %tobool6.not.i = icmp eq ptr %158, null
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false5.i.exit_free_crit_edge

lor.lhs.false5.i.exit_free_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false5.i
  %159 = ptrtoint ptr %op372 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %op372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %160)
  %switch.i360 = icmp ult i32 %160, 2
  br i1 %switch.i360, label %audit_to_inode.exit, label %lor.lhs.false7.i.exit_free_crit_edge

lor.lhs.false7.i.exit_free_crit_edge:             ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

audit_to_inode.exit:                              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #17
  %161 = ptrtoint ptr %inode_f.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %arrayidx, ptr %inode_f.i, align 4
  br label %for.inc

sw.bb101:                                         ; preds = %sw.epilog41.i
  %162 = ptrtoint ptr %filterkey to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %filterkey, align 8
  %tobool103.not = icmp ne ptr %163, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %f_val.0)
  %cmp104 = icmp ugt i32 %f_val.0, 256
  %or.cond266 = select i1 %tobool103.not, i1 true, i1 %cmp104
  br i1 %or.cond266, label %sw.bb101.exit_free_crit_edge, label %if.end106

sw.bb101.exit_free_crit_edge:                     ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

if.end106:                                        ; preds = %sw.bb101
  %call107 = call ptr @audit_unpack_string(ptr noundef nonnull %bufp, ptr noundef nonnull %remain, i32 noundef %f_val.0)
  %cmp.i363 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i363, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  %164 = ptrtoint ptr %call107 to i32
  br label %exit_free

if.end111:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  %165 = ptrtoint ptr %buflen113 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %buflen113, align 8
  %add114 = add i32 %166, %f_val.0
  store i32 %add114, ptr %buflen113, align 8
  %167 = ptrtoint ptr %filterkey to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call107, ptr %filterkey, align 8
  br label %for.inc

sw.bb117:                                         ; preds = %sw.epilog41.i
  %exe = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 13
  %168 = ptrtoint ptr %exe to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %exe, align 8
  %tobool119.not = icmp ne ptr %169, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %f_val.0)
  %cmp121 = icmp ugt i32 %f_val.0, 4096
  %or.cond267 = select i1 %tobool119.not, i1 true, i1 %cmp121
  br i1 %or.cond267, label %sw.bb117.exit_free_crit_edge, label %if.end123

sw.bb117.exit_free_crit_edge:                     ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit_free

if.end123:                                        ; preds = %sw.bb117
  %call124 = call ptr @audit_unpack_string(ptr noundef nonnull %bufp, ptr noundef nonnull %remain, i32 noundef %f_val.0)
  %cmp.i364 = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i364, label %if.then126, label %if.then131

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  %170 = ptrtoint ptr %call124 to i32
  br label %exit_free

if.then131:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %call124) #15
  br label %exit_free

sw.default:                                       ; preds = %sw.bb61.i.sw.default_crit_edge, %sw.bb57.i.sw.default_crit_edge, %sw.bb52.i.sw.default_crit_edge, %sw.bb49.i.sw.default_crit_edge, %sw.bb43.i.sw.default_crit_edge, %sw.epilog41.i.sw.default_crit_edge
  %171 = getelementptr %struct.audit_field, ptr %36, i32 %i.0428, i32 1
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %f_val.0, ptr %171, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %if.end111, %audit_to_inode.exit, %do.end64, %if.end55.for.inc_crit_edge, %sw.bb48, %sw.bb31.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %inc = add nuw i32 %i.0428, 1
  %173 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %field_count.i, align 4
  %cmp = icmp ult i32 %inc, %174
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %inode_f = getelementptr inbounds %struct.audit_entry, ptr %call7.i.i.i.i, i32 0, i32 2, i32 10
  %175 = ptrtoint ptr %inode_f to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %inode_f, align 4
  %tobool141.not = icmp eq ptr %176, null
  br i1 %tobool141.not, label %for.end.cleanup167_crit_edge, label %land.lhs.true142

for.end.cleanup167_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup167

land.lhs.true142:                                 ; preds = %for.end
  %op145 = getelementptr inbounds %struct.audit_field, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %op145 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %op145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %178)
  %cmp146 = icmp eq i32 %178, 1
  br i1 %cmp146, label %if.then147, label %land.lhs.true142.cleanup167_crit_edge

land.lhs.true142.cleanup167_crit_edge:            ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup167

if.then147:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #17
  %179 = ptrtoint ptr %inode_f to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %inode_f, align 4
  br label %cleanup167

exit_free:                                        ; preds = %if.then131, %if.then126, %sw.bb117.exit_free_crit_edge, %if.then109, %sw.bb101.exit_free_crit_edge, %lor.lhs.false7.i.exit_free_crit_edge, %lor.lhs.false5.i.exit_free_crit_edge, %lor.lhs.false3.i.exit_free_crit_edge, %lor.lhs.false.i.exit_free_crit_edge, %sw.bb95.exit_free_crit_edge, %if.end88, %if.then86, %if.then78, %if.then74, %if.end55.exit_free_crit_edge, %if.then53, %sw.bb31.exit_free_crit_edge, %sw.bb.exit_free_crit_edge, %sw.bb61.i.exit_free_crit_edge, %sw.bb57.i.exit_free_crit_edge, %sw.bb52.i.exit_free_crit_edge, %sw.bb49.i.exit_free_crit_edge, %sw.bb43.i.exit_free_crit_edge, %sw.bb32.i.exit_free_crit_edge, %sw.bb26.i.exit_free_crit_edge, %sw.epilog23.i.exit_free_crit_edge, %sw.bb19.i.exit_free_crit_edge, %sw.bb11.i.exit_free_crit_edge, %sw.bb5.i.exit_free_crit_edge, %sw.bb.i.exit_free_crit_edge, %audit_to_op.exit
  %err.1.ph = phi i32 [ -22, %sw.bb117.exit_free_crit_edge ], [ -22, %audit_to_op.exit ], [ %120, %if.then53 ], [ -22, %if.then78 ], [ %138, %if.then74 ], [ -22, %if.end88 ], [ %147, %if.then86 ], [ %164, %if.then109 ], [ -22, %if.then131 ], [ %170, %if.then126 ], [ -22, %sw.bb101.exit_free_crit_edge ], [ %call59, %if.end55.exit_free_crit_edge ], [ -22, %sw.bb31.exit_free_crit_edge ], [ -22, %sw.bb.exit_free_crit_edge ], [ -22, %sw.bb.i.exit_free_crit_edge ], [ -22, %sw.bb5.i.exit_free_crit_edge ], [ -22, %sw.bb11.i.exit_free_crit_edge ], [ -22, %sw.bb19.i.exit_free_crit_edge ], [ -22, %sw.bb26.i.exit_free_crit_edge ], [ -22, %sw.bb32.i.exit_free_crit_edge ], [ -22, %sw.epilog23.i.exit_free_crit_edge ], [ -22, %sw.bb43.i.exit_free_crit_edge ], [ -22, %sw.bb49.i.exit_free_crit_edge ], [ -22, %sw.bb52.i.exit_free_crit_edge ], [ -22, %sw.bb57.i.exit_free_crit_edge ], [ -22, %sw.bb61.i.exit_free_crit_edge ], [ -22, %lor.lhs.false7.i.exit_free_crit_edge ], [ -22, %sw.bb95.exit_free_crit_edge ], [ -22, %lor.lhs.false5.i.exit_free_crit_edge ], [ -22, %lor.lhs.false3.i.exit_free_crit_edge ], [ -22, %lor.lhs.false.i.exit_free_crit_edge ]
  %180 = ptrtoint ptr %fields17.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %fields17.i.i, align 4
  %tobool1.not.i = icmp eq ptr %181, null
  br i1 %tobool1.not.i, label %exit_free.audit_free_rule.exit_crit_edge, label %for.cond.preheader.i

exit_free.audit_free_rule.exit_crit_edge:         ; preds = %exit_free
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

for.cond.preheader.i:                             ; preds = %exit_free
  %182 = ptrtoint ptr %field_count28.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %field_count28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp14.not.i = icmp eq i32 %183, 0
  br i1 %cmp14.not.i, label %for.cond.preheader.i.audit_free_rule.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.audit_free_rule.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

for.body.i:                                       ; preds = %audit_free_lsm_field.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %audit_free_lsm_field.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %184 = ptrtoint ptr %fields17.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fields17.i.i, align 4
  %arrayidx.i366 = getelementptr %struct.audit_field, ptr %185, i32 %i.015.i
  %186 = ptrtoint ptr %arrayidx.i366 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.i366, align 4
  %188 = zext i32 %187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %187, label %for.body.i.audit_free_lsm_field.exit.i_crit_edge [
    i32 13, label %for.body.i.sw.bb.i.i_crit_edge
    i32 14, label %for.body.i.sw.bb.i.i_crit_edge603
    i32 15, label %for.body.i.sw.bb.i.i_crit_edge604
    i32 16, label %for.body.i.sw.bb.i.i_crit_edge605
    i32 17, label %for.body.i.sw.bb.i.i_crit_edge606
    i32 19, label %for.body.i.sw.bb.i.i_crit_edge607
    i32 20, label %for.body.i.sw.bb.i.i_crit_edge608
    i32 21, label %for.body.i.sw.bb.i.i_crit_edge609
    i32 22, label %for.body.i.sw.bb.i.i_crit_edge610
    i32 23, label %for.body.i.sw.bb.i.i_crit_edge611
  ]

for.body.i.sw.bb.i.i_crit_edge611:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge610:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge609:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge608:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge607:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge606:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge605:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge604:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge603:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.sw.bb.i.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.audit_free_lsm_field.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_lsm_field.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i.sw.bb.i.i_crit_edge, %for.body.i.sw.bb.i.i_crit_edge603, %for.body.i.sw.bb.i.i_crit_edge604, %for.body.i.sw.bb.i.i_crit_edge605, %for.body.i.sw.bb.i.i_crit_edge606, %for.body.i.sw.bb.i.i_crit_edge607, %for.body.i.sw.bb.i.i_crit_edge608, %for.body.i.sw.bb.i.i_crit_edge609, %for.body.i.sw.bb.i.i_crit_edge610, %for.body.i.sw.bb.i.i_crit_edge611
  %189 = getelementptr %struct.audit_field, ptr %185, i32 %i.015.i, i32 1
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  tail call void @kfree(ptr noundef %191) #15
  %lsm_rule.i.i = getelementptr %struct.audit_field, ptr %185, i32 %i.015.i, i32 1, i32 0, i32 1
  %192 = ptrtoint ptr %lsm_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %lsm_rule.i.i, align 4
  tail call void @security_audit_rule_free(ptr noundef %193) #15
  br label %audit_free_lsm_field.exit.i

audit_free_lsm_field.exit.i:                      ; preds = %sw.bb.i.i, %for.body.i.audit_free_lsm_field.exit.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %194 = ptrtoint ptr %field_count28.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %field_count28.i, align 4
  %cmp.i367 = icmp ult i32 %inc.i, %195
  br i1 %cmp.i367, label %audit_free_lsm_field.exit.i.for.body.i_crit_edge, label %audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge

audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge: ; preds = %audit_free_lsm_field.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_free_rule.exit

audit_free_lsm_field.exit.i.for.body.i_crit_edge: ; preds = %audit_free_lsm_field.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

audit_free_rule.exit:                             ; preds = %audit_free_lsm_field.exit.i.audit_free_rule.exit_crit_edge, %for.cond.preheader.i.audit_free_rule.exit_crit_edge, %exit_free.audit_free_rule.exit_crit_edge
  %196 = ptrtoint ptr %fields17.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %fields17.i.i, align 4
  tail call void @kfree(ptr noundef %197) #15
  %198 = ptrtoint ptr %filterkey to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %filterkey, align 8
  tail call void @kfree(ptr noundef %199) #15
  tail call void @kfree(ptr noundef %call7.i.i.i.i) #15
  %200 = inttoptr i32 %err.1.ph to ptr
  br label %cleanup167

cleanup167:                                       ; preds = %audit_free_rule.exit, %if.then147, %land.lhs.true142.cleanup167_crit_edge, %for.end.cleanup167_crit_edge, %audit_to_entry_common.exit.cleanup167_crit_edge, %if.then15.i.i, %if.end11.i.cleanup167_crit_edge, %if.end8.i.cleanup167_crit_edge, %do.end.i, %sw.epilog.i.cleanup167_crit_edge, %entry.cleanup167_crit_edge
  %retval.0 = phi ptr [ %200, %audit_free_rule.exit ], [ %call7.i.i.i.i, %for.end.cleanup167_crit_edge ], [ %call7.i.i.i.i, %land.lhs.true142.cleanup167_crit_edge ], [ %call7.i.i.i.i, %if.then147 ], [ %call7.i.i.i.i, %audit_to_entry_common.exit.cleanup167_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end11.i.cleanup167_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then15.i.i ], [ inttoptr (i32 -22 to ptr), %sw.epilog.i.cleanup167_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end8.i.cleanup167_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %entry.cleanup167_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remain) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufp) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @audit_log_rule_change(ptr noundef %action, ptr nocapture noundef readonly %rule, i32 noundef %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %0 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1305) #15
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @audit_log_session_info(ptr noundef nonnull %call1) #15
  %call5 = tail call i32 @audit_log_task_context(ptr noundef nonnull %call1) #15
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.15, ptr noundef %action) #15
  %filterkey = getelementptr inbounds %struct.audit_krule, ptr %rule, i32 0, i32 7
  %1 = ptrtoint ptr %filterkey to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %filterkey, align 8
  tail call void @audit_log_key(ptr noundef nonnull %call1, ptr noundef %2) #15
  %listnr = getelementptr inbounds %struct.audit_krule, ptr %rule, i32 0, i32 2
  %3 = ptrtoint ptr %listnr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %listnr, align 8
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.16, i32 noundef %4, i32 noundef %res) #15
  tail call void @audit_log_end(ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_list_rules_send(ptr nocapture noundef readonly %request_skb, i32 noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 64) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.sk_buff, ptr %request_skb, i32 0, i32 3, i32 24
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !77

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %net = getelementptr inbounds %struct.audit_netlink_list, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %net, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %request_skb, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid, align 4
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call7.i, align 8
  %q = getelementptr inbounds %struct.audit_netlink_list, ptr %call7.i, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.audit_netlink_list, ptr %call7.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #15
  %11 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %q, ptr %q, align 8
  %prev.i.i = getelementptr inbounds %struct.audit_netlink_list, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.audit_netlink_list, ptr %call7.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @audit_filter_mutex, i32 noundef 0) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc19.i.for.body.i_crit_edge, %get_net.exit
  %i.046.i = phi i32 [ 0, %get_net.exit ], [ %inc.i, %for.inc19.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.list_head], ptr @audit_rules_list, i32 0, i32 %i.046.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn43.i = load ptr, ptr %arrayidx.i, align 4
  %cmp3.not44.i = icmp eq ptr %.pn43.i, %arrayidx.i
  br i1 %cmp3.not44.i, label %for.body.i.for.inc19.i_crit_edge, label %for.body.i.for.body4.i_crit_edge

for.body.i.for.body4.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body4.i

for.body.i.for.inc19.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc19.i

for.body4.i:                                      ; preds = %cleanup.i.for.body4.i_crit_edge, %for.body.i.for.body4.i_crit_edge
  %.pn45.i = phi ptr [ %.pn.i, %cleanup.i.for.body4.i_crit_edge ], [ %.pn43.i, %for.body.i.for.body4.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn45.i, i32 -316
  %buflen.i.i = getelementptr i8, ptr %.pn45.i, i32 -44
  %15 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buflen.i.i, align 8
  %spec.select.i.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %16, i32 1040) #15
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i.i, i32 noundef 3264) #18
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body4.i.for.inc19.i_crit_edge, label %if.end.i.i, !prof !77

for.body4.i.for.inc19.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc19.i

if.end.i.i:                                       ; preds = %for.body4.i
  %17 = getelementptr inbounds i8, ptr %call9.i.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 1032)
  %flags.i.i = getelementptr i8, ptr %.pn45.i, i32 -312
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i, align 4
  %listnr.i.i = getelementptr i8, ptr %.pn45.i, i32 -308
  %21 = ptrtoint ptr %listnr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %listnr.i.i, align 8
  %or.i.i = or i32 %22, %20
  %23 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %call9.i.i.i, align 128
  %action.i.i = getelementptr i8, ptr %.pn45.i, i32 -304
  %24 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %action.i.i, align 4
  %action6.i.i = getelementptr inbounds %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %action6.i.i, align 4
  %field_count.i.i = getelementptr i8, ptr %.pn45.i, i32 -40
  %27 = ptrtoint ptr %field_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %field_count.i.i, align 4
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp132.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp132.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %buf.i.i = getelementptr inbounds %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 8
  %fields.i.i = getelementptr i8, ptr %.pn45.i, i32 -32
  %filterkey.i.i = getelementptr i8, ptr %.pn45.i, i32 -36
  %buflen33.i.i = getelementptr inbounds %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %sw.epilog.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0135.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %bufp.0133.i.i = phi ptr [ %buf.i.i, %for.body.lr.ph.i.i ], [ %bufp.1.i.i, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %fields.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fields.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.audit_field, ptr %31, i32 %i.0135.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.0135.i.i
  %34 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx10.i.i, align 4
  %op.i.i = getelementptr %struct.audit_field, ptr %31, i32 %i.0135.i.i, i32 2
  %35 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %op.i.i, align 4
  %arrayidx11.i.i = getelementptr [8 x i32], ptr @audit_ops, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx11.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 6, i32 %i.0135.i.i
  %39 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx12.i.i, align 4
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %40, label %for.body.i.i.sw.default.i.i_crit_edge [
    i32 13, label %for.body.i.i.sw.bb.i.i_crit_edge
    i32 14, label %for.body.i.i.sw.bb.i.i_crit_edge35
    i32 15, label %for.body.i.i.sw.bb.i.i_crit_edge36
    i32 16, label %for.body.i.i.sw.bb.i.i_crit_edge37
    i32 17, label %for.body.i.i.sw.bb.i.i_crit_edge38
    i32 19, label %for.body.i.i.sw.bb.i.i_crit_edge39
    i32 20, label %for.body.i.i.sw.bb.i.i_crit_edge40
    i32 21, label %for.body.i.i.sw.bb.i.i_crit_edge41
    i32 22, label %for.body.i.i.sw.bb.i.i_crit_edge42
    i32 23, label %for.body.i.i.sw.bb.i.i_crit_edge43
    i32 105, label %sw.bb17.i.i
    i32 107, label %sw.bb23.i.i
    i32 210, label %sw.bb29.i.i
    i32 112, label %sw.bb35.i.i
    i32 24, label %sw.bb41.i.i
  ]

for.body.i.i.sw.bb.i.i_crit_edge43:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge42:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge41:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge40:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge39:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge38:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge37:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge36:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge35:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.bb.i.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

for.body.i.i.sw.default.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %for.body.i.i.sw.bb.i.i_crit_edge, %for.body.i.i.sw.bb.i.i_crit_edge35, %for.body.i.i.sw.bb.i.i_crit_edge36, %for.body.i.i.sw.bb.i.i_crit_edge37, %for.body.i.i.sw.bb.i.i_crit_edge38, %for.body.i.i.sw.bb.i.i_crit_edge39, %for.body.i.i.sw.bb.i.i_crit_edge40, %for.body.i.i.sw.bb.i.i_crit_edge41, %for.body.i.i.sw.bb.i.i_crit_edge42, %for.body.i.i.sw.bb.i.i_crit_edge43
  %42 = getelementptr %struct.audit_field, ptr %31, i32 %i.0135.i.i, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call.i.i.i = tail call i32 @strlen(ptr noundef %44) #21
  %45 = call ptr @memcpy(ptr %bufp.0133.i.i, ptr %44, i32 %call.i.i.i)
  %add.ptr.i.i.i = getelementptr i8, ptr %bufp.0133.i.i, i32 %call.i.i.i
  %arrayidx15.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.0135.i.i
  %46 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i.i.i, ptr %arrayidx15.i.i, align 4
  %47 = ptrtoint ptr %buflen33.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buflen33.i.i, align 4
  %add.i.i = add i32 %48, %call.i.i.i
  store i32 %add.i.i, ptr %buflen33.i.i, align 4
  br label %sw.epilog.i.i

sw.bb17.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx20.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.0135.i.i
  %49 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx20.i.i, align 4
  br label %sw.epilog.i.i

sw.bb23.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx26.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.0135.i.i
  %50 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx26.i.i, align 4
  br label %sw.epilog.i.i

sw.bb29.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %filterkey.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %filterkey.i.i, align 8
  %call.i119.i.i = tail call i32 @strlen(ptr noundef %52) #21
  %53 = call ptr @memcpy(ptr %bufp.0133.i.i, ptr %52, i32 %call.i119.i.i)
  %add.ptr.i120.i.i = getelementptr i8, ptr %bufp.0133.i.i, i32 %call.i119.i.i
  %arrayidx32.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.0135.i.i
  %54 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call.i119.i.i, ptr %arrayidx32.i.i, align 4
  %55 = ptrtoint ptr %buflen33.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buflen33.i.i, align 4
  %add34.i.i = add i32 %56, %call.i119.i.i
  store i32 %add34.i.i, ptr %buflen33.i.i, align 4
  br label %sw.epilog.i.i

sw.bb35.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx38.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.0135.i.i
  %57 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx38.i.i, align 4
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %for.body.i.i
  %58 = ptrtoint ptr %r.0.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %r.0.i, align 8
  %and.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool42.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool42.not.i.i, label %sw.bb41.i.i.sw.default.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb41.i.i.sw.default.i.i_crit_edge:             ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb41.i.i
  %60 = getelementptr %struct.audit_field, ptr %31, i32 %i.0135.i.i, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool43.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool43.not.i.i, label %if.then44.i.i, label %land.lhs.true.i.i.sw.default.i.i_crit_edge

land.lhs.true.i.i.sw.default.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i.i

if.then44.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 9, ptr %arrayidx10.i.i, align 4
  %arrayidx48.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.0135.i.i
  %64 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %arrayidx48.i.i, align 4
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %land.lhs.true.i.i.sw.default.i.i_crit_edge, %sw.bb41.i.i.sw.default.i.i_crit_edge, %for.body.i.i.sw.default.i.i_crit_edge
  %65 = getelementptr %struct.audit_field, ptr %31, i32 %i.0135.i.i, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %arrayidx51.i.i = getelementptr %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.0135.i.i
  %68 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx51.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %if.then44.i.i, %sw.bb35.i.i, %sw.bb29.i.i, %sw.bb23.i.i, %sw.bb17.i.i, %sw.bb.i.i
  %bufp.1.i.i = phi ptr [ %bufp.0133.i.i, %sw.default.i.i ], [ %bufp.0133.i.i, %if.then44.i.i ], [ %bufp.0133.i.i, %sw.bb35.i.i ], [ %add.ptr.i120.i.i, %sw.bb29.i.i ], [ %bufp.0133.i.i, %sw.bb23.i.i ], [ %bufp.0133.i.i, %sw.bb17.i.i ], [ %add.ptr.i.i.i, %sw.bb.i.i ]
  %inc.i.i = add nuw i32 %i.0135.i.i, 1
  %69 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %17, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %70
  br i1 %cmp.i.i, label %sw.epilog.i.i.for.body.i.i_crit_edge, label %sw.epilog.i.i.if.end.i_crit_edge

sw.epilog.i.i.if.end.i_crit_edge:                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end.i:                                         ; preds = %sw.epilog.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %uglygep.i.i = getelementptr i8, ptr %call9.i.i.i, i32 12
  %uglygep139.i.i = getelementptr i8, ptr %.pn45.i, i32 -300
  %71 = call ptr @memcpy(ptr %uglygep.i.i, ptr %uglygep139.i.i, i32 256)
  %buflen.i = getelementptr inbounds %struct.audit_rule_data, ptr %call9.i.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buflen.i, align 4
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %73, i32 1040) #15
  %call10.i = tail call ptr @audit_make_reply(i32 noundef %seq, i32 noundef 1013, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %call9.i.i.i, i32 noundef %spec.select.i.i) #15
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end.i.cleanup.i_crit_edge, label %if.then12.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call10.i) #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then12.i, %if.end.i.cleanup.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #15
  %74 = ptrtoint ptr %.pn45.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i = load ptr, ptr %.pn45.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp3.not.i, label %cleanup.i.for.inc19.i_crit_edge, label %cleanup.i.for.body4.i_crit_edge

cleanup.i.for.body4.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4.i

cleanup.i.for.inc19.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %cleanup.i.for.inc19.i_crit_edge, %for.body4.i.for.inc19.i_crit_edge, %for.body.i.for.inc19.i_crit_edge
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end20.i, label %for.inc19.i.for.body.i_crit_edge

for.inc19.i.for.body.i_crit_edge:                 ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end20.i:                                      ; preds = %for.inc19.i
  %call21.i = tail call ptr @audit_make_reply(i32 noundef %seq, i32 noundef 1013, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0) #15
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %for.end20.i.audit_list_rules.exit_crit_edge, label %if.then23.i

for.end20.i.audit_list_rules.exit_crit_edge:      ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_list_rules.exit

if.then23.i:                                      ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @skb_queue_tail(ptr noundef %q, ptr noundef nonnull %call21.i) #15
  br label %audit_list_rules.exit

audit_list_rules.exit:                            ; preds = %if.then23.i, %for.end20.i.audit_list_rules.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @audit_filter_mutex) #15
  %call6 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @audit_send_list_thread, ptr noundef nonnull %call7.i, i32 noundef -1, ptr noundef nonnull @.str.5) #15
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end10

if.end10:                                         ; preds = %audit_list_rules.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 @wake_up_process(ptr noundef %call6) #15
  br label %cleanup

if.then12:                                        ; preds = %audit_list_rules.exit
  tail call void @skb_queue_purge(ptr noundef %q) #15
  %75 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net, align 4
  %count.i31 = getelementptr inbounds %struct.net, ptr %76, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i31, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %count.i31, i32 1, i32 3, i32 1) #15
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i31, ptr %count.i31, i32 1, ptr elementtype(i32) %count.i31) #15, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i33, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i31, i32 noundef 3) #15
  br label %put_net.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !87
  tail call void @__put_net(ptr noundef %76) #15
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  %78 = ptrtoint ptr %call6 to i32
  br label %cleanup

cleanup:                                          ; preds = %put_net.exit, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %78, %put_net.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @audit_send_list_thread(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @audit_comparator(i32 noundef %left, i32 noundef %op, i32 noundef %right) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %op, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb4
    i32 6, label %sw.bb7
    i32 5, label %sw.bb10
    i32 7, label %sw.bb13
    i32 2, label %sw.bb16
    i32 3, label %sw.bb17
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %left, i32 %right)
  %cmp = icmp eq i32 %left, %right
  %conv = zext i1 %cmp to i32
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %left, i32 %right)
  %cmp2 = icmp ne i32 %left, %right
  %conv3 = zext i1 %cmp2 to i32
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %left, i32 %right)
  %cmp5 = icmp ult i32 %left, %right
  %conv6 = zext i1 %cmp5 to i32
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %left, i32 %right)
  %cmp8 = icmp ule i32 %left, %right
  %conv9 = zext i1 %cmp8 to i32
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %left, i32 %right)
  %cmp11 = icmp ugt i32 %left, %right
  %conv12 = zext i1 %cmp11 to i32
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %left, i32 %right)
  %cmp14 = icmp uge i32 %left, %right
  %conv15 = zext i1 %cmp14 to i32
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and = and i32 %right, %left
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and18 = and i32 %right, %left
  call void @__sanitizer_cov_trace_cmp4(i32 %and18, i32 %right)
  %cmp19 = icmp eq i32 %and18, %right
  %conv20 = zext i1 %cmp19 to i32
  br label %return

return:                                           ; preds = %sw.bb17, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv20, %sw.bb17 ], [ %and, %sw.bb16 ], [ %conv15, %sw.bb13 ], [ %conv12, %sw.bb10 ], [ %conv9, %sw.bb7 ], [ %conv6, %sw.bb4 ], [ %conv3, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @audit_uid_comparator([1 x i32] %left.coerce, i32 noundef %op, [1 x i32] %right.coerce) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %op, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 4, label %sw.bb8
    i32 6, label %sw.bb13
    i32 5, label %sw.bb18
    i32 7, label %sw.bb23
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %uid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6.i = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i.i, i32 %uid.coerce.fca.0.extract.i6.i)
  %cmp.i = icmp eq i32 %uid.coerce.fca.0.extract.i.i, %uid.coerce.fca.0.extract.i6.i
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %uid.coerce.fca.0.extract.i.i70 = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6.i71 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i.i70, i32 %uid.coerce.fca.0.extract.i6.i71)
  %cmp.i72 = icmp ne i32 %uid.coerce.fca.0.extract.i.i70, %uid.coerce.fca.0.extract.i6.i71
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %uid.coerce.fca.0.extract.i.i73 = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6.i74 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i.i73, i32 %uid.coerce.fca.0.extract.i6.i74)
  %cmp.i75 = icmp ult i32 %uid.coerce.fca.0.extract.i.i73, %uid.coerce.fca.0.extract.i6.i74
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %uid.coerce.fca.0.extract.i.i76 = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6.i77 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i.i76, i32 %uid.coerce.fca.0.extract.i6.i77)
  %cmp.i78 = icmp ule i32 %uid.coerce.fca.0.extract.i.i76, %uid.coerce.fca.0.extract.i6.i77
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %uid.coerce.fca.0.extract.i.i79 = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6.i80 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i.i79, i32 %uid.coerce.fca.0.extract.i6.i80)
  %cmp.i81 = icmp ugt i32 %uid.coerce.fca.0.extract.i.i79, %uid.coerce.fca.0.extract.i6.i80
  br label %return

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %uid.coerce.fca.0.extract.i.i82 = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6.i83 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i.i82, i32 %uid.coerce.fca.0.extract.i6.i83)
  %cmp.i84 = icmp uge i32 %uid.coerce.fca.0.extract.i.i82, %uid.coerce.fca.0.extract.i6.i83
  br label %return

return:                                           ; preds = %sw.bb23, %sw.bb18, %sw.bb13, %sw.bb8, %sw.bb4, %sw.bb, %entry.return_crit_edge
  %retval.0.shrunk = phi i1 [ %cmp.i84, %sw.bb23 ], [ %cmp.i81, %sw.bb18 ], [ %cmp.i78, %sw.bb13 ], [ %cmp.i75, %sw.bb8 ], [ %cmp.i72, %sw.bb4 ], [ %cmp.i, %sw.bb ], [ false, %entry.return_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @audit_gid_comparator([1 x i32] %left.coerce, i32 noundef %op, [1 x i32] %right.coerce) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %op, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 4, label %sw.bb8
    i32 6, label %sw.bb13
    i32 5, label %sw.bb18
    i32 7, label %sw.bb23
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6.i = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %gid.coerce.fca.0.extract.i6.i)
  %cmp.i = icmp eq i32 %gid.coerce.fca.0.extract.i.i, %gid.coerce.fca.0.extract.i6.i
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gid.coerce.fca.0.extract.i.i70 = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6.i71 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i70, i32 %gid.coerce.fca.0.extract.i6.i71)
  %cmp.i72 = icmp ne i32 %gid.coerce.fca.0.extract.i.i70, %gid.coerce.fca.0.extract.i6.i71
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gid.coerce.fca.0.extract.i.i73 = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6.i74 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i73, i32 %gid.coerce.fca.0.extract.i6.i74)
  %cmp.i75 = icmp ult i32 %gid.coerce.fca.0.extract.i.i73, %gid.coerce.fca.0.extract.i6.i74
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gid.coerce.fca.0.extract.i.i76 = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6.i77 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i76, i32 %gid.coerce.fca.0.extract.i6.i77)
  %cmp.i78 = icmp ule i32 %gid.coerce.fca.0.extract.i.i76, %gid.coerce.fca.0.extract.i6.i77
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gid.coerce.fca.0.extract.i.i79 = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6.i80 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i79, i32 %gid.coerce.fca.0.extract.i6.i80)
  %cmp.i81 = icmp ugt i32 %gid.coerce.fca.0.extract.i.i79, %gid.coerce.fca.0.extract.i6.i80
  br label %return

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gid.coerce.fca.0.extract.i.i82 = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6.i83 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i82, i32 %gid.coerce.fca.0.extract.i6.i83)
  %cmp.i84 = icmp uge i32 %gid.coerce.fca.0.extract.i.i82, %gid.coerce.fca.0.extract.i6.i83
  br label %return

return:                                           ; preds = %sw.bb23, %sw.bb18, %sw.bb13, %sw.bb8, %sw.bb4, %sw.bb, %entry.return_crit_edge
  %retval.0.shrunk = phi i1 [ %cmp.i84, %sw.bb23 ], [ %cmp.i81, %sw.bb18 ], [ %cmp.i78, %sw.bb13 ], [ %cmp.i75, %sw.bb8 ], [ %cmp.i72, %sw.bb4 ], [ %cmp.i, %sw.bb ], [ false, %entry.return_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parent_len(ptr noundef %path) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %path) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %path, i32 %call
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %add.ptr.pn = phi ptr [ %add.ptr, %if.end ], [ %p.0, %while.cond.while.cond_crit_edge ]
  %p.0 = getelementptr i8, ptr %add.ptr.pn, i32 -1
  %0 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp2 = icmp eq i8 %1, 47
  %cmp4 = icmp ugt ptr %p.0, %path
  %or.cond = and i1 %cmp2, %cmp4
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond6_crit_edge

while.cond.while.cond6_crit_edge:                 ; preds = %while.cond
  br label %while.cond6

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

while.cond6:                                      ; preds = %while.cond6.while.cond6_crit_edge, %while.cond.while.cond6_crit_edge
  %p.1 = phi ptr [ %incdec.ptr15, %while.cond6.while.cond6_crit_edge ], [ %p.0, %while.cond.while.cond6_crit_edge ]
  %2 = ptrtoint ptr %p.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp8.not = icmp ne i8 %3, 47
  %cmp11 = icmp ugt ptr %p.1, %path
  %or.cond38 = and i1 %cmp11, %cmp8.not
  %incdec.ptr15 = getelementptr i8, ptr %p.1, i32 -1
  br i1 %or.cond38, label %while.cond6.while.cond6_crit_edge, label %while.end16

while.cond6.while.cond6_crit_edge:                ; preds = %while.cond6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond6

while.end16:                                      ; preds = %while.cond6
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp18 = icmp eq i8 %3, 47
  %spec.select.idx = zext i1 %cmp18 to i32
  %spec.select = getelementptr i8, ptr %p.1, i32 %spec.select.idx
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %path to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %while.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %while.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_compare_dname_path(ptr nocapture noundef readonly %dname, ptr noundef %path, i32 noundef %parentlen) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dname, align 8
  %call = tail call i32 @strlen(ptr noundef %path) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp = icmp slt i32 %call, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %parentlen)
  %cmp1 = icmp eq i32 %parentlen, -1
  br i1 %cmp1, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.end
  %call.i = tail call i32 @strlen(ptr noundef %path) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %cond.true.cond.end_crit_edge, label %if.end.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  %add.ptr.i = getelementptr i8, ptr %path, i32 %call.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i
  %add.ptr.pn.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %p.0.i, %while.cond.i.while.cond.i_crit_edge ]
  %p.0.i = getelementptr i8, ptr %add.ptr.pn.i, i32 -1
  %2 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp2.i = icmp eq i8 %3, 47
  %cmp4.i = icmp ugt ptr %p.0.i, %path
  %or.cond.i = and i1 %cmp2.i, %cmp4.i
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.while.cond6.i_crit_edge

while.cond.i.while.cond6.i_crit_edge:             ; preds = %while.cond.i
  br label %while.cond6.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

while.cond6.i:                                    ; preds = %while.cond6.i.while.cond6.i_crit_edge, %while.cond.i.while.cond6.i_crit_edge
  %p.1.i = phi ptr [ %incdec.ptr15.i, %while.cond6.i.while.cond6.i_crit_edge ], [ %p.0.i, %while.cond.i.while.cond6.i_crit_edge ]
  %4 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %5)
  %cmp8.not.i = icmp ne i8 %5, 47
  %cmp11.i = icmp ugt ptr %p.1.i, %path
  %or.cond38.i = and i1 %cmp11.i, %cmp8.not.i
  %incdec.ptr15.i = getelementptr i8, ptr %p.1.i, i32 -1
  br i1 %or.cond38.i, label %while.cond6.i.while.cond6.i_crit_edge, label %while.end16.i

while.cond6.i.while.cond6.i_crit_edge:            ; preds = %while.cond6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond6.i

while.end16.i:                                    ; preds = %while.cond6.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %5)
  %cmp18.i = icmp eq i8 %5, 47
  %spec.select.idx.i = zext i1 %cmp18.i to i32
  %spec.select.i = getelementptr i8, ptr %p.1.i, i32 %spec.select.idx.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %spec.select.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %path to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %cond.end

cond.end:                                         ; preds = %while.end16.i, %cond.true.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %parentlen, %if.end.cond.end_crit_edge ], [ %sub.ptr.sub.i, %while.end16.i ], [ 0, %cond.true.cond.end_crit_edge ]
  %sub = sub i32 %call, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %cmp3.not = icmp eq i32 %sub, %1
  br i1 %cmp3.not, label %if.end5, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %path, i32 %cond
  %name = getelementptr inbounds %struct.qstr, ptr %dname, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %call6 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef %7, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_filter(i32 noundef %msgtype, i32 noundef %listtype) local_unnamed_addr #0 align 64 {
entry:
  %sid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !88
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b145 = load i1, ptr @audit_filter.__warned, align 1
  br i1 %.b145, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @audit_filter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1335, ptr noundef nonnull @.str.6) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %arrayidx = getelementptr [8 x %struct.list_head], ptr @audit_filter_list, i32 0, i32 %listtype
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %e.0282 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not283 = icmp eq ptr %e.0282, %arrayidx
  br i1 %cmp.not283, label %do.end.unlock_and_return_crit_edge, label %do.end.for.cond10.preheader_crit_edge

do.end.for.cond10.preheader_crit_edge:            ; preds = %do.end
  br label %for.cond10.preheader

do.end.unlock_and_return_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_and_return

for.cond10.preheader:                             ; preds = %cleanup95.for.cond10.preheader_crit_edge, %do.end.for.cond10.preheader_crit_edge
  %e.0284 = phi ptr [ %e.0, %cleanup95.for.cond10.preheader_crit_edge ], [ %e.0282, %do.end.for.cond10.preheader_crit_edge ]
  %field_count = getelementptr inbounds %struct.audit_entry, ptr %e.0284, i32 0, i32 2, i32 6
  %5 = ptrtoint ptr %field_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11277.not = icmp eq i32 %6, 0
  br i1 %cmp11277.not, label %for.cond10.preheader.cleanup95_crit_edge, label %for.body12.lr.ph

for.cond10.preheader.cleanup95_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %fields = getelementptr inbounds %struct.audit_entry, ptr %e.0284, i32 0, i32 2, i32 8
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.lr.ph
  %i.0279 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc, %for.inc.for.body12_crit_edge ]
  %result.0278 = phi i32 [ 0, %for.body12.lr.ph ], [ %result.1248, %for.inc.for.body12_crit_edge ]
  %7 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fields, align 4
  %arrayidx14 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sid) #15
  %9 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %sid, align 4, !annotation !89
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %11, label %for.body12.cleanup.thread_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.end21
    i32 5, label %do.end32
    i32 9, label %sw.bb41
    i32 24, label %sw.bb51
    i32 12, label %sw.bb57
    i32 13, label %for.body12.sw.bb60_crit_edge
    i32 14, label %for.body12.sw.bb60_crit_edge339
    i32 15, label %for.body12.sw.bb60_crit_edge340
    i32 16, label %for.body12.sw.bb60_crit_edge341
    i32 17, label %for.body12.sw.bb60_crit_edge342
    i32 112, label %sw.bb68
  ]

for.body12.sw.bb60_crit_edge342:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb60

for.body12.sw.bb60_crit_edge341:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb60

for.body12.sw.bb60_crit_edge340:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb60

for.body12.sw.bb60_crit_edge339:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb60

for.body12.sw.bb60_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb60

for.body12.cleanup.thread_crit_edge:              ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

sw.bb:                                            ; preds = %for.body12
  %13 = call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid.i, align 8
  %op = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 2
  %19 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %op, align 4
  %21 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %20, label %sw.bb.for.end.thread_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 4, label %sw.bb4.i
    i32 6, label %sw.bb7.i
    i32 5, label %sw.bb10.i
    i32 7, label %sw.bb13.i
    i32 2, label %sw.bb16.i
    i32 3, label %sw.bb17.i
  ]

sw.bb.for.end.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %23)
  %cmp.i = icmp eq i32 %18, %23
  %conv.i = zext i1 %cmp.i to i32
  br label %if.end78

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %23)
  %cmp2.i = icmp ne i32 %18, %23
  %conv3.i = zext i1 %cmp2.i to i32
  br label %if.end78

sw.bb4.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %23)
  %cmp5.i = icmp ult i32 %18, %23
  %conv6.i = zext i1 %cmp5.i to i32
  br label %if.end78

sw.bb7.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %23)
  %cmp8.i = icmp ule i32 %18, %23
  %conv9.i = zext i1 %cmp8.i to i32
  br label %if.end78

sw.bb10.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %23)
  %cmp11.i = icmp ugt i32 %18, %23
  %conv12.i = zext i1 %cmp11.i to i32
  br label %if.end78

sw.bb13.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %23)
  %cmp14.i = icmp uge i32 %18, %23
  %conv15.i = zext i1 %cmp14.i to i32
  br label %if.end78

sw.bb16.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %and.i146 = and i32 %23, %18
  br label %sw.epilog

sw.bb17.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %and18.i = and i32 %23, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i, i32 %23)
  %cmp19.i = icmp eq i32 %and18.i, %23
  %conv20.i = zext i1 %cmp19.i to i32
  br label %if.end78

do.end21:                                         ; preds = %for.body12
  %25 = call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i147 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i147 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task24, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 99
  %29 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cred, align 16
  %uid = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %31)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %op25 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 2
  %32 = ptrtoint ptr %op25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %op25, align 4
  %34 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack144 = load i32, ptr %34, align 4
  %36 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %33, label %do.end21.audit_uid_comparator.exit_crit_edge [
    i32 0, label %sw.bb.i148
    i32 1, label %sw.bb4.i149
    i32 4, label %sw.bb8.i
    i32 6, label %sw.bb13.i150
    i32 5, label %sw.bb18.i
    i32 7, label %sw.bb23.i
  ]

do.end21.audit_uid_comparator.exit_crit_edge:     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_uid_comparator.exit

sw.bb.i148:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %.unpack144)
  %cmp.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload, %.unpack144
  br label %audit_uid_comparator.exit

sw.bb4.i149:                                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %.unpack144)
  %cmp.i72.i = icmp ne i32 %agg.tmp.sroa.0.0.copyload, %.unpack144
  br label %audit_uid_comparator.exit

sw.bb8.i:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %.unpack144)
  %cmp.i75.i = icmp ult i32 %agg.tmp.sroa.0.0.copyload, %.unpack144
  br label %audit_uid_comparator.exit

sw.bb13.i150:                                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %.unpack144)
  %cmp.i78.i = icmp ule i32 %agg.tmp.sroa.0.0.copyload, %.unpack144
  br label %audit_uid_comparator.exit

sw.bb18.i:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %.unpack144)
  %cmp.i81.i = icmp ugt i32 %agg.tmp.sroa.0.0.copyload, %.unpack144
  br label %audit_uid_comparator.exit

sw.bb23.i:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %.unpack144)
  %cmp.i84.i = icmp uge i32 %agg.tmp.sroa.0.0.copyload, %.unpack144
  br label %audit_uid_comparator.exit

audit_uid_comparator.exit:                        ; preds = %sw.bb23.i, %sw.bb18.i, %sw.bb13.i150, %sw.bb8.i, %sw.bb4.i149, %sw.bb.i148, %do.end21.audit_uid_comparator.exit_crit_edge
  %retval.0.shrunk.i = phi i1 [ %cmp.i84.i, %sw.bb23.i ], [ %cmp.i81.i, %sw.bb18.i ], [ %cmp.i78.i, %sw.bb13.i150 ], [ %cmp.i75.i, %sw.bb8.i ], [ %cmp.i72.i, %sw.bb4.i149 ], [ %cmp.i.i, %sw.bb.i148 ], [ false, %do.end21.audit_uid_comparator.exit_crit_edge ]
  %retval.0.i151 = zext i1 %retval.0.shrunk.i to i32
  br label %if.end78

do.end32:                                         ; preds = %for.body12
  %37 = call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i152 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i152 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task35, align 8
  %cred36 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 99
  %41 = ptrtoint ptr %cred36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cred36, align 16
  %gid = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %43)
  %agg.tmp29.sroa.0.0.copyload = load i32, ptr %gid, align 4
  %op37 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 2
  %44 = ptrtoint ptr %op37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %op37, align 4
  %46 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack143 = load i32, ptr %46, align 4
  %48 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %45, label %do.end32.audit_gid_comparator.exit_crit_edge [
    i32 0, label %sw.bb.i154
    i32 1, label %sw.bb4.i156
    i32 4, label %sw.bb8.i158
    i32 6, label %sw.bb13.i160
    i32 5, label %sw.bb18.i162
    i32 7, label %sw.bb23.i164
  ]

do.end32.audit_gid_comparator.exit_crit_edge:     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_gid_comparator.exit

sw.bb.i154:                                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp29.sroa.0.0.copyload, i32 %.unpack143)
  %cmp.i.i153 = icmp eq i32 %agg.tmp29.sroa.0.0.copyload, %.unpack143
  br label %audit_gid_comparator.exit

sw.bb4.i156:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp29.sroa.0.0.copyload, i32 %.unpack143)
  %cmp.i72.i155 = icmp ne i32 %agg.tmp29.sroa.0.0.copyload, %.unpack143
  br label %audit_gid_comparator.exit

sw.bb8.i158:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp29.sroa.0.0.copyload, i32 %.unpack143)
  %cmp.i75.i157 = icmp ult i32 %agg.tmp29.sroa.0.0.copyload, %.unpack143
  br label %audit_gid_comparator.exit

sw.bb13.i160:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp29.sroa.0.0.copyload, i32 %.unpack143)
  %cmp.i78.i159 = icmp ule i32 %agg.tmp29.sroa.0.0.copyload, %.unpack143
  br label %audit_gid_comparator.exit

sw.bb18.i162:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp29.sroa.0.0.copyload, i32 %.unpack143)
  %cmp.i81.i161 = icmp ugt i32 %agg.tmp29.sroa.0.0.copyload, %.unpack143
  br label %audit_gid_comparator.exit

sw.bb23.i164:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp29.sroa.0.0.copyload, i32 %.unpack143)
  %cmp.i84.i163 = icmp uge i32 %agg.tmp29.sroa.0.0.copyload, %.unpack143
  br label %audit_gid_comparator.exit

audit_gid_comparator.exit:                        ; preds = %sw.bb23.i164, %sw.bb18.i162, %sw.bb13.i160, %sw.bb8.i158, %sw.bb4.i156, %sw.bb.i154, %do.end32.audit_gid_comparator.exit_crit_edge
  %retval.0.shrunk.i165 = phi i1 [ %cmp.i84.i163, %sw.bb23.i164 ], [ %cmp.i81.i161, %sw.bb18.i162 ], [ %cmp.i78.i159, %sw.bb13.i160 ], [ %cmp.i75.i157, %sw.bb8.i158 ], [ %cmp.i72.i155, %sw.bb4.i156 ], [ %cmp.i.i153, %sw.bb.i154 ], [ false, %do.end32.audit_gid_comparator.exit_crit_edge ]
  %retval.0.i166 = zext i1 %retval.0.shrunk.i165 to i32
  br label %if.end78

sw.bb41:                                          ; preds = %for.body12
  %49 = call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i167 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i167 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task44, align 8
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 121
  %53 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %op47 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 2
  %54 = ptrtoint ptr %op47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %op47, align 4
  %56 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack = load i32, ptr %56, align 4
  %58 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %55, label %sw.bb41.audit_uid_comparator.exit182_crit_edge [
    i32 0, label %sw.bb.i169
    i32 1, label %sw.bb4.i171
    i32 4, label %sw.bb8.i173
    i32 6, label %sw.bb13.i175
    i32 5, label %sw.bb18.i177
    i32 7, label %sw.bb23.i179
  ]

sw.bb41.audit_uid_comparator.exit182_crit_edge:   ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  br label %audit_uid_comparator.exit182

sw.bb.i169:                                       ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.sroa.0.0.copyload.i, i32 %.unpack)
  %cmp.i.i168 = icmp eq i32 %retval.sroa.0.0.copyload.i, %.unpack
  br label %audit_uid_comparator.exit182

sw.bb4.i171:                                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.sroa.0.0.copyload.i, i32 %.unpack)
  %cmp.i72.i170 = icmp ne i32 %retval.sroa.0.0.copyload.i, %.unpack
  br label %audit_uid_comparator.exit182

sw.bb8.i173:                                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.sroa.0.0.copyload.i, i32 %.unpack)
  %cmp.i75.i172 = icmp ult i32 %retval.sroa.0.0.copyload.i, %.unpack
  br label %audit_uid_comparator.exit182

sw.bb13.i175:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.sroa.0.0.copyload.i, i32 %.unpack)
  %cmp.i78.i174 = icmp ule i32 %retval.sroa.0.0.copyload.i, %.unpack
  br label %audit_uid_comparator.exit182

sw.bb18.i177:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.sroa.0.0.copyload.i, i32 %.unpack)
  %cmp.i81.i176 = icmp ugt i32 %retval.sroa.0.0.copyload.i, %.unpack
  br label %audit_uid_comparator.exit182

sw.bb23.i179:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.sroa.0.0.copyload.i, i32 %.unpack)
  %cmp.i84.i178 = icmp uge i32 %retval.sroa.0.0.copyload.i, %.unpack
  br label %audit_uid_comparator.exit182

audit_uid_comparator.exit182:                     ; preds = %sw.bb23.i179, %sw.bb18.i177, %sw.bb13.i175, %sw.bb8.i173, %sw.bb4.i171, %sw.bb.i169, %sw.bb41.audit_uid_comparator.exit182_crit_edge
  %retval.0.shrunk.i180 = phi i1 [ %cmp.i84.i178, %sw.bb23.i179 ], [ %cmp.i81.i176, %sw.bb18.i177 ], [ %cmp.i78.i174, %sw.bb13.i175 ], [ %cmp.i75.i172, %sw.bb8.i173 ], [ %cmp.i72.i170, %sw.bb4.i171 ], [ %cmp.i.i168, %sw.bb.i169 ], [ false, %sw.bb41.audit_uid_comparator.exit182_crit_edge ]
  %retval.0.i181 = zext i1 %retval.0.shrunk.i180 to i32
  br label %if.end78

sw.bb51:                                          ; preds = %for.body12
  %59 = call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i183 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i183 to ptr
  %task53 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task53, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 121
  %63 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.copyload.i.i)
  %cmp.i.i184 = icmp ne i32 %retval.sroa.0.0.copyload.i.i, -1
  %conv = zext i1 %cmp.i.i184 to i32
  %op55 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 2
  %64 = ptrtoint ptr %op55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %op55, align 4
  %66 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %69 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %65, label %sw.bb51.for.end.thread_crit_edge [
    i32 0, label %sw.bb.i187
    i32 1, label %sw.bb1.i190
    i32 4, label %sw.bb4.i193
    i32 6, label %sw.bb7.i196
    i32 5, label %sw.bb10.i199
    i32 7, label %sw.bb13.i202
    i32 2, label %sw.bb16.i204
    i32 3, label %sw.bb17.i208
  ]

sw.bb51.for.end.thread_crit_edge:                 ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

sw.bb.i187:                                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv)
  %cmp.i185 = icmp eq i32 %68, %conv
  %conv.i186 = zext i1 %cmp.i185 to i32
  br label %if.end78

sw.bb1.i190:                                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv)
  %cmp2.i188 = icmp ne i32 %68, %conv
  %conv3.i189 = zext i1 %cmp2.i188 to i32
  br label %if.end78

sw.bb4.i193:                                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv)
  %cmp5.i191 = icmp ugt i32 %68, %conv
  %conv6.i192 = zext i1 %cmp5.i191 to i32
  br label %if.end78

sw.bb7.i196:                                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv)
  %cmp8.i194 = icmp uge i32 %68, %conv
  %conv9.i195 = zext i1 %cmp8.i194 to i32
  br label %if.end78

sw.bb10.i199:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv)
  %cmp11.i197 = icmp ult i32 %68, %conv
  %conv12.i198 = zext i1 %cmp11.i197 to i32
  br label %if.end78

sw.bb13.i202:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv)
  %cmp14.i200 = icmp ule i32 %68, %conv
  %conv15.i201 = zext i1 %cmp14.i200 to i32
  br label %if.end78

sw.bb16.i204:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  %and.i203 = and i32 %68, %conv
  br label %if.end78

sw.bb17.i208:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  %and18.i205 = and i32 %68, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i205, i32 %68)
  %cmp19.i206 = icmp eq i32 %and18.i205, %68
  %conv20.i207 = zext i1 %cmp19.i206 to i32
  br label %if.end78

sw.bb57:                                          ; preds = %for.body12
  %op58 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 2
  %70 = ptrtoint ptr %op58 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %op58, align 4
  %72 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %75 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %71, label %sw.bb57.for.end.thread_crit_edge [
    i32 0, label %sw.bb.i213
    i32 1, label %sw.bb1.i216
    i32 4, label %sw.bb4.i219
    i32 6, label %sw.bb7.i222
    i32 5, label %sw.bb10.i225
    i32 7, label %sw.bb13.i228
    i32 2, label %sw.bb16.i230
    i32 3, label %sw.bb17.i234
  ]

sw.bb57.for.end.thread_crit_edge:                 ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

sw.bb.i213:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %msgtype)
  %cmp.i211 = icmp eq i32 %74, %msgtype
  %conv.i212 = zext i1 %cmp.i211 to i32
  br label %if.end78

sw.bb1.i216:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %msgtype)
  %cmp2.i214 = icmp ne i32 %74, %msgtype
  %conv3.i215 = zext i1 %cmp2.i214 to i32
  br label %if.end78

sw.bb4.i219:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %msgtype)
  %cmp5.i217 = icmp ugt i32 %74, %msgtype
  %conv6.i218 = zext i1 %cmp5.i217 to i32
  br label %if.end78

sw.bb7.i222:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %msgtype)
  %cmp8.i220 = icmp uge i32 %74, %msgtype
  %conv9.i221 = zext i1 %cmp8.i220 to i32
  br label %if.end78

sw.bb10.i225:                                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %msgtype)
  %cmp11.i223 = icmp ult i32 %74, %msgtype
  %conv12.i224 = zext i1 %cmp11.i223 to i32
  br label %if.end78

sw.bb13.i228:                                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %msgtype)
  %cmp14.i226 = icmp ule i32 %74, %msgtype
  %conv15.i227 = zext i1 %cmp14.i226 to i32
  br label %if.end78

sw.bb16.i230:                                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  %and.i229 = and i32 %74, %msgtype
  br label %sw.epilog

sw.bb17.i234:                                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #17
  %and18.i231 = and i32 %74, %msgtype
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i231, i32 %74)
  %cmp19.i232 = icmp eq i32 %and18.i231, %74
  %conv20.i233 = zext i1 %cmp19.i232 to i32
  br label %if.end78

sw.bb60:                                          ; preds = %for.body12.sw.bb60_crit_edge, %for.body12.sw.bb60_crit_edge339, %for.body12.sw.bb60_crit_edge340, %for.body12.sw.bb60_crit_edge341, %for.body12.sw.bb60_crit_edge342
  %lsm_rule = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 1, i32 0, i32 1
  %76 = ptrtoint ptr %lsm_rule to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lsm_rule, align 4
  %tobool61.not = icmp eq ptr %77, null
  br i1 %tobool61.not, label %sw.bb60.if.end78_crit_edge, label %if.then62

sw.bb60.if.end78_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then62:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #17
  call void @security_current_getsecid_subj(ptr noundef nonnull %sid) #15
  %78 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sid, align 4
  %80 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx14, align 4
  %op64 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 2
  %82 = ptrtoint ptr %op64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %op64, align 4
  %84 = ptrtoint ptr %lsm_rule to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lsm_rule, align 4
  %call66 = call i32 @security_audit_rule_match(i32 noundef %79, i32 noundef %81, i32 noundef %83, ptr noundef %85) #15
  br label %sw.epilog

sw.bb68:                                          ; preds = %for.body12
  %op69 = getelementptr %struct.audit_field, ptr %8, i32 %i.0279, i32 2
  %86 = ptrtoint ptr %op69 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %op69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp70 = icmp eq i32 %87, 1
  br i1 %cmp70, label %sw.bb68.for.end.thread_crit_edge, label %sw.bb68.cleanup.thread_crit_edge

sw.bb68.cleanup.thread_crit_edge:                 ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

sw.bb68.for.end.thread_crit_edge:                 ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

sw.epilog:                                        ; preds = %if.then62, %sw.bb16.i230, %sw.bb16.i
  %result.1 = phi i32 [ %call66, %if.then62 ], [ %and.i146, %sw.bb16.i ], [ %and.i229, %sw.bb16.i230 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1)
  %cmp75 = icmp slt i32 %result.1, 0
  br i1 %cmp75, label %sw.epilog.cleanup.thread_crit_edge, label %sw.epilog.if.end78_crit_edge

sw.epilog.if.end78_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

sw.epilog.cleanup.thread_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.end78:                                         ; preds = %sw.epilog.if.end78_crit_edge, %sw.bb60.if.end78_crit_edge, %sw.bb17.i234, %sw.bb13.i228, %sw.bb10.i225, %sw.bb7.i222, %sw.bb4.i219, %sw.bb1.i216, %sw.bb.i213, %sw.bb17.i208, %sw.bb16.i204, %sw.bb13.i202, %sw.bb10.i199, %sw.bb7.i196, %sw.bb4.i193, %sw.bb1.i190, %sw.bb.i187, %audit_uid_comparator.exit182, %audit_gid_comparator.exit, %audit_uid_comparator.exit, %sw.bb17.i, %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i
  %result.1248 = phi i32 [ %result.1, %sw.epilog.if.end78_crit_edge ], [ %conv.i212, %sw.bb.i213 ], [ %conv3.i215, %sw.bb1.i216 ], [ %conv6.i218, %sw.bb4.i219 ], [ %conv9.i221, %sw.bb7.i222 ], [ %conv12.i224, %sw.bb10.i225 ], [ %conv15.i227, %sw.bb13.i228 ], [ %conv20.i233, %sw.bb17.i234 ], [ %conv.i186, %sw.bb.i187 ], [ %conv3.i189, %sw.bb1.i190 ], [ %conv6.i192, %sw.bb4.i193 ], [ %conv9.i195, %sw.bb7.i196 ], [ %conv12.i198, %sw.bb10.i199 ], [ %conv15.i201, %sw.bb13.i202 ], [ %and.i203, %sw.bb16.i204 ], [ %conv20.i207, %sw.bb17.i208 ], [ %conv.i, %sw.bb.i ], [ %conv3.i, %sw.bb1.i ], [ %conv6.i, %sw.bb4.i ], [ %conv9.i, %sw.bb7.i ], [ %conv12.i, %sw.bb10.i ], [ %conv15.i, %sw.bb13.i ], [ %conv20.i, %sw.bb17.i ], [ %retval.0.i151, %audit_uid_comparator.exit ], [ %retval.0.i166, %audit_gid_comparator.exit ], [ %retval.0.i181, %audit_uid_comparator.exit182 ], [ %result.0278, %sw.bb60.if.end78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1248)
  %tobool79.not = icmp eq i32 %result.1248, 0
  br i1 %tobool79.not, label %if.end78.for.end.thread_crit_edge, label %for.inc

if.end78.for.end.thread_crit_edge:                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

cleanup.thread:                                   ; preds = %sw.epilog.cleanup.thread_crit_edge, %sw.bb68.cleanup.thread_crit_edge, %for.body12.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid) #15
  br label %unlock_and_return

for.end.thread:                                   ; preds = %if.end78.for.end.thread_crit_edge, %sw.bb68.for.end.thread_crit_edge, %sw.bb57.for.end.thread_crit_edge, %sw.bb51.for.end.thread_crit_edge, %sw.bb.for.end.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid) #15
  br label %cleanup95

for.inc:                                          ; preds = %if.end78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid) #15
  %inc = add nuw i32 %i.0279, 1
  %88 = ptrtoint ptr %field_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %field_count, align 4
  %cmp11 = icmp ult i32 %inc, %89
  br i1 %cmp11, label %for.inc.for.body12_crit_edge, label %if.then86

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body12

if.then86:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %action = getelementptr inbounds %struct.audit_entry, ptr %e.0284, i32 0, i32 2, i32 3
  %90 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp88 = icmp ne i32 %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %listtype)
  %cmp90 = icmp ne i32 %listtype, 5
  %not.or.cond = and i1 %cmp90, %cmp88
  %ret.1 = zext i1 %not.or.cond to i32
  br label %unlock_and_return

cleanup95:                                        ; preds = %for.end.thread, %for.cond10.preheader.cleanup95_crit_edge
  %92 = ptrtoint ptr %e.0284 to i32
  call void @__asan_load4_noabort(i32 %92)
  %e.0 = load volatile ptr, ptr %e.0284, align 4
  %cmp.not = icmp eq ptr %e.0, %arrayidx
  br i1 %cmp.not, label %cleanup95.unlock_and_return_crit_edge, label %cleanup95.for.cond10.preheader_crit_edge

cleanup95.for.cond10.preheader_crit_edge:         ; preds = %cleanup95
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond10.preheader

cleanup95.unlock_and_return_crit_edge:            ; preds = %cleanup95
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_and_return

unlock_and_return:                                ; preds = %cleanup95.unlock_and_return_crit_edge, %if.then86, %cleanup.thread, %do.end.unlock_and_return_crit_edge
  %ret.3 = phi i32 [ 1, %cleanup.thread ], [ %ret.1, %if.then86 ], [ 1, %do.end.unlock_and_return_crit_edge ], [ 1, %cleanup95.unlock_and_return_crit_edge ]
  %call.i237 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i237, label %unlock_and_return.cleanup110_crit_edge, label %land.lhs.true.i240

unlock_and_return.cleanup110_crit_edge:           ; preds = %unlock_and_return
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup110

land.lhs.true.i240:                               ; preds = %unlock_and_return
  %call1.i238 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i238)
  %tobool.not.i239 = icmp eq i32 %call1.i238, 0
  br i1 %tobool.not.i239, label %land.lhs.true.i240.cleanup110_crit_edge, label %land.lhs.true2.i242

land.lhs.true.i240.cleanup110_crit_edge:          ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup110

land.lhs.true2.i242:                              ; preds = %land.lhs.true.i240
  %.b4.i241 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i241, label %land.lhs.true2.i242.cleanup110_crit_edge, label %if.then.i243

land.lhs.true2.i242.cleanup110_crit_edge:         ; preds = %land.lhs.true2.i242
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup110

if.then.i243:                                     ; preds = %land.lhs.true2.i242
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #15
  br label %cleanup110

cleanup110:                                       ; preds = %if.then.i243, %land.lhs.true2.i242.cleanup110_crit_edge, %land.lhs.true.i240.cleanup110_crit_edge, %unlock_and_return.cleanup110_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !90
  %93 = call i32 @llvm.read_register.i32(metadata !67) #15
  %and.i.i.i.i.i244 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i244 to ptr
  %preempt_count.i.i.i.i245 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i.i245, align 4
  %sub.i.i.i = add i32 %96, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i245, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_current_getsecid_subj(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_audit_rule_match(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_update_lsm_rules() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @audit_filter_mutex, i32 noundef 0) #15
  br label %for.body

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc15.for.body_crit_edge ]
  %err.037 = phi i32 [ 0, %entry ], [ %err.1.lcssa, %for.inc15.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.list_head], ptr @audit_rules_list, i32 0, i32 %i.038
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp8.not26 = icmp eq ptr %1, %arrayidx
  br i1 %cmp8.not26, label %for.body.for.inc15_crit_edge, label %for.body.for.body9_crit_edge

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc15

for.body9:                                        ; preds = %update_lsm_rule.exit.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %.pn.in28 = phi ptr [ %.pn36, %update_lsm_rule.exit.for.body9_crit_edge ], [ %1, %for.body.for.body9_crit_edge ]
  %err.127 = phi i32 [ %spec.select, %update_lsm_rule.exit.for.body9_crit_edge ], [ %err.037, %for.body.for.body9_crit_edge ]
  %2 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn36 = load ptr, ptr %.pn.in28, align 4
  %r.0 = getelementptr i8, ptr %.pn.in28, i32 -316
  %add.ptr.i = getelementptr i8, ptr %.pn.in28, i32 -332
  %call.i = tail call i32 @security_audit_rule_known(ptr noundef %r.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body9.update_lsm_rule.exit_crit_edge, label %if.end.i

for.body9.update_lsm_rule.exit_crit_edge:         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_lsm_rule.exit

if.end.i:                                         ; preds = %for.body9
  %call2.i = tail call ptr @audit_dupe_rule(ptr noundef %r.0) #15
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  %3 = ptrtoint ptr %call2.i to i32
  tail call void @audit_panic(ptr noundef nonnull @.str.22) #15
  %watch.i = getelementptr i8, ptr %.pn.in28, i32 -20
  %4 = ptrtoint ptr %watch.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %watch.i, align 8
  %tobool9.not.i = icmp eq ptr %5, null
  br i1 %tobool9.not.i, label %if.then7.i.if.end11.i_crit_edge, label %if.then10.i

if.then7.i.if.end11.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.then7.i
  %rlist.i = getelementptr i8, ptr %.pn.in28, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rlist.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then10.i.list_del.exit.i_crit_edge

if.then10.i.list_del.exit.i_crit_edge:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr i8, ptr %.pn.in28, i32 -4
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %rlist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rlist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then10.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %rlist.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %rlist.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in28, i32 -4
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %list_del.exit.i, %if.then7.i.if.end11.i_crit_edge
  %call.i.i45.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #15
  br i1 %call.i.i45.i, label %if.end.i.i48.i, label %if.end11.i.list_del_rcu.exit.i_crit_edge

if.end11.i.list_del_rcu.exit.i_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_rcu.exit.i

if.end.i.i48.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i46.i = getelementptr i8, ptr %.pn.in28, i32 -328
  %14 = ptrtoint ptr %prev.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i46.i, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i47.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i47.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i48.i, %if.end11.i.list_del_rcu.exit.i_crit_edge
  %prev.i49.i = getelementptr i8, ptr %.pn.in28, i32 -328
  %20 = ptrtoint ptr %prev.i49.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i49.i, align 4
  %call.i.i50.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28) #15
  br i1 %call.i.i50.i, label %if.end.i.i53.i, label %list_del_rcu.exit.i.list_del.exit55.i_crit_edge

list_del_rcu.exit.i.list_del.exit55.i_crit_edge:  ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit55.i

if.end.i.i53.i:                                   ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i51.i = getelementptr i8, ptr %.pn.in28, i32 4
  %21 = ptrtoint ptr %prev.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i51.i, align 4
  %23 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in28, align 4
  %prev1.i.i.i52.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i52.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit55.i

list_del.exit55.i:                                ; preds = %if.end.i.i53.i, %list_del_rcu.exit.i.list_del.exit55.i_crit_edge
  %27 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28, align 4
  %prev.i54.i = getelementptr i8, ptr %.pn.in28, i32 4
  %28 = ptrtoint ptr %prev.i54.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i54.i, align 4
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end.i
  %watch13.i = getelementptr i8, ptr %.pn.in28, i32 -20
  %29 = ptrtoint ptr %watch13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %watch13.i, align 8
  %tobool14.not.i = icmp eq ptr %30, null
  br i1 %tobool14.not.i, label %lor.lhs.false.i, label %if.else.i.if.then16.i_crit_edge

if.else.i.if.then16.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %tree.i = getelementptr i8, ptr %.pn.in28, i32 -16
  %31 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tree.i, align 4
  %tobool15.not.i = icmp eq ptr %32, null
  br i1 %tobool15.not.i, label %lor.lhs.false.i.if.end20.i_crit_edge, label %lor.lhs.false.i.if.then16.i_crit_edge

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16.i

lor.lhs.false.i.if.end20.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %if.else.i.if.then16.i_crit_edge
  %rlist17.i = getelementptr i8, ptr %.pn.in28, i32 -8
  %rlist19.i = getelementptr inbounds %struct.audit_entry, ptr %call2.i, i32 0, i32 2, i32 14
  %33 = ptrtoint ptr %rlist17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rlist17.i, align 4
  %35 = ptrtoint ptr %rlist19.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %rlist19.i, align 4
  %prev.i.i56.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rlist19.i, ptr %prev.i.i56.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn.in28, i32 -4
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev3.i.i.i, align 4
  %prev4.i.i.i = getelementptr inbounds %struct.audit_entry, ptr %call2.i, i32 0, i32 2, i32 14, i32 1
  %39 = ptrtoint ptr %prev4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %prev4.i.i.i, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rlist19.i, ptr %38, align 4
  store volatile ptr %rlist17.i, ptr %rlist17.i, align 4
  store ptr %rlist17.i, ptr %prev3.i.i.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %lor.lhs.false.i.if.end20.i_crit_edge
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %43 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %call2.i, align 4
  %prev.i57.i = getelementptr i8, ptr %.pn.in28, i32 -328
  %44 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i57.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call2.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !91
  %47 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call2.i, ptr %48, align 4
  %50 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call2.i, align 4
  %prev38.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev38.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call2.i, ptr %prev38.i.i, align 4
  %53 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i57.i, align 4
  %list25.i = getelementptr inbounds %struct.audit_entry, ptr %call2.i, i32 0, i32 2, i32 15
  %54 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %.pn.in28, align 4
  %56 = ptrtoint ptr %list25.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %list25.i, align 4
  %prev.i58.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i58.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %list25.i, ptr %prev.i58.i, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn.in28, i32 4
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev3.i.i, align 4
  %prev4.i.i = getelementptr inbounds %struct.audit_entry, ptr %call2.i, i32 0, i32 2, i32 15, i32 1
  %60 = ptrtoint ptr %prev4.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %prev4.i.i, align 4
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list25.i, ptr %59, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end20.i, %list_del.exit55.i
  %err.0.i = phi i32 [ %3, %list_del.exit55.i ], [ 0, %if.end20.i ]
  %rcu.i = getelementptr i8, ptr %.pn.in28, i32 -324
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @audit_free_rule_rcu) #15
  br label %update_lsm_rule.exit

update_lsm_rule.exit:                             ; preds = %if.end26.i, %for.body9.update_lsm_rule.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %if.end26.i ], [ 0, %for.body9.update_lsm_rule.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.127)
  %tobool.not = icmp eq i32 %err.127, 0
  %spec.select = select i1 %tobool.not, i32 %retval.0.i, i32 %err.127
  %cmp8.not = icmp eq ptr %.pn36, %arrayidx
  br i1 %cmp8.not, label %update_lsm_rule.exit.for.inc15_crit_edge, label %update_lsm_rule.exit.for.body9_crit_edge

update_lsm_rule.exit.for.body9_crit_edge:         ; preds = %update_lsm_rule.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9

update_lsm_rule.exit.for.inc15_crit_edge:         ; preds = %update_lsm_rule.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc15

for.inc15:                                        ; preds = %update_lsm_rule.exit.for.inc15_crit_edge, %for.body.for.inc15_crit_edge
  %err.1.lcssa = phi i32 [ %err.037, %for.body.for.inc15_crit_edge ], [ %spec.select, %update_lsm_rule.exit.for.inc15_crit_edge ]
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end16, label %for.inc15.for.body_crit_edge

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end16:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @audit_filter_mutex) #15
  ret i32 %err.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_audit_rule_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_audit_rule_init(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @audit_compare_rule(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.audit_krule, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %flags1 = getelementptr inbounds %struct.audit_krule, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 8
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp eq i32 %5, %7
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %listnr = getelementptr inbounds %struct.audit_krule, ptr %a, i32 0, i32 2
  %8 = ptrtoint ptr %listnr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %listnr, align 8
  %listnr5 = getelementptr inbounds %struct.audit_krule, ptr %b, i32 0, i32 2
  %10 = ptrtoint ptr %listnr5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %listnr5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp6.not = icmp eq i32 %9, %11
  br i1 %cmp6.not, label %lor.lhs.false7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %action = getelementptr inbounds %struct.audit_krule, ptr %a, i32 0, i32 3
  %12 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %action, align 4
  %action8 = getelementptr inbounds %struct.audit_krule, ptr %b, i32 0, i32 3
  %14 = ptrtoint ptr %action8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %action8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9.not = icmp eq i32 %13, %15
  br i1 %cmp9.not, label %lor.lhs.false10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %field_count = getelementptr inbounds %struct.audit_krule, ptr %a, i32 0, i32 6
  %16 = ptrtoint ptr %field_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field_count, align 4
  %field_count11 = getelementptr inbounds %struct.audit_krule, ptr %b, i32 0, i32 6
  %18 = ptrtoint ptr %field_count11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field_count11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp12.not = icmp eq i32 %17, %19
  br i1 %cmp12.not, label %for.cond.preheader, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14134.not = icmp eq i32 %17, 0
  br i1 %cmp14134.not, label %for.cond.preheader.for.body75.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.body75.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body75.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fields = getelementptr inbounds %struct.audit_krule, ptr %a, i32 0, i32 8
  %20 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fields, align 4
  %fields15 = getelementptr inbounds %struct.audit_krule, ptr %b, i32 0, i32 8
  %22 = ptrtoint ptr %fields15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fields15, align 4
  %filterkey = getelementptr inbounds %struct.audit_krule, ptr %a, i32 0, i32 7
  %filterkey41 = getelementptr inbounds %struct.audit_krule, ptr %b, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.audit_field, ptr %21, i32 %i.0135
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr %struct.audit_field, ptr %23, i32 %i.0135
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp18.not = icmp eq i32 %25, %27
  br i1 %cmp18.not, label %lor.lhs.false19, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false19:                                  ; preds = %for.body
  %op = getelementptr %struct.audit_field, ptr %21, i32 %i.0135, i32 2
  %28 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %op, align 4
  %op24 = getelementptr %struct.audit_field, ptr %23, i32 %i.0135, i32 2
  %30 = ptrtoint ptr %op24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %op24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp25.not = icmp eq i32 %29, %31
  br i1 %cmp25.not, label %if.end27, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false19
  %32 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %25, label %sw.default [
    i32 13, label %if.end27.sw.bb_crit_edge
    i32 14, label %if.end27.sw.bb_crit_edge143
    i32 15, label %if.end27.sw.bb_crit_edge144
    i32 16, label %if.end27.sw.bb_crit_edge145
    i32 17, label %if.end27.sw.bb_crit_edge146
    i32 19, label %if.end27.sw.bb_crit_edge147
    i32 20, label %if.end27.sw.bb_crit_edge148
    i32 21, label %if.end27.sw.bb_crit_edge149
    i32 22, label %if.end27.sw.bb_crit_edge150
    i32 23, label %if.end27.sw.bb_crit_edge151
    i32 105, label %if.end27.for.inc_crit_edge
    i32 107, label %if.end27.for.inc_crit_edge152
    i32 210, label %sw.bb40
    i32 112, label %if.end27.for.inc_crit_edge153
    i32 1, label %if.end27.sw.bb47_crit_edge
    i32 2, label %if.end27.sw.bb47_crit_edge154
    i32 3, label %if.end27.sw.bb47_crit_edge155
    i32 4, label %if.end27.sw.bb47_crit_edge156
    i32 9, label %if.end27.sw.bb47_crit_edge157
    i32 109, label %if.end27.sw.bb47_crit_edge158
    i32 5, label %if.end27.sw.bb56_crit_edge
    i32 6, label %if.end27.sw.bb56_crit_edge159
    i32 7, label %if.end27.sw.bb56_crit_edge160
    i32 8, label %if.end27.sw.bb56_crit_edge161
    i32 110, label %if.end27.sw.bb56_crit_edge162
  ]

if.end27.sw.bb56_crit_edge162:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb56

if.end27.sw.bb56_crit_edge161:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb56

if.end27.sw.bb56_crit_edge160:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb56

if.end27.sw.bb56_crit_edge159:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb56

if.end27.sw.bb56_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb56

if.end27.sw.bb47_crit_edge158:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

if.end27.sw.bb47_crit_edge157:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

if.end27.sw.bb47_crit_edge156:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

if.end27.sw.bb47_crit_edge155:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

if.end27.sw.bb47_crit_edge154:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

if.end27.sw.bb47_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

if.end27.for.inc_crit_edge153:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end27.for.inc_crit_edge152:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end27.sw.bb_crit_edge151:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge150:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge149:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge148:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge147:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge146:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge145:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge144:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge143:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end27.sw.bb_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb:                                            ; preds = %if.end27.sw.bb_crit_edge, %if.end27.sw.bb_crit_edge143, %if.end27.sw.bb_crit_edge144, %if.end27.sw.bb_crit_edge145, %if.end27.sw.bb_crit_edge146, %if.end27.sw.bb_crit_edge147, %if.end27.sw.bb_crit_edge148, %if.end27.sw.bb_crit_edge149, %if.end27.sw.bb_crit_edge150, %if.end27.sw.bb_crit_edge151
  %33 = getelementptr %struct.audit_field, ptr %21, i32 %i.0135, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = getelementptr %struct.audit_field, ptr %23, i32 %i.0135, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call = tail call i32 @strcmp(ptr noundef %35, ptr noundef %38) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.for.inc_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb40:                                          ; preds = %if.end27
  %39 = ptrtoint ptr %filterkey to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %filterkey, align 8
  %41 = ptrtoint ptr %filterkey41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %filterkey41, align 8
  %call42 = tail call i32 @strcmp(ptr noundef %40, ptr noundef %42) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %sw.bb40.for.inc_crit_edge, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb40.for.inc_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb47:                                          ; preds = %if.end27.sw.bb47_crit_edge, %if.end27.sw.bb47_crit_edge154, %if.end27.sw.bb47_crit_edge155, %if.end27.sw.bb47_crit_edge156, %if.end27.sw.bb47_crit_edge157, %if.end27.sw.bb47_crit_edge158
  %43 = getelementptr %struct.audit_field, ptr %21, i32 %i.0135, i32 1
  %44 = getelementptr %struct.audit_field, ptr %23, i32 %i.0135, i32 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack130 = load i32, ptr %43, align 4
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack131 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack130, i32 %.unpack131)
  %cmp.i = icmp eq i32 %.unpack130, %.unpack131
  br i1 %cmp.i, label %sw.bb47.for.inc_crit_edge, label %sw.bb47.cleanup_crit_edge

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb47.for.inc_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb56:                                          ; preds = %if.end27.sw.bb56_crit_edge, %if.end27.sw.bb56_crit_edge159, %if.end27.sw.bb56_crit_edge160, %if.end27.sw.bb56_crit_edge161, %if.end27.sw.bb56_crit_edge162
  %47 = getelementptr %struct.audit_field, ptr %21, i32 %i.0135, i32 1
  %48 = getelementptr %struct.audit_field, ptr %23, i32 %i.0135, i32 1
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack = load i32, ptr %47, align 4
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack129 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack129)
  %cmp.i132 = icmp eq i32 %.unpack, %.unpack129
  br i1 %cmp.i132, label %sw.bb56.for.inc_crit_edge, label %sw.bb56.cleanup_crit_edge

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb56.for.inc_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.default:                                       ; preds = %if.end27
  %51 = getelementptr %struct.audit_field, ptr %21, i32 %i.0135, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %54 = getelementptr %struct.audit_field, ptr %23, i32 %i.0135, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %56)
  %cmp70.not = icmp eq i32 %53, %56
  br i1 %cmp70.not, label %sw.default.for.inc_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.default.for.inc_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %sw.default.for.inc_crit_edge, %sw.bb56.for.inc_crit_edge, %sw.bb47.for.inc_crit_edge, %sw.bb40.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %if.end27.for.inc_crit_edge152, %if.end27.for.inc_crit_edge153
  %inc = add nuw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.for.body75.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.body75.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body75.preheader

for.body75.preheader:                             ; preds = %for.inc.for.body75.preheader_crit_edge, %for.cond.preheader.for.body75.preheader_crit_edge
  br label %for.body75

for.cond73:                                       ; preds = %for.body75
  %inc83 = add nuw nsw i32 %i.1137, 1
  %exitcond139.not = icmp eq i32 %inc83, 64
  br i1 %exitcond139.not, label %for.cond73.cleanup_crit_edge, label %for.cond73.for.body75_crit_edge

for.cond73.for.body75_crit_edge:                  ; preds = %for.cond73
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body75

for.cond73.cleanup_crit_edge:                     ; preds = %for.cond73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body75:                                       ; preds = %for.cond73.for.body75_crit_edge, %for.body75.preheader
  %i.1137 = phi i32 [ %inc83, %for.cond73.for.body75_crit_edge ], [ 0, %for.body75.preheader ]
  %arrayidx76 = getelementptr %struct.audit_krule, ptr %a, i32 0, i32 4, i32 %i.1137
  %57 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx76, align 4
  %arrayidx78 = getelementptr %struct.audit_krule, ptr %b, i32 0, i32 4, i32 %i.1137
  %59 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp79.not = icmp eq i32 %58, %60
  br i1 %cmp79.not, label %for.cond73, label %for.body75.cleanup_crit_edge

for.body75.cleanup_crit_edge:                     ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body75.cleanup_crit_edge, %for.cond73.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %for.body.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false10.cleanup_crit_edge ], [ 1, %lor.lhs.false7.cleanup_crit_edge ], [ 1, %lor.lhs.false4.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %for.cond73.cleanup_crit_edge ], [ 1, %for.body75.cleanup_crit_edge ], [ 1, %lor.lhs.false19.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb40.cleanup_crit_edge ], [ 1, %sw.bb47.cleanup_crit_edge ], [ 1, %sw.bb56.cleanup_crit_edge ], [ 1, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_session_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @audit_log_task_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_make_reply(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_audit_rule_known(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_panic(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !59, !60, !62, !63, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @audit_filter_list, !1, !"audit_filter_list", i1 false, i1 false}
!1 = !{!"../kernel/auditfilter.c", i32 39, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/auditfilter.c", i32 63, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @audit_filter_mutex, !3, !"audit_filter_mutex", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/auditfilter.c", i32 1143, i32 25}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/auditfilter.c", i32 1150, i32 25}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/auditfilter.c", i32 1153, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/auditfilter.c", i32 1193, i32 8}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../kernel/auditfilter.c", i32 1335, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../kernel/auditfilter.c", i32 1349, i32 35}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../kernel/auditfilter.c", i32 1352, i32 35}
!21 = !{ptr @classes, !22, !"classes", i1 false, i1 false}
!22 = !{!"../kernel/auditfilter.c", i32 166, i32 15}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/auditfilter.c", i32 805, i32 3}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @audit_dupe_lsm_field._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @audit_dupe_lsm_field._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../kernel/auditfilter.c", i32 497, i32 23}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../kernel/auditfilter.c", i32 506, i32 23}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/auditfilter.c", i32 536, i32 5}
!34 = !{ptr @audit_data_to_entry._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @audit_data_to_entry._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/auditfilter.c", i32 263, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @audit_to_entry_common._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @audit_to_entry_common._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @audit_ops, !42, !"audit_ops", i1 false, i1 false}
!42 = !{!"../kernel/auditfilter.c", i32 306, i32 12}
!43 = !{ptr @prio_high, !44, !"prio_high", i1 false, i1 false}
!44 = !{!"../kernel/auditfilter.c", i32 935, i32 12}
!45 = !{ptr @prio_low, !46, !"prio_low", i1 false, i1 false}
!46 = !{!"../kernel/auditfilter.c", i32 934, i32 12}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/auditfilter.c", i32 1119, i32 23}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/auditfilter.c", i32 1121, i32 23}
!51 = !{ptr @skb_queue_head_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/auditfilter.c", i32 671, i32 9}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @audit_rules_list, !64, !"audit_rules_list", i1 false, i1 false}
!64 = !{!"../kernel/auditfilter.c", i32 52, i32 25}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/auditfilter.c", i32 1416, i32 15}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{!"branch_weights", i32 4001, i32 4000000}
!79 = !{i64 2157231572, i64 2157232058, i64 2157231609, i64 2157231665, i64 2157231699, i64 2157231723, i64 2157231764, i64 2157231785, i64 2157231813, i64 2157231847}
!80 = !{i64 2157233062, i64 2157233548, i64 2157233099, i64 2157233155, i64 2157233189, i64 2157233213, i64 2157233254, i64 2157233275, i64 2157233303, i64 2157233337}
!81 = !{i64 2149325978}
!82 = !{!"branch_weights", i32 2000, i32 4, i32 4000, i32 2000}
!83 = !{i64 2148244519, i64 2148244551, i64 2148244580, i64 2148244614, i64 2148244645, i64 2148244668}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148332520}
!86 = !{i64 2148246984, i64 2148247016, i64 2148247045, i64 2148247079, i64 2148247110, i64 2148247133}
!87 = !{i64 2149608573}
!88 = !{i64 2149300586}
!89 = !{!"auto-init"}
!90 = !{i64 2149300852}
!91 = !{i64 2149339906}
