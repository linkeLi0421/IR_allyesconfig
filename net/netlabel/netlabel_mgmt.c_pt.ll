; ModuleID = '/llk/IR_all_yes/net/netlabel/netlabel_mgmt.c_pt.bc'
source_filename = "../net/netlabel/netlabel_mgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.48 }
%struct.llist_node = type { ptr }
%union.anon.48 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.netlbl_domhsh_walk_arg = type { ptr, ptr, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.114 }
%union.anon.114 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.netlbl_dom_map = type { ptr, i16, %struct.netlbl_dommap_def, i32, %struct.list_head, %struct.callback_head }
%struct.netlbl_dommap_def = type { i32, %union.anon.149 }
%union.anon.149 = type { ptr }
%struct.netlbl_domaddr_map = type { %struct.list_head, %struct.list_head }
%struct.netlbl_domaddr4_map = type { %struct.netlbl_dommap_def, %struct.netlbl_af4list }
%struct.netlbl_af4list = type { i32, i32, i32, %struct.list_head }
%struct.netlbl_domaddr6_map = type { %struct.netlbl_dommap_def, %struct.netlbl_af6list }
%struct.netlbl_af6list = type { %struct.in6_addr, %struct.in6_addr, i32, %struct.list_head }
%struct.in6_addr = type { %union.anon.29 }
%union.anon.29 = type { [4 x i32] }

