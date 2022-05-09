; ModuleID = '/llk/IR_all_yes/net/netlabel/netlabel_cipso_v4.c_pt.bc'
source_filename = "../net/netlabel/netlabel_cipso_v4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.netlbl_audit = type { i32, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cipso_v4_doi = type { i32, i32, %union.anon.145, [5 x i8], %struct.refcount_struct, %struct.list_head, %struct.callback_head }
%union.anon.145 = type { ptr }
%struct.nlattr = type { i16, i16 }
%struct.anon.146 = type { ptr, ptr, i32, i32 }
%struct.cipso_v4_std_map_tbl = type { %struct.anon.146, %struct.anon.147 }
%struct.anon.147 = type { ptr, ptr, i32, i32 }
%struct.netlbl_domhsh_walk_arg = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
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
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.netlbl_cipsov4_doiwalk_arg = type { ptr, ptr, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlbl_dom_map = type { ptr, i16, %struct.netlbl_dommap_def, i32, %struct.list_head, %struct.callback_head }
%struct.netlbl_dommap_def = type { i32, %union.anon.148 }
%union.anon.148 = type { ptr }

@netlbl_cipsov4_gnl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"NLBL_CIPSOv4\00\00\00\00", i32 3, i32 12, i32 0, i8 0, i8 0, i8 4, i8 0, ptr @netlbl_cipsov4_genl_policy, ptr null, ptr null, ptr null, ptr @netlbl_cipsov4_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@netlbl_cipsov4_genl_policy = internal constant { [13 x %struct.nla_policy], [56 x i8] } { [13 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@netlbl_cipsov4_ops = internal constant { [4 x %struct.genl_small_ops], [48 x i8] } { [4 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @netlbl_cipsov4_add, ptr null, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_cipsov4_remove, ptr null, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_cipsov4_list, ptr null, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr null, ptr @netlbl_cipsov4_listall, i8 4, i8 0, i8 0, i8 3 }], [48 x i8] zeroinitializer }, align 32
@netlabel_mgmt_protocount = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"netlbl_cipsov4_genl_policy\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 50, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"netlbl_cipsov4_ops\00", align 1
@___asan_gen_.11 = private constant [36 x i8] c"../net/netlabel/netlabel_cipso_v4.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 730, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 695, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 723, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 991, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @netlbl_cipsov4_genl_policy, ptr @netlbl_cipsov4_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_cipsov4_genl_policy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_cipsov4_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cipsov4_genl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @netlbl_cipsov4_gnl_family) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_cipsov4_add(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #10
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !25
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !25
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !25
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %6, i32 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #10
  %11 = call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 121
  %15 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %1, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 122
  %17 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sessionid.i.i, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %3, align 4
  %20 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attrs, align 4
  %arrayidx5 = getelementptr ptr, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %21, i32 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb
  %arrayidx2.i = getelementptr ptr, ptr %21, i32 8
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %conv.i.i.i.i = zext i16 %32 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i, i32 noundef 12, ptr noundef nonnull @netlbl_cipsov4_genl_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.not.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 40) #13
  %cmp9.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp9.i, label %if.end7.i.cleanup_crit_edge, label %if.end11.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 32) #13
  %map.i = getelementptr inbounds %struct.cipso_v4_doi, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i, ptr %map.i, align 8
  %cmp14.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp14.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end16.i:                                       ; preds = %if.end11.i
  %type.i = getelementptr inbounds %struct.cipso_v4_doi, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type.i, align 4
  %37 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attrs, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %38, i32 1
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i459.i = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i.i459.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i.i459.i, align 4
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %call7.i.i, align 8
  %arrayidx2.i.i = getelementptr ptr, ptr %38, i32 4
  %44 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx2.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 2
  %conv.i.i.i.i.i = zext i16 %47 to i32
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -4
  %call2.i.i.i.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %sub.i.i.i.i.i, i32 noundef 12, ptr noundef nonnull @netlbl_cipsov4_genl_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end16.i.add_std_failure.i_crit_edge

if.end16.i.add_std_failure.i_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end.i.i:                                       ; preds = %if.end16.i
  %48 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %attrs, align 4
  %arrayidx5.i.i = getelementptr ptr, ptr %49, i32 4
  %50 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx5.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %53)
  %cmp.i.i737.i = icmp ugt i16 %53, 7
  br i1 %cmp.i.i737.i, label %land.lhs.true.i.i.preheader.i, label %if.end.i.i.while.body.preheader.i.i_crit_edge

if.end.i.i.while.body.preheader.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader.i.i

land.lhs.true.i.i.preheader.i:                    ; preds = %if.end.i.i
  %conv.i.i.i = zext i16 %53 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 4
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.inc.i.i.land.lhs.true.i.i.i_crit_edge, %land.lhs.true.i.i.preheader.i
  %iter.0.i741.i = phi i32 [ %iter.1.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.preheader.i ]
  %nla.0.i739.i = phi ptr [ %add.ptr.i43.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %land.lhs.true.i.i.preheader.i ]
  %nla_rem.0.i738.i = phi i32 [ %sub1.i.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ], [ %sub.i.i.i, %land.lhs.true.i.i.preheader.i ]
  %54 = ptrtoint ptr %nla.0.i739.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nla.0.i739.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %55)
  %cmp1.i.i.i = icmp ult i16 %55, 4
  %conv.i38.i.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_rem.0.i738.i, i32 %conv.i38.i.i)
  %cmp5.i.not.i.i = icmp ult i32 %nla_rem.0.i738.i, %conv.i38.i.i
  %or.cond723.i = select i1 %cmp1.i.i.i, i1 true, i1 %cmp5.i.not.i.i
  br i1 %or.cond723.i, label %land.lhs.true.i.i.i.while.cond.preheader.i.i_crit_edge, label %for.body.i.i

land.lhs.true.i.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %for.inc.i.i.while.cond.preheader.i.i_crit_edge, %land.lhs.true.i.i.i.while.cond.preheader.i.i_crit_edge
  %iter.0.i.lcssa.i = phi i32 [ %iter.1.i.i, %for.inc.i.i.while.cond.preheader.i.i_crit_edge ], [ %iter.0.i741.i, %land.lhs.true.i.i.i.while.cond.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %iter.0.i.lcssa.i)
  %cmp2147.i.i = icmp ult i32 %iter.0.i.lcssa.i, 5
  br i1 %cmp2147.i.i, label %while.cond.preheader.i.i.while.body.preheader.i.i_crit_edge, label %while.cond.preheader.i.i.if.end20.i_crit_edge

while.cond.preheader.i.i.if.end20.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

while.cond.preheader.i.i.while.body.preheader.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader.i.i

while.body.preheader.i.i:                         ; preds = %while.cond.preheader.i.i.while.body.preheader.i.i_crit_edge, %if.end.i.i.while.body.preheader.i.i_crit_edge
  %iter.0.i.lcssa781.i = phi i32 [ %iter.0.i.lcssa.i, %while.cond.preheader.i.i.while.body.preheader.i.i_crit_edge ], [ 0, %if.end.i.i.while.body.preheader.i.i_crit_edge ]
  %56 = add nuw nsw i32 %iter.0.i.lcssa781.i, 12
  %uglygep.i.i = getelementptr i8, ptr %call7.i.i, i32 %56
  %57 = sub nuw nsw i32 5, %iter.0.i.lcssa781.i
  %58 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 %57)
  br label %if.end20.i

for.body.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %nla_type.i.i.i = getelementptr inbounds %struct.nlattr, ptr %nla.0.i739.i, i32 0, i32 1
  %59 = ptrtoint ptr %nla_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %nla_type.i.i.i, align 2
  %61 = and i16 %60, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %61)
  %cmp12.i.i = icmp eq i16 %61, 3
  br i1 %cmp12.i.i, label %if.then13.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iter.0.i741.i)
  %cmp14.i.i = icmp ugt i32 %iter.0.i741.i, 4
  br i1 %cmp14.i.i, label %if.then13.i.i.add_std_failure.i_crit_edge, label %if.end16.i.i

if.then13.i.i.add_std_failure.i_crit_edge:        ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end16.i.i:                                     ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i39.i.i = getelementptr i8, ptr %nla.0.i739.i, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i39.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr.i.i39.i.i, align 1
  %inc.i.i = add nuw nsw i32 %iter.0.i741.i, 1
  %arrayidx18.i.i = getelementptr %struct.cipso_v4_doi, ptr %call7.i.i, i32 0, i32 3, i32 %iter.0.i741.i
  %64 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx18.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end16.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %iter.1.i.i = phi i32 [ %inc.i.i, %if.end16.i.i ], [ %iter.0.i741.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %65 = ptrtoint ptr %nla.0.i739.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %nla.0.i739.i, align 2
  %conv.i40.i.i = zext i16 %66 to i32
  %sub.i41.i.i = add nuw nsw i32 %conv.i40.i.i, 3
  %and.i42.i.i = and i32 %sub.i41.i.i, 131068
  %sub1.i.i.i = sub nsw i32 %nla_rem.0.i738.i, %and.i42.i.i
  %add.ptr.i43.i.i = getelementptr i8, ptr %nla.0.i739.i, i32 %and.i42.i.i
  %cmp.i.i.i = icmp sgt i32 %sub1.i.i.i, 3
  br i1 %cmp.i.i.i, label %for.inc.i.i.land.lhs.true.i.i.i_crit_edge, label %for.inc.i.i.while.cond.preheader.i.i_crit_edge

for.inc.i.i.while.cond.preheader.i.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i.i

for.inc.i.i.land.lhs.true.i.i.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

if.end20.i:                                       ; preds = %while.body.preheader.i.i, %while.cond.preheader.i.i.if.end20.i_crit_edge
  %arrayidx22.i = getelementptr ptr, ptr %49, i32 8
  %67 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx22.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %68, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %70)
  %cmp.i746.i = icmp ugt i16 %70, 7
  br i1 %cmp.i746.i, label %land.lhs.true.i.preheader.i, label %if.end20.i.for.end76.i_crit_edge

if.end20.i.for.end76.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76.i

land.lhs.true.i.preheader.i:                      ; preds = %if.end20.i
  %conv.i.i = zext i16 %70 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %add.ptr.i.i20 = getelementptr i8, ptr %68, i32 4
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc74.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.preheader.i
  %nla_a.0748.i = phi ptr [ %add.ptr.i492.i, %for.inc74.i.land.lhs.true.i.i_crit_edge ], [ %add.ptr.i.i20, %land.lhs.true.i.preheader.i ]
  %nla_a_rem.0747.i = phi i32 [ %sub1.i491.i, %for.inc74.i.land.lhs.true.i.i_crit_edge ], [ %sub.i.i, %land.lhs.true.i.preheader.i ]
  %71 = ptrtoint ptr %nla_a.0748.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %nla_a.0748.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %72)
  %cmp1.i.i = icmp ult i16 %72, 4
  %conv.i460.i = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_a_rem.0747.i, i32 %conv.i460.i)
  %cmp5.i.not.i = icmp ult i32 %nla_a_rem.0747.i, %conv.i460.i
  %or.cond724.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond724.i, label %land.lhs.true.i.i.for.end76.i_crit_edge, label %for.body.i

land.lhs.true.i.i.for.end76.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76.i

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %nla_a.0748.i, i32 0, i32 1
  %73 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %nla_type.i.i, align 2
  %75 = and i16 %74, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %75)
  %cmp30.i = icmp eq i16 %75, 7
  br i1 %cmp30.i, label %if.then31.i, label %for.body.i.for.inc74.i_crit_edge

for.body.i.for.inc74.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc74.i

if.then31.i:                                      ; preds = %for.body.i
  %add.ptr.i.i.i461.i = getelementptr i8, ptr %nla_a.0748.i, i32 4
  %sub.i.i.i463.i = add nsw i32 %conv.i460.i, -4
  %call2.i.i464.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i461.i, i32 noundef %sub.i.i.i463.i, i32 noundef 12, ptr noundef nonnull @netlbl_cipsov4_genl_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i464.i)
  %cmp33.not.i = icmp eq i32 %call2.i.i464.i, 0
  br i1 %cmp33.not.i, label %if.end35.i, label %if.then31.i.add_std_failure.i_crit_edge

if.then31.i.add_std_failure.i_crit_edge:          ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end35.i:                                       ; preds = %if.then31.i
  %76 = ptrtoint ptr %nla_a.0748.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %nla_a.0748.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %77)
  %cmp.i468743.i = icmp ugt i16 %77, 7
  br i1 %cmp.i468743.i, label %land.lhs.true.i470.preheader.i, label %if.end35.i.for.inc74.i_crit_edge

if.end35.i.for.inc74.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc74.i

land.lhs.true.i470.preheader.i:                   ; preds = %if.end35.i
  %conv.i466.i = zext i16 %77 to i32
  %sub.i467.i = add nsw i32 %conv.i466.i, -4
  br label %land.lhs.true.i470.i

land.lhs.true.i470.i:                             ; preds = %for.inc.i.land.lhs.true.i470.i_crit_edge, %land.lhs.true.i470.preheader.i
  %nla_b.0745.i = phi ptr [ %add.ptr.i487.i, %for.inc.i.land.lhs.true.i470.i_crit_edge ], [ %add.ptr.i.i.i461.i, %land.lhs.true.i470.preheader.i ]
  %nla_b_rem.0744.i = phi i32 [ %sub1.i.i, %for.inc.i.land.lhs.true.i470.i_crit_edge ], [ %sub.i467.i, %land.lhs.true.i470.preheader.i ]
  %78 = ptrtoint ptr %nla_b.0745.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %nla_b.0745.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %79)
  %cmp1.i469.i = icmp ult i16 %79, 4
  %conv.i471.i = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_b_rem.0744.i, i32 %conv.i471.i)
  %cmp5.i472.not.i = icmp ult i32 %nla_b_rem.0744.i, %conv.i471.i
  %or.cond725.i = select i1 %cmp1.i469.i, i1 true, i1 %cmp5.i472.not.i
  br i1 %or.cond725.i, label %land.lhs.true.i470.i.for.inc74.i_crit_edge, label %for.body41.i

land.lhs.true.i470.i.for.inc74.i_crit_edge:       ; preds = %land.lhs.true.i470.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc74.i

for.body41.i:                                     ; preds = %land.lhs.true.i470.i
  %nla_type.i476.i = getelementptr inbounds %struct.nlattr, ptr %nla_b.0745.i, i32 0, i32 1
  %80 = ptrtoint ptr %nla_type.i476.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %nla_type.i476.i, align 2
  %82 = and i16 %81, 16383
  %and.i477.i = zext i16 %82 to i32
  %83 = zext i32 %and.i477.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and.i477.i, label %for.body41.i.for.inc.i_crit_edge [
    i32 5, label %sw.bb.i
    i32 6, label %sw.bb56.i
  ]

