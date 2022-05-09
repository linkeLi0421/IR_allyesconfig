; ModuleID = '/llk/IR_all_yes/net/netlabel/netlabel_calipso.c_pt.bc'
source_filename = "../net/netlabel/netlabel_calipso.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+netlbl_calipso_ops_register\22, \22a\22\09"
module asm "\09.weak\09__crc_netlbl_calipso_ops_register\09\09\09\09"
module asm "\09.long\09__crc_netlbl_calipso_ops_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlbl_calipso_ops_register:\09\09\09\09\09"
module asm "\09.asciz \09\22netlbl_calipso_ops_register\22\09\09\09\09\09"
module asm "__kstrtabns_netlbl_calipso_ops_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.netlbl_calipso_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.calipso_doi = type { i32, i32, %struct.refcount_struct, %struct.list_head, %struct.callback_head }
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
%struct.netlbl_calipso_doiwalk_arg = type { ptr, ptr, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlbl_dom_map = type { ptr, i16, %struct.netlbl_dommap_def, i32, %struct.list_head, %struct.callback_head }
%struct.netlbl_dommap_def = type { i32, %union.anon.147 }
%union.anon.147 = type { ptr }

@netlbl_calipso_gnl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"NLBL_CALIPSO\00\00\00\00", i32 3, i32 2, i32 0, i8 0, i8 0, i8 4, i8 0, ptr @calipso_genl_policy, ptr null, ptr null, ptr null, ptr @netlbl_calipso_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@calipso_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_netlbl_calipso_ops_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlbl_calipso_ops_register = external dso_local constant [0 x i8], align 1
@__ksymtab_netlbl_calipso_ops_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlbl_calipso_ops_register to i32), ptr @__kstrtab_netlbl_calipso_ops_register, ptr @__kstrtabns_netlbl_calipso_ops_register }, section "___ksymtab+netlbl_calipso_ops_register", align 4
@calipso_genl_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@netlbl_calipso_ops = internal constant { [4 x %struct.genl_small_ops], [48 x i8] } { [4 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @netlbl_calipso_add, ptr null, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_calipso_remove, ptr null, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @netlbl_calipso_list, ptr null, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr null, ptr @netlbl_calipso_listall, i8 4, i8 0, i8 0, i8 3 }], [48 x i8] zeroinitializer }, align 32
@netlabel_mgmt_protocount = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"calipso_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 365, i32 41 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"calipso_genl_policy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 52, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"netlbl_calipso_ops\00", align 1
@___asan_gen_.8 = private constant [35 x i8] c"../net/netlabel/netlabel_calipso.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 307, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 991, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_netlbl_calipso_ops_register, ptr @calipso_ops, ptr @calipso_genl_policy, ptr @netlbl_calipso_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_genl_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_calipso_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_calipso_genl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @netlbl_calipso_gnl_family) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_calipso_ops_register(ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @calipso_ops, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !22
  %0 = ptrtoint ptr %ops to i32
  tail call void @llvm.prefetch.p0(ptr nonnull @calipso_ops, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %0, ptr nonnull @calipso_ops) #8, !srcloc !23
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %2 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !24
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_doi_add(ptr noundef %doi_def, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call1 = tail call i32 %2(ptr noundef %doi_def, ptr noundef %audit_info) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calipso_doi_free(ptr noundef %doi_def) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %doi_free = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %doi_free to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %doi_free, align 4
  tail call void %2(ptr noundef %doi_def) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_doi_remove(i32 noundef %doi, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %doi_remove = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %doi_remove to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %doi_remove, align 4
  %call1 = tail call i32 %2(i32 noundef %doi, ptr noundef %audit_info) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @calipso_doi_getdef(i32 noundef %doi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %doi_getdef = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %doi_getdef to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %doi_getdef, align 4
  %call1 = tail call ptr %2(i32 noundef %doi) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi ptr [ %call1, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calipso_doi_putdef(ptr noundef %doi_def) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %doi_putdef = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %doi_putdef to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %doi_putdef, align 4
  tail call void %2(ptr noundef %doi_def) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_doi_walk(ptr noundef %skip_cnt, ptr noundef %callback, ptr noundef %cb_arg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %doi_walk = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %doi_walk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %doi_walk, align 4
  %call1 = tail call i32 %2(ptr noundef %skip_cnt, ptr noundef %callback, ptr noundef %cb_arg) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_sock_getattr(ptr noundef %sk, ptr noundef %secattr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sock_getattr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %sock_getattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sock_getattr, align 4
  %call1 = tail call i32 %2(ptr noundef %sk, ptr noundef %secattr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_sock_setattr(ptr noundef %sk, ptr noundef %doi_def, ptr noundef %secattr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sock_setattr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %sock_setattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sock_setattr, align 4
  %call1 = tail call i32 %2(ptr noundef %sk, ptr noundef %doi_def, ptr noundef %secattr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calipso_sock_delattr(ptr noundef %sk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sock_delattr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %sock_delattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sock_delattr, align 4
  tail call void %2(ptr noundef %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_req_setattr(ptr noundef %req, ptr noundef %doi_def, ptr noundef %secattr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %req_setattr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %req_setattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req_setattr, align 4
  %call1 = tail call i32 %2(ptr noundef %req, ptr noundef %doi_def, ptr noundef %secattr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calipso_req_delattr(ptr noundef %req) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %req_delattr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %req_delattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req_delattr, align 4
  tail call void %2(ptr noundef %req) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @calipso_optptr(ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %skbuff_optptr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %skbuff_optptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skbuff_optptr, align 4
  %call1 = tail call ptr %2(ptr noundef %skb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi ptr [ %call1, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_getattr(ptr noundef %calipso, ptr noundef %secattr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %opt_getattr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %opt_getattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %opt_getattr, align 4
  %call1 = tail call i32 %2(ptr noundef %calipso, ptr noundef %secattr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_skbuff_setattr(ptr noundef %skb, ptr noundef %doi_def, ptr noundef %secattr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %skbuff_setattr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 13
  %1 = ptrtoint ptr %skbuff_setattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skbuff_setattr, align 4
  %call1 = tail call i32 %2(ptr noundef %skb, ptr noundef %doi_def, ptr noundef %secattr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_skbuff_delattr(ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %skbuff_delattr = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 14
  %1 = ptrtoint ptr %skbuff_delattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skbuff_delattr, align 4
  %call1 = tail call i32 %2(ptr noundef %skb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calipso_cache_invalidate() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cache_invalidate = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 15
  %1 = ptrtoint ptr %cache_invalidate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cache_invalidate, align 4
  tail call void %2() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_cache_add(ptr noundef %calipso_ptr, ptr noundef %secattr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cache_add = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %0, i32 0, i32 16
  %1 = ptrtoint ptr %cache_add to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cache_add, align 4
  %call1 = tail call i32 %2(ptr noundef %calipso_ptr, ptr noundef %secattr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.then ], [ -42, %entry.if.end_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_calipso_add(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %audit_info = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %6, i32 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #8
  %11 = call i32 @llvm.read_register.i32(metadata !12) #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cond = icmp eq i32 %25, 2
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 28) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %type.i = getelementptr inbounds %struct.calipso_doi, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %type.i, align 4
  %28 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i.i, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %call7.i.i, align 8
  %35 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then3.i_crit_edge, label %calipso_doi_add.exit.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

calipso_doi_add.exit.i:                           ; preds = %if.end.i
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call1.i.i = call i32 %37(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %audit_info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.not.i, label %if.then7, label %calipso_doi_add.exit.i.if.then3.i_crit_edge

calipso_doi_add.exit.i.if.then3.i_crit_edge:      ; preds = %calipso_doi_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %calipso_doi_add.exit.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %ret_val.0.i15.i = phi i32 [ %call1.i.i, %calipso_doi_add.exit.i.if.then3.i_crit_edge ], [ -42, %if.end.i.if.then3.i_crit_edge ]
  %38 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not.i11.i = icmp eq ptr %38, null
  br i1 %tobool.not.i11.i, label %if.then3.i.cleanup_crit_edge, label %if.then.i12.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i12.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %doi_free.i.i = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %doi_free.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %doi_free.i.i, align 4
  call void %40(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.then7:                                         ; preds = %calipso_doi_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netlabel_mgmt_protocount, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @netlabel_mgmt_protocount, i32 1, i32 3, i32 1) #8
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netlabel_mgmt_protocount, ptr nonnull @netlabel_mgmt_protocount, i32 1, ptr nonnull elementtype(i32) @netlabel_mgmt_protocount) #8, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then.i12.i, %if.then3.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ %ret_val.0.i15.i, %if.then.i12.i ], [ %ret_val.0.i15.i, %if.then3.i.cleanup_crit_edge ], [ -12, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_calipso_remove(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %cb_arg = alloca %struct.netlbl_domhsh_walk_arg, align 4
  %audit_info = alloca %struct.netlbl_audit, align 4
  %skip_bkt = alloca i32, align 4
  %skip_chain = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb_arg) #8
  %0 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, ptr %cb_arg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #8
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_bkt) #8
  %6 = ptrtoint ptr %skip_bkt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %skip_bkt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip_chain) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @security_current_getsecid_subj(ptr noundef nonnull %audit_info) #8
  %12 = call i32 @llvm.read_register.i32(metadata !12) #8
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
  %call4 = call i32 @netlbl_domhsh_walk(ptr noundef nonnull %skip_bkt, ptr noundef nonnull %skip_chain, ptr noundef nonnull @netlbl_calipso_remove_cb, ptr noundef nonnull %cb_arg) #8
  %29 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.then6_crit_edge
    i32 -2, label %if.end.if.then6_crit_edge23
  ]

if.end.if.then6_crit_edge23:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge23
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 4
  %32 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then6.cleanup_crit_edge, label %calipso_doi_remove.exit

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

calipso_doi_remove.exit:                          ; preds = %if.then6
  %doi_remove.i = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %doi_remove.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %doi_remove.i, align 4
  %call1.i = call i32 %34(i32 noundef %31, ptr noundef nonnull %audit_info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp9 = icmp eq i32 %call1.i, 0
  br i1 %cmp9, label %if.then10, label %calipso_doi_remove.exit.cleanup_crit_edge

calipso_doi_remove.exit.cleanup_crit_edge:        ; preds = %calipso_doi_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %calipso_doi_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netlabel_mgmt_protocount, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @netlabel_mgmt_protocount, i32 1, i32 3, i32 1) #8
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netlabel_mgmt_protocount, ptr nonnull @netlabel_mgmt_protocount, i32 1, ptr nonnull elementtype(i32) @netlabel_mgmt_protocount) #8, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %calipso_doi_remove.exit.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call1.i, %calipso_doi_remove.exit.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -42, %if.then6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_chain) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip_bkt) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb_arg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_calipso_list(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %entry.list_failure_crit_edge, label %if.end

entry.list_failure_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_failure

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.list_failure_crit_edge, label %calipso_doi_getdef.exit

if.end.list_failure_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_failure

calipso_doi_getdef.exit:                          ; preds = %if.end
  %doi_getdef.i = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %doi_getdef.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %doi_getdef.i, align 4
  %call1.i = tail call ptr %8(i32 noundef %5) #8
  %tobool4.not = icmp eq ptr %call1.i, null
  br i1 %tobool4.not, label %calipso_doi_getdef.exit.list_failure_crit_edge, label %if.end6

calipso_doi_getdef.exit.list_failure_crit_edge:   ; preds = %calipso_doi_getdef.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_failure

if.end6:                                          ; preds = %calipso_doi_getdef.exit
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %if.end6.list_failure_put_crit_edge, label %if.end10

if.end6.list_failure_put_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_failure_put

if.end10:                                         ; preds = %if.end6
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snd_portid.i, align 4
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %10, i32 noundef %12, ptr noundef nonnull @netlbl_calipso_gnl_family, i32 noundef 0, i8 noundef zeroext 3) #8
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end10.list_failure_put_crit_edge, label %if.end14

if.end10.list_failure_put_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_failure_put

if.end14:                                         ; preds = %if.end10
  %type = getelementptr inbounds %struct.calipso_doi, ptr %call1.i, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i, align 4
  %call.i36 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp.not = icmp eq i32 %call.i36, 0
  br i1 %cmp.not, label %if.end17, label %if.end14.list_failure_put_crit_edge

if.end14.list_failure_put_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_failure_put

if.end17:                                         ; preds = %if.end14
  %16 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not.i37 = icmp eq ptr %16, null
  br i1 %tobool.not.i37, label %if.end17.calipso_doi_putdef.exit_crit_edge, label %if.then.i38

if.end17.calipso_doi_putdef.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %calipso_doi_putdef.exit

if.then.i38:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %doi_putdef.i = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %doi_putdef.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %doi_putdef.i, align 4
  call void %18(ptr noundef nonnull %call1.i) #8
  br label %calipso_doi_putdef.exit

calipso_doi_putdef.exit:                          ; preds = %if.then.i38, %if.end17.calipso_doi_putdef.exit_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_net.i.i, align 4
  %24 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 21
  %26 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %27, ptr noundef nonnull %call.i.i, i32 noundef %25, i32 noundef 64) #8
  %28 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

list_failure_put:                                 ; preds = %if.end14.list_failure_put_crit_edge, %if.end10.list_failure_put_crit_edge, %if.end6.list_failure_put_crit_edge
  %ret_val.0 = phi i32 [ %call.i36, %if.end14.list_failure_put_crit_edge ], [ -12, %if.end6.list_failure_put_crit_edge ], [ -12, %if.end10.list_failure_put_crit_edge ]
  %29 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not.i40 = icmp eq ptr %29, null
  br i1 %tobool.not.i40, label %list_failure_put.list_failure_crit_edge, label %if.then.i42

list_failure_put.list_failure_crit_edge:          ; preds = %list_failure_put
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_failure

if.then.i42:                                      ; preds = %list_failure_put
  call void @__sanitizer_cov_trace_pc() #10
  %doi_putdef.i41 = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %doi_putdef.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %doi_putdef.i41, align 4
  call void %31(ptr noundef nonnull %call1.i) #8
  br label %list_failure

list_failure:                                     ; preds = %if.then.i42, %list_failure_put.list_failure_crit_edge, %calipso_doi_getdef.exit.list_failure_crit_edge, %if.end.list_failure_crit_edge, %entry.list_failure_crit_edge
  %ret_val.1 = phi i32 [ -22, %entry.list_failure_crit_edge ], [ -22, %calipso_doi_getdef.exit.list_failure_crit_edge ], [ %ret_val.0, %list_failure_put.list_failure_crit_edge ], [ %ret_val.0, %if.then.i42 ], [ -22, %if.end.list_failure_crit_edge ]
  %ans_skb.0 = phi ptr [ null, %entry.list_failure_crit_edge ], [ null, %calipso_doi_getdef.exit.list_failure_crit_edge ], [ %call.i.i, %list_failure_put.list_failure_crit_edge ], [ %call.i.i, %if.then.i42 ], [ null, %if.end.list_failure_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %ans_skb.0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %list_failure, %calipso_doi_putdef.exit
  %retval.0 = phi i32 [ %ret_val.1, %list_failure ], [ %28, %calipso_doi_putdef.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_calipso_listall(ptr noundef %skb, ptr noundef %cb) #2 align 64 {
entry:
  %cb_arg = alloca %struct.netlbl_calipso_doiwalk_arg, align 4
  %doi_skip = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cb_arg) #8
  %0 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, ptr %cb_arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, ptr %cb_arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %doi_skip) #8
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
  %13 = load volatile ptr, ptr @calipso_ops, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.calipso_doi_walk.exit_crit_edge, label %if.then.i

entry.calipso_doi_walk.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %calipso_doi_walk.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %doi_walk.i = getelementptr inbounds %struct.netlbl_calipso_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %doi_walk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %doi_walk.i, align 4
  %call1.i = call i32 %15(ptr noundef nonnull %doi_skip, ptr noundef nonnull @netlbl_calipso_listall_cb, ptr noundef nonnull %cb_arg) #8
  br label %calipso_doi_walk.exit

calipso_doi_walk.exit:                            ; preds = %if.then.i, %entry.calipso_doi_walk.exit_crit_edge
  %16 = ptrtoint ptr %doi_skip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %doi_skip, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %doi_skip) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cb_arg) #8
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_current_getsecid_subj(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_calipso_remove_cb(ptr noundef %entry1, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arg, align 4
  %call = tail call i32 @netlbl_domhsh_remove_entry(ptr noundef %entry1, ptr noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_remove_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_calipso_listall_cb(ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %tmp.i26 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, ptr %arg, i32 0, i32 1
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
  %seq = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, ptr %arg, i32 0, i32 2
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %1, i32 noundef %7, i32 noundef %9, ptr noundef nonnull @netlbl_calipso_gnl_family, i32 noundef 2, i8 noundef zeroext 4) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %12 = ptrtoint ptr %doi_def to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %doi_def, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %11, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end5, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end5:                                          ; preds = %if.end
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb, align 4
  %type = getelementptr inbounds %struct.calipso_doi, ptr %doi_def, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i26) #8
  %19 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i26, align 4
  %call.i27 = call i32 @nla_put(ptr noundef %16, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp8.not = icmp eq i32 %call.i27, 0
  br i1 %cmp8.not, label %if.end10, label %if.end5.if.then.i_crit_edge

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
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

if.then.i:                                        ; preds = %if.end5.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %ret_val.0.ph = phi i32 [ %call.i27, %if.end5.if.then.i_crit_edge ], [ %call.i, %if.end.if.then.i_crit_edge ]
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb, align 4
  %add.ptr1.i28 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i28, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %28, %add.ptr1.i28
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !28

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i28 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %26, i32 noundef %sub.ptr.sub.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %ret_val.0.ph, %if.then.i.cleanup_crit_edge ], [ %ret_val.0.ph, %if.end.i.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_netlbl_calipso_ops_register, !1, !"__ksymtab_netlbl_calipso_ops_register", i1 false, i1 false}
!1 = !{!"../net/netlabel/netlabel_calipso.c", i32 380, i32 1}
!2 = !{ptr @calipso_ops, !3, !"calipso_ops", i1 false, i1 false}
!3 = !{!"../net/netlabel/netlabel_calipso.c", i32 365, i32 41}
!4 = !{ptr @netlbl_calipso_gnl_family, !5, !"netlbl_calipso_gnl_family", i1 false, i1 false}
!5 = !{!"../net/netlabel/netlabel_calipso.c", i32 338, i32 27}
!6 = !{ptr @calipso_genl_policy, !7, !"calipso_genl_policy", i1 false, i1 false}
!7 = !{!"../net/netlabel/netlabel_calipso.c", i32 52, i32 32}
!8 = !{ptr @netlbl_calipso_ops, !9, !"netlbl_calipso_ops", i1 false, i1 false}
!9 = !{!"../net/netlabel/netlabel_calipso.c", i32 307, i32 36}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/net/netlink.h", i32 991, i32 3}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2157083544}
!23 = !{i64 769746, i64 769763, i64 769787, i64 769813, i64 769831}
!24 = !{i64 2157083889}
!25 = !{!"auto-init"}
!26 = !{i64 2148262978, i64 2148263004, i64 2148263033, i64 2148263067, i64 2148263098, i64 2148263121}
!27 = !{i64 2148265443, i64 2148265469, i64 2148265498, i64 2148265532, i64 2148265563, i64 2148265586}
!28 = !{!"branch_weights", i32 1, i32 2000}