@netlabel_mgmt_protocount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netlbl_mgmt_gnl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"NLBL_MGMT\00\00\00\00\00\00\00", i32 3, i32 12, i32 0, i8 0, i8 0, i8 8, i8 0, ptr @netlbl_mgmt_genl_policy, ptr null, ptr null, ptr null, ptr @netlbl_mgmt_genl_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@netlbl_mgmt_genl_policy = internal constant { [13 x %struct.nla_policy], [56 x i8] } { [13 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@netlbl_mgmt_genl_ops = internal constant { [8 x %struct.genl_small_ops], [32 x i8] } { [8 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @netlbl_mgmt_add, ptr null, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_mgmt_remove, ptr null, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr null, ptr @netlbl_mgmt_listall, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @netlbl_mgmt_adddef, ptr null, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_mgmt_removedef, ptr null, i8 5, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_mgmt_listdef, ptr null, i8 6, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr null, ptr @netlbl_mgmt_protocols, i8 7, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @netlbl_mgmt_version, ptr null, i8 8, i8 0, i8 0, i8 3 }], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__af4list_valid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netlabel/netlabel_addrlist.h\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__af6list_valid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"netlabel_mgmt_protocount\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 39, i32 10 }
@___asan_gen_.12 = private unnamed_addr constant [24 x i8] c"netlbl_mgmt_genl_policy\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 52, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"netlbl_mgmt_genl_ops\00", align 1
@___asan_gen_.16 = private constant [32 x i8] c"../net/netlabel/netlabel_mgmt.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 761, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [36 x i8] c"../net/netlabel/netlabel_addrlist.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 76, i32 7 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 991, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 695, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @netlabel_mgmt_protocount, ptr @netlbl_mgmt_genl_policy, ptr @netlbl_mgmt_genl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlabel_mgmt_protocount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_mgmt_genl_policy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_mgmt_genl_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_mgmt_genl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @netlbl_mgmt_gnl_family) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_add(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #10
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !33
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !33
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !33
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
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %6, i32 7
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %lor.lhs.false4.lor.lhs.false11_crit_edge, label %land.lhs.true

lor.lhs.false4.lor.lhs.false11_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false11

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %arrayidx9 = getelementptr ptr, ptr %6, i32 5
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %land.lhs.true.lor.lhs.false11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.lor.lhs.false11_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %land.lhs.true.lor.lhs.false11_crit_edge, %lor.lhs.false4.lor.lhs.false11_crit_edge
  %arrayidx13 = getelementptr ptr, ptr %6, i32 8
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %lor.lhs.false11.lor.lhs.false19_crit_edge, label %land.lhs.true15

lor.lhs.false11.lor.lhs.false19_crit_edge:        ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false19

land.lhs.true15:                                  ; preds = %lor.lhs.false11
  %arrayidx17 = getelementptr ptr, ptr %6, i32 6
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %land.lhs.true15.lor.lhs.false19_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true15.lor.lhs.false19_crit_edge:        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true15.lor.lhs.false19_crit_edge, %lor.lhs.false11.lor.lhs.false19_crit_edge
  %cmp = icmp ne ptr %12, null
  %cmp24 = icmp ne ptr %16, null
  %xor48 = xor i1 %cmp, %cmp24
  br i1 %xor48, label %lor.lhs.false19.cleanup_crit_edge, label %lor.lhs.false27

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false27:                                  ; preds = %lor.lhs.false19
  %arrayidx29 = getelementptr ptr, ptr %6, i32 5
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx29, align 4
  %cmp30 = icmp ne ptr %20, null
  %arrayidx33 = getelementptr ptr, ptr %6, i32 6
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx33, align 4
  %cmp34 = icmp ne ptr %22, null
  %xor3649 = xor i1 %cmp30, %cmp34
  br i1 %xor3649, label %lor.lhs.false27.cleanup_crit_edge, label %if.end

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #10
  %23 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 121
  %27 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %1, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 122
  %29 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sessionid.i.i, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %3, align 4
  %call = call fastcc i32 @netlbl_mgmt_add_common(ptr noundef %info, ptr noundef nonnull %audit_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false27.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false27.cleanup_crit_edge ], [ -22, %lor.lhs.false19.cleanup_crit_edge ], [ -22, %land.lhs.true15.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_remove(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #10
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !33
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !33
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !33
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #10
  %9 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 121
  %13 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %1, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 122
  %15 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sessionid.i.i, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %3, align 4
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %arrayidx2 = getelementptr ptr, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %call3 = call i32 @netlbl_domhsh_remove(ptr noundef %add.ptr.i, i16 noundef zeroext 0, ptr noundef nonnull %audit_info) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_listall(ptr noundef %skb, ptr noundef %cb) #2 align 64 {
entry:
  %cb_arg = alloca %struct.netlbl_domhsh_walk_arg, align 4
  %skip_bkt = alloca i32, align 4
  %skip_chain = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cb_arg) #10
  %0 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, ptr %cb_arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, ptr %cb_arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_bkt) #10
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %skip_bkt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %skip_bkt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_chain) #10
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %8 = ptrtoint ptr %skip_chain to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %skip_chain, align 4
  %9 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cb, ptr %cb_arg, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %0, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlmsg_seq, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  %call = call i32 @netlbl_domhsh_walk(ptr noundef nonnull %skip_bkt, ptr noundef nonnull %skip_chain, ptr noundef nonnull @netlbl_mgmt_listall_cb, ptr noundef nonnull %cb_arg) #10
  %16 = ptrtoint ptr %skip_bkt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %skip_bkt, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %2, align 4
  %19 = ptrtoint ptr %skip_chain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %skip_chain, align 4
  %21 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_chain) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_bkt) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cb_arg) #10
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_adddef(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #10
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !33
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !33
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !33
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %6, i32 7
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %lor.lhs.false.lor.lhs.false7_crit_edge, label %land.lhs.true

lor.lhs.false.lor.lhs.false7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr ptr, ptr %6, i32 5
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %land.lhs.true.lor.lhs.false7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.lor.lhs.false7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true.lor.lhs.false7_crit_edge, %lor.lhs.false.lor.lhs.false7_crit_edge
  %arrayidx9 = getelementptr ptr, ptr %6, i32 8
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %lor.lhs.false7.lor.lhs.false15_crit_edge, label %land.lhs.true11

lor.lhs.false7.lor.lhs.false15_crit_edge:         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false15

land.lhs.true11:                                  ; preds = %lor.lhs.false7
  %arrayidx13 = getelementptr ptr, ptr %6, i32 6
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %land.lhs.true11.lor.lhs.false15_crit_edge, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true11.lor.lhs.false15_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true11.lor.lhs.false15_crit_edge, %lor.lhs.false7.lor.lhs.false15_crit_edge
  %cmp = icmp ne ptr %10, null
  %cmp20 = icmp ne ptr %14, null
  %xor43 = xor i1 %cmp, %cmp20
  br i1 %xor43, label %lor.lhs.false15.cleanup_crit_edge, label %lor.lhs.false23

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false15
  %arrayidx25 = getelementptr ptr, ptr %6, i32 5
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx25, align 4
  %cmp26 = icmp ne ptr %18, null
  %arrayidx29 = getelementptr ptr, ptr %6, i32 6
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx29, align 4
  %cmp30 = icmp ne ptr %20, null
  %xor3244 = xor i1 %cmp26, %cmp30
  br i1 %xor3244, label %lor.lhs.false23.cleanup_crit_edge, label %if.end

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #10
  %21 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 121
  %25 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %1, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 122
  %27 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sessionid.i.i, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %3, align 4
  %call = call fastcc i32 @netlbl_mgmt_add_common(ptr noundef %info, ptr noundef nonnull %audit_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false23.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %land.lhs.true11.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_removedef(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #10
  %0 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_info, align 4, !annotation !33
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !33
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !33
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #10
  %5 = call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 121
  %9 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %1, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 122
  %11 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sessionid.i.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 4
  %call = call i32 @netlbl_domhsh_remove_default(i16 noundef zeroext 0, ptr noundef nonnull %audit_info) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_listdef(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %family.0 = phi i16 [ %5, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snd_portid.i, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %call.i35 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %7, i32 noundef %9, ptr noundef nonnull @netlbl_mgmt_gnl_family, i32 noundef 0, i8 noundef zeroext 6) #10
  %cmp8 = icmp eq ptr %call.i35, null
  br i1 %cmp8, label %if.end6.listdef_failure_crit_edge, label %if.end10

if.end6.listdef_failure_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %listdef_failure

if.end10:                                         ; preds = %if.end6
  %10 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end10.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end10.rcu_read_lock.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end10
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end10.rcu_read_lock.exit_crit_edge
  %call11 = tail call ptr @netlbl_domhsh_getentry(ptr noundef null, i16 noundef zeroext %family.0) #10
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %rcu_read_lock.exit
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i36, label %if.then13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

if.then13.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %if.then13
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %if.then13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %14 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i43 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %listdef_failure

if.end14:                                         ; preds = %rcu_read_lock.exit
  %call15 = tail call fastcc i32 @netlbl_mgmt_listentry(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call11)
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i45, label %if.end14.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true.i48

if.end14.rcu_read_unlock.exit55_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit55

land.lhs.true.i48:                                ; preds = %if.end14
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit55

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit55

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_unlock.exit55

rcu_read_unlock.exit55:                           ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, %if.end14.rcu_read_unlock.exit55_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %18 = tail call i32 @llvm.read_register.i32(metadata !23) #10
  %and.i.i.i.i.i52 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i54 = add i32 %21, -1
  store volatile i32 %sub.i.i.i54, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end18, label %rcu_read_unlock.exit55.listdef_failure_crit_edge

rcu_read_unlock.exit55.listdef_failure_crit_edge: ; preds = %rcu_read_unlock.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %listdef_failure

if.end18:                                         ; preds = %rcu_read_unlock.exit55
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %call.i35, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %25 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_net.i.i, align 4
  %27 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 21
  %29 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %30, ptr noundef nonnull %call.i.i, i32 noundef %28, i32 noundef 64) #10
  %31 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

listdef_failure:                                  ; preds = %rcu_read_unlock.exit55.listdef_failure_crit_edge, %rcu_read_unlock.exit, %if.end6.listdef_failure_crit_edge
  %ret_val.0 = phi i32 [ -12, %if.end6.listdef_failure_crit_edge ], [ -2, %rcu_read_unlock.exit ], [ %call15, %rcu_read_unlock.exit55.listdef_failure_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %listdef_failure, %if.end18, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %listdef_failure ], [ %31, %if.end18 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_protocols(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.protocols_return_crit_edge [
    i32 0, label %if.then
    i32 1, label %entry.if.then5_crit_edge
    i32 2, label %entry.if.then13_crit_edge
  ]

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

entry.protocols_return_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %protocols_return

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @netlbl_mgmt_protocols_cb(ptr noundef %skb, ptr noundef %cb, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.protocols_return_crit_edge, label %if.then.if.then5_crit_edge

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then.protocols_return_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %protocols_return

if.then5:                                         ; preds = %if.then.if.then5_crit_edge, %entry.if.then5_crit_edge
  %call6 = tail call fastcc i32 @netlbl_mgmt_protocols_cb(ptr noundef %skb, ptr noundef %cb, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then5.protocols_return_crit_edge, label %if.then5.if.then13_crit_edge

if.then5.if.then13_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then5.protocols_return_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %protocols_return

if.then13:                                        ; preds = %if.then5.if.then13_crit_edge, %entry.if.then13_crit_edge
  %call14 = tail call fastcc i32 @netlbl_mgmt_protocols_cb(ptr noundef %skb, ptr noundef %cb, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  %spec.select = select i1 %cmp15, i32 2, i32 3
  br label %protocols_return

protocols_return:                                 ; preds = %if.then13, %if.then5.protocols_return_crit_edge, %if.then.protocols_return_crit_edge, %entry.protocols_return_crit_edge
  %protos_sent.2 = phi i32 [ 0, %if.then.protocols_return_crit_edge ], [ 1, %if.then5.protocols_return_crit_edge ], [ %spec.select, %if.then13 ], [ %2, %entry.protocols_return_crit_edge ]
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %protos_sent.2, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_version(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid.i, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @netlbl_mgmt_gnl_family, i32 noundef 0, i8 noundef zeroext 8) #10
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %if.end.version_failure_crit_edge, label %if.end4

if.end.version_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %version_failure

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %tmp.i, align 4
  %call.i20 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp6.not = icmp eq i32 %call.i20, 0
  br i1 %cmp6.not, label %if.end8, label %if.end4.version_failure_crit_edge

if.end4.version_failure_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %version_failure

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_net.i.i, align 4
  %10 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %13, ptr noundef nonnull %call.i.i, i32 noundef %11, i32 noundef 64) #10
  %14 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

version_failure:                                  ; preds = %if.end4.version_failure_crit_edge, %if.end.version_failure_crit_edge
  %ret_val.0 = phi i32 [ -12, %if.end.version_failure_crit_edge ], [ %call.i20, %if.end4.version_failure_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %version_failure, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %version_failure ], [ %14, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlbl_mgmt_add_common(ptr nocapture noundef readonly %info, ptr noundef %audit_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup245_crit_edge, label %if.end

entry.cleanup245_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup245

if.end:                                           ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %def, align 8
  %arrayidx4 = getelementptr ptr, ptr %2, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end18_crit_edge, label %if.then6

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then6:                                         ; preds = %if.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %conv.i = zext i16 %11 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i, i32 noundef 3264) #14
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i, ptr %call7.i.i, align 8
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %if.then6.add_free_entry_crit_edge, label %cleanup.thread

if.then6.add_free_entry_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_entry

cleanup.thread:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %arrayidx16 = getelementptr ptr, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx16, align 4
  %call17 = tail call i32 @nla_strscpy(ptr noundef nonnull %call9.i, ptr noundef %16, i32 noundef %sub.i) #10
  %17 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %def, align 8
  br label %if.end18

if.end18:                                         ; preds = %cleanup.thread, %if.end.if.end18_crit_edge
  %18 = phi i32 [ %.pr, %cleanup.thread ], [ %6, %if.end.if.end18_crit_edge ]
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %18, label %if.end18.add_free_domain_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb30
    i32 7, label %sw.bb45
  ]

if.end18.add_free_domain_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_domain

sw.bb:                                            ; preds = %if.end18
  %20 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attrs, align 4
  %arrayidx22 = getelementptr ptr, ptr %21, i32 11
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i350 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i350 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i350, align 2
  %family = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %family, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %family28 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %family28 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %family28, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end18
  %28 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attrs, align 4
  %arrayidx32 = getelementptr ptr, ptr %29, i32 4
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %31, null
  br i1 %tobool33.not, label %sw.bb30.add_free_domain_crit_edge, label %if.end35

sw.bb30.add_free_domain_crit_edge:                ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_domain

if.end35:                                         ; preds = %sw.bb30
  %add.ptr.i.i351 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i351 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i351, align 4
  %call39 = tail call ptr @cipso_v4_doi_getdef(i32 noundef %33) #10
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %if.end35.add_free_domain_crit_edge, label %if.end42

if.end35.add_free_domain_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_domain

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %family43 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %family43 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %family43, align 4
  %35 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call39, ptr %35, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end18
  %37 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attrs, align 4
  %arrayidx47 = getelementptr ptr, ptr %38, i32 12
  %39 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %40, null
  br i1 %tobool48.not, label %sw.bb45.add_free_domain_crit_edge, label %if.end50

sw.bb45.add_free_domain_crit_edge:                ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_domain

if.end50:                                         ; preds = %sw.bb45
  %add.ptr.i.i352 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i352 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i352, align 4
  %call54 = tail call ptr @calipso_doi_getdef(i32 noundef %42) #10
  %cmp55 = icmp eq ptr %call54, null
  br i1 %cmp55, label %if.end50.add_free_domain_crit_edge, label %if.end57

if.end50.add_free_domain_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_domain

if.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %family58 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %family58 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 10, ptr %family58, align 4
  %44 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call54, ptr %44, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end57, %if.end42, %if.else, %if.then24
  %cipsov4.0 = phi ptr [ null, %if.end57 ], [ %call39, %if.end42 ], [ null, %if.then24 ], [ null, %if.else ]
  %calipso.0 = phi ptr [ %call54, %if.end57 ], [ null, %if.end42 ], [ null, %if.then24 ], [ null, %if.else ]
  %family60 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %family60 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %family60, align 4
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %47, label %sw.epilog.if.end75_crit_edge [
    i16 2, label %land.lhs.true
    i16 10, label %land.lhs.true70
  ]

sw.epilog.if.end75_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true:                                    ; preds = %sw.epilog
  %49 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %attrs, align 4
  %arrayidx64 = getelementptr ptr, ptr %50, i32 5
  %51 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %52, null
  br i1 %tobool65.not, label %land.lhs.true.if.end75_crit_edge, label %land.lhs.true.add_doi_put_def_crit_edge

land.lhs.true.add_doi_put_def_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_doi_put_def

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true70:                                  ; preds = %sw.epilog
  %53 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %attrs, align 4
  %arrayidx72 = getelementptr ptr, ptr %54, i32 7
  %55 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %56, null
  br i1 %tobool73.not, label %land.lhs.true70.if.end75_crit_edge, label %land.lhs.true70.add_doi_put_def_crit_edge

land.lhs.true70.add_doi_put_def_crit_edge:        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_doi_put_def

land.lhs.true70.if.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true70.if.end75_crit_edge, %land.lhs.true.if.end75_crit_edge, %sw.epilog.if.end75_crit_edge
  %57 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %attrs, align 4
  %arrayidx77 = getelementptr ptr, ptr %58, i32 7
  %59 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %60, null
  br i1 %tobool78.not, label %if.else140, label %if.then79

if.then79:                                        ; preds = %if.end75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i354 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 16) #13
  %cmp81 = icmp eq ptr %call7.i.i354, null
  br i1 %cmp81, label %if.then79.add_doi_put_def_crit_edge, label %if.end84

if.then79.add_doi_put_def_crit_edge:              ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_doi_put_def

if.end84:                                         ; preds = %if.then79
  %62 = ptrtoint ptr %call7.i.i354 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call7.i.i354, ptr %call7.i.i354, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i354, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i354, ptr %prev.i, align 4
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i354, i32 0, i32 1
  %64 = ptrtoint ptr %list6 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %list6, ptr %list6, align 8
  %prev.i355 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i354, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %prev.i355 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %list6, ptr %prev.i355, align 4
  %66 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %attrs, align 4
  %arrayidx86 = getelementptr ptr, ptr %67, i32 7
  %68 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx86, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %71)
  %cmp88.not = icmp eq i16 %71, 8
  br i1 %cmp88.not, label %if.end91, label %if.end84.add_free_addrmap_crit_edge

if.end84.add_free_addrmap_crit_edge:              ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_addrmap

if.end91:                                         ; preds = %if.end84
  %arrayidx93 = getelementptr ptr, ptr %67, i32 8
  %72 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx93, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %75)
  %cmp95.not = icmp eq i16 %75, 8
  br i1 %cmp95.not, label %if.end98, label %if.end91.add_free_addrmap_crit_edge

if.end91.add_free_addrmap_crit_edge:              ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_addrmap

if.end98:                                         ; preds = %if.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i362 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 28) #13
  %cmp106 = icmp eq ptr %call7.i.i362, null
  br i1 %cmp106, label %if.end98.add_free_addrmap_crit_edge, label %if.end109

if.end98.add_free_addrmap_crit_edge:              ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_addrmap

if.end109:                                        ; preds = %if.end98
  %add.ptr.i360 = getelementptr i8, ptr %73, i32 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 4
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i, align 4
  %79 = ptrtoint ptr %add.ptr.i360 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i360, align 4
  %and = and i32 %80, %78
  %list = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i362, i32 0, i32 1
  %81 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and, ptr %list, align 8
  %82 = load i32, ptr %add.ptr.i360, align 4
  %mask114 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i362, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %mask114 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %mask114, align 4
  %valid = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i362, i32 0, i32 1, i32 2
  %84 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %valid, align 8
  %85 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %def, align 8
  %87 = ptrtoint ptr %call7.i.i362 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %call7.i.i362, align 8
  %tobool120.not = icmp eq ptr %cipsov4.0, null
  br i1 %tobool120.not, label %if.end109.if.end123_crit_edge, label %if.then121

if.end109.if.end123_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then121:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %88 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call7.i.i362, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %cipsov4.0, ptr %88, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end109.if.end123_crit_edge
  %call126 = tail call i32 @netlbl_af4list_add(ptr noundef %list, ptr noundef nonnull %call7.i.i354) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127.not = icmp eq i32 %call126, 0
  br i1 %cmp127.not, label %if.end123.if.end238.sink.split_crit_edge, label %if.end123.add_free_map_crit_edge

if.end123.add_free_map_crit_edge:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_map

if.end123.if.end238.sink.split_crit_edge:         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238.sink.split

if.else140:                                       ; preds = %if.end75
  %arrayidx142 = getelementptr ptr, ptr %58, i32 5
  %90 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx142, align 4
  %tobool143.not = icmp eq ptr %91, null
  br i1 %tobool143.not, label %if.else140.if.end238_crit_edge, label %if.then144

if.else140.if.end238_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238

if.then144:                                       ; preds = %if.else140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i364 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 16) #13
  %cmp149 = icmp eq ptr %call7.i.i364, null
  br i1 %cmp149, label %if.then144.add_doi_put_def_crit_edge, label %if.end152

if.then144.add_doi_put_def_crit_edge:             ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_doi_put_def

if.end152:                                        ; preds = %if.then144
  %93 = ptrtoint ptr %call7.i.i364 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call7.i.i364, ptr %call7.i.i364, align 8
  %prev.i365 = getelementptr inbounds %struct.list_head, ptr %call7.i.i364, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i365 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i.i364, ptr %prev.i365, align 4
  %list6154 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i364, i32 0, i32 1
  %95 = ptrtoint ptr %list6154 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %list6154, ptr %list6154, align 8
  %prev.i366 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i364, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %prev.i366 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %list6154, ptr %prev.i366, align 4
  %97 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %attrs, align 4
  %arrayidx156 = getelementptr ptr, ptr %98, i32 5
  %99 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx156, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %100, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %102)
  %cmp158.not = icmp eq i16 %102, 20
  br i1 %cmp158.not, label %if.end161, label %if.end152.add_free_addrmap_crit_edge

if.end152.add_free_addrmap_crit_edge:             ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_addrmap

if.end161:                                        ; preds = %if.end152
  %arrayidx163 = getelementptr ptr, ptr %98, i32 6
  %103 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx163, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %104, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %106)
  %cmp165.not = icmp eq i16 %106, 20
  br i1 %cmp165.not, label %if.end168, label %if.end161.add_free_addrmap_crit_edge