for.body41.i.for.inc.i_crit_edge:                 ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body41.i
  %add.ptr.i.i478.i = getelementptr i8, ptr %nla_b.0745.i, i32 4
  %84 = ptrtoint ptr %add.ptr.i.i478.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i.i478.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp44.i = icmp slt i32 %85, 0
  br i1 %cmp44.i, label %sw.bb.i.add_std_failure.i_crit_edge, label %if.end46.i

sw.bb.i.add_std_failure.i_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end46.i:                                       ; preds = %sw.bb.i
  %86 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %map.i, align 8
  %local_size.i = getelementptr inbounds %struct.anon.146, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %local_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %local_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %89)
  %cmp49.not.i = icmp ult i32 %85, %89
  br i1 %cmp49.not.i, label %if.end46.i.for.inc.i_crit_edge, label %if.end46.i.for.inc.sink.split.i_crit_edge

if.end46.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

if.end46.i.for.inc.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb56.i:                                        ; preds = %for.body41.i
  %add.ptr.i.i481.i = getelementptr i8, ptr %nla_b.0745.i, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i481.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i481.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %91)
  %cmp58.i = icmp ugt i32 %91, 255
  br i1 %cmp58.i, label %sw.bb56.i.add_std_failure.i_crit_edge, label %if.end60.i

sw.bb56.i.add_std_failure.i_crit_edge:            ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end60.i:                                       ; preds = %sw.bb56.i
  %92 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %map.i, align 8
  %cipso_size.i = getelementptr inbounds %struct.anon.146, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %cipso_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cipso_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %95)
  %cmp64.not.i = icmp ult i32 %91, %95
  br i1 %cmp64.not.i, label %if.end60.i.for.inc.i_crit_edge, label %if.end60.i.for.inc.sink.split.i_crit_edge

if.end60.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

if.end60.i.for.inc.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %if.end60.i.for.inc.sink.split.i_crit_edge, %if.end46.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %85, %if.end46.i.for.inc.sink.split.i_crit_edge ], [ %91, %if.end60.i.for.inc.sink.split.i_crit_edge ]
  %local_size.sink.i = phi ptr [ %local_size.i, %if.end46.i.for.inc.sink.split.i_crit_edge ], [ %cipso_size.i, %if.end60.i.for.inc.sink.split.i_crit_edge ]
  %add.i = add nuw i32 %.sink.i, 1
  %96 = ptrtoint ptr %local_size.sink.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add.i, ptr %local_size.sink.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end60.i.for.inc.i_crit_edge, %if.end46.i.for.inc.i_crit_edge, %for.body41.i.for.inc.i_crit_edge
  %97 = ptrtoint ptr %nla_b.0745.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %nla_b.0745.i, align 2
  %conv.i484.i = zext i16 %98 to i32
  %sub.i485.i = add nuw nsw i32 %conv.i484.i, 3
  %and.i486.i = and i32 %sub.i485.i, 131068
  %sub1.i.i = sub nsw i32 %nla_b_rem.0744.i, %and.i486.i
  %add.ptr.i487.i = getelementptr i8, ptr %nla_b.0745.i, i32 %and.i486.i
  %cmp.i468.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i468.i, label %for.inc.i.land.lhs.true.i470.i_crit_edge, label %for.inc.i.for.inc74.i_crit_edge

for.inc.i.for.inc74.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc74.i

for.inc.i.land.lhs.true.i470.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i470.i

for.inc74.i:                                      ; preds = %for.inc.i.for.inc74.i_crit_edge, %land.lhs.true.i470.i.for.inc74.i_crit_edge, %if.end35.i.for.inc74.i_crit_edge, %for.body.i.for.inc74.i_crit_edge
  %99 = ptrtoint ptr %nla_a.0748.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %nla_a.0748.i, align 2
  %conv.i488.i = zext i16 %100 to i32
  %sub.i489.i = add nuw nsw i32 %conv.i488.i, 3
  %and.i490.i = and i32 %sub.i489.i, 131068
  %sub1.i491.i = sub i32 %nla_a_rem.0747.i, %and.i490.i
  %add.ptr.i492.i = getelementptr i8, ptr %nla_a.0748.i, i32 %and.i490.i
  %cmp.i.i = icmp sgt i32 %sub1.i491.i, 3
  br i1 %cmp.i.i, label %for.inc74.i.land.lhs.true.i.i_crit_edge, label %for.inc74.i.for.end76.i_crit_edge

for.inc74.i.for.end76.i_crit_edge:                ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76.i

for.inc74.i.land.lhs.true.i.i_crit_edge:          ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

for.end76.i:                                      ; preds = %for.inc74.i.for.end76.i_crit_edge, %land.lhs.true.i.i.for.end76.i_crit_edge, %if.end20.i.for.end76.i_crit_edge
  %101 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map.i, align 8
  %local_size79.i = getelementptr inbounds %struct.anon.146, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %local_size79.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %local_size79.i, align 4
  %105 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %104, i32 4) #10
  %106 = extractvalue { i32, i1 } %105, 1
  br i1 %106, label %for.end76.i.kcalloc.exit.i_crit_edge, label %if.end7.i.i.i, !prof !26

for.end76.i.kcalloc.exit.i_crit_edge:             ; preds = %for.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcalloc.exit.i

if.end7.i.i.i:                                    ; preds = %for.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = extractvalue { i32, i1 } %105, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %107, i32 noundef 11712) #14
  br label %kcalloc.exit.i

kcalloc.exit.i:                                   ; preds = %if.end7.i.i.i, %for.end76.i.kcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call8.i.i.i, %if.end7.i.i.i ], [ null, %for.end76.i.kcalloc.exit.i_crit_edge ]
  %108 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map.i, align 8
  %local.i = getelementptr inbounds %struct.anon.146, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %local.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %retval.0.i.i.i, ptr %local.i, align 4
  %111 = load ptr, ptr %map.i, align 8
  %local85.i = getelementptr inbounds %struct.anon.146, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %local85.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %local85.i, align 4
  %cmp86.i = icmp eq ptr %113, null
  br i1 %cmp86.i, label %kcalloc.exit.i.add_std_failure.i_crit_edge, label %if.end88.i

kcalloc.exit.i.add_std_failure.i_crit_edge:       ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end88.i:                                       ; preds = %kcalloc.exit.i
  %cipso_size91.i = getelementptr inbounds %struct.anon.146, ptr %111, i32 0, i32 2
  %114 = ptrtoint ptr %cipso_size91.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cipso_size91.i, align 4
  %116 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %115, i32 4) #10
  %117 = extractvalue { i32, i1 } %116, 1
  br i1 %117, label %if.end88.i.kcalloc.exit525.i_crit_edge, label %if.end7.i.i523.i, !prof !26

if.end88.i.kcalloc.exit525.i_crit_edge:           ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcalloc.exit525.i

if.end7.i.i523.i:                                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = extractvalue { i32, i1 } %116, 0
  %call8.i.i522.i = call noalias align 128 ptr @__kmalloc(i32 noundef %118, i32 noundef 11712) #14
  br label %kcalloc.exit525.i

kcalloc.exit525.i:                                ; preds = %if.end7.i.i523.i, %if.end88.i.kcalloc.exit525.i_crit_edge
  %retval.0.i.i524.i = phi ptr [ %call8.i.i522.i, %if.end7.i.i523.i ], [ null, %if.end88.i.kcalloc.exit525.i_crit_edge ]
  %119 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %map.i, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %retval.0.i.i524.i, ptr %120, align 4
  %122 = load ptr, ptr %map.i, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %cmp98.i = icmp eq ptr %124, null
  br i1 %cmp98.i, label %kcalloc.exit525.i.add_std_failure.i_crit_edge, label %for.cond101.preheader.i

kcalloc.exit525.i.add_std_failure.i_crit_edge:    ; preds = %kcalloc.exit525.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

for.cond101.preheader.i:                          ; preds = %kcalloc.exit525.i
  %local_size104749.i = getelementptr inbounds %struct.anon.146, ptr %122, i32 0, i32 3
  %125 = ptrtoint ptr %local_size104749.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %local_size104749.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp105750.not.i = icmp eq i32 %126, 0
  br i1 %cmp105750.not.i, label %for.cond101.preheader.i.for.cond113.preheader.i_crit_edge, label %for.cond101.preheader.i.for.body106.i_crit_edge

for.cond101.preheader.i.for.body106.i_crit_edge:  ; preds = %for.cond101.preheader.i
  br label %for.body106.i

for.cond101.preheader.i.for.cond113.preheader.i_crit_edge: ; preds = %for.cond101.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond113.preheader.i

for.cond113.preheader.i:                          ; preds = %for.body106.i.for.cond113.preheader.i_crit_edge, %for.cond101.preheader.i.for.cond113.preheader.i_crit_edge
  %127 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %map.i, align 8
  %cipso_size116752.i = getelementptr inbounds %struct.anon.146, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %cipso_size116752.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cipso_size116752.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp117753.not.i = icmp eq i32 %130, 0
  br i1 %cmp117753.not.i, label %for.cond113.preheader.i.for.end125.i_crit_edge, label %for.cond113.preheader.i.for.body118.i_crit_edge

for.cond113.preheader.i.for.body118.i_crit_edge:  ; preds = %for.cond113.preheader.i
  br label %for.body118.i

for.cond113.preheader.i.for.end125.i_crit_edge:   ; preds = %for.cond113.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end125.i

for.body106.i:                                    ; preds = %for.body106.i.for.body106.i_crit_edge, %for.cond101.preheader.i.for.body106.i_crit_edge
  %131 = phi ptr [ %136, %for.body106.i.for.body106.i_crit_edge ], [ %122, %for.cond101.preheader.i.for.body106.i_crit_edge ]
  %iter.0751.i = phi i32 [ %inc.i, %for.body106.i.for.body106.i_crit_edge ], [ 0, %for.cond101.preheader.i.for.body106.i_crit_edge ]
  %local109.i = getelementptr inbounds %struct.anon.146, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %local109.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %local109.i, align 4
  %arrayidx110.i = getelementptr i32, ptr %133, i32 %iter.0751.i
  %134 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -2147483648, ptr %arrayidx110.i, align 4
  %inc.i = add nuw i32 %iter.0751.i, 1
  %135 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %map.i, align 8
  %local_size104.i = getelementptr inbounds %struct.anon.146, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %local_size104.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %local_size104.i, align 4
  %cmp105.i = icmp ult i32 %inc.i, %138
  br i1 %cmp105.i, label %for.body106.i.for.body106.i_crit_edge, label %for.body106.i.for.cond113.preheader.i_crit_edge

for.body106.i.for.cond113.preheader.i_crit_edge:  ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond113.preheader.i

for.body106.i.for.body106.i_crit_edge:            ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body106.i

for.body118.i:                                    ; preds = %for.body118.i.for.body118.i_crit_edge, %for.cond113.preheader.i.for.body118.i_crit_edge
  %139 = phi ptr [ %144, %for.body118.i.for.body118.i_crit_edge ], [ %128, %for.cond113.preheader.i.for.body118.i_crit_edge ]
  %iter.1754.i = phi i32 [ %inc124.i, %for.body118.i.for.body118.i_crit_edge ], [ 0, %for.cond113.preheader.i.for.body118.i_crit_edge ]
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %arrayidx122.i = getelementptr i32, ptr %141, i32 %iter.1754.i
  %142 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -2147483648, ptr %arrayidx122.i, align 4
  %inc124.i = add nuw i32 %iter.1754.i, 1
  %143 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %map.i, align 8
  %cipso_size116.i = getelementptr inbounds %struct.anon.146, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %cipso_size116.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cipso_size116.i, align 4
  %cmp117.i = icmp ult i32 %inc124.i, %146
  br i1 %cmp117.i, label %for.body118.i.for.body118.i_crit_edge, label %for.body118.i.for.end125.i_crit_edge

for.body118.i.for.end125.i_crit_edge:             ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end125.i

for.body118.i.for.body118.i_crit_edge:            ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body118.i

for.end125.i:                                     ; preds = %for.body118.i.for.end125.i_crit_edge, %for.cond113.preheader.i.for.end125.i_crit_edge
  %147 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %attrs, align 4
  %arrayidx127.i = getelementptr ptr, ptr %148, i32 8
  %149 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx127.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %150, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %152)
  %cmp.i529755.i = icmp ugt i16 %152, 7
  br i1 %cmp.i529755.i, label %land.lhs.true.i531.preheader.i, label %for.end125.i.for.end162.i_crit_edge

for.end125.i.for.end162.i_crit_edge:              ; preds = %for.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162.i

land.lhs.true.i531.preheader.i:                   ; preds = %for.end125.i
  %conv.i527.i = zext i16 %152 to i32
  %sub.i528.i = add nsw i32 %conv.i527.i, -4
  %add.ptr.i526.i = getelementptr i8, ptr %150, i32 4
  br label %land.lhs.true.i531.i

land.lhs.true.i531.i:                             ; preds = %for.inc160.i.land.lhs.true.i531.i_crit_edge, %land.lhs.true.i531.preheader.i
  %nla_a.1757.i = phi ptr [ %add.ptr.i554.i, %for.inc160.i.land.lhs.true.i531.i_crit_edge ], [ %add.ptr.i526.i, %land.lhs.true.i531.preheader.i ]
  %nla_a_rem.1756.i = phi i32 [ %sub1.i553.i, %for.inc160.i.land.lhs.true.i531.i_crit_edge ], [ %sub.i528.i, %land.lhs.true.i531.preheader.i ]
  %153 = ptrtoint ptr %nla_a.1757.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %nla_a.1757.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %154)
  %cmp1.i530.i = icmp ult i16 %154, 4
  %conv.i532.i = zext i16 %154 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_a_rem.1756.i, i32 %conv.i532.i)
  %cmp5.i533.not.i = icmp ult i32 %nla_a_rem.1756.i, %conv.i532.i
  %or.cond726.i = select i1 %cmp1.i530.i, i1 true, i1 %cmp5.i533.not.i
  br i1 %or.cond726.i, label %land.lhs.true.i531.i.for.end162.i_crit_edge, label %for.body135.i

land.lhs.true.i531.i.for.end162.i_crit_edge:      ; preds = %land.lhs.true.i531.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162.i

for.body135.i:                                    ; preds = %land.lhs.true.i531.i
  %nla_type.i537.i = getelementptr inbounds %struct.nlattr, ptr %nla_a.1757.i, i32 0, i32 1
  %155 = ptrtoint ptr %nla_type.i537.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %nla_type.i537.i, align 2
  %157 = and i16 %156, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %157)
  %cmp137.i = icmp eq i16 %157, 7
  br i1 %cmp137.i, label %if.then138.i, label %for.body135.i.for.inc160.i_crit_edge

for.body135.i.for.inc160.i_crit_edge:             ; preds = %for.body135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc160.i

if.then138.i:                                     ; preds = %for.body135.i
  %add.ptr.i.i539.i = getelementptr i8, ptr %nla_a.1757.i, i32 4
  %sub.i.i541.i = add nsw i32 %conv.i532.i, -4
  %call2.i.i = call ptr @nla_find(ptr noundef %add.ptr.i.i539.i, i32 noundef %sub.i.i541.i, i32 noundef 5) #10
  %158 = ptrtoint ptr %nla_a.1757.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %nla_a.1757.i, align 2
  %conv.i.i543.i = zext i16 %159 to i32
  %sub.i.i544.i = add nsw i32 %conv.i.i543.i, -4
  %call2.i545.i = call ptr @nla_find(ptr noundef %add.ptr.i.i539.i, i32 noundef %sub.i.i544.i, i32 noundef 6) #10
  %cmp141.i = icmp eq ptr %call2.i.i, null
  %cmp143.i = icmp eq ptr %call2.i545.i, null
  %or.cond.i = select i1 %cmp141.i, i1 true, i1 %cmp143.i
  br i1 %or.cond.i, label %if.then138.i.add_std_failure.i_crit_edge, label %cleanup.thread.i

if.then138.i.add_std_failure.i_crit_edge:         ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

cleanup.thread.i:                                 ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i546.i = getelementptr i8, ptr %call2.i545.i, i32 4
  %160 = ptrtoint ptr %add.ptr.i.i546.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr.i.i546.i, align 4
  %162 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map.i, align 8
  %local149.i = getelementptr inbounds %struct.anon.146, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %local149.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %local149.i, align 4
  %add.ptr.i.i547.i = getelementptr i8, ptr %call2.i.i, i32 4
  %166 = ptrtoint ptr %add.ptr.i.i547.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i.i547.i, align 4
  %arrayidx151.i = getelementptr i32, ptr %165, i32 %167
  %168 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %161, ptr %arrayidx151.i, align 4
  %169 = load i32, ptr %add.ptr.i.i547.i, align 4
  %170 = load ptr, ptr %map.i, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = load i32, ptr %add.ptr.i.i546.i, align 4
  %arrayidx157.i = getelementptr i32, ptr %172, i32 %173
  %174 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %169, ptr %arrayidx157.i, align 4
  br label %for.inc160.i

for.inc160.i:                                     ; preds = %cleanup.thread.i, %for.body135.i.for.inc160.i_crit_edge
  %175 = ptrtoint ptr %nla_a.1757.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %nla_a.1757.i, align 2
  %conv.i550.i = zext i16 %176 to i32
  %sub.i551.i = add nuw nsw i32 %conv.i550.i, 3
  %and.i552.i = and i32 %sub.i551.i, 131068
  %sub1.i553.i = sub nsw i32 %nla_a_rem.1756.i, %and.i552.i
  %add.ptr.i554.i = getelementptr i8, ptr %nla_a.1757.i, i32 %and.i552.i
  %cmp.i529.i = icmp sgt i32 %sub1.i553.i, 3
  br i1 %cmp.i529.i, label %for.inc160.i.land.lhs.true.i531.i_crit_edge, label %for.inc160.i.for.end162.i_crit_edge

for.inc160.i.for.end162.i_crit_edge:              ; preds = %for.inc160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162.i

for.inc160.i.land.lhs.true.i531.i_crit_edge:      ; preds = %for.inc160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i531.i

for.end162.i:                                     ; preds = %for.inc160.i.for.end162.i_crit_edge, %land.lhs.true.i531.i.for.end162.i_crit_edge, %for.end125.i.for.end162.i_crit_edge
  %177 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %attrs, align 4
  %arrayidx164.i = getelementptr ptr, ptr %178, i32 12
  %179 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx164.i, align 4
  %tobool165.not.i = icmp eq ptr %180, null
  br i1 %tobool165.not.i, label %for.end162.i.if.end330.i_crit_edge, label %if.then166.i

for.end162.i.if.end330.i_crit_edge:               ; preds = %for.end162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end330.i

if.then166.i:                                     ; preds = %for.end162.i
  %add.ptr.i.i.i555.i = getelementptr i8, ptr %180, i32 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %180, align 2
  %conv.i.i.i556.i = zext i16 %182 to i32
  %sub.i.i.i557.i = add nsw i32 %conv.i.i.i556.i, -4
  %call2.i.i558.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i555.i, i32 noundef %sub.i.i.i557.i, i32 noundef 12, ptr noundef nonnull @netlbl_cipsov4_genl_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i558.i)
  %cmp170.not.i = icmp eq i32 %call2.i.i558.i, 0
  br i1 %cmp170.not.i, label %if.end172.i, label %if.then166.i.add_std_failure.i_crit_edge

if.then166.i.add_std_failure.i_crit_edge:         ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end172.i:                                      ; preds = %if.then166.i
  %183 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %attrs, align 4
  %arrayidx174.i = getelementptr ptr, ptr %184, i32 12
  %185 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx174.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %186, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %188)
  %cmp.i562761.i = icmp ugt i16 %188, 7
  br i1 %cmp.i562761.i, label %land.lhs.true.i564.preheader.i, label %if.end172.i.for.end237.i_crit_edge

if.end172.i.for.end237.i_crit_edge:               ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end237.i

land.lhs.true.i564.preheader.i:                   ; preds = %if.end172.i
  %conv.i560.i = zext i16 %188 to i32
  %sub.i561.i = add nsw i32 %conv.i560.i, -4
  %add.ptr.i559.i = getelementptr i8, ptr %186, i32 4
  br label %land.lhs.true.i564.i

land.lhs.true.i564.i:                             ; preds = %for.inc235.i.land.lhs.true.i564.i_crit_edge, %land.lhs.true.i564.preheader.i
  %nla_a.2763.i = phi ptr [ %add.ptr.i604.i, %for.inc235.i.land.lhs.true.i564.i_crit_edge ], [ %add.ptr.i559.i, %land.lhs.true.i564.preheader.i ]
  %nla_a_rem.2762.i = phi i32 [ %sub1.i603.i, %for.inc235.i.land.lhs.true.i564.i_crit_edge ], [ %sub.i561.i, %land.lhs.true.i564.preheader.i ]
  %189 = ptrtoint ptr %nla_a.2763.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %nla_a.2763.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %190)
  %cmp1.i563.i = icmp ult i16 %190, 4
  %conv.i565.i = zext i16 %190 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_a_rem.2762.i, i32 %conv.i565.i)
  %cmp5.i566.not.i = icmp ult i32 %nla_a_rem.2762.i, %conv.i565.i
  %or.cond727.i = select i1 %cmp1.i563.i, i1 true, i1 %cmp5.i566.not.i
  br i1 %or.cond727.i, label %land.lhs.true.i564.i.for.end237.i_crit_edge, label %for.body182.i

land.lhs.true.i564.i.for.end237.i_crit_edge:      ; preds = %land.lhs.true.i564.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end237.i

for.body182.i:                                    ; preds = %land.lhs.true.i564.i
  %nla_type.i570.i = getelementptr inbounds %struct.nlattr, ptr %nla_a.2763.i, i32 0, i32 1
  %191 = ptrtoint ptr %nla_type.i570.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %nla_type.i570.i, align 2
  %193 = and i16 %192, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %193)
  %cmp184.i = icmp eq i16 %193, 11
  br i1 %cmp184.i, label %if.then185.i, label %for.body182.i.for.inc235.i_crit_edge

for.body182.i.for.inc235.i_crit_edge:             ; preds = %for.body182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc235.i

if.then185.i:                                     ; preds = %for.body182.i
  %add.ptr.i.i.i572.i = getelementptr i8, ptr %nla_a.2763.i, i32 4
  %sub.i.i.i574.i = add nsw i32 %conv.i565.i, -4
  %call2.i.i575.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i572.i, i32 noundef %sub.i.i.i574.i, i32 noundef 12, ptr noundef nonnull @netlbl_cipsov4_genl_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i575.i)
  %cmp187.not.i = icmp eq i32 %call2.i.i575.i, 0
  br i1 %cmp187.not.i, label %if.end189.i, label %if.then185.i.add_std_failure.i_crit_edge

if.then185.i.add_std_failure.i_crit_edge:         ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end189.i:                                      ; preds = %if.then185.i
  %194 = ptrtoint ptr %nla_a.2763.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %nla_a.2763.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %195)
  %cmp.i579758.i = icmp ugt i16 %195, 7
  br i1 %cmp.i579758.i, label %land.lhs.true.i581.preheader.i, label %if.end189.i.for.inc235.i_crit_edge

if.end189.i.for.inc235.i_crit_edge:               ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc235.i

land.lhs.true.i581.preheader.i:                   ; preds = %if.end189.i
  %conv.i577.i = zext i16 %195 to i32
  %sub.i578.i = add nsw i32 %conv.i577.i, -4
  br label %land.lhs.true.i581.i

land.lhs.true.i581.i:                             ; preds = %for.inc231.i.land.lhs.true.i581.i_crit_edge, %land.lhs.true.i581.preheader.i
  %nla_b.1760.i = phi ptr [ %add.ptr.i599.i, %for.inc231.i.land.lhs.true.i581.i_crit_edge ], [ %add.ptr.i.i.i572.i, %land.lhs.true.i581.preheader.i ]
  %nla_b_rem.1759.i = phi i32 [ %sub1.i598.i, %for.inc231.i.land.lhs.true.i581.i_crit_edge ], [ %sub.i578.i, %land.lhs.true.i581.preheader.i ]
  %196 = ptrtoint ptr %nla_b.1760.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %nla_b.1760.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %197)
  %cmp1.i580.i = icmp ult i16 %197, 4
  %conv.i582.i = zext i16 %197 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_b_rem.1759.i, i32 %conv.i582.i)
  %cmp5.i583.not.i = icmp ult i32 %nla_b_rem.1759.i, %conv.i582.i
  %or.cond728.i = select i1 %cmp1.i580.i, i1 true, i1 %cmp5.i583.not.i
  br i1 %or.cond728.i, label %land.lhs.true.i581.i.for.inc235.i_crit_edge, label %for.body195.i

land.lhs.true.i581.i.for.inc235.i_crit_edge:      ; preds = %land.lhs.true.i581.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc235.i

for.body195.i:                                    ; preds = %land.lhs.true.i581.i
  %nla_type.i587.i = getelementptr inbounds %struct.nlattr, ptr %nla_b.1760.i, i32 0, i32 1
  %198 = ptrtoint ptr %nla_type.i587.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %nla_type.i587.i, align 2
  %200 = and i16 %199, 16383
  %and.i588.i = zext i16 %200 to i32
  %201 = zext i32 %and.i588.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and.i588.i, label %for.body195.i.for.inc231.i_crit_edge [
    i32 9, label %sw.bb197.i
    i32 10, label %sw.bb213.i
  ]

for.body195.i.for.inc231.i_crit_edge:             ; preds = %for.body195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc231.i

sw.bb197.i:                                       ; preds = %for.body195.i
  %add.ptr.i.i589.i = getelementptr i8, ptr %nla_b.1760.i, i32 4
  %202 = ptrtoint ptr %add.ptr.i.i589.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr.i.i589.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp199.i = icmp slt i32 %203, 0
  br i1 %cmp199.i, label %sw.bb197.i.add_std_failure.i_crit_edge, label %if.end201.i

sw.bb197.i.add_std_failure.i_crit_edge:           ; preds = %sw.bb197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end201.i:                                      ; preds = %sw.bb197.i
  %204 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %map.i, align 8
  %local_size204.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %205, i32 0, i32 1, i32 3
  %206 = ptrtoint ptr %local_size204.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %local_size204.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %207)
  %cmp205.not.i = icmp ult i32 %203, %207
  br i1 %cmp205.not.i, label %if.end201.i.for.inc231.i_crit_edge, label %if.end201.i.for.inc231.sink.split.i_crit_edge

if.end201.i.for.inc231.sink.split.i_crit_edge:    ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc231.sink.split.i

if.end201.i.for.inc231.i_crit_edge:               ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc231.i

sw.bb213.i:                                       ; preds = %for.body195.i
  %add.ptr.i.i592.i = getelementptr i8, ptr %nla_b.1760.i, i32 4
  %208 = ptrtoint ptr %add.ptr.i.i592.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %add.ptr.i.i592.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %209)
  %cmp215.i = icmp ugt i32 %209, 65534
  br i1 %cmp215.i, label %sw.bb213.i.add_std_failure.i_crit_edge, label %if.end217.i

sw.bb213.i.add_std_failure.i_crit_edge:           ; preds = %sw.bb213.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end217.i:                                      ; preds = %sw.bb213.i
  %210 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %map.i, align 8
  %cipso_size221.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %211, i32 0, i32 1, i32 2
  %212 = ptrtoint ptr %cipso_size221.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %cipso_size221.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %213)
  %cmp222.not.i = icmp ult i32 %209, %213
  br i1 %cmp222.not.i, label %if.end217.i.for.inc231.i_crit_edge, label %if.end217.i.for.inc231.sink.split.i_crit_edge

if.end217.i.for.inc231.sink.split.i_crit_edge:    ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc231.sink.split.i

if.end217.i.for.inc231.i_crit_edge:               ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc231.i

for.inc231.sink.split.i:                          ; preds = %if.end217.i.for.inc231.sink.split.i_crit_edge, %if.end201.i.for.inc231.sink.split.i_crit_edge
  %.sink788.i = phi i32 [ %203, %if.end201.i.for.inc231.sink.split.i_crit_edge ], [ %209, %if.end217.i.for.inc231.sink.split.i_crit_edge ]
  %local_size204.sink.i = phi ptr [ %local_size204.i, %if.end201.i.for.inc231.sink.split.i_crit_edge ], [ %cipso_size221.i, %if.end217.i.for.inc231.sink.split.i_crit_edge ]
  %add208.i = add nuw i32 %.sink788.i, 1
  %214 = ptrtoint ptr %local_size204.sink.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %add208.i, ptr %local_size204.sink.i, align 4
  br label %for.inc231.i

for.inc231.i:                                     ; preds = %for.inc231.sink.split.i, %if.end217.i.for.inc231.i_crit_edge, %if.end201.i.for.inc231.i_crit_edge, %for.body195.i.for.inc231.i_crit_edge
  %215 = ptrtoint ptr %nla_b.1760.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %nla_b.1760.i, align 2
  %conv.i595.i = zext i16 %216 to i32
  %sub.i596.i = add nuw nsw i32 %conv.i595.i, 3
  %and.i597.i = and i32 %sub.i596.i, 131068
  %sub1.i598.i = sub nsw i32 %nla_b_rem.1759.i, %and.i597.i
  %add.ptr.i599.i = getelementptr i8, ptr %nla_b.1760.i, i32 %and.i597.i
  %cmp.i579.i = icmp sgt i32 %sub1.i598.i, 3
  br i1 %cmp.i579.i, label %for.inc231.i.land.lhs.true.i581.i_crit_edge, label %for.inc231.i.for.inc235.i_crit_edge