if.end161.add_free_addrmap_crit_edge:             ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_addrmap

if.end168:                                        ; preds = %if.end161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %107 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i374 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3520, i32 noundef 52) #13
  %cmp176 = icmp eq ptr %call7.i.i374, null
  br i1 %cmp176, label %if.end168.add_free_addrmap_crit_edge, label %if.end179

if.end168.add_free_addrmap_crit_edge:             ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_addrmap

if.end179:                                        ; preds = %if.end168
  %add.ptr.i372 = getelementptr i8, ptr %104, i32 4
  %add.ptr.i371 = getelementptr i8, ptr %100, i32 4
  %list180 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i374, i32 0, i32 1
  %108 = call ptr @memcpy(ptr %list180, ptr %add.ptr.i371, i32 16)
  %109 = ptrtoint ptr %add.ptr.i372 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr.i372, align 4
  %111 = ptrtoint ptr %list180 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %list180, align 8
  %and187 = and i32 %112, %110
  store i32 %and187, ptr %list180, align 8
  %arrayidx189 = getelementptr i8, ptr %104, i32 8
  %113 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx189, align 4
  %arrayidx193 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i374, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %115 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx193, align 4
  %and194 = and i32 %116, %114
  store i32 %and194, ptr %arrayidx193, align 4
  %arrayidx196 = getelementptr i8, ptr %104, i32 12
  %117 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx196, align 4
  %arrayidx200 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i374, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx200, align 8
  %and201 = and i32 %120, %118
  store i32 %and201, ptr %arrayidx200, align 8
  %arrayidx203 = getelementptr i8, ptr %104, i32 16
  %121 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx203, align 4
  %arrayidx207 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i374, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %123 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx207, align 4
  %and208 = and i32 %124, %122
  store i32 %and208, ptr %arrayidx207, align 4
  %mask210 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i374, i32 0, i32 1, i32 1
  %125 = call ptr @memcpy(ptr %mask210, ptr %add.ptr.i372, i32 16)
  %valid212 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i374, i32 0, i32 1, i32 2
  %126 = ptrtoint ptr %valid212 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %valid212, align 8
  %127 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %def, align 8
  %129 = ptrtoint ptr %call7.i.i374 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %call7.i.i374, align 8
  %tobool217.not = icmp eq ptr %calipso.0, null
  br i1 %tobool217.not, label %if.end179.if.end220_crit_edge, label %if.then218