for.inc231.i.for.inc235.i_crit_edge:              ; preds = %for.inc231.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc235.i

for.inc231.i.land.lhs.true.i581.i_crit_edge:      ; preds = %for.inc231.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i581.i

for.inc235.i:                                     ; preds = %for.inc231.i.for.inc235.i_crit_edge, %land.lhs.true.i581.i.for.inc235.i_crit_edge, %if.end189.i.for.inc235.i_crit_edge, %for.body182.i.for.inc235.i_crit_edge
  %217 = ptrtoint ptr %nla_a.2763.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %nla_a.2763.i, align 2
  %conv.i600.i = zext i16 %218 to i32
  %sub.i601.i = add nuw nsw i32 %conv.i600.i, 3
  %and.i602.i = and i32 %sub.i601.i, 131068
  %sub1.i603.i = sub i32 %nla_a_rem.2762.i, %and.i602.i
  %add.ptr.i604.i = getelementptr i8, ptr %nla_a.2763.i, i32 %and.i602.i
  %cmp.i562.i = icmp sgt i32 %sub1.i603.i, 3
  br i1 %cmp.i562.i, label %for.inc235.i.land.lhs.true.i564.i_crit_edge, label %for.inc235.i.for.end237.i_crit_edge

for.inc235.i.for.end237.i_crit_edge:              ; preds = %for.inc235.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end237.i

for.inc235.i.land.lhs.true.i564.i_crit_edge:      ; preds = %for.inc235.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i564.i

for.end237.i:                                     ; preds = %for.inc235.i.for.end237.i_crit_edge, %land.lhs.true.i564.i.for.end237.i_crit_edge, %if.end172.i.for.end237.i_crit_edge
  %219 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %map.i, align 8
  %local_size240.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %220, i32 0, i32 1, i32 3
  %221 = ptrtoint ptr %local_size240.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %local_size240.i, align 4
  %223 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %222, i32 4) #10
  %224 = extractvalue { i32, i1 } %223, 1
  br i1 %224, label %for.end237.i.kcalloc.exit637.i_crit_edge, label %if.end7.i.i635.i, !prof !26

for.end237.i.kcalloc.exit637.i_crit_edge:         ; preds = %for.end237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcalloc.exit637.i

if.end7.i.i635.i:                                 ; preds = %for.end237.i
  call void @__sanitizer_cov_trace_pc() #12
  %225 = extractvalue { i32, i1 } %223, 0
  %call8.i.i634.i = call noalias align 128 ptr @__kmalloc(i32 noundef %225, i32 noundef 11712) #14
  br label %kcalloc.exit637.i

kcalloc.exit637.i:                                ; preds = %if.end7.i.i635.i, %for.end237.i.kcalloc.exit637.i_crit_edge
  %retval.0.i.i636.i = phi ptr [ %call8.i.i634.i, %if.end7.i.i635.i ], [ null, %for.end237.i.kcalloc.exit637.i_crit_edge ]
  %226 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %map.i, align 8
  %local244.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %227, i32 0, i32 1, i32 1
  %228 = ptrtoint ptr %local244.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %retval.0.i.i636.i, ptr %local244.i, align 4
  %229 = load ptr, ptr %map.i, align 8
  %local247.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %229, i32 0, i32 1, i32 1
  %230 = ptrtoint ptr %local247.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %local247.i, align 4
  %cmp248.i = icmp eq ptr %231, null
  br i1 %cmp248.i, label %kcalloc.exit637.i.add_std_failure.i_crit_edge, label %if.end250.i

kcalloc.exit637.i.add_std_failure.i_crit_edge:    ; preds = %kcalloc.exit637.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end250.i:                                      ; preds = %kcalloc.exit637.i
  %cipso_size253.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %229, i32 0, i32 1, i32 2
  %232 = ptrtoint ptr %cipso_size253.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %cipso_size253.i, align 4
  %234 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %233, i32 4) #10
  %235 = extractvalue { i32, i1 } %234, 1
  br i1 %235, label %if.end250.i.kcalloc.exit670.i_crit_edge, label %if.end7.i.i668.i, !prof !26

if.end250.i.kcalloc.exit670.i_crit_edge:          ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcalloc.exit670.i

if.end7.i.i668.i:                                 ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #12
  %236 = extractvalue { i32, i1 } %234, 0
  %call8.i.i667.i = call noalias align 128 ptr @__kmalloc(i32 noundef %236, i32 noundef 11712) #14
  br label %kcalloc.exit670.i

kcalloc.exit670.i:                                ; preds = %if.end7.i.i668.i, %if.end250.i.kcalloc.exit670.i_crit_edge
  %retval.0.i.i669.i = phi ptr [ %call8.i.i667.i, %if.end7.i.i668.i ], [ null, %if.end250.i.kcalloc.exit670.i_crit_edge ]
  %237 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %map.i, align 8
  %cat256.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %cat256.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %retval.0.i.i669.i, ptr %cat256.i, align 4
  %240 = load ptr, ptr %map.i, align 8
  %cat259.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %cat259.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cat259.i, align 4
  %cmp261.i = icmp eq ptr %242, null
  br i1 %cmp261.i, label %kcalloc.exit670.i.add_std_failure.i_crit_edge, label %for.cond264.preheader.i

kcalloc.exit670.i.add_std_failure.i_crit_edge:    ; preds = %kcalloc.exit670.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

for.cond264.preheader.i:                          ; preds = %kcalloc.exit670.i
  %local_size267764.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %240, i32 0, i32 1, i32 3
  %243 = ptrtoint ptr %local_size267764.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %local_size267764.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp268765.not.i = icmp eq i32 %244, 0
  br i1 %cmp268765.not.i, label %for.cond264.preheader.i.for.cond277.preheader.i_crit_edge, label %for.cond264.preheader.i.for.body269.i_crit_edge

for.cond264.preheader.i.for.body269.i_crit_edge:  ; preds = %for.cond264.preheader.i
  br label %for.body269.i

for.cond264.preheader.i.for.cond277.preheader.i_crit_edge: ; preds = %for.cond264.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond277.preheader.i

for.cond277.preheader.i:                          ; preds = %for.body269.i.for.cond277.preheader.i_crit_edge, %for.cond264.preheader.i.for.cond277.preheader.i_crit_edge
  %245 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %map.i, align 8
  %cipso_size280767.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %246, i32 0, i32 1, i32 2
  %247 = ptrtoint ptr %cipso_size280767.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cipso_size280767.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp281768.not.i = icmp eq i32 %248, 0
  br i1 %cmp281768.not.i, label %for.cond277.preheader.i.for.end289.i_crit_edge, label %for.cond277.preheader.i.for.body282.i_crit_edge

for.cond277.preheader.i.for.body282.i_crit_edge:  ; preds = %for.cond277.preheader.i
  br label %for.body282.i

for.cond277.preheader.i.for.end289.i_crit_edge:   ; preds = %for.cond277.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end289.i

for.body269.i:                                    ; preds = %for.body269.i.for.body269.i_crit_edge, %for.cond264.preheader.i.for.body269.i_crit_edge
  %249 = phi ptr [ %254, %for.body269.i.for.body269.i_crit_edge ], [ %240, %for.cond264.preheader.i.for.body269.i_crit_edge ]
  %iter.2766.i = phi i32 [ %inc275.i, %for.body269.i.for.body269.i_crit_edge ], [ 0, %for.cond264.preheader.i.for.body269.i_crit_edge ]
  %local272.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %249, i32 0, i32 1, i32 1
  %250 = ptrtoint ptr %local272.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %local272.i, align 4
  %arrayidx273.i = getelementptr i32, ptr %251, i32 %iter.2766.i
  %252 = ptrtoint ptr %arrayidx273.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 -2147483648, ptr %arrayidx273.i, align 4
  %inc275.i = add nuw i32 %iter.2766.i, 1
  %253 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %map.i, align 8
  %local_size267.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %254, i32 0, i32 1, i32 3
  %255 = ptrtoint ptr %local_size267.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %local_size267.i, align 4
  %cmp268.i = icmp ult i32 %inc275.i, %256
  br i1 %cmp268.i, label %for.body269.i.for.body269.i_crit_edge, label %for.body269.i.for.cond277.preheader.i_crit_edge

for.body269.i.for.cond277.preheader.i_crit_edge:  ; preds = %for.body269.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond277.preheader.i

for.body269.i.for.body269.i_crit_edge:            ; preds = %for.body269.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body269.i

for.body282.i:                                    ; preds = %for.body282.i.for.body282.i_crit_edge, %for.cond277.preheader.i.for.body282.i_crit_edge
  %257 = phi ptr [ %262, %for.body282.i.for.body282.i_crit_edge ], [ %246, %for.cond277.preheader.i.for.body282.i_crit_edge ]
  %iter.3769.i = phi i32 [ %inc288.i, %for.body282.i.for.body282.i_crit_edge ], [ 0, %for.cond277.preheader.i.for.body282.i_crit_edge ]
  %cat279.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %cat279.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cat279.i, align 4
  %arrayidx286.i = getelementptr i32, ptr %259, i32 %iter.3769.i
  %260 = ptrtoint ptr %arrayidx286.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 -2147483648, ptr %arrayidx286.i, align 4
  %inc288.i = add nuw i32 %iter.3769.i, 1
  %261 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %map.i, align 8
  %cipso_size280.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %262, i32 0, i32 1, i32 2
  %263 = ptrtoint ptr %cipso_size280.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %cipso_size280.i, align 4
  %cmp281.i = icmp ult i32 %inc288.i, %264
  br i1 %cmp281.i, label %for.body282.i.for.body282.i_crit_edge, label %for.body282.i.for.end289.i_crit_edge

for.body282.i.for.end289.i_crit_edge:             ; preds = %for.body282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end289.i

for.body282.i.for.body282.i_crit_edge:            ; preds = %for.body282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body282.i

for.end289.i:                                     ; preds = %for.body282.i.for.end289.i_crit_edge, %for.cond277.preheader.i.for.end289.i_crit_edge
  %265 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %attrs, align 4
  %arrayidx291.i = getelementptr ptr, ptr %266, i32 12
  %267 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx291.i, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %268, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %270)
  %cmp.i674770.i = icmp ugt i16 %270, 7
  br i1 %cmp.i674770.i, label %land.lhs.true.i676.preheader.i, label %for.end289.i.if.end330.i_crit_edge

for.end289.i.if.end330.i_crit_edge:               ; preds = %for.end289.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end330.i

land.lhs.true.i676.preheader.i:                   ; preds = %for.end289.i
  %conv.i672.i = zext i16 %270 to i32
  %sub.i673.i = add nsw i32 %conv.i672.i, -4
  %add.ptr.i671.i = getelementptr i8, ptr %268, i32 4
  br label %land.lhs.true.i676.i

land.lhs.true.i676.i:                             ; preds = %for.inc327.i.land.lhs.true.i676.i_crit_edge, %land.lhs.true.i676.preheader.i
  %nla_a.3772.i = phi ptr [ %add.ptr.i700.i, %for.inc327.i.land.lhs.true.i676.i_crit_edge ], [ %add.ptr.i671.i, %land.lhs.true.i676.preheader.i ]
  %nla_a_rem.3771.i = phi i32 [ %sub1.i699.i, %for.inc327.i.land.lhs.true.i676.i_crit_edge ], [ %sub.i673.i, %land.lhs.true.i676.preheader.i ]
  %271 = ptrtoint ptr %nla_a.3772.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %nla_a.3772.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %272)
  %cmp1.i675.i = icmp ult i16 %272, 4
  %conv.i677.i = zext i16 %272 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_a_rem.3771.i, i32 %conv.i677.i)
  %cmp5.i678.not.i = icmp ult i32 %nla_a_rem.3771.i, %conv.i677.i
  %or.cond729.i = select i1 %cmp1.i675.i, i1 true, i1 %cmp5.i678.not.i
  br i1 %or.cond729.i, label %land.lhs.true.i676.i.if.end330.i_crit_edge, label %for.body299.i

land.lhs.true.i676.i.if.end330.i_crit_edge:       ; preds = %land.lhs.true.i676.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end330.i

for.body299.i:                                    ; preds = %land.lhs.true.i676.i
  %nla_type.i682.i = getelementptr inbounds %struct.nlattr, ptr %nla_a.3772.i, i32 0, i32 1
  %273 = ptrtoint ptr %nla_type.i682.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %nla_type.i682.i, align 2
  %275 = and i16 %274, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %275)
  %cmp301.i = icmp eq i16 %275, 11
  br i1 %cmp301.i, label %if.then302.i, label %for.body299.i.for.inc327.i_crit_edge

for.body299.i.for.inc327.i_crit_edge:             ; preds = %for.body299.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc327.i

if.then302.i:                                     ; preds = %for.body299.i
  %add.ptr.i.i684.i = getelementptr i8, ptr %nla_a.3772.i, i32 4
  %sub.i.i686.i = add nsw i32 %conv.i677.i, -4
  %call2.i687.i = call ptr @nla_find(ptr noundef %add.ptr.i.i684.i, i32 noundef %sub.i.i686.i, i32 noundef 9) #10
  %276 = ptrtoint ptr %nla_a.3772.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %nla_a.3772.i, align 2
  %conv.i.i689.i = zext i16 %277 to i32
  %sub.i.i690.i = add nsw i32 %conv.i.i689.i, -4
  %call2.i691.i = call ptr @nla_find(ptr noundef %add.ptr.i.i684.i, i32 noundef %sub.i.i690.i, i32 noundef 10) #10
  %cmp305.i = icmp eq ptr %call2.i687.i, null
  %cmp307.i = icmp eq ptr %call2.i691.i, null
  %or.cond456.i = select i1 %cmp305.i, i1 true, i1 %cmp307.i
  br i1 %or.cond456.i, label %if.then302.i.add_std_failure.i_crit_edge, label %cleanup322.thread.i

if.then302.i.add_std_failure.i_crit_edge:         ; preds = %if.then302.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