if.end179.if.end220_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

if.then218:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  %130 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call7.i.i374, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %calipso.0, ptr %130, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %if.end179.if.end220_crit_edge
  %call223 = tail call i32 @netlbl_af6list_add(ptr noundef %list180, ptr noundef %list6154) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %cmp224.not = icmp eq i32 %call223, 0
  br i1 %cmp224.not, label %if.end220.if.end238.sink.split_crit_edge, label %if.end220.add_free_map_crit_edge

if.end220.add_free_map_crit_edge:                 ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_map

if.end220.if.end238.sink.split_crit_edge:         ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238.sink.split

if.end238.sink.split:                             ; preds = %if.end220.if.end238.sink.split_crit_edge, %if.end123.if.end238.sink.split_crit_edge
  %.sink = phi i16 [ 2, %if.end123.if.end238.sink.split_crit_edge ], [ 10, %if.end220.if.end238.sink.split_crit_edge ]
  %call7.i.i364.sink = phi ptr [ %call7.i.i354, %if.end123.if.end238.sink.split_crit_edge ], [ %call7.i.i364, %if.end220.if.end238.sink.split_crit_edge ]
  %pmap.2.ph = phi ptr [ %call7.i.i362, %if.end123.if.end238.sink.split_crit_edge ], [ %call7.i.i374, %if.end220.if.end238.sink.split_crit_edge ]
  %132 = ptrtoint ptr %family60 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %.sink, ptr %family60, align 4
  %133 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 6, ptr %def, align 8
  %134 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call7.i.i364.sink, ptr %134, align 4
  br label %if.end238

if.end238:                                        ; preds = %if.end238.sink.split, %if.else140.if.end238_crit_edge
  %pmap.2 = phi ptr [ null, %if.else140.if.end238_crit_edge ], [ %pmap.2.ph, %if.end238.sink.split ]
  %addrmap.0 = phi ptr [ null, %if.else140.if.end238_crit_edge ], [ %call7.i.i364.sink, %if.end238.sink.split ]
  %call239 = tail call i32 @netlbl_domhsh_add(ptr noundef nonnull %call7.i.i, ptr noundef %audit_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240.not = icmp eq i32 %call239, 0
  br i1 %cmp240.not, label %if.end238.cleanup245_crit_edge, label %if.end238.add_free_map_crit_edge

if.end238.add_free_map_crit_edge:                 ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_free_map

if.end238.cleanup245_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup245

add_free_map:                                     ; preds = %if.end238.add_free_map_crit_edge, %if.end220.add_free_map_crit_edge, %if.end123.add_free_map_crit_edge
  %pmap.3 = phi ptr [ %pmap.2, %if.end238.add_free_map_crit_edge ], [ %call7.i.i362, %if.end123.add_free_map_crit_edge ], [ %call7.i.i374, %if.end220.add_free_map_crit_edge ]
  %ret_val.4 = phi i32 [ %call239, %if.end238.add_free_map_crit_edge ], [ %call126, %if.end123.add_free_map_crit_edge ], [ %call223, %if.end220.add_free_map_crit_edge ]
  %addrmap.1 = phi ptr [ %addrmap.0, %if.end238.add_free_map_crit_edge ], [ %call7.i.i354, %if.end123.add_free_map_crit_edge ], [ %call7.i.i364, %if.end220.add_free_map_crit_edge ]
  tail call void @kfree(ptr noundef %pmap.3) #10
  br label %add_free_addrmap

add_free_addrmap:                                 ; preds = %add_free_map, %if.end168.add_free_addrmap_crit_edge, %if.end161.add_free_addrmap_crit_edge, %if.end152.add_free_addrmap_crit_edge, %if.end98.add_free_addrmap_crit_edge, %if.end91.add_free_addrmap_crit_edge, %if.end84.add_free_addrmap_crit_edge
  %ret_val.5 = phi i32 [ %ret_val.4, %add_free_map ], [ -12, %if.end98.add_free_addrmap_crit_edge ], [ -22, %if.end91.add_free_addrmap_crit_edge ], [ -22, %if.end84.add_free_addrmap_crit_edge ], [ -12, %if.end168.add_free_addrmap_crit_edge ], [ -22, %if.end161.add_free_addrmap_crit_edge ], [ -22, %if.end152.add_free_addrmap_crit_edge ]
  %addrmap.2 = phi ptr [ %addrmap.1, %add_free_map ], [ %call7.i.i354, %if.end98.add_free_addrmap_crit_edge ], [ %call7.i.i354, %if.end91.add_free_addrmap_crit_edge ], [ %call7.i.i354, %if.end84.add_free_addrmap_crit_edge ], [ %call7.i.i364, %if.end168.add_free_addrmap_crit_edge ], [ %call7.i.i364, %if.end161.add_free_addrmap_crit_edge ], [ %call7.i.i364, %if.end152.add_free_addrmap_crit_edge ]
  tail call void @kfree(ptr noundef %addrmap.2) #10
  br label %add_doi_put_def

add_doi_put_def:                                  ; preds = %add_free_addrmap, %if.then144.add_doi_put_def_crit_edge, %if.then79.add_doi_put_def_crit_edge, %land.lhs.true70.add_doi_put_def_crit_edge, %land.lhs.true.add_doi_put_def_crit_edge
  %ret_val.6 = phi i32 [ -22, %land.lhs.true.add_doi_put_def_crit_edge ], [ -22, %land.lhs.true70.add_doi_put_def_crit_edge ], [ %ret_val.5, %add_free_addrmap ], [ -12, %if.then79.add_doi_put_def_crit_edge ], [ -12, %if.then144.add_doi_put_def_crit_edge ]
  tail call void @cipso_v4_doi_putdef(ptr noundef %cipsov4.0) #10
  tail call void @calipso_doi_putdef(ptr noundef %calipso.0) #10
  br label %add_free_domain

add_free_domain:                                  ; preds = %add_doi_put_def, %if.end50.add_free_domain_crit_edge, %sw.bb45.add_free_domain_crit_edge, %if.end35.add_free_domain_crit_edge, %sw.bb30.add_free_domain_crit_edge, %if.end18.add_free_domain_crit_edge
  %ret_val.7 = phi i32 [ -22, %if.end18.add_free_domain_crit_edge ], [ -22, %if.end50.add_free_domain_crit_edge ], [ %ret_val.6, %add_doi_put_def ], [ -22, %sw.bb45.add_free_domain_crit_edge ], [ -22, %if.end35.add_free_domain_crit_edge ], [ -22, %sw.bb30.add_free_domain_crit_edge ]
  %136 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %137) #10
  br label %add_free_entry

add_free_entry:                                   ; preds = %add_free_domain, %if.then6.add_free_entry_crit_edge
  %ret_val.8 = phi i32 [ %ret_val.7, %add_free_domain ], [ -12, %if.then6.add_free_entry_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup245

cleanup245:                                       ; preds = %add_free_entry, %if.end238.cleanup245_crit_edge, %entry.cleanup245_crit_edge
  %retval.0 = phi i32 [ %ret_val.8, %add_free_entry ], [ -12, %entry.cleanup245_crit_edge ], [ 0, %if.end238.cleanup245_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_current_getsecid_subj(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cipso_v4_doi_getdef(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @calipso_doi_getdef(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_af4list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_af6list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_doi_putdef(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @calipso_doi_putdef(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_remove(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_mgmt_listall_cb(ptr nocapture noundef readonly %entry1, ptr nocapture noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, ptr %arg, i32 0, i32 1
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
  %seq = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, ptr %arg, i32 0, i32 2
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %1, i32 noundef %7, i32 noundef %9, ptr noundef nonnull @netlbl_mgmt_gnl_family, i32 noundef 2, i8 noundef zeroext 3) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %call4 = tail call fastcc i32 @netlbl_mgmt_listentry(ptr noundef %11, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.then.i

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %seq, align 4
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  %add.ptr1.i22 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i22, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %22, %add.ptr1.i22
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !36

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i22 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef %20, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call4, %if.then.i.cleanup_crit_edge ], [ %call4, %if.end.i.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlbl_mgmt_listentry(ptr noundef %skb, ptr nocapture noundef readonly %entry1) unnamed_addr #2 align 64 {
entry:
  %tmp.i305 = alloca i32, align 4
  %tmp.i303 = alloca i32, align 4
  %tmp.i301 = alloca i32, align 4
  %tmp.i299 = alloca i32, align 4
  %tmp.i297 = alloca i32, align 4
  %tmp.i267 = alloca i32, align 4
  %tmp.i265 = alloca i32, align 4
  %tmp.i237 = alloca i32, align 4
  %tmp.i235 = alloca i32, align 4
  %tmp.i.i233 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @strlen(ptr noundef nonnull %1) #15
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp3.not = icmp eq i32 %call1.i, 0
  br i1 %cmp3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup138_crit_edge

if.then.cleanup138_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %family = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %family, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #10
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %tmp.i, align 2
  %call.i226 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp7.not = icmp eq i32 %call.i226, 0
  br i1 %cmp7.not, label %if.end9, label %if.end5.cleanup138_crit_edge

if.end5.cleanup138_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end9:                                          ; preds = %if.end5
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2
  %5 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %6, label %if.end9.cleanup138_crit_edge [
    i32 6, label %sw.bb
    i32 5, label %sw.bb113
    i32 3, label %sw.bb117
    i32 7, label %sw.bb127
  ]

if.end9.cleanup138_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

sw.bb:                                            ; preds = %if.end9
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %call1.i227 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i227)
  %cmp.i = icmp slt i32 %call1.i227, 0
  %cmp11313 = icmp eq ptr %9, null
  %cmp11 = select i1 %cmp.i, i1 true, i1 %cmp11313
  br i1 %cmp11, label %sw.bb.cleanup138_crit_edge, label %if.end13

sw.bb.cleanup138_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end13:                                         ; preds = %sw.bb
  %10 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cmp.not19.i = icmp eq ptr %14, %12
  br i1 %cmp.not19.i, label %if.end13.__af4list_valid_rcu.exit_crit_edge, label %if.end13.land.rhs.i_crit_edge

if.end13.land.rhs.i_crit_edge:                    ; preds = %if.end13
  br label %land.rhs.i

if.end13.__af4list_valid_rcu.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af4list_valid_rcu.exit

land.rhs.i:                                       ; preds = %do.end9.i.land.rhs.i_crit_edge, %if.end13.land.rhs.i_crit_edge
  %i.020.i = phi ptr [ %18, %do.end9.i.land.rhs.i_crit_edge ], [ %14, %if.end13.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.020.i, i32 -4
  %15 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %while.body.i, label %land.rhs.i.__af4list_valid_rcu.exit_crit_edge

land.rhs.i.__af4list_valid_rcu.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af4list_valid_rcu.exit

while.body.i:                                     ; preds = %land.rhs.i
  %17 = ptrtoint ptr %i.020.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %i.020.i, align 4
  %call.i228 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool3.not.i = icmp eq i32 %call.i228, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %while.body.i.do.end9.i_crit_edge

while.body.i.do.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.1) #10
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %while.body.i.do.end9.i_crit_edge
  %cmp.not.i = icmp eq ptr %18, %12
  br i1 %cmp.not.i, label %do.end9.i.__af4list_valid_rcu.exit_crit_edge, label %do.end9.i.land.rhs.i_crit_edge

do.end9.i.land.rhs.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

do.end9.i.__af4list_valid_rcu.exit_crit_edge:     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af4list_valid_rcu.exit

__af4list_valid_rcu.exit:                         ; preds = %do.end9.i.__af4list_valid_rcu.exit_crit_edge, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge, %if.end13.__af4list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i = phi ptr [ %12, %if.end13.__af4list_valid_rcu.exit_crit_edge ], [ %i.020.i, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge ], [ %12, %do.end9.i.__af4list_valid_rcu.exit_crit_edge ]
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 4
  %cmp20.not320 = icmp eq ptr %i.0.lcssa.i, %20
  br i1 %cmp20.not320, label %__af4list_valid_rcu.exit.for.end_crit_edge, label %__af4list_valid_rcu.exit.for.body_crit_edge

__af4list_valid_rcu.exit.for.body_crit_edge:      ; preds = %__af4list_valid_rcu.exit
  br label %for.body

__af4list_valid_rcu.exit.for.end_crit_edge:       ; preds = %__af4list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %__af4list_valid_rcu.exit258.for.body_crit_edge, %__af4list_valid_rcu.exit.for.body_crit_edge
  %i.0.lcssa.i.pn321 = phi ptr [ %i.0.lcssa.i256, %__af4list_valid_rcu.exit258.for.body_crit_edge ], [ %i.0.lcssa.i, %__af4list_valid_rcu.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %call1.i230 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i230)
  %cmp.i231 = icmp slt i32 %call1.i230, 0
  %cmp22314 = icmp eq ptr %22, null
  %cmp22 = select i1 %cmp.i231, i1 true, i1 %cmp22314
  br i1 %cmp22, label %for.body.cleanup138_crit_edge, label %if.end24

for.body.cleanup138_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end24:                                         ; preds = %for.body
  %iter4.0323 = getelementptr i8, ptr %i.0.lcssa.i.pn321, i32 -12
  %23 = ptrtoint ptr %iter4.0323 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iter4.0323, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %25 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp27.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp27.not, label %if.end29, label %if.end24.cleanup138_crit_edge

if.end24.cleanup138_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end29:                                         ; preds = %if.end24
  %mask = getelementptr i8, ptr %i.0.lcssa.i.pn321, i32 -8
  %26 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i233) #10
  %28 = ptrtoint ptr %tmp.i.i233 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i.i233, align 4
  %call.i.i234 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i.i233) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i233) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i234)
  %cmp33.not = icmp eq i32 %call.i.i234, 0
  br i1 %cmp33.not, label %if.end35, label %if.end29.cleanup138_crit_edge

if.end29.cleanup138_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end35:                                         ; preds = %if.end29
  %add.ptr = getelementptr i8, ptr %i.0.lcssa.i.pn321, i32 -20
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i235) #10
  %31 = ptrtoint ptr %tmp.i235 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmp.i235, align 4
  %call.i236 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i235) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i235) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %cmp39.not = icmp eq i32 %call.i236, 0
  br i1 %cmp39.not, label %if.end41, label %if.end35.cleanup138_crit_edge

if.end35.cleanup138_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end41:                                         ; preds = %if.end35
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cond144 = icmp eq i32 %33, 3
  br i1 %cond144, label %sw.bb44, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb44:                                          ; preds = %if.end41
  %34 = getelementptr i8, ptr %i.0.lcssa.i.pn321, i32 -16
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i237) #10
  %39 = ptrtoint ptr %tmp.i237 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tmp.i237, align 4
  %call.i238 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i237) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i237) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp47.not = icmp eq i32 %call.i238, 0
  br i1 %cmp47.not, label %sw.bb44.for.inc_crit_edge, label %sw.bb44.cleanup138_crit_edge