cleanup322.thread.i:                              ; preds = %if.then302.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i692.i = getelementptr i8, ptr %call2.i691.i, i32 4
  %278 = ptrtoint ptr %add.ptr.i.i692.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %add.ptr.i.i692.i, align 4
  %280 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %map.i, align 8
  %local313.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %281, i32 0, i32 1, i32 1
  %282 = ptrtoint ptr %local313.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %local313.i, align 4
  %add.ptr.i.i693.i = getelementptr i8, ptr %call2.i687.i, i32 4
  %284 = ptrtoint ptr %add.ptr.i.i693.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %add.ptr.i.i693.i, align 4
  %arrayidx315.i = getelementptr i32, ptr %283, i32 %285
  %286 = ptrtoint ptr %arrayidx315.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %279, ptr %arrayidx315.i, align 4
  %287 = load i32, ptr %add.ptr.i.i693.i, align 4
  %288 = load ptr, ptr %map.i, align 8
  %cat318.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %cat318.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %cat318.i, align 4
  %291 = load i32, ptr %add.ptr.i.i692.i, align 4
  %arrayidx321.i = getelementptr i32, ptr %290, i32 %291
  %292 = ptrtoint ptr %arrayidx321.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %287, ptr %arrayidx321.i, align 4
  br label %for.inc327.i

for.inc327.i:                                     ; preds = %cleanup322.thread.i, %for.body299.i.for.inc327.i_crit_edge
  %293 = ptrtoint ptr %nla_a.3772.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %nla_a.3772.i, align 2
  %conv.i696.i = zext i16 %294 to i32
  %sub.i697.i = add nuw nsw i32 %conv.i696.i, 3
  %and.i698.i = and i32 %sub.i697.i, 131068
  %sub1.i699.i = sub nsw i32 %nla_a_rem.3771.i, %and.i698.i
  %add.ptr.i700.i = getelementptr i8, ptr %nla_a.3772.i, i32 %and.i698.i
  %cmp.i674.i = icmp sgt i32 %sub1.i699.i, 3
  br i1 %cmp.i674.i, label %for.inc327.i.land.lhs.true.i676.i_crit_edge, label %for.inc327.i.if.end330.i_crit_edge

for.inc327.i.if.end330.i_crit_edge:               ; preds = %for.inc327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end330.i

for.inc327.i.land.lhs.true.i676.i_crit_edge:      ; preds = %for.inc327.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i676.i

if.end330.i:                                      ; preds = %for.inc327.i.if.end330.i_crit_edge, %land.lhs.true.i676.i.if.end330.i_crit_edge, %for.end289.i.if.end330.i_crit_edge, %for.end162.i.if.end330.i_crit_edge
  %call331.i = call i32 @cipso_v4_doi_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %audit_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331.i)
  %cmp332.not.i = icmp eq i32 %call331.i, 0
  br i1 %cmp332.not.i, label %if.end330.i.if.then11_crit_edge, label %if.end330.i.add_std_failure.i_crit_edge

if.end330.i.add_std_failure.i_crit_edge:          ; preds = %if.end330.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_std_failure.i

if.end330.i.if.then11_crit_edge:                  ; preds = %if.end330.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

add_std_failure.i:                                ; preds = %if.end330.i.add_std_failure.i_crit_edge, %if.then302.i.add_std_failure.i_crit_edge, %kcalloc.exit670.i.add_std_failure.i_crit_edge, %kcalloc.exit637.i.add_std_failure.i_crit_edge, %sw.bb213.i.add_std_failure.i_crit_edge, %sw.bb197.i.add_std_failure.i_crit_edge, %if.then185.i.add_std_failure.i_crit_edge, %if.then166.i.add_std_failure.i_crit_edge, %if.then138.i.add_std_failure.i_crit_edge, %kcalloc.exit525.i.add_std_failure.i_crit_edge, %kcalloc.exit.i.add_std_failure.i_crit_edge, %sw.bb56.i.add_std_failure.i_crit_edge, %sw.bb.i.add_std_failure.i_crit_edge, %if.then31.i.add_std_failure.i_crit_edge, %if.then13.i.i.add_std_failure.i_crit_edge, %if.end16.i.add_std_failure.i_crit_edge
  %ret_val.0.i = phi i32 [ -22, %if.then166.i.add_std_failure.i_crit_edge ], [ %call331.i, %if.end330.i.add_std_failure.i_crit_edge ], [ -12, %kcalloc.exit.i.add_std_failure.i_crit_edge ], [ -12, %kcalloc.exit525.i.add_std_failure.i_crit_edge ], [ -12, %kcalloc.exit637.i.add_std_failure.i_crit_edge ], [ -12, %kcalloc.exit670.i.add_std_failure.i_crit_edge ], [ -22, %if.end16.i.add_std_failure.i_crit_edge ], [ -22, %if.then302.i.add_std_failure.i_crit_edge ], [ -22, %sw.bb197.i.add_std_failure.i_crit_edge ], [ -22, %sw.bb213.i.add_std_failure.i_crit_edge ], [ -22, %if.then185.i.add_std_failure.i_crit_edge ], [ -22, %if.then138.i.add_std_failure.i_crit_edge ], [ -22, %sw.bb.i.add_std_failure.i_crit_edge ], [ -22, %sw.bb56.i.add_std_failure.i_crit_edge ], [ -22, %if.then31.i.add_std_failure.i_crit_edge ], [ -22, %if.then13.i.i.add_std_failure.i_crit_edge ]
  call void @cipso_v4_doi_free(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %arrayidx.i22 = getelementptr ptr, ptr %21, i32 4
  %295 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx.i22, align 4
  %tobool.not.i23 = icmp eq ptr %296, null
  br i1 %tobool.not.i23, label %sw.bb7.cleanup_crit_edge, label %if.end.i25

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i25:                                       ; preds = %sw.bb7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %297 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %297, i32 noundef 3264, i32 noundef 40) #13
  %cmp.i = icmp eq ptr %call7.i.i24, null
  br i1 %cmp.i, label %if.end.i25.cleanup_crit_edge, label %if.end2.i

if.end.i25.cleanup_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i25
  %type.i26 = getelementptr inbounds %struct.cipso_v4_doi, ptr %call7.i.i24, i32 0, i32 1
  %298 = ptrtoint ptr %type.i26 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 2, ptr %type.i26, align 4
  %299 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %attrs, align 4
  %arrayidx.i.i27 = getelementptr ptr, ptr %300, i32 1
  %301 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %arrayidx.i.i27, align 4
  %add.ptr.i.i.i.i28 = getelementptr i8, ptr %302, i32 4
  %303 = ptrtoint ptr %add.ptr.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %add.ptr.i.i.i.i28, align 4
  %305 = ptrtoint ptr %call7.i.i24 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %call7.i.i24, align 8
  %arrayidx2.i.i29 = getelementptr ptr, ptr %300, i32 4
  %306 = ptrtoint ptr %arrayidx2.i.i29 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx2.i.i29, align 4
  %add.ptr.i.i.i.i.i30 = getelementptr i8, ptr %307, i32 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %307, align 2
  %conv.i.i.i.i.i31 = zext i16 %309 to i32
  %sub.i.i.i.i.i32 = add nsw i32 %conv.i.i.i.i.i31, -4
  %call2.i.i.i.i33 = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i.i.i30, i32 noundef %sub.i.i.i.i.i32, i32 noundef 12, ptr noundef nonnull @netlbl_cipsov4_genl_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i33)
  %cmp.not.i.i34 = icmp eq i32 %call2.i.i.i.i33, 0
  br i1 %cmp.not.i.i34, label %if.end.i.i36, label %if.end2.i.add_pass_failure.i_crit_edge

if.end2.i.add_pass_failure.i_crit_edge:           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_pass_failure.i

if.end.i.i36:                                     ; preds = %if.end2.i
  %310 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %attrs, align 4
  %arrayidx5.i.i35 = getelementptr ptr, ptr %311, i32 4
  %312 = ptrtoint ptr %arrayidx5.i.i35 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %arrayidx5.i.i35, align 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %313, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %315)
  %cmp.i.i22.i = icmp ugt i16 %315, 7
  br i1 %cmp.i.i22.i, label %land.lhs.true.i.i.preheader.i40, label %if.end.i.i36.while.body.preheader.i.i50_crit_edge

if.end.i.i36.while.body.preheader.i.i50_crit_edge: ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader.i.i50

land.lhs.true.i.i.preheader.i40:                  ; preds = %if.end.i.i36
  %conv.i.i.i37 = zext i16 %315 to i32
  %sub.i.i.i38 = add nsw i32 %conv.i.i.i37, -4
  %add.ptr.i.i.i39 = getelementptr i8, ptr %313, i32 4
  br label %land.lhs.true.i.i.i45

land.lhs.true.i.i.i45:                            ; preds = %for.inc.i.i67.land.lhs.true.i.i.i45_crit_edge, %land.lhs.true.i.i.preheader.i40
  %iter.0.i26.i = phi i32 [ %iter.1.i.i60, %for.inc.i.i67.land.lhs.true.i.i.i45_crit_edge ], [ 0, %land.lhs.true.i.i.preheader.i40 ]
  %nla.0.i24.i = phi ptr [ %add.ptr.i43.i.i65, %for.inc.i.i67.land.lhs.true.i.i.i45_crit_edge ], [ %add.ptr.i.i.i39, %land.lhs.true.i.i.preheader.i40 ]
  %nla_rem.0.i23.i = phi i32 [ %sub1.i.i.i64, %for.inc.i.i67.land.lhs.true.i.i.i45_crit_edge ], [ %sub.i.i.i38, %land.lhs.true.i.i.preheader.i40 ]
  %316 = ptrtoint ptr %nla.0.i24.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %nla.0.i24.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %317)
  %cmp1.i.i.i41 = icmp ult i16 %317, 4
  %conv.i38.i.i42 = zext i16 %317 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_rem.0.i23.i, i32 %conv.i38.i.i42)
  %cmp5.i.not.i.i43 = icmp ult i32 %nla_rem.0.i23.i, %conv.i38.i.i42
  %or.cond.i44 = select i1 %cmp1.i.i.i41, i1 true, i1 %cmp5.i.not.i.i43
  br i1 %or.cond.i44, label %land.lhs.true.i.i.i45.while.cond.preheader.i.i48_crit_edge, label %for.body.i.i53

land.lhs.true.i.i.i45.while.cond.preheader.i.i48_crit_edge: ; preds = %land.lhs.true.i.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i.i48

while.cond.preheader.i.i48:                       ; preds = %for.inc.i.i67.while.cond.preheader.i.i48_crit_edge, %land.lhs.true.i.i.i45.while.cond.preheader.i.i48_crit_edge
  %iter.0.i.lcssa.i46 = phi i32 [ %iter.1.i.i60, %for.inc.i.i67.while.cond.preheader.i.i48_crit_edge ], [ %iter.0.i26.i, %land.lhs.true.i.i.i45.while.cond.preheader.i.i48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %iter.0.i.lcssa.i46)
  %cmp2147.i.i47 = icmp ult i32 %iter.0.i.lcssa.i46, 5
  br i1 %cmp2147.i.i47, label %while.cond.preheader.i.i48.while.body.preheader.i.i50_crit_edge, label %while.cond.preheader.i.i48.if.end6.i_crit_edge

while.cond.preheader.i.i48.if.end6.i_crit_edge:   ; preds = %while.cond.preheader.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

while.cond.preheader.i.i48.while.body.preheader.i.i50_crit_edge: ; preds = %while.cond.preheader.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader.i.i50

while.body.preheader.i.i50:                       ; preds = %while.cond.preheader.i.i48.while.body.preheader.i.i50_crit_edge, %if.end.i.i36.while.body.preheader.i.i50_crit_edge
  %iter.0.i.lcssa30.i = phi i32 [ %iter.0.i.lcssa.i46, %while.cond.preheader.i.i48.while.body.preheader.i.i50_crit_edge ], [ 0, %if.end.i.i36.while.body.preheader.i.i50_crit_edge ]
  %318 = add nuw nsw i32 %iter.0.i.lcssa30.i, 12
  %uglygep.i.i49 = getelementptr i8, ptr %call7.i.i24, i32 %318
  %319 = sub nuw nsw i32 5, %iter.0.i.lcssa30.i
  %320 = call ptr @memset(ptr %uglygep.i.i49, i32 0, i32 %319)
  br label %if.end6.i

for.body.i.i53:                                   ; preds = %land.lhs.true.i.i.i45
  %nla_type.i.i.i51 = getelementptr inbounds %struct.nlattr, ptr %nla.0.i24.i, i32 0, i32 1
  %321 = ptrtoint ptr %nla_type.i.i.i51 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %nla_type.i.i.i51, align 2
  %323 = and i16 %322, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %323)
  %cmp12.i.i52 = icmp eq i16 %323, 3
  br i1 %cmp12.i.i52, label %if.then13.i.i55, label %for.body.i.i53.for.inc.i.i67_crit_edge

for.body.i.i53.for.inc.i.i67_crit_edge:           ; preds = %for.body.i.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i67

if.then13.i.i55:                                  ; preds = %for.body.i.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iter.0.i26.i)
  %cmp14.i.i54 = icmp ugt i32 %iter.0.i26.i, 4
  br i1 %cmp14.i.i54, label %if.then13.i.i55.add_pass_failure.i_crit_edge, label %if.end16.i.i59

if.then13.i.i55.add_pass_failure.i_crit_edge:     ; preds = %if.then13.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_pass_failure.i

if.end16.i.i59:                                   ; preds = %if.then13.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i39.i.i56 = getelementptr i8, ptr %nla.0.i24.i, i32 4
  %324 = ptrtoint ptr %add.ptr.i.i39.i.i56 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %add.ptr.i.i39.i.i56, align 1
  %inc.i.i57 = add nuw nsw i32 %iter.0.i26.i, 1
  %arrayidx18.i.i58 = getelementptr %struct.cipso_v4_doi, ptr %call7.i.i24, i32 0, i32 3, i32 %iter.0.i26.i
  %326 = ptrtoint ptr %arrayidx18.i.i58 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %325, ptr %arrayidx18.i.i58, align 1
  br label %for.inc.i.i67

for.inc.i.i67:                                    ; preds = %if.end16.i.i59, %for.body.i.i53.for.inc.i.i67_crit_edge
  %iter.1.i.i60 = phi i32 [ %inc.i.i57, %if.end16.i.i59 ], [ %iter.0.i26.i, %for.body.i.i53.for.inc.i.i67_crit_edge ]
  %327 = ptrtoint ptr %nla.0.i24.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %nla.0.i24.i, align 2
  %conv.i40.i.i61 = zext i16 %328 to i32
  %sub.i41.i.i62 = add nuw nsw i32 %conv.i40.i.i61, 3
  %and.i42.i.i63 = and i32 %sub.i41.i.i62, 131068
  %sub1.i.i.i64 = sub nsw i32 %nla_rem.0.i23.i, %and.i42.i.i63
  %add.ptr.i43.i.i65 = getelementptr i8, ptr %nla.0.i24.i, i32 %and.i42.i.i63
  %cmp.i.i.i66 = icmp sgt i32 %sub1.i.i.i64, 3
  br i1 %cmp.i.i.i66, label %for.inc.i.i67.land.lhs.true.i.i.i45_crit_edge, label %for.inc.i.i67.while.cond.preheader.i.i48_crit_edge