sw.bb44.cleanup138_crit_edge:                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

sw.bb44.for.inc_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %sw.bb44.for.inc_crit_edge, %if.end41.for.inc_crit_edge
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %22, align 2
  %43 = ptrtoint ptr %i.0.lcssa.i.pn321 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i.0.lcssa.i.pn321, align 4
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %10, align 4
  %cmp.not19.i240 = icmp eq ptr %44, %46
  br i1 %cmp.not19.i240, label %for.inc.__af4list_valid_rcu.exit258_crit_edge, label %for.inc.land.rhs.i244_crit_edge

for.inc.land.rhs.i244_crit_edge:                  ; preds = %for.inc
  br label %land.rhs.i244

for.inc.__af4list_valid_rcu.exit258_crit_edge:    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af4list_valid_rcu.exit258

land.rhs.i244:                                    ; preds = %do.end9.i255.land.rhs.i244_crit_edge, %for.inc.land.rhs.i244_crit_edge
  %i.020.i241 = phi ptr [ %50, %do.end9.i255.land.rhs.i244_crit_edge ], [ %44, %for.inc.land.rhs.i244_crit_edge ]
  %valid.i242 = getelementptr i8, ptr %i.020.i241, i32 -4
  %47 = ptrtoint ptr %valid.i242 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %valid.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i243 = icmp eq i32 %48, 0
  br i1 %tobool.not.i243, label %while.body.i247, label %land.rhs.i244.__af4list_valid_rcu.exit258_crit_edge

land.rhs.i244.__af4list_valid_rcu.exit258_crit_edge: ; preds = %land.rhs.i244
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af4list_valid_rcu.exit258

while.body.i247:                                  ; preds = %land.rhs.i244
  %49 = ptrtoint ptr %i.020.i241 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %i.020.i241, align 4
  %call.i245 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool3.not.i246 = icmp eq i32 %call.i245, 0
  br i1 %tobool3.not.i246, label %land.lhs.true.i250, label %while.body.i247.do.end9.i255_crit_edge

while.body.i247.do.end9.i255_crit_edge:           ; preds = %while.body.i247
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i255

land.lhs.true.i250:                               ; preds = %while.body.i247
  %call4.i248 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i248)
  %tobool5.not.i249 = icmp eq i32 %call4.i248, 0
  br i1 %tobool5.not.i249, label %land.lhs.true.i250.do.end9.i255_crit_edge, label %land.lhs.true6.i252

land.lhs.true.i250.do.end9.i255_crit_edge:        ; preds = %land.lhs.true.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i255

land.lhs.true6.i252:                              ; preds = %land.lhs.true.i250
  %.b18.i251 = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i251, label %land.lhs.true6.i252.do.end9.i255_crit_edge, label %if.then.i253

land.lhs.true6.i252.do.end9.i255_crit_edge:       ; preds = %land.lhs.true6.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i255

if.then.i253:                                     ; preds = %land.lhs.true6.i252
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.1) #10
  br label %do.end9.i255

do.end9.i255:                                     ; preds = %if.then.i253, %land.lhs.true6.i252.do.end9.i255_crit_edge, %land.lhs.true.i250.do.end9.i255_crit_edge, %while.body.i247.do.end9.i255_crit_edge
  %cmp.not.i254 = icmp eq ptr %50, %46
  br i1 %cmp.not.i254, label %do.end9.i255.__af4list_valid_rcu.exit258_crit_edge, label %do.end9.i255.land.rhs.i244_crit_edge

do.end9.i255.land.rhs.i244_crit_edge:             ; preds = %do.end9.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i244

do.end9.i255.__af4list_valid_rcu.exit258_crit_edge: ; preds = %do.end9.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af4list_valid_rcu.exit258

__af4list_valid_rcu.exit258:                      ; preds = %do.end9.i255.__af4list_valid_rcu.exit258_crit_edge, %land.rhs.i244.__af4list_valid_rcu.exit258_crit_edge, %for.inc.__af4list_valid_rcu.exit258_crit_edge
  %i.0.lcssa.i256 = phi ptr [ %44, %for.inc.__af4list_valid_rcu.exit258_crit_edge ], [ %i.020.i241, %land.rhs.i244.__af4list_valid_rcu.exit258_crit_edge ], [ %46, %do.end9.i255.__af4list_valid_rcu.exit258_crit_edge ]
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %10, align 4
  %cmp20.not = icmp eq ptr %i.0.lcssa.i256, %52
  br i1 %cmp20.not, label %__af4list_valid_rcu.exit258.for.end_crit_edge, label %__af4list_valid_rcu.exit258.for.body_crit_edge

__af4list_valid_rcu.exit258.for.body_crit_edge:   ; preds = %__af4list_valid_rcu.exit258
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