for.inc.i.i67.while.cond.preheader.i.i48_crit_edge: ; preds = %for.inc.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i.i48

for.inc.i.i67.land.lhs.true.i.i.i45_crit_edge:    ; preds = %for.inc.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i45

if.end6.i:                                        ; preds = %while.body.preheader.i.i50, %while.cond.preheader.i.i48.if.end6.i_crit_edge
  %call7.i = call i32 @cipso_v4_doi_add(ptr noundef nonnull %call7.i.i24, ptr noundef nonnull %audit_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %if.end6.i.if.then11_crit_edge, label %if.end6.i.add_pass_failure.i_crit_edge

if.end6.i.add_pass_failure.i_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_pass_failure.i

if.end6.i.if.then11_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

add_pass_failure.i:                               ; preds = %if.end6.i.add_pass_failure.i_crit_edge, %if.then13.i.i55.add_pass_failure.i_crit_edge, %if.end2.i.add_pass_failure.i_crit_edge
  %ret_val.0.i68 = phi i32 [ %call7.i, %if.end6.i.add_pass_failure.i_crit_edge ], [ -22, %if.end2.i.add_pass_failure.i_crit_edge ], [ -22, %if.then13.i.i55.add_pass_failure.i_crit_edge ]
  call void @cipso_v4_doi_free(ptr noundef nonnull %call7.i.i24) #10
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %arrayidx.i71 = getelementptr ptr, ptr %21, i32 4
  %329 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %arrayidx.i71, align 4
  %tobool.not.i72 = icmp eq ptr %330, null
  br i1 %tobool.not.i72, label %sw.bb9.cleanup_crit_edge, label %if.end.i75

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i75:                                       ; preds = %sw.bb9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %331 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i73 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %331, i32 noundef 3264, i32 noundef 40) #13
  %cmp.i74 = icmp eq ptr %call7.i.i73, null
  br i1 %cmp.i74, label %if.end.i75.cleanup_crit_edge, label %if.end2.i85

if.end.i75.cleanup_crit_edge:                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i85:                                      ; preds = %if.end.i75
  %type.i76 = getelementptr inbounds %struct.cipso_v4_doi, ptr %call7.i.i73, i32 0, i32 1
  %332 = ptrtoint ptr %type.i76 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 3, ptr %type.i76, align 4
  %333 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %attrs, align 4
  %arrayidx.i.i77 = getelementptr ptr, ptr %334, i32 1
  %335 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %arrayidx.i.i77, align 4
  %add.ptr.i.i.i.i78 = getelementptr i8, ptr %336, i32 4
  %337 = ptrtoint ptr %add.ptr.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %add.ptr.i.i.i.i78, align 4
  %339 = ptrtoint ptr %call7.i.i73 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %call7.i.i73, align 8
  %arrayidx2.i.i79 = getelementptr ptr, ptr %334, i32 4
  %340 = ptrtoint ptr %arrayidx2.i.i79 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx2.i.i79, align 4
  %add.ptr.i.i.i.i.i80 = getelementptr i8, ptr %341, i32 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %341, align 2
  %conv.i.i.i.i.i81 = zext i16 %343 to i32
  %sub.i.i.i.i.i82 = add nsw i32 %conv.i.i.i.i.i81, -4
  %call2.i.i.i.i83 = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i.i.i80, i32 noundef %sub.i.i.i.i.i82, i32 noundef 12, ptr noundef nonnull @netlbl_cipsov4_genl_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i83)
  %cmp.not.i.i84 = icmp eq i32 %call2.i.i.i.i83, 0
  br i1 %cmp.not.i.i84, label %if.end.i.i88, label %if.end2.i85.add_local_failure.i_crit_edge

if.end2.i85.add_local_failure.i_crit_edge:        ; preds = %if.end2.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_local_failure.i

if.end.i.i88:                                     ; preds = %if.end2.i85
  %344 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %attrs, align 4
  %arrayidx5.i.i86 = getelementptr ptr, ptr %345, i32 4
  %346 = ptrtoint ptr %arrayidx5.i.i86 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx5.i.i86, align 4
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %347, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %349)
  %cmp.i.i22.i87 = icmp ugt i16 %349, 7
  br i1 %cmp.i.i22.i87, label %land.lhs.true.i.i.preheader.i92, label %if.end.i.i88.while.body.preheader.i.i106_crit_edge

if.end.i.i88.while.body.preheader.i.i106_crit_edge: ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader.i.i106

land.lhs.true.i.i.preheader.i92:                  ; preds = %if.end.i.i88
  %conv.i.i.i89 = zext i16 %349 to i32
  %sub.i.i.i90 = add nsw i32 %conv.i.i.i89, -4
  %add.ptr.i.i.i91 = getelementptr i8, ptr %347, i32 4
  br label %land.lhs.true.i.i.i100

land.lhs.true.i.i.i100:                           ; preds = %for.inc.i.i123.land.lhs.true.i.i.i100_crit_edge, %land.lhs.true.i.i.preheader.i92
  %iter.0.i26.i93 = phi i32 [ %iter.1.i.i116, %for.inc.i.i123.land.lhs.true.i.i.i100_crit_edge ], [ 0, %land.lhs.true.i.i.preheader.i92 ]
  %nla.0.i24.i94 = phi ptr [ %add.ptr.i43.i.i121, %for.inc.i.i123.land.lhs.true.i.i.i100_crit_edge ], [ %add.ptr.i.i.i91, %land.lhs.true.i.i.preheader.i92 ]
  %nla_rem.0.i23.i95 = phi i32 [ %sub1.i.i.i120, %for.inc.i.i123.land.lhs.true.i.i.i100_crit_edge ], [ %sub.i.i.i90, %land.lhs.true.i.i.preheader.i92 ]
  %350 = ptrtoint ptr %nla.0.i24.i94 to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %nla.0.i24.i94, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %351)
  %cmp1.i.i.i96 = icmp ult i16 %351, 4
  %conv.i38.i.i97 = zext i16 %351 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nla_rem.0.i23.i95, i32 %conv.i38.i.i97)
  %cmp5.i.not.i.i98 = icmp ult i32 %nla_rem.0.i23.i95, %conv.i38.i.i97
  %or.cond.i99 = select i1 %cmp1.i.i.i96, i1 true, i1 %cmp5.i.not.i.i98
  br i1 %or.cond.i99, label %land.lhs.true.i.i.i100.while.cond.preheader.i.i103_crit_edge, label %for.body.i.i109

land.lhs.true.i.i.i100.while.cond.preheader.i.i103_crit_edge: ; preds = %land.lhs.true.i.i.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i.i103

while.cond.preheader.i.i103:                      ; preds = %for.inc.i.i123.while.cond.preheader.i.i103_crit_edge, %land.lhs.true.i.i.i100.while.cond.preheader.i.i103_crit_edge
  %iter.0.i.lcssa.i101 = phi i32 [ %iter.1.i.i116, %for.inc.i.i123.while.cond.preheader.i.i103_crit_edge ], [ %iter.0.i26.i93, %land.lhs.true.i.i.i100.while.cond.preheader.i.i103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %iter.0.i.lcssa.i101)
  %cmp2147.i.i102 = icmp ult i32 %iter.0.i.lcssa.i101, 5
  br i1 %cmp2147.i.i102, label %while.cond.preheader.i.i103.while.body.preheader.i.i106_crit_edge, label %while.cond.preheader.i.i103.if.end6.i126_crit_edge

while.cond.preheader.i.i103.if.end6.i126_crit_edge: ; preds = %while.cond.preheader.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i126

while.cond.preheader.i.i103.while.body.preheader.i.i106_crit_edge: ; preds = %while.cond.preheader.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader.i.i106

while.body.preheader.i.i106:                      ; preds = %while.cond.preheader.i.i103.while.body.preheader.i.i106_crit_edge, %if.end.i.i88.while.body.preheader.i.i106_crit_edge
  %iter.0.i.lcssa30.i104 = phi i32 [ %iter.0.i.lcssa.i101, %while.cond.preheader.i.i103.while.body.preheader.i.i106_crit_edge ], [ 0, %if.end.i.i88.while.body.preheader.i.i106_crit_edge ]
  %352 = add nuw nsw i32 %iter.0.i.lcssa30.i104, 12
  %uglygep.i.i105 = getelementptr i8, ptr %call7.i.i73, i32 %352
  %353 = sub nuw nsw i32 5, %iter.0.i.lcssa30.i104
  %354 = call ptr @memset(ptr %uglygep.i.i105, i32 0, i32 %353)
  br label %if.end6.i126

for.body.i.i109:                                  ; preds = %land.lhs.true.i.i.i100
  %nla_type.i.i.i107 = getelementptr inbounds %struct.nlattr, ptr %nla.0.i24.i94, i32 0, i32 1
  %355 = ptrtoint ptr %nla_type.i.i.i107 to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %nla_type.i.i.i107, align 2
  %357 = and i16 %356, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %357)
  %cmp12.i.i108 = icmp eq i16 %357, 3
  br i1 %cmp12.i.i108, label %if.then13.i.i111, label %for.body.i.i109.for.inc.i.i123_crit_edge

for.body.i.i109.for.inc.i.i123_crit_edge:         ; preds = %for.body.i.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i123

if.then13.i.i111:                                 ; preds = %for.body.i.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iter.0.i26.i93)
  %cmp14.i.i110 = icmp ugt i32 %iter.0.i26.i93, 4
  br i1 %cmp14.i.i110, label %if.then13.i.i111.add_local_failure.i_crit_edge, label %if.end16.i.i115

if.then13.i.i111.add_local_failure.i_crit_edge:   ; preds = %if.then13.i.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_local_failure.i

if.end16.i.i115:                                  ; preds = %if.then13.i.i111
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i39.i.i112 = getelementptr i8, ptr %nla.0.i24.i94, i32 4
  %358 = ptrtoint ptr %add.ptr.i.i39.i.i112 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %add.ptr.i.i39.i.i112, align 1
  %inc.i.i113 = add nuw nsw i32 %iter.0.i26.i93, 1
  %arrayidx18.i.i114 = getelementptr %struct.cipso_v4_doi, ptr %call7.i.i73, i32 0, i32 3, i32 %iter.0.i26.i93
  %360 = ptrtoint ptr %arrayidx18.i.i114 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %359, ptr %arrayidx18.i.i114, align 1
  br label %for.inc.i.i123

for.inc.i.i123:                                   ; preds = %if.end16.i.i115, %for.body.i.i109.for.inc.i.i123_crit_edge
  %iter.1.i.i116 = phi i32 [ %inc.i.i113, %if.end16.i.i115 ], [ %iter.0.i26.i93, %for.body.i.i109.for.inc.i.i123_crit_edge ]
  %361 = ptrtoint ptr %nla.0.i24.i94 to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %nla.0.i24.i94, align 2
  %conv.i40.i.i117 = zext i16 %362 to i32
  %sub.i41.i.i118 = add nuw nsw i32 %conv.i40.i.i117, 3
  %and.i42.i.i119 = and i32 %sub.i41.i.i118, 131068
  %sub1.i.i.i120 = sub nsw i32 %nla_rem.0.i23.i95, %and.i42.i.i119
  %add.ptr.i43.i.i121 = getelementptr i8, ptr %nla.0.i24.i94, i32 %and.i42.i.i119
  %cmp.i.i.i122 = icmp sgt i32 %sub1.i.i.i120, 3
  br i1 %cmp.i.i.i122, label %for.inc.i.i123.land.lhs.true.i.i.i100_crit_edge, label %for.inc.i.i123.while.cond.preheader.i.i103_crit_edge

for.inc.i.i123.while.cond.preheader.i.i103_crit_edge: ; preds = %for.inc.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i.i103

for.inc.i.i123.land.lhs.true.i.i.i100_crit_edge:  ; preds = %for.inc.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i100

if.end6.i126:                                     ; preds = %while.body.preheader.i.i106, %while.cond.preheader.i.i103.if.end6.i126_crit_edge
  %call7.i124 = call i32 @cipso_v4_doi_add(ptr noundef nonnull %call7.i.i73, ptr noundef nonnull %audit_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i124)
  %cmp8.not.i125 = icmp eq i32 %call7.i124, 0
  br i1 %cmp8.not.i125, label %if.end6.i126.if.then11_crit_edge, label %if.end6.i126.add_local_failure.i_crit_edge

if.end6.i126.add_local_failure.i_crit_edge:       ; preds = %if.end6.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_local_failure.i

if.end6.i126.if.then11_crit_edge:                 ; preds = %if.end6.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

add_local_failure.i:                              ; preds = %if.end6.i126.add_local_failure.i_crit_edge, %if.then13.i.i111.add_local_failure.i_crit_edge, %if.end2.i85.add_local_failure.i_crit_edge
  %ret_val.0.i127 = phi i32 [ %call7.i124, %if.end6.i126.add_local_failure.i_crit_edge ], [ -22, %if.end2.i85.add_local_failure.i_crit_edge ], [ -22, %if.then13.i.i111.add_local_failure.i_crit_edge ]
  call void @cipso_v4_doi_free(ptr noundef nonnull %call7.i.i73) #10
  br label %cleanup

if.then11:                                        ; preds = %if.end6.i126.if.then11_crit_edge, %if.end6.i.if.then11_crit_edge, %if.end330.i.if.then11_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netlabel_mgmt_protocount, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull @netlabel_mgmt_protocount, i32 1, i32 3, i32 1) #10
  %363 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netlabel_mgmt_protocount, ptr nonnull @netlabel_mgmt_protocount, i32 1, ptr nonnull elementtype(i32) @netlabel_mgmt_protocount) #10, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %add_local_failure.i, %if.end.i75.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %add_pass_failure.i, %if.end.i25.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %add_std_failure.i, %if.then15.i, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ -12, %if.end.i75.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ %ret_val.0.i127, %add_local_failure.i ], [ -12, %if.end.i25.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ %ret_val.0.i68, %add_pass_failure.i ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ %ret_val.0.i, %add_std_failure.i ], [ -12, %if.then15.i ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_cipsov4_remove(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %cb_arg = alloca %struct.netlbl_domhsh_walk_arg, align 4
  %audit_info = alloca %struct.netlbl_audit, align 4
  %skip_bkt = alloca i32, align 4
  %skip_chain = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb_arg) #10
  %0 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, ptr %cb_arg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #10
  %1 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %audit_info, align 4, !annotation !25
  %2 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !25
  %4 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_bkt) #10
  %6 = ptrtoint ptr %skip_bkt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %skip_bkt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_chain) #10
  %7 = ptrtoint ptr %skip_chain to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %skip_chain, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #10
  %12 = call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 121
  %16 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %2, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 122
  %18 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sessionid.i.i, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %4, align 4
  %21 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %attrs, align 4
  %arrayidx2 = getelementptr ptr, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %0, align 4
  %28 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %audit_info, ptr %cb_arg, align 4
  %call4 = call i32 @netlbl_domhsh_walk(ptr noundef nonnull %skip_bkt, ptr noundef nonnull %skip_chain, ptr noundef nonnull @netlbl_cipsov4_remove_cb, ptr noundef nonnull %cb_arg) #10
  %29 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call4, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.then6_crit_edge
    i32 -2, label %if.end.if.then6_crit_edge21
  ]