__af4list_valid_rcu.exit258.for.end_crit_edge:    ; preds = %__af4list_valid_rcu.exit258
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %__af4list_valid_rcu.exit258.for.end_crit_edge, %__af4list_valid_rcu.exit.for.end_crit_edge
  %.lcssa = phi ptr [ %i.0.lcssa.i, %__af4list_valid_rcu.exit.for.end_crit_edge ], [ %i.0.lcssa.i256, %__af4list_valid_rcu.exit258.for.end_crit_edge ]
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %.lcssa, i32 0, i32 1
  %53 = ptrtoint ptr %list6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %list6, align 4
  %call61 = call fastcc ptr @__af6list_valid_rcu(ptr noundef %54, ptr noundef %list6)
  %list63324 = getelementptr inbounds %struct.netlbl_af6list, ptr %call61, i32 0, i32 3
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %10, align 4
  %list665325 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %56, i32 0, i32 1
  %cmp66.not326 = icmp eq ptr %list63324, %list665325
  br i1 %cmp66.not326, label %for.end.for.end111_crit_edge, label %for.end.for.body67_crit_edge

for.end.for.body67_crit_edge:                     ; preds = %for.end
  br label %for.body67

for.end.for.end111_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end111

for.body67:                                       ; preds = %__af6list_valid_rcu.exit.for.body67_crit_edge, %for.end.for.body67_crit_edge
  %list63328 = phi ptr [ %i.0.lcssa.i290, %__af6list_valid_rcu.exit.for.body67_crit_edge ], [ %list63324, %for.end.for.body67_crit_edge ]
  %iter6.0327 = phi ptr [ %n.0.i291, %__af6list_valid_rcu.exit.for.body67_crit_edge ], [ %call61, %for.end.for.body67_crit_edge ]
  %57 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i, align 8
  %call1.i260 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i260)
  %cmp.i261 = icmp slt i32 %call1.i260, 0
  %cmp69315 = icmp eq ptr %58, null
  %cmp69 = select i1 %cmp.i261, i1 true, i1 %cmp69315
  br i1 %cmp69, label %for.body67.cleanup138_crit_edge, label %if.end71

for.body67.cleanup138_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end71:                                         ; preds = %for.body67
  %call.i263 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 16, ptr noundef %iter6.0327) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %cmp74.not = icmp eq i32 %call.i263, 0
  br i1 %cmp74.not, label %if.end76, label %if.end71.cleanup138_crit_edge

if.end71.cleanup138_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end76:                                         ; preds = %if.end71
  %mask77 = getelementptr inbounds %struct.netlbl_af6list, ptr %iter6.0327, i32 0, i32 1
  %call.i264 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 16, ptr noundef %mask77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %cmp79.not = icmp eq i32 %call.i264, 0
  br i1 %cmp79.not, label %if.end81, label %if.end76.cleanup138_crit_edge

if.end76.cleanup138_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end81:                                         ; preds = %if.end76
  %add.ptr84 = getelementptr i8, ptr %iter6.0327, i32 -8
  %59 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr84, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i265) #10
  %61 = ptrtoint ptr %tmp.i265 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tmp.i265, align 4
  %call.i266 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i265) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i265) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %cmp88.not = icmp eq i32 %call.i266, 0
  br i1 %cmp88.not, label %if.end90, label %if.end81.cleanup138_crit_edge

if.end81.cleanup138_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end90:                                         ; preds = %if.end81
  %62 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %cond = icmp eq i32 %63, 7
  br i1 %cond, label %sw.bb93, label %if.end90.for.inc105_crit_edge

if.end90.for.inc105_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc105

sw.bb93:                                          ; preds = %if.end90
  %64 = getelementptr i8, ptr %iter6.0327, i32 -4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i267) #10
  %69 = ptrtoint ptr %tmp.i267 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %tmp.i267, align 4
  %call.i268 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i267) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i267) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %cmp97.not = icmp eq i32 %call.i268, 0
  br i1 %cmp97.not, label %sw.bb93.for.inc105_crit_edge, label %sw.bb93.cleanup138_crit_edge

sw.bb93.cleanup138_crit_edge:                     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

sw.bb93.for.inc105_crit_edge:                     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc105

for.inc105:                                       ; preds = %sw.bb93.for.inc105_crit_edge, %if.end90.for.inc105_crit_edge
  %70 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i270 = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i271 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i272 = sub i32 %sub.ptr.lhs.cast.i270, %sub.ptr.rhs.cast.i271
  %conv.i273 = trunc i32 %sub.ptr.sub.i272 to i16
  %72 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i273, ptr %58, align 2
  %73 = ptrtoint ptr %list63328 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %list63328, align 4
  %75 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %10, align 4
  %list6109 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %76, i32 0, i32 1
  %cmp.not19.i274 = icmp eq ptr %74, %list6109
  br i1 %cmp.not19.i274, label %for.inc105.__af6list_valid_rcu.exit_crit_edge, label %for.inc105.land.rhs.i278_crit_edge

for.inc105.land.rhs.i278_crit_edge:               ; preds = %for.inc105
  br label %land.rhs.i278

for.inc105.__af6list_valid_rcu.exit_crit_edge:    ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af6list_valid_rcu.exit

land.rhs.i278:                                    ; preds = %do.end9.i289.land.rhs.i278_crit_edge, %for.inc105.land.rhs.i278_crit_edge
  %i.020.i275 = phi ptr [ %80, %do.end9.i289.land.rhs.i278_crit_edge ], [ %74, %for.inc105.land.rhs.i278_crit_edge ]
  %valid.i276 = getelementptr i8, ptr %i.020.i275, i32 -4
  %77 = ptrtoint ptr %valid.i276 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %valid.i276, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i277 = icmp eq i32 %78, 0
  br i1 %tobool.not.i277, label %while.body.i281, label %land.rhs.i278.__af6list_valid_rcu.exit_crit_edge

land.rhs.i278.__af6list_valid_rcu.exit_crit_edge: ; preds = %land.rhs.i278
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af6list_valid_rcu.exit

while.body.i281:                                  ; preds = %land.rhs.i278
  %79 = ptrtoint ptr %i.020.i275 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %i.020.i275, align 4
  %call.i279 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool3.not.i280 = icmp eq i32 %call.i279, 0
  br i1 %tobool3.not.i280, label %land.lhs.true.i284, label %while.body.i281.do.end9.i289_crit_edge

while.body.i281.do.end9.i289_crit_edge:           ; preds = %while.body.i281
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i289

land.lhs.true.i284:                               ; preds = %while.body.i281
  %call4.i282 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i282)
  %tobool5.not.i283 = icmp eq i32 %call4.i282, 0
  br i1 %tobool5.not.i283, label %land.lhs.true.i284.do.end9.i289_crit_edge, label %land.lhs.true6.i286

land.lhs.true.i284.do.end9.i289_crit_edge:        ; preds = %land.lhs.true.i284
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i289

land.lhs.true6.i286:                              ; preds = %land.lhs.true.i284
  %.b18.i285 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i285, label %land.lhs.true6.i286.do.end9.i289_crit_edge, label %if.then.i287

land.lhs.true6.i286.do.end9.i289_crit_edge:       ; preds = %land.lhs.true6.i286
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i289

if.then.i287:                                     ; preds = %land.lhs.true6.i286
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #10
  br label %do.end9.i289

do.end9.i289:                                     ; preds = %if.then.i287, %land.lhs.true6.i286.do.end9.i289_crit_edge, %land.lhs.true.i284.do.end9.i289_crit_edge, %while.body.i281.do.end9.i289_crit_edge
  %cmp.not.i288 = icmp eq ptr %80, %list6109
  br i1 %cmp.not.i288, label %do.end9.i289.__af6list_valid_rcu.exit_crit_edge, label %do.end9.i289.land.rhs.i278_crit_edge

do.end9.i289.land.rhs.i278_crit_edge:             ; preds = %do.end9.i289
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i278

do.end9.i289.__af6list_valid_rcu.exit_crit_edge:  ; preds = %do.end9.i289
  call void @__sanitizer_cov_trace_pc() #12
  br label %__af6list_valid_rcu.exit

__af6list_valid_rcu.exit:                         ; preds = %do.end9.i289.__af6list_valid_rcu.exit_crit_edge, %land.rhs.i278.__af6list_valid_rcu.exit_crit_edge, %for.inc105.__af6list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i290 = phi ptr [ %74, %for.inc105.__af6list_valid_rcu.exit_crit_edge ], [ %i.020.i275, %land.rhs.i278.__af6list_valid_rcu.exit_crit_edge ], [ %list6109, %do.end9.i289.__af6list_valid_rcu.exit_crit_edge ]
  %n.0.i291 = getelementptr i8, ptr %i.0.lcssa.i290, i32 -36
  %81 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %10, align 4
  %list665 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %82, i32 0, i32 1
  %cmp66.not = icmp eq ptr %i.0.lcssa.i290, %list665
  br i1 %cmp66.not, label %__af6list_valid_rcu.exit.for.end111_crit_edge, label %__af6list_valid_rcu.exit.for.body67_crit_edge

__af6list_valid_rcu.exit.for.body67_crit_edge:    ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body67

__af6list_valid_rcu.exit.for.end111_crit_edge:    ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end111

for.end111:                                       ; preds = %__af6list_valid_rcu.exit.for.end111_crit_edge, %for.end.for.end111_crit_edge
  %83 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i293 = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i294 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i295 = sub i32 %sub.ptr.lhs.cast.i293, %sub.ptr.rhs.cast.i294
  %conv.i296 = trunc i32 %sub.ptr.sub.i295 to i16
  %85 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i296, ptr %9, align 2
  br label %cleanup138

sw.bb113:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i297) #10
  %86 = ptrtoint ptr %tmp.i297 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 5, ptr %tmp.i297, align 4
  %call.i298 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i297) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i297) #10
  br label %cleanup138

sw.bb117:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i299) #10
  %87 = ptrtoint ptr %tmp.i299 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 3, ptr %tmp.i299, align 4
  %call.i300 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i299) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i299) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300)
  %cmp121.not = icmp eq i32 %call.i300, 0
  br i1 %cmp121.not, label %if.end123, label %sw.bb117.cleanup138_crit_edge

sw.bb117.cleanup138_crit_edge:                    ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end123:                                        ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #12
  %88 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i301) #10
  %93 = ptrtoint ptr %tmp.i301 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %tmp.i301, align 4
  %call.i302 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i301) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i301) #10
  br label %cleanup138

sw.bb127:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i303) #10
  %94 = ptrtoint ptr %tmp.i303 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 7, ptr %tmp.i303, align 4
  %call.i304 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i303) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i303) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %cmp131.not = icmp eq i32 %call.i304, 0
  br i1 %cmp131.not, label %if.end133, label %sw.bb127.cleanup138_crit_edge

sw.bb127.cleanup138_crit_edge:                    ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup138

if.end133:                                        ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #12
  %95 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i305) #10
  %100 = ptrtoint ptr %tmp.i305 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %tmp.i305, align 4
  %call.i306 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i305) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i305) #10
  br label %cleanup138

cleanup138:                                       ; preds = %if.end133, %sw.bb127.cleanup138_crit_edge, %if.end123, %sw.bb117.cleanup138_crit_edge, %sw.bb113, %for.end111, %sw.bb93.cleanup138_crit_edge, %if.end81.cleanup138_crit_edge, %if.end76.cleanup138_crit_edge, %if.end71.cleanup138_crit_edge, %for.body67.cleanup138_crit_edge, %sw.bb44.cleanup138_crit_edge, %if.end35.cleanup138_crit_edge, %if.end29.cleanup138_crit_edge, %if.end24.cleanup138_crit_edge, %for.body.cleanup138_crit_edge, %sw.bb.cleanup138_crit_edge, %if.end9.cleanup138_crit_edge, %if.end5.cleanup138_crit_edge, %if.then.cleanup138_crit_edge
  %retval.4 = phi i32 [ %call1.i, %if.then.cleanup138_crit_edge ], [ %call.i226, %if.end5.cleanup138_crit_edge ], [ -12, %sw.bb.cleanup138_crit_edge ], [ %call.i300, %sw.bb117.cleanup138_crit_edge ], [ %call.i304, %sw.bb127.cleanup138_crit_edge ], [ 0, %if.end9.cleanup138_crit_edge ], [ %call.i306, %if.end133 ], [ %call.i302, %if.end123 ], [ %call.i298, %sw.bb113 ], [ 0, %for.end111 ], [ -12, %for.body67.cleanup138_crit_edge ], [ %call.i263, %if.end71.cleanup138_crit_edge ], [ %call.i264, %if.end76.cleanup138_crit_edge ], [ %call.i266, %if.end81.cleanup138_crit_edge ], [ %call.i268, %sw.bb93.cleanup138_crit_edge ], [ -12, %for.body.cleanup138_crit_edge ], [ %call.i.i, %if.end24.cleanup138_crit_edge ], [ %call.i.i234, %if.end29.cleanup138_crit_edge ], [ %call.i236, %if.end35.cleanup138_crit_edge ], [ %call.i238, %sw.bb44.cleanup138_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__af6list_valid_rcu(ptr noundef %s, ptr noundef readnone %h) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cmp.not19 = icmp eq ptr %s, %h
  br i1 %cmp.not19, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %do.end9.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.020 = phi ptr [ %3, %do.end9.land.rhs_crit_edge ], [ %s, %entry.land.rhs_crit_edge ]
  %valid = getelementptr i8, ptr %i.020, i32 -4
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %2 = ptrtoint ptr %i.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %i.020, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %while.body.do.end9_crit_edge

while.body.do.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true:                                    ; preds = %while.body
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %while.body.do.end9_crit_edge
  %cmp.not = icmp eq ptr %3, %h
  br i1 %cmp.not, label %do.end9.while.end_crit_edge, label %do.end9.land.rhs_crit_edge

do.end9.land.rhs_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.end9.while.end_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end9.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi ptr [ %s, %entry.while.end_crit_edge ], [ %h, %do.end9.while.end_crit_edge ], [ %i.020, %land.rhs.while.end_crit_edge ]
  %n.0 = getelementptr i8, ptr %i.0.lcssa, i32 -36
  ret ptr %n.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_remove_default(i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_domhsh_getentry(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
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
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlbl_mgmt_protocols_cb(ptr noundef %skb, ptr nocapture noundef readonly %cb, i32 noundef %protocol) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %4 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %3, i32 noundef %7, ptr noundef nonnull @netlbl_mgmt_gnl_family, i32 noundef 2, i8 noundef zeroext 7) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %protocol, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, 0
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  br i1 %cmp4.not, label %if.end6, label %if.then.i

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %13, %add.ptr1.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !36

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %if.end.i.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @netlabel_mgmt_protocount, !1, !"netlabel_mgmt_protocount", i1 false, i1 false}
!1 = !{!"../net/netlabel/netlabel_mgmt.c", i32 39, i32 10}
!2 = !{ptr @netlbl_mgmt_gnl_family, !3, !"netlbl_mgmt_gnl_family", i1 false, i1 false}
!3 = !{!"../net/netlabel/netlabel_mgmt.c", i32 820, i32 27}
!4 = !{ptr @netlbl_mgmt_genl_policy, !5, !"netlbl_mgmt_genl_policy", i1 false, i1 false}
!5 = !{!"../net/netlabel/netlabel_mgmt.c", i32 52, i32 32}
!6 = !{ptr @netlbl_mgmt_genl_ops, !7, !"netlbl_mgmt_genl_ops", i1 false, i1 false}
!7 = !{!"../net/netlabel/netlabel_mgmt.c", i32 761, i32 36}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/netlabel/netlabel_addrlist.h", i32 76, i32 7}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/netlabel/netlabel_addrlist.h", i32 143, i32 7}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/net/netlink.h", i32 991, i32 3}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{!"sp"}
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
!34 = !{i64 2149343460}
!35 = !{i64 2149343726}
!36 = !{!"branch_weights", i32 1, i32 2000}