if.end.if.then6_crit_edge21:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge21
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 4
  %call8 = call i32 @cipso_v4_doi_remove(i32 noundef %31, ptr noundef nonnull %audit_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netlabel_mgmt_protocount, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull @netlabel_mgmt_protocount, i32 1, i32 3, i32 1) #10
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netlabel_mgmt_protocount, ptr nonnull @netlabel_mgmt_protocount, i32 1, ptr nonnull elementtype(i32) @netlabel_mgmt_protocount) #10, !srcloc !28
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call8, %if.then6.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_chain) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_bkt) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb_arg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_cipsov4_list(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %tmp.i237 = alloca i32, align 4
  %tmp.i235 = alloca i32, align 4
  %tmp.i215 = alloca i32, align 4
  %tmp.i213 = alloca i32, align 4
  %tmp.i202 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.list_failure_crit_edge, label %list_start.preheader

entry.list_failure_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure

list_start.preheader:                             ; preds = %entry
  %call.i.i332 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %cmp333 = icmp eq ptr %call.i.i332, null
  br i1 %cmp333, label %list_start.preheader.list_failure_crit_edge, label %if.end2.lr.ph

list_start.preheader.list_failure_crit_edge:      ; preds = %list_start.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure

if.end2.lr.ph:                                    ; preds = %list_start.preheader
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  br label %if.end2

if.end2:                                          ; preds = %rcu_read_unlock.exit269.if.end2_crit_edge, %if.end2.lr.ph
  %call.i.i335 = phi ptr [ %call.i.i332, %if.end2.lr.ph ], [ %call.i.i, %rcu_read_unlock.exit269.if.end2_crit_edge ]
  %nlsze_mult.0334 = phi i32 [ 1, %if.end2.lr.ph ], [ %mul122, %rcu_read_unlock.exit269.if.end2_crit_edge ]
  %4 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_portid.i, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 4
  %call.i199 = call ptr @genlmsg_put(ptr noundef nonnull %call.i.i335, i32 noundef %5, i32 noundef %7, ptr noundef nonnull @netlbl_cipsov4_gnl_family, i32 noundef 0, i8 noundef zeroext 3) #10
  %cmp4 = icmp eq ptr %call.i199, null
  br i1 %cmp4, label %if.end2.list_failure_crit_edge, label %if.end6

if.end2.list_failure_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure

if.end6:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx8 = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %call10 = call ptr @cipso_v4_doi_getdef(i32 noundef %13) #10
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %rcu_read_lock.exit.list_failure_lock_crit_edge, label %if.end13

rcu_read_lock.exit.list_failure_lock_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

if.end13:                                         ; preds = %rcu_read_lock.exit
  %type = getelementptr inbounds %struct.cipso_v4_doi, ptr %call10, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i, align 4
  %call.i200 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %cmp15.not = icmp eq i32 %call.i200, 0
  br i1 %cmp15.not, label %if.end17, label %if.end13.list_failure_lock_crit_edge

if.end13.list_failure_lock_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

if.end17:                                         ; preds = %if.end13
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i335, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %call1.i201 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 4, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i201)
  %cmp.i = icmp slt i32 %call1.i201, 0
  %cmp19373 = icmp eq ptr %22, null
  %cmp19 = select i1 %cmp.i, i1 true, i1 %cmp19373
  br i1 %cmp19, label %if.end17.list_failure_lock_crit_edge, label %land.rhs.preheader

if.end17.list_failure_lock_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

land.rhs.preheader:                               ; preds = %if.end17
  %arrayidx23 = getelementptr %struct.cipso_v4_doi, ptr %call10, i32 0, i32 3, i32 0
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp24.not = icmp eq i8 %24, 0
  br i1 %cmp24.not, label %land.rhs.preheader.for.end_crit_edge, label %for.body

land.rhs.preheader.for.end_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %arrayidx23.1 = getelementptr %struct.cipso_v4_doi, ptr %call10, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp24.not.1 = icmp eq i8 %26, 0
  br i1 %cmp24.not.1, label %for.cond.for.end_crit_edge, label %for.body.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i202) #10
  %27 = ptrtoint ptr %tmp.i202 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %tmp.i202, align 1
  %call.i203.1 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i202) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i202) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203.1)
  %cmp29.not.1 = icmp eq i32 %call.i203.1, 0
  br i1 %cmp29.not.1, label %for.cond.1, label %for.body.1.list_failure_lock_crit_edge

for.body.1.list_failure_lock_crit_edge:           ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

for.cond.1:                                       ; preds = %for.body.1
  %arrayidx23.2 = getelementptr %struct.cipso_v4_doi, ptr %call10, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx23.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp24.not.2 = icmp eq i8 %29, 0
  br i1 %cmp24.not.2, label %for.cond.1.for.end_crit_edge, label %for.body.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.cond.1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i202) #10
  %30 = ptrtoint ptr %tmp.i202 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tmp.i202, align 1
  %call.i203.2 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i202) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i202) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203.2)
  %cmp29.not.2 = icmp eq i32 %call.i203.2, 0
  br i1 %cmp29.not.2, label %for.cond.2, label %for.body.2.list_failure_lock_crit_edge

for.body.2.list_failure_lock_crit_edge:           ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

for.cond.2:                                       ; preds = %for.body.2
  %arrayidx23.3 = getelementptr %struct.cipso_v4_doi, ptr %call10, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx23.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp24.not.3 = icmp eq i8 %32, 0
  br i1 %cmp24.not.3, label %for.cond.2.for.end_crit_edge, label %for.body.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %for.cond.2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i202) #10
  %33 = ptrtoint ptr %tmp.i202 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %tmp.i202, align 1
  %call.i203.3 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i202) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i202) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203.3)
  %cmp29.not.3 = icmp eq i32 %call.i203.3, 0
  br i1 %cmp29.not.3, label %for.cond.3, label %for.body.3.list_failure_lock_crit_edge

for.body.3.list_failure_lock_crit_edge:           ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

for.cond.3:                                       ; preds = %for.body.3
  %arrayidx23.4 = getelementptr %struct.cipso_v4_doi, ptr %call10, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx23.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp24.not.4 = icmp eq i8 %35, 0
  br i1 %cmp24.not.4, label %for.cond.3.for.end_crit_edge, label %for.body.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.4:                                       ; preds = %for.cond.3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i202) #10
  %36 = ptrtoint ptr %tmp.i202 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tmp.i202, align 1
  %call.i203.4 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i202) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i202) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203.4)
  %cmp29.not.4 = icmp eq i32 %call.i203.4, 0
  br i1 %cmp29.not.4, label %for.body.4.for.end_crit_edge, label %for.body.4.list_failure_lock_crit_edge

for.body.4.list_failure_lock_crit_edge:           ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs.preheader
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i202) #10
  %37 = ptrtoint ptr %tmp.i202 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %24, ptr %tmp.i202, align 1
  %call.i203 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i202) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i202) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %cmp29.not = icmp eq i32 %call.i203, 0
  br i1 %cmp29.not, label %for.cond, label %for.body.list_failure_lock_crit_edge

for.body.list_failure_lock_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

for.end:                                          ; preds = %for.body.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %land.rhs.preheader.for.end_crit_edge
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %22, align 2
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cond = icmp eq i32 %42, 1
  br i1 %cond, label %sw.bb, label %for.end.sw.epilog_crit_edge

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i, align 8
  %call1.i206 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 8, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i206)
  %cmp.i207 = icmp slt i32 %call1.i206, 0
  %cmp36340 = icmp eq ptr %44, null
  %cmp36 = select i1 %cmp.i207, i1 true, i1 %cmp36340
  br i1 %cmp36, label %sw.bb.list_failure_lock_crit_edge, label %for.cond40.preheader

sw.bb.list_failure_lock_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

for.cond40.preheader:                             ; preds = %sw.bb
  %map = getelementptr inbounds %struct.cipso_v4_doi, ptr %call10, i32 0, i32 2
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 4
  %local_size310 = getelementptr inbounds %struct.anon.146, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %local_size310 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %local_size310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp41311.not = icmp eq i32 %48, 0
  br i1 %cmp41311.not, label %for.cond40.preheader.for.end73_crit_edge, label %for.cond40.preheader.for.body43_crit_edge

for.cond40.preheader.for.body43_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body43

for.cond40.preheader.for.end73_crit_edge:         ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end73

for.body43:                                       ; preds = %for.inc71.for.body43_crit_edge, %for.cond40.preheader.for.body43_crit_edge
  %49 = phi ptr [ %68, %for.inc71.for.body43_crit_edge ], [ %46, %for.cond40.preheader.for.body43_crit_edge ]
  %iter.1312 = phi i32 [ %inc72, %for.inc71.for.body43_crit_edge ], [ 0, %for.cond40.preheader.for.body43_crit_edge ]
  %local = getelementptr inbounds %struct.anon.146, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %local, align 4
  %arrayidx46 = getelementptr i32, ptr %51, i32 %iter.1312
  %52 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %53)
  %cmp47 = icmp eq i32 %53, -2147483648
  br i1 %cmp47, label %for.body43.for.inc71_crit_edge, label %if.end50

for.body43.for.inc71_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc71

if.end50:                                         ; preds = %for.body43
  %54 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i, align 8
  %call1.i210 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 7, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i210)
  %cmp.i211 = icmp slt i32 %call1.i210, 0
  %cmp52282 = icmp eq ptr %55, null
  %cmp52 = select i1 %cmp.i211, i1 true, i1 %cmp52282
  br i1 %cmp52, label %if.end50.list_retry_crit_edge, label %if.end55

if.end50.list_retry_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_retry

if.end55:                                         ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i213) #10
  %56 = ptrtoint ptr %tmp.i213 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %iter.1312, ptr %tmp.i213, align 4
  %call.i214 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i213) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i213) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %cmp57.not = icmp eq i32 %call.i214, 0
  br i1 %cmp57.not, label %if.end60, label %if.end55.list_retry_crit_edge

if.end55.list_retry_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_retry

if.end60:                                         ; preds = %if.end55
  %57 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map, align 4
  %local63 = getelementptr inbounds %struct.anon.146, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %local63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %local63, align 4
  %arrayidx64 = getelementptr i32, ptr %60, i32 %iter.1312
  %61 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx64, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i215) #10
  %63 = ptrtoint ptr %tmp.i215 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tmp.i215, align 4
  %call.i216 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i215) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i215) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %cmp66.not = icmp eq i32 %call.i216, 0
  br i1 %cmp66.not, label %if.end69, label %if.end60.list_retry_crit_edge

if.end60.list_retry_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_retry

if.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i218 = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i219 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i220 = sub i32 %sub.ptr.lhs.cast.i218, %sub.ptr.rhs.cast.i219
  %conv.i221 = trunc i32 %sub.ptr.sub.i220 to i16
  %66 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i221, ptr %55, align 2
  br label %for.inc71

for.inc71:                                        ; preds = %if.end69, %for.body43.for.inc71_crit_edge
  %inc72 = add nuw i32 %iter.1312, 1
  %67 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map, align 4
  %local_size = getelementptr inbounds %struct.anon.146, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %local_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %local_size, align 4
  %cmp41 = icmp ult i32 %inc72, %70
  br i1 %cmp41, label %for.inc71.for.body43_crit_edge, label %for.inc71.for.end73_crit_edge

for.inc71.for.end73_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end73

for.inc71.for.body43_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body43

for.end73:                                        ; preds = %for.inc71.for.end73_crit_edge, %for.cond40.preheader.for.end73_crit_edge
  %71 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i223 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i224 = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i225 = sub i32 %sub.ptr.lhs.cast.i223, %sub.ptr.rhs.cast.i224
  %conv.i226 = trunc i32 %sub.ptr.sub.i225 to i16
  %73 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i226, ptr %44, align 2
  %74 = load ptr, ptr %tail.i.i, align 8
  %call1.i228 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 12, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i228)
  %cmp.i229 = icmp slt i32 %call1.i228, 0
  %cmp76341 = icmp eq ptr %74, null
  %cmp76 = select i1 %cmp.i229, i1 true, i1 %cmp76341
  br i1 %cmp76, label %for.end73.list_retry_crit_edge, label %for.cond80.preheader

for.end73.list_retry_crit_edge:                   ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_retry

for.cond80.preheader:                             ; preds = %for.end73
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 4
  %local_size82314 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %76, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %local_size82314 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %local_size82314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp83315.not = icmp eq i32 %78, 0
  br i1 %cmp83315.not, label %for.cond80.preheader.for.end116_crit_edge, label %for.cond80.preheader.for.body85_crit_edge

for.cond80.preheader.for.body85_crit_edge:        ; preds = %for.cond80.preheader
  br label %for.body85

for.cond80.preheader.for.end116_crit_edge:        ; preds = %for.cond80.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end116

for.body85:                                       ; preds = %for.inc114.for.body85_crit_edge, %for.cond80.preheader.for.body85_crit_edge
  %79 = phi ptr [ %98, %for.inc114.for.body85_crit_edge ], [ %76, %for.cond80.preheader.for.body85_crit_edge ]
  %iter.2316 = phi i32 [ %inc115, %for.inc114.for.body85_crit_edge ], [ 0, %for.cond80.preheader.for.body85_crit_edge ]
  %local88 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %79, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %local88 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %local88, align 4
  %arrayidx89 = getelementptr i32, ptr %81, i32 %iter.2316
  %82 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %83)
  %cmp90 = icmp eq i32 %83, -2147483648
  br i1 %cmp90, label %for.body85.for.inc114_crit_edge, label %if.end93

for.body85.for.inc114_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc114

if.end93:                                         ; preds = %for.body85
  %84 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tail.i.i, align 8
  %call1.i232 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 11, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i232)
  %cmp.i233 = icmp slt i32 %call1.i232, 0
  %cmp95281 = icmp eq ptr %85, null
  %cmp95 = select i1 %cmp.i233, i1 true, i1 %cmp95281
  br i1 %cmp95, label %if.end93.list_retry_crit_edge, label %if.end98

if.end93.list_retry_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_retry

if.end98:                                         ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i235) #10
  %86 = ptrtoint ptr %tmp.i235 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %iter.2316, ptr %tmp.i235, align 4
  %call.i236 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i235) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i235) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %cmp100.not = icmp eq i32 %call.i236, 0
  br i1 %cmp100.not, label %if.end103, label %if.end98.list_retry_crit_edge

if.end98.list_retry_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_retry

if.end103:                                        ; preds = %if.end98
  %87 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %map, align 4
  %local106 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %88, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %local106 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %local106, align 4
  %arrayidx107 = getelementptr i32, ptr %90, i32 %iter.2316
  %91 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx107, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i237) #10
  %93 = ptrtoint ptr %tmp.i237 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %tmp.i237, align 4
  %call.i238 = call i32 @nla_put(ptr noundef nonnull %call.i.i335, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i237) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i237) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp109.not = icmp eq i32 %call.i238, 0
  br i1 %cmp109.not, label %if.end112, label %if.end103.list_retry_crit_edge

if.end103.list_retry_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_retry

if.end112:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i240 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i241 = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i242 = sub i32 %sub.ptr.lhs.cast.i240, %sub.ptr.rhs.cast.i241
  %conv.i243 = trunc i32 %sub.ptr.sub.i242 to i16
  %96 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i243, ptr %85, align 2
  br label %for.inc114

for.inc114:                                       ; preds = %if.end112, %for.body85.for.inc114_crit_edge
  %inc115 = add nuw i32 %iter.2316, 1
  %97 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %map, align 4
  %local_size82 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %98, i32 0, i32 1, i32 3
  %99 = ptrtoint ptr %local_size82 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %local_size82, align 4
  %cmp83 = icmp ult i32 %inc115, %100
  br i1 %cmp83, label %for.inc114.for.body85_crit_edge, label %for.inc114.for.end116_crit_edge

for.inc114.for.end116_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end116

for.inc114.for.body85_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body85

for.end116:                                       ; preds = %for.inc114.for.end116_crit_edge, %for.cond80.preheader.for.end116_crit_edge
  %101 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i245 = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast.i246 = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i247 = sub i32 %sub.ptr.lhs.cast.i245, %sub.ptr.rhs.cast.i246
  %conv.i248 = trunc i32 %sub.ptr.sub.i247 to i16
  %103 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i248, ptr %74, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end116, %for.end.sw.epilog_crit_edge
  call void @cipso_v4_doi_putdef(ptr noundef nonnull %call10) #10
  %call.i249 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i249, label %sw.epilog.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i252

sw.epilog.rcu_read_unlock.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i252:                               ; preds = %sw.epilog
  %call1.i250 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i250)
  %tobool.not.i251 = icmp eq i32 %call1.i250, 0
  br i1 %tobool.not.i251, label %land.lhs.true.i252.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i254

land.lhs.true.i252.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i254:                              ; preds = %land.lhs.true.i252
  %.b4.i253 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i253, label %land.lhs.true2.i254.rcu_read_unlock.exit_crit_edge, label %if.then.i255

land.lhs.true2.i254.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i254
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i255:                                     ; preds = %land.lhs.true2.i254
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i255, %land.lhs.true2.i254.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i252.rcu_read_unlock.exit_crit_edge, %sw.epilog.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %104 = call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i.i.i256 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i256 to ptr
  %preempt_count.i.i.i.i257 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i.i.i257 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i.i.i257, align 4
  %sub.i.i.i = add i32 %107, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i257, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %add.ptr1.i = getelementptr i8, ptr %call.i199, i32 -20
  %108 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %110 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %111 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %_net.i.i, align 4
  %113 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %112, i32 0, i32 21
  %115 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %116, ptr noundef nonnull %call.i.i335, i32 noundef %114, i32 noundef 64) #10
  %117 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

list_retry:                                       ; preds = %if.end103.list_retry_crit_edge, %if.end98.list_retry_crit_edge, %if.end93.list_retry_crit_edge, %for.end73.list_retry_crit_edge, %if.end60.list_retry_crit_edge, %if.end55.list_retry_crit_edge, %if.end50.list_retry_crit_edge
  %ret_val.0 = phi i32 [ -12, %for.end73.list_retry_crit_edge ], [ -12, %if.end93.list_retry_crit_edge ], [ %call.i238, %if.end103.list_retry_crit_edge ], [ %call.i236, %if.end98.list_retry_crit_edge ], [ -12, %if.end50.list_retry_crit_edge ], [ %call.i216, %if.end60.list_retry_crit_edge ], [ %call.i214, %if.end55.list_retry_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nlsze_mult.0334)
  %cmp119 = icmp ult i32 %nlsze_mult.0334, 4
  br i1 %cmp119, label %if.then121, label %list_retry.list_failure_lock_crit_edge

list_retry.list_failure_lock_crit_edge:           ; preds = %list_retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure_lock

if.then121:                                       ; preds = %list_retry
  call void @cipso_v4_doi_putdef(ptr noundef nonnull %call10) #10
  %call.i259 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i259, label %if.then121.rcu_read_unlock.exit269_crit_edge, label %land.lhs.true.i262

if.then121.rcu_read_unlock.exit269_crit_edge:     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit269

land.lhs.true.i262:                               ; preds = %if.then121
  %call1.i260 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i260)
  %tobool.not.i261 = icmp eq i32 %call1.i260, 0
  br i1 %tobool.not.i261, label %land.lhs.true.i262.rcu_read_unlock.exit269_crit_edge, label %land.lhs.true2.i264

land.lhs.true.i262.rcu_read_unlock.exit269_crit_edge: ; preds = %land.lhs.true.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit269

land.lhs.true2.i264:                              ; preds = %land.lhs.true.i262
  %.b4.i263 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i263, label %land.lhs.true2.i264.rcu_read_unlock.exit269_crit_edge, label %if.then.i265

land.lhs.true2.i264.rcu_read_unlock.exit269_crit_edge: ; preds = %land.lhs.true2.i264
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit269

if.then.i265:                                     ; preds = %land.lhs.true2.i264
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_unlock.exit269

rcu_read_unlock.exit269:                          ; preds = %if.then.i265, %land.lhs.true2.i264.rcu_read_unlock.exit269_crit_edge, %land.lhs.true.i262.rcu_read_unlock.exit269_crit_edge, %if.then121.rcu_read_unlock.exit269_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %118 = call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i.i.i266 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i266 to ptr
  %preempt_count.i.i.i.i267 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %preempt_count.i.i.i.i267 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %preempt_count.i.i.i.i267, align 4
  %sub.i.i.i268 = add i32 %121, -1
  store volatile i32 %sub.i.i.i268, ptr %preempt_count.i.i.i.i267, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i335, i32 noundef 0) #10
  %mul122 = shl nuw nsw i32 %nlsze_mult.0334, 1
  %mul = mul nuw nsw i32 %nlsze_mult.0334, 7648
  %sub.i.i = or i32 %mul, 16
  %call.i.i = call ptr @__alloc_skb(i32 noundef %sub.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %rcu_read_unlock.exit269.list_failure_crit_edge, label %rcu_read_unlock.exit269.if.end2_crit_edge

rcu_read_unlock.exit269.if.end2_crit_edge:        ; preds = %rcu_read_unlock.exit269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

rcu_read_unlock.exit269.list_failure_crit_edge:   ; preds = %rcu_read_unlock.exit269
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_failure

list_failure_lock:                                ; preds = %list_retry.list_failure_lock_crit_edge, %sw.bb.list_failure_lock_crit_edge, %for.body.list_failure_lock_crit_edge, %for.body.4.list_failure_lock_crit_edge, %for.body.3.list_failure_lock_crit_edge, %for.body.2.list_failure_lock_crit_edge, %for.body.1.list_failure_lock_crit_edge, %if.end17.list_failure_lock_crit_edge, %if.end13.list_failure_lock_crit_edge, %rcu_read_lock.exit.list_failure_lock_crit_edge
  %ret_val.1 = phi i32 [ %call.i203, %for.body.list_failure_lock_crit_edge ], [ %call.i203.1, %for.body.1.list_failure_lock_crit_edge ], [ %call.i203.2, %for.body.2.list_failure_lock_crit_edge ], [ %call.i203.3, %for.body.3.list_failure_lock_crit_edge ], [ %call.i203.4, %for.body.4.list_failure_lock_crit_edge ], [ %call.i200, %if.end13.list_failure_lock_crit_edge ], [ %ret_val.0, %list_retry.list_failure_lock_crit_edge ], [ -22, %rcu_read_lock.exit.list_failure_lock_crit_edge ], [ -12, %if.end17.list_failure_lock_crit_edge ], [ -12, %sw.bb.list_failure_lock_crit_edge ]
  call void @cipso_v4_doi_putdef(ptr noundef %call10) #10
  %call.i270 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i270, label %list_failure_lock.rcu_read_unlock.exit280_crit_edge, label %land.lhs.true.i273

list_failure_lock.rcu_read_unlock.exit280_crit_edge: ; preds = %list_failure_lock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit280

land.lhs.true.i273:                               ; preds = %list_failure_lock
  %call1.i271 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i271)
  %tobool.not.i272 = icmp eq i32 %call1.i271, 0
  br i1 %tobool.not.i272, label %land.lhs.true.i273.rcu_read_unlock.exit280_crit_edge, label %land.lhs.true2.i275

land.lhs.true.i273.rcu_read_unlock.exit280_crit_edge: ; preds = %land.lhs.true.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit280

land.lhs.true2.i275:                              ; preds = %land.lhs.true.i273
  %.b4.i274 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i274, label %land.lhs.true2.i275.rcu_read_unlock.exit280_crit_edge, label %if.then.i276

land.lhs.true2.i275.rcu_read_unlock.exit280_crit_edge: ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit280

if.then.i276:                                     ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_unlock.exit280

rcu_read_unlock.exit280:                          ; preds = %if.then.i276, %land.lhs.true2.i275.rcu_read_unlock.exit280_crit_edge, %land.lhs.true.i273.rcu_read_unlock.exit280_crit_edge, %list_failure_lock.rcu_read_unlock.exit280_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %122 = call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i.i.i277 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i277 to ptr
  %preempt_count.i.i.i.i278 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i278, align 4
  %sub.i.i.i279 = add i32 %125, -1
  store volatile i32 %sub.i.i.i279, ptr %preempt_count.i.i.i.i278, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %list_failure

list_failure:                                     ; preds = %rcu_read_unlock.exit280, %rcu_read_unlock.exit269.list_failure_crit_edge, %if.end2.list_failure_crit_edge, %list_start.preheader.list_failure_crit_edge, %entry.list_failure_crit_edge
  %ret_val.2 = phi i32 [ %ret_val.1, %rcu_read_unlock.exit280 ], [ -22, %entry.list_failure_crit_edge ], [ -12, %list_start.preheader.list_failure_crit_edge ], [ -12, %if.end2.list_failure_crit_edge ], [ -12, %rcu_read_unlock.exit269.list_failure_crit_edge ]
  %ans_skb.0 = phi ptr [ %call.i.i335, %rcu_read_unlock.exit280 ], [ null, %entry.list_failure_crit_edge ], [ null, %list_start.preheader.list_failure_crit_edge ], [ null, %rcu_read_unlock.exit269.list_failure_crit_edge ], [ %call.i.i335, %if.end2.list_failure_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %ans_skb.0, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %list_failure, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %ret_val.2, %list_failure ], [ %117, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_cipsov4_listall(ptr noundef %skb, ptr noundef %cb) #2 align 64 {
entry:
  %cb_arg = alloca %struct.netlbl_cipsov4_doiwalk_arg, align 4
  %doi_skip = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cb_arg) #10
  %0 = getelementptr inbounds %struct.netlbl_cipsov4_doiwalk_arg, ptr %cb_arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netlbl_cipsov4_doiwalk_arg, ptr %cb_arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %doi_skip) #10
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %doi_skip to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %doi_skip, align 4
  %6 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cb, ptr %cb_arg, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %0, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  %call = call i32 @cipso_v4_doi_walk(ptr noundef nonnull %doi_skip, ptr noundef nonnull @netlbl_cipsov4_listall_cb, ptr noundef nonnull %cb_arg) #10
  %13 = ptrtoint ptr %doi_skip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %doi_skip, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doi_skip) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cb_arg) #10
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_current_getsecid_subj(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_doi_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_doi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_cipsov4_remove_cb(ptr noundef %entry1, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %doi3 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %doi3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %doi3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4 = icmp eq i32 %6, %8
  br i1 %cmp4, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arg, align 4
  %call = tail call i32 @netlbl_domhsh_remove_entry(ptr noundef %entry1, ptr noundef %10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_doi_remove(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_remove_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cipso_v4_doi_getdef(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_doi_putdef(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_doi_walk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_cipsov4_listall_cb(ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %tmp.i27 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.netlbl_cipsov4_doiwalk_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portid, align 4
  %seq = getelementptr inbounds %struct.netlbl_cipsov4_doiwalk_arg, ptr %arg, i32 0, i32 2
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %1, i32 noundef %7, i32 noundef %9, ptr noundef nonnull @netlbl_cipsov4_gnl_family, i32 noundef 2, i8 noundef zeroext 4) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %12 = ptrtoint ptr %doi_def to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %doi_def, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %11, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end6:                                          ; preds = %if.end
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb, align 4
  %type = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i27) #10
  %19 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i27, align 4
  %call.i28 = call i32 @nla_put(ptr noundef %16, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i27) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp9.not = icmp eq i32 %call.i28, 0
  br i1 %cmp9.not, label %if.end11, label %if.end6.if.then.i_crit_edge

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end6.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %ret_val.0.ph = phi i32 [ %call.i28, %if.end6.if.then.i_crit_edge ], [ %call.i, %if.end.if.then.i_crit_edge ]
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb, align 4
  %add.ptr1.i29 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i29, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %28, %add.ptr1.i29
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !26

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i29 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %26, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %ret_val.0.ph, %if.then.i.cleanup_crit_edge ], [ %ret_val.0.ph, %if.end.i.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @netlbl_cipsov4_gnl_family, !1, !"netlbl_cipsov4_gnl_family", i1 false, i1 false}
!1 = !{!"../net/netlabel/netlabel_cipso_v4.c", i32 761, i32 27}
!2 = !{ptr @netlbl_cipsov4_genl_policy, !3, !"netlbl_cipsov4_genl_policy", i1 false, i1 false}
!3 = !{!"../net/netlabel/netlabel_cipso_v4.c", i32 50, i32 32}
!4 = !{ptr @netlbl_cipsov4_ops, !5, !"netlbl_cipsov4_ops", i1 false, i1 false}
!5 = !{!"../net/netlabel/netlabel_cipso_v4.c", i32 730, i32 36}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/net/netlink.h", i32 991, i32 3}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2148265077, i64 2148265103, i64 2148265132, i64 2148265166, i64 2148265197, i64 2148265220}
!28 = !{i64 2148267542, i64 2148267568, i64 2148267597, i64 2148267631, i64 2148267662, i64 2148267685}
!29 = !{i64 2149342916}
!30 = !{i64 2149343182}
