; ModuleID = '/llk/IR_all_yes/net/ipv4/sysctl_net_ipv4.c_pt.bc'
source_filename = "../net/ipv4/sysctl_net_ipv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.183, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.183 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_sysctl_net_ipv4__599_1468_sysctl_ipv4_init6 = internal global ptr @sysctl_ipv4_init, section ".initcall6.init", align 4
@init_net = external dso_local global %struct.net, align 128
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/ipv4\00", [23 x i8] zeroinitializer }, align 32
@ipv4_table = internal global { [16 x %struct.ctl_table], [128 x i8] } { [16 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @sysctl_tcp_max_orphans, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr @inet_peer_threshold, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr @inet_peer_minttl, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @inet_peer_maxttl, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr @sysctl_tcp_mem, i32 12, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.6, ptr @sysctl_tcp_low_latency, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.7, ptr @cipso_v4_cache_enabled, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr @cipso_v4_cache_bucketsize, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.9, ptr @cipso_v4_rbm_optfmt, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.10, ptr @cipso_v4_rbm_strictvalid, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.11, ptr null, i32 2048, i16 292, ptr null, ptr @proc_tcp_available_ulp, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr @sysctl_icmp_msgs_per_sec, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.13, ptr @sysctl_icmp_msgs_burst, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.14, ptr @sysctl_udp_mem, i32 12, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.15, ptr @sysctl_fib_sync_mem, i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr @sysctl_fib_sync_mem_min, ptr @sysctl_fib_sync_mem_max }, %struct.ctl_table zeroinitializer], [128 x i8] zeroinitializer }, align 32
@ipv4_sysctl_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv4_sysctl_init_net, ptr null, ptr @ipv4_sysctl_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_max_orphans\00", [16 x i8] zeroinitializer }, align 32
@sysctl_tcp_max_orphans = external dso_local global i32, align 4
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inet_peer_threshold\00", [44 x i8] zeroinitializer }, align 32
@inet_peer_threshold = external dso_local global i32, align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inet_peer_minttl\00", [47 x i8] zeroinitializer }, align 32
@inet_peer_minttl = external dso_local global i32, align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inet_peer_maxttl\00", [47 x i8] zeroinitializer }, align 32
@inet_peer_maxttl = external dso_local global i32, align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tcp_mem\00", [24 x i8] zeroinitializer }, align 32
@sysctl_tcp_mem = external dso_local global [3 x i32], align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_low_latency\00", [16 x i8] zeroinitializer }, align 32
@sysctl_tcp_low_latency = internal global i32 0, section ".data..read_mostly", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cipso_cache_enable\00", [45 x i8] zeroinitializer }, align 32
@cipso_v4_cache_enabled = external dso_local global i32, align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cipso_cache_bucket_size\00", [40 x i8] zeroinitializer }, align 32
@cipso_v4_cache_bucketsize = external dso_local global i32, align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cipso_rbm_optfmt\00", [47 x i8] zeroinitializer }, align 32
@cipso_v4_rbm_optfmt = external dso_local global i32, align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cipso_rbm_strictvalid\00", [42 x i8] zeroinitializer }, align 32
@cipso_v4_rbm_strictvalid = external dso_local global i32, align 4
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_available_ulp\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"icmp_msgs_per_sec\00", [46 x i8] zeroinitializer }, align 32
@sysctl_icmp_msgs_per_sec = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"icmp_msgs_burst\00", [16 x i8] zeroinitializer }, align 32
@sysctl_icmp_msgs_burst = external dso_local global i32, align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"udp_mem\00", [24 x i8] zeroinitializer }, align 32
@sysctl_udp_mem = external dso_local global [3 x i32], align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fib_sync_mem\00", [19 x i8] zeroinitializer }, align 32
@sysctl_fib_sync_mem = external dso_local global i32, align 4
@sysctl_fib_sync_mem_min = external dso_local global i32, align 4
@sysctl_fib_sync_mem_max = external dso_local global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipv4_net_table = internal global { [104 x %struct.ctl_table], [928 x i8] } { [104 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.16, ptr getelementptr (i8, ptr @init_net, i64 1080), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.17, ptr getelementptr (i8, ptr @init_net, i64 1081), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.18, ptr getelementptr (i8, ptr @init_net, i64 1082), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr getelementptr (i8, ptr @init_net, i64 1083), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.20, ptr getelementptr (i8, ptr @init_net, i64 1084), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.21, ptr getelementptr (i8, ptr @init_net, i64 1088), i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr getelementptr (i8, ptr @init_net, i64 1092), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr getelementptr (i8, ptr @init_net, i64 1488), i32 8, i16 420, ptr null, ptr @ipv4_ping_group_range, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr getelementptr (i8, ptr @init_net, i64 1206), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.25, ptr getelementptr (i8, ptr @init_net, i64 1196), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr getelementptr (i8, ptr @init_net, i64 1197), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr getelementptr (i8, ptr @init_net, i64 1204), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr getelementptr (i8, ptr @init_net, i64 1205), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr getelementptr (i8, ptr @init_net, i64 1208), i32 1, i16 420, ptr null, ptr @proc_udp_early_demux, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.30, ptr getelementptr (i8, ptr @init_net, i64 1207), i32 1, i16 420, ptr null, ptr @proc_tcp_early_demux, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.31, ptr getelementptr (i8, ptr @init_net, i64 1209), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.32, ptr getelementptr (i8, ptr @init_net, i64 1198), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr @ip_ttl_min, ptr @ip_ttl_max }, %struct.ctl_table { ptr @.str.33, ptr getelementptr (i8, ptr @init_net, i64 1184), i32 8, i16 420, ptr null, ptr @ipv4_local_port_range, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr getelementptr (i8, ptr @init_net, i64 1500), i32 65536, i16 420, ptr null, ptr @proc_do_large_bitmap, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.35, ptr getelementptr (i8, ptr @init_net, i64 1199), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.36, ptr getelementptr (i8, ptr @init_net, i64 1200), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.37, ptr getelementptr (i8, ptr @init_net, i64 1201), i32 1, i16 420, ptr null, ptr @ipv4_fwd_update_priority, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.38, ptr getelementptr (i8, ptr @init_net, i64 1202), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.39, ptr getelementptr (i8, ptr @init_net, i64 1203), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.40, ptr getelementptr (i8, ptr @init_net, i64 1210), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.41, ptr getelementptr (i8, ptr @init_net, i64 1211), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.42, ptr getelementptr (i8, ptr @init_net, i64 1212), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.43, ptr getelementptr (i8, ptr @init_net, i64 1213), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.44, ptr getelementptr (i8, ptr @init_net, i64 1220), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.45, ptr getelementptr (i8, ptr @init_net, i64 1224), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @tcp_min_snd_mss_min, ptr @tcp_min_snd_mss_max }, %struct.ctl_table { ptr @.str.46, ptr getelementptr (i8, ptr @init_net, i64 1216), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @tcp_min_snd_mss_min, ptr @tcp_min_snd_mss_max }, %struct.ctl_table { ptr @.str.47, ptr getelementptr (i8, ptr @init_net, i64 1228), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.48, ptr getelementptr (i8, ptr @init_net, i64 1232), i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr null, ptr @u32_max_div_HZ }, %struct.ctl_table { ptr @.str.49, ptr getelementptr (i8, ptr @init_net, i64 1394), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.50, ptr getelementptr (i8, ptr @init_net, i64 1396), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.51, ptr getelementptr (i8, ptr @init_net, i64 1400), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.52, ptr getelementptr (i8, ptr @init_net, i64 1404), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.53, ptr getelementptr (i8, ptr @init_net, i64 1364), i32 16, i16 420, ptr null, ptr @proc_tcp_congestion_control, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.54, ptr null, i32 2048, i16 292, ptr null, ptr @proc_tcp_available_congestion_control, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.55, ptr null, i32 2048, i16 420, ptr null, ptr @proc_allowed_congestion_control, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.56, ptr getelementptr (i8, ptr @init_net, i64 1236), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.57, ptr getelementptr (i8, ptr @init_net, i64 1244), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.58, ptr getelementptr (i8, ptr @init_net, i64 1240), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.59, ptr getelementptr (i8, ptr @init_net, i64 1245), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr @tcp_syn_retries_min, ptr @tcp_syn_retries_max }, %struct.ctl_table { ptr @.str.60, ptr getelementptr (i8, ptr @init_net, i64 1246), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.61, ptr getelementptr (i8, ptr @init_net, i64 1247), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.62, ptr getelementptr (i8, ptr @init_net, i64 1248), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.63, ptr getelementptr (i8, ptr @init_net, i64 1252), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.64, ptr getelementptr (i8, ptr @init_net, i64 1256), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr @tcp_retr1_max }, %struct.ctl_table { ptr @.str.65, ptr getelementptr (i8, ptr @init_net, i64 1257), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.66, ptr getelementptr (i8, ptr @init_net, i64 1258), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.67, ptr getelementptr (i8, ptr @init_net, i64 1260), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.68, ptr getelementptr (i8, ptr @init_net, i64 1264), i32 4, i16 420, ptr null, ptr @proc_douintvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.69, ptr getelementptr (i8, ptr @init_net, i64 1259), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table { ptr @.str.70, ptr getelementptr (i8, ptr @init_net, i64 900), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.71, ptr getelementptr (i8, ptr @init_net, i64 1356), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.72, ptr getelementptr (i8, ptr @init_net, i64 1360), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.73, ptr getelementptr (i8, ptr @init_net, i64 1360), i32 74, i16 384, ptr null, ptr @proc_tcp_fastopen_key, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.74, ptr getelementptr (i8, ptr @init_net, i64 1372), i32 4, i16 420, ptr null, ptr @proc_tfo_blackhole_detect_timeout, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.75, ptr getelementptr (i8, ptr @init_net, i64 1524), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.76, ptr getelementptr (i8, ptr @init_net, i64 1525), i32 1, i16 420, ptr null, ptr @proc_fib_multipath_hash_policy, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @three }, %struct.ctl_table { ptr @.str.77, ptr getelementptr (i8, ptr @init_net, i64 1520), i32 4, i16 420, ptr null, ptr @proc_fib_multipath_hash_fields, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @fib_multipath_hash_fields_all_mask }, %struct.ctl_table { ptr @.str.78, ptr getelementptr (i8, ptr @init_net, i64 1504), i32 4, i16 420, ptr null, ptr @ipv4_privileged_ports, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.79, ptr getelementptr (i8, ptr @init_net, i64 1393), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.80, ptr getelementptr (i8, ptr @init_net, i64 1268), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.81, ptr getelementptr (i8, ptr @init_net, i64 1269), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.82, ptr getelementptr (i8, ptr @init_net, i64 1270), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.83, ptr getelementptr (i8, ptr @init_net, i64 1271), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @four }, %struct.ctl_table { ptr @.str.84, ptr getelementptr (i8, ptr @init_net, i64 1272), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.85, ptr getelementptr (i8, ptr @init_net, i64 1273), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.86, ptr getelementptr (i8, ptr @init_net, i64 1274), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.87, ptr getelementptr (i8, ptr @init_net, i64 1275), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.88, ptr getelementptr (i8, ptr @init_net, i64 1276), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.89, ptr getelementptr (i8, ptr @init_net, i64 1277), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.90, ptr getelementptr (i8, ptr @init_net, i64 1278), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.91, ptr getelementptr (i8, ptr @init_net, i64 1279), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.92, ptr getelementptr (i8, ptr @init_net, i64 1280), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.93, ptr getelementptr (i8, ptr @init_net, i64 1288), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.94, ptr getelementptr (i8, ptr @init_net, i64 1289), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.95, ptr getelementptr (i8, ptr @init_net, i64 1284), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @tcp_adv_win_scale_min, ptr @tcp_adv_win_scale_max }, %struct.ctl_table { ptr @.str.96, ptr getelementptr (i8, ptr @init_net, i64 1290), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.97, ptr getelementptr (i8, ptr @init_net, i64 1291), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.98, ptr getelementptr (i8, ptr @init_net, i64 1292), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.99, ptr getelementptr (i8, ptr @init_net, i64 1293), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.100, ptr getelementptr (i8, ptr @init_net, i64 1294), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.101, ptr getelementptr (i8, ptr @init_net, i64 1295), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.102, ptr getelementptr (i8, ptr @init_net, i64 1296), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.103, ptr getelementptr (i8, ptr @init_net, i64 1300), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.104, ptr getelementptr (i8, ptr @init_net, i64 1308), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.105, ptr getelementptr (i8, ptr @init_net, i64 1304), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @one_day_secs }, %struct.ctl_table { ptr @.str.106, ptr getelementptr (i8, ptr @init_net, i64 1309), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.107, ptr getelementptr (i8, ptr @init_net, i64 1312), i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.108, ptr getelementptr (i8, ptr @init_net, i64 1316), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @thousand }, %struct.ctl_table { ptr @.str.109, ptr getelementptr (i8, ptr @init_net, i64 1320), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @thousand }, %struct.ctl_table { ptr @.str.110, ptr getelementptr (i8, ptr @init_net, i64 1324), i32 12, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.111, ptr getelementptr (i8, ptr @init_net, i64 1336), i32 12, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.112, ptr getelementptr (i8, ptr @init_net, i64 1348), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.113, ptr getelementptr (i8, ptr @init_net, i64 1352), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.114, ptr getelementptr (i8, ptr @init_net, i64 1311), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.115, ptr getelementptr (i8, ptr @init_net, i64 1310), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.116, ptr getelementptr (i8, ptr @init_net, i64 1388), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.117, ptr getelementptr (i8, ptr @init_net, i64 1384), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.118, ptr getelementptr (i8, ptr @init_net, i64 1392), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table zeroinitializer], [928 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"icmp_echo_ignore_all\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"icmp_echo_enable_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"icmp_echo_ignore_broadcasts\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"icmp_ignore_bogus_error_responses\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"icmp_errors_use_inbound_ifaddr\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"icmp_ratelimit\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"icmp_ratemask\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ping_group_range\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raw_l3mdev_accept\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tcp_ecn\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_ecn_fallback\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip_dynaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip_early_demux\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udp_early_demux\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_early_demux\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nexthop_compat_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip_default_ttl\00", [17 x i8] zeroinitializer }, align 32
@ip_ttl_min = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@ip_ttl_max = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_local_port_range\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ip_local_reserved_ports\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_no_pmtu_disc\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_forward_use_pmtu\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ip_forward_update_priority\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip_nonlocal_bind\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_autobind_reuse\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fwmark_reflect\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_fwmark_accept\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_l3mdev_accept\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_mtu_probing\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_base_mss\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_min_snd_mss\00", [16 x i8] zeroinitializer }, align 32
@tcp_min_snd_mss_min = internal global { i32, [28 x i8] } { i32 48, [28 x i8] zeroinitializer }, align 32
@tcp_min_snd_mss_max = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_mtu_probe_floor\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_probe_threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_probe_interval\00", [45 x i8] zeroinitializer }, align 32
@u32_max_div_HZ = internal global { i32, [28 x i8] } { i32 42949672, [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"igmp_link_local_mcast_reports\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igmp_max_memberships\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"igmp_max_msf\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"igmp_qrv\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcp_congestion_control\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tcp_available_congestion_control\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tcp_allowed_congestion_control\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_keepalive_time\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcp_keepalive_probes\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_keepalive_intvl\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_syn_retries\00", [16 x i8] zeroinitializer }, align 32
@tcp_syn_retries_min = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@tcp_syn_retries_max = internal global { i32, [28 x i8] } { i32 127, [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_synack_retries\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcp_syncookies\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_migrate_req\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcp_reordering\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_retries1\00", [19 x i8] zeroinitializer }, align 32
@tcp_retr1_max = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_retries2\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_orphan_retries\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_fin_timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_notsent_lowat\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_tw_reuse\00", [19 x i8] zeroinitializer }, align 32
@two = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_max_tw_buckets\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_max_syn_backlog\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_fastopen\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_fastopen_key\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tcp_fastopen_blackhole_timeout_sec\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fib_multipath_use_neigh\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fib_multipath_hash_policy\00", [38 x i8] zeroinitializer }, align 32
@three = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fib_multipath_hash_fields\00", [38 x i8] zeroinitializer }, align 32
@fib_multipath_hash_fields_all_mask = internal global { i32, [28 x i8] } { i32 4095, [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ip_unprivileged_port_start\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udp_l3mdev_accept\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcp_sack\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_window_scaling\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcp_timestamps\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_early_retrans\00", [46 x i8] zeroinitializer }, align 32
@four = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_recovery\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcp_thin_linear_timeouts\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcp_slow_start_after_idle\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcp_retrans_collapse\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcp_stdurg\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tcp_rfc1337\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcp_abort_on_overflow\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcp_fack\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_max_reordering\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcp_dsack\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tcp_app_win\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_adv_win_scale\00", [46 x i8] zeroinitializer }, align 32
@tcp_adv_win_scale_min = internal global { i32, [28 x i8] } { i32 -31, [28 x i8] zeroinitializer }, align 32
@tcp_adv_win_scale_max = internal global { i32, [28 x i8] } { i32 31, [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcp_frto\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_no_metrics_save\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tcp_no_ssthresh_metrics_save\00", [35 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_moderate_rcvbuf\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_tso_win_divisor\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tcp_workaround_signed_windows\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcp_limit_output_bytes\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tcp_challenge_ack_limit\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_min_tso_segs\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_min_rtt_wlen\00", [47 x i8] zeroinitializer }, align 32
@one_day_secs = internal global { i32, [28 x i8] } { i32 86400, [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_autocorking\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcp_invalid_ratelimit\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_pacing_ss_ratio\00", [44 x i8] zeroinitializer }, align 32
@thousand = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_pacing_ca_ratio\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcp_wmem\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcp_rmem\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcp_comp_sack_delay_ns\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcp_comp_sack_slack_ns\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_comp_sack_nr\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_reflect_tos\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"udp_rmem_min\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"udp_wmem_min\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fib_notify_on_flag_change\00", [38 x i8] zeroinitializer }, align 32
@ip_ping_group_range_min = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@ip_ping_group_range_max = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2147483647, i32 2147483647], [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@inet_protos = external dso_local global [256 x ptr], align 4
@proc_configure_early_demux.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/ipv4/sysctl_net_ipv4.c\00", [37 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@inet6_protos = external dso_local global [256 x ptr], align 4
@proc_configure_early_demux.__warned.121 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.124 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ip_local_port_range_min = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 1], [24 x i8] zeroinitializer }, align 32
@ip_local_port_range_max = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 65535, i32 65535], [24 x i8] zeroinitializer }, align 32
@set_local_port_range._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.125, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.set_local_port_range = private unnamed_addr constant [21 x i8] c"set_local_port_range\00", align 1
@set_local_port_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @__func__.set_local_port_range, ptr @.str.119, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013ip_local_port_range: prefer different parity for start/end values.\0A\00", [58 x i8] zeroinitializer }, align 32
@set_local_port_range._entry_ptr = internal global ptr @set_local_port_range._entry, section ".printk_index", align 4
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%08x-%08x-%08x-%08x\00", [44 x i8] zeroinitializer }, align 32
@proc_tcp_fastopen_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.128 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%x-%x-%x-%x\00", [20 x i8] zeroinitializer }, align 32
@sscanf_key.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.130, ptr @.str.131, ptr @.str.119, ptr @.str.132, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sysctl_net_ipv4\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sscanf_key\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"proc TFO key set 0x%x-%x-%x-%x <- 0x%s: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@ip_privileged_port_min = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ip_privileged_port_max = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1456, i32 39 }
@___asan_gen_.136 = private unnamed_addr constant [11 x i8] c"ipv4_table\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 477, i32 25 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"ipv4_sysctl_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1447, i32 48 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 479, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 486, i32 15 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 493, i32 15 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 500, i32 15 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 507, i32 15 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 514, i32 15 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 522, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 529, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 536, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 543, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 551, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 557, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 565, i32 15 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 573, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 580, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"ipv4_net_table\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 591, i32 25 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 593, i32 15 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 600, i32 15 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 609, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 616, i32 15 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 623, i32 15 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 630, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 637, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 644, i32 15 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 652, i32 15 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 662, i32 15 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 669, i32 15 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 676, i32 15 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 683, i32 15 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 690, i32 21 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 697, i32 21 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 704, i32 21 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 713, i32 15 }
@___asan_gen_.241 = private unnamed_addr constant [11 x i8] c"ip_ttl_min\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 36, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"ip_ttl_max\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 37, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 722, i32 15 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 729, i32 15 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 736, i32 15 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 743, i32 15 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 750, i32 15 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 759, i32 15 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 766, i32 15 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 775, i32 15 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 782, i32 15 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 790, i32 15 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 800, i32 15 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 807, i32 15 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 814, i32 15 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c"tcp_min_snd_mss_min\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 32, i32 12 }
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c"tcp_min_snd_mss_max\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 33, i32 12 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 823, i32 15 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 832, i32 15 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 839, i32 15 }
@___asan_gen_.301 = private unnamed_addr constant [15 x i8] c"u32_max_div_HZ\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 42, i32 12 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 847, i32 15 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 854, i32 15 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 861, i32 15 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 869, i32 15 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 878, i32 15 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 885, i32 15 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 891, i32 15 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 897, i32 15 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 904, i32 15 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 911, i32 15 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 918, i32 15 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c"tcp_syn_retries_min\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 38, i32 12 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c"tcp_syn_retries_max\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 39, i32 12 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 927, i32 15 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 935, i32 15 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 943, i32 15 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 952, i32 15 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 959, i32 15 }
@___asan_gen_.358 = private unnamed_addr constant [14 x i8] c"tcp_retr1_max\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 27, i32 12 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 967, i32 15 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 974, i32 15 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 981, i32 15 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 988, i32 15 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 995, i32 15 }
@___asan_gen_.376 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 23, i32 12 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1004, i32 15 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1011, i32 15 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1018, i32 15 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1025, i32 15 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1037, i32 15 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1046, i32 15 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1055, i32 15 }
@___asan_gen_.400 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 24, i32 12 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1064, i32 15 }
@___asan_gen_.406 = private unnamed_addr constant [35 x i8] c"fib_multipath_hash_fields_all_mask\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 44, i32 12 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1074, i32 15 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1082, i32 15 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1092, i32 15 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1099, i32 15 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1106, i32 15 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1113, i32 15 }
@___asan_gen_.427 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 25, i32 12 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1122, i32 15 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1129, i32 21 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1136, i32 15 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1143, i32 15 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1150, i32 15 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1157, i32 15 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1164, i32 15 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1171, i32 15 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1178, i32 15 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1185, i32 15 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1192, i32 15 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1199, i32 15 }
@___asan_gen_.466 = private unnamed_addr constant [22 x i8] c"tcp_adv_win_scale_min\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 30, i32 12 }
@___asan_gen_.469 = private unnamed_addr constant [22 x i8] c"tcp_adv_win_scale_max\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 31, i32 12 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1208, i32 15 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1215, i32 15 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1222, i32 15 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1231, i32 15 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1238, i32 15 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1245, i32 15 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1252, i32 15 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1259, i32 15 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1266, i32 15 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1274, i32 15 }
@___asan_gen_.502 = private unnamed_addr constant [13 x i8] c"one_day_secs\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 43, i32 12 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1283, i32 15 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1292, i32 15 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1299, i32 15 }
@___asan_gen_.514 = private unnamed_addr constant [9 x i8] c"thousand\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 26, i32 12 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1308, i32 15 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1317, i32 15 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1325, i32 15 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1333, i32 15 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1340, i32 15 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1347, i32 15 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1355, i32 21 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1364, i32 15 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1372, i32 15 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1380, i32 15 }
@___asan_gen_.547 = private unnamed_addr constant [24 x i8] c"ip_ping_group_range_min\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 40, i32 12 }
@___asan_gen_.550 = private unnamed_addr constant [24 x i8] c"ip_ping_group_range_max\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 41, i32 12 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 366, i32 11 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 695, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.566, i32 723, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [24 x i8] c"ip_local_port_range_min\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 28, i32 12 }
@___asan_gen_.571 = private unnamed_addr constant [24 x i8] c"ip_local_port_range_max\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 29, i32 12 }
@___asan_gen_.574 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 58, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 317, i32 5 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 327, i32 54 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 273, i32 18 }
@___asan_gen_.601 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 280, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [23 x i8] c"ip_privileged_port_min\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 34, i32 12 }
@___asan_gen_.607 = private unnamed_addr constant [23 x i8] c"ip_privileged_port_max\00", align 1
@___asan_gen_.608 = private constant [30 x i8] c"../net/ipv4/sysctl_net_ipv4.c\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 35, i32 12 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @__initcall__kmod_sysctl_net_ipv4__599_1468_sysctl_ipv4_init6, ptr @set_local_port_range._entry, ptr @set_local_port_range._entry_ptr, ptr @.str, ptr @ipv4_table, ptr @ipv4_sysctl_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ipv4_net_table, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ip_ttl_min, ptr @ip_ttl_max, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @tcp_min_snd_mss_min, ptr @tcp_min_snd_mss_max, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @u32_max_div_HZ, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @tcp_syn_retries_min, ptr @tcp_syn_retries_max, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @tcp_retr1_max, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @two, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @three, ptr @.str.77, ptr @fib_multipath_hash_fields_all_mask, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @four, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @tcp_adv_win_scale_min, ptr @tcp_adv_win_scale_max, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @one_day_secs, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @thousand, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @ip_ping_group_range_min, ptr @ip_ping_group_range_max, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @ip_local_port_range_min, ptr @ip_local_port_range_max, ptr @set_local_port_range._rs, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @ip_privileged_port_min, ptr @ip_privileged_port_max], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv4_table to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv4_sysctl_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv4_net_table to i32), i32 3744, i32 4672, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_ttl_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_ttl_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_min_snd_mss_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_min_snd_mss_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_max_div_HZ to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_syn_retries_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_syn_retries_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_retr1_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @two to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @three to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_multipath_hash_fields_all_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @four to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_adv_win_scale_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_adv_win_scale_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @one_day_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thousand to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_ping_group_range_min to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_ping_group_range_max to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_local_port_range_min to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_local_port_range_max to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_local_port_range._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_local_port_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_privileged_port_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_privileged_port_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sysctl_ipv4_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str, ptr noundef nonnull @ipv4_table) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv4_sysctl_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tcp_available_ulp(ptr nocapture noundef readnone %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
kmalloc.exit:
  %tbl = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #12
  %0 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %1 = getelementptr inbounds { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr }, ptr %tbl, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2048, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 1051840, i32 noundef 2048) #15
  %data = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tcp_get_available_ulp(ptr noundef nonnull %call7.i, i32 noundef 2048) #12
  %call3 = call i32 @proc_dostring(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void @kfree(ptr noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %kmalloc.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_available_ulp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv4_sysctl_init_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @kmemdup(ptr noundef nonnull @ipv4_net_table, i32 noundef 3744, i32 noundef 3264) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.cleanup31_crit_edge, label %for.cond.preheader

if.then.cleanup31_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

for.cond.preheader:                               ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint ptr %net to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @init_net to i32)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.055 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %data = getelementptr %struct.ctl_table, ptr %call1, i32 %i.055, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %1, i32 %sub.ptr.sub
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %data, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mode = getelementptr %struct.ctl_table, ptr %call1, i32 %i.055, i32 3
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mode, align 4
  %5 = and i16 %4, -147
  store i16 %5, ptr %mode, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then5
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 103
  br i1 %exitcond.not, label %for.inc.if.end11_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %for.inc.if.end11_crit_edge, %entry.if.end11_crit_edge
  %table.0 = phi ptr [ @ipv4_net_table, %entry.if.end11_crit_edge ], [ %call1, %for.inc.if.end11_crit_edge ]
  %call12 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str, ptr noundef nonnull %table.0) #12
  %ipv4_hdr = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 3
  %6 = ptrtoint ptr %ipv4_hdr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %ipv4_hdr, align 16
  %tobool15.not = icmp eq ptr %call12, null
  br i1 %tobool15.not, label %if.end11.err_reg_crit_edge, label %if.end17

if.end11.err_reg_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reg

if.end17:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 8192) #15
  %sysctl_local_reserved_ports = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 125
  %8 = ptrtoint ptr %sysctl_local_reserved_ports to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %sysctl_local_reserved_ports, align 4
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %err_ports, label %if.end17.cleanup31_crit_edge

if.end17.cleanup31_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

err_ports:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %ipv4_hdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipv4_hdr, align 16
  tail call void @unregister_net_sysctl_table(ptr noundef %10) #12
  br label %err_reg

err_reg:                                          ; preds = %err_ports, %if.end11.err_reg_crit_edge
  br i1 %cmp.i.not, label %err_reg.cleanup31_crit_edge, label %if.then29

err_reg.cleanup31_crit_edge:                      ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

if.then29:                                        ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %table.0) #12
  br label %cleanup31

cleanup31:                                        ; preds = %if.then29, %err_reg.cleanup31_crit_edge, %if.end17.cleanup31_crit_edge, %if.then.cleanup31_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17.cleanup31_crit_edge ], [ -12, %err_reg.cleanup31_crit_edge ], [ -12, %if.then29 ], [ -12, %if.then.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipv4_sysctl_exit_net(ptr nocapture noundef readonly %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_local_reserved_ports = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 125
  %0 = ptrtoint ptr %sysctl_local_reserved_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl_local_reserved_ports, align 4
  tail call void @kfree(ptr noundef %1) #12
  %ipv4_hdr = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 3
  %2 = ptrtoint ptr %ipv4_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipv4_hdr, align 16
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_table_arg, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv4_ping_group_range(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  %urange = alloca [2 x i32], align 4
  %tmp3 = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !327) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns2 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %urange) #12
  %8 = ptrtoint ptr %urange to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %urange, align 4, !annotation !337
  %9 = getelementptr inbounds [2 x i32], ptr %urange, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !337
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp3) #12
  %11 = getelementptr inbounds i8, ptr %tmp3, i32 12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !337
  %13 = ptrtoint ptr %tmp3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %tmp3, align 4
  %data = getelementptr inbounds %struct.ctl_table, ptr %tmp3, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %urange, ptr %data, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tmp3, i32 0, i32 2
  %15 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %tmp3, i32 0, i32 3
  %mode4 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %16 = ptrtoint ptr %mode4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mode4, align 4
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %tmp3, i32 0, i32 4
  %19 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %tmp3, i32 0, i32 5
  %20 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %tmp3, i32 0, i32 6
  %21 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %tmp3, i32 0, i32 7
  %22 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ip_ping_group_range_min, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %tmp3, i32 0, i32 8
  %23 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ip_ping_group_range_max, ptr %extra2, align 4
  %data1.i = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %24 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data1.i, align 4
  %ping_group_range.i = getelementptr i8, ptr %25, i32 -80
  %dep_map.c48.i.i.i = getelementptr i8, ptr %25, i32 -76
  %arrayidx3.i = getelementptr %struct.kgid_t, ptr %25, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %read_seqbegin.exit.i.do.body.i_crit_edge, %entry
  %26 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !338
  %and.i.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  %27 = call ptr @llvm.returnaddress(i32 0) #12
  %28 = ptrtoint ptr %27 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %28) #12
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %28) #12
  call void @trace_hardirqs_on() #12
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = call ptr @llvm.returnaddress(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %30) #12
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %30) #12
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %31 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !339
  %and.i.i.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !340

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #12, !srcloc !341
  %32 = ptrtoint ptr %ping_group_range.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %ping_group_range.i, align 4
  %and18.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !342
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !343
  %34 = ptrtoint ptr %ping_group_range.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %ping_group_range.i, align 4
  %and.i.i = and i32 %35, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %33, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %35, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !344
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %25, align 4
  %38 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !345
  %40 = ptrtoint ptr %ping_group_range.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %ping_group_range.i, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %41, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %inet_get_ping_group_range_table.exit, label %read_seqbegin.exit.i.do.body.i_crit_edge

read_seqbegin.exit.i.do.body.i_crit_edge:         ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

inet_get_ping_group_range_table.exit:             ; preds = %read_seqbegin.exit.i
  %.fca.0.insert57 = insertvalue [1 x i32] poison, i32 %37, 0
  %call5 = call i32 @from_kgid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert57) #12
  %42 = ptrtoint ptr %urange to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call5, ptr %urange, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %39, 0
  %call7 = call i32 @from_kgid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert) #12
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call7, ptr %9, align 4
  %call9 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %tmp3, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %inet_get_ping_group_range_table.exit.cleanup_crit_edge

inet_get_ping_group_range_table.exit.cleanup_crit_edge: ; preds = %inet_get_ping_group_range_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %inet_get_ping_group_range_table.exit
  %44 = ptrtoint ptr %urange to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %urange, align 4
  %call12 = call i32 @make_kgid(ptr noundef %7, i32 noundef %45) #12
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %9, align 4
  %call16 = call i32 @make_kgid(ptr noundef %7, i32 noundef %47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12)
  %cmp.i = icmp ne i32 %call12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp.i74 = icmp ne i32 %call16, -1
  %or.cond83 = select i1 %cmp.i, i1 %cmp.i74, i1 false
  br i1 %or.cond83, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %9, align 4
  %50 = ptrtoint ptr %urange to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %urange, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp25 = icmp ult i32 %49, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %call12)
  %cmp.i75 = icmp ult i32 %call16, %call12
  %or.cond84 = select i1 %cmp25, i1 true, i1 %cmp.i75
  br i1 %or.cond84, label %if.then30, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef 1) #12
  %call35 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef 0) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end.if.end37_crit_edge
  %low.sroa.0.0 = phi i32 [ %call32, %if.then30 ], [ %call12, %if.end.if.end37_crit_edge ]
  %high.sroa.0.0 = phi i32 [ %call35, %if.then30 ], [ %call16, %if.end.if.end37_crit_edge ]
  %52 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data1.i, align 4
  %ping_group_range.i76 = getelementptr i8, ptr %53, i32 -80
  %lock.i.i = getelementptr i8, ptr %53, i32 -44
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #12
  %54 = ptrtoint ptr %ping_group_range.i76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ping_group_range.i76, align 4
  %inc.i.i.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i.i.i, ptr %ping_group_range.i76, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !346
  %dep_map.i.i.i.i = getelementptr i8, ptr %53, i32 -76
  %56 = call ptr @llvm.returnaddress(i32 0) #12
  %57 = ptrtoint ptr %56 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %57) #12
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %low.sroa.0.0, ptr %53, align 4
  %arrayidx4.i = getelementptr %struct.kgid_t, ptr %53, i32 1
  %59 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %high.sroa.0.0, ptr %arrayidx4.i, align 4
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %57) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !347
  %60 = ptrtoint ptr %ping_group_range.i76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ping_group_range.i76, align 4
  %inc.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i, ptr %ping_group_range.i76, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then.cleanup_crit_edge, %inet_get_ping_group_range_table.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end37 ], [ %call9, %inet_get_ping_group_range_table.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %urange) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_udp_early_demux(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dou8vec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 47) to i32))
  %0 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 47), align 8
  %conv = zext i8 %0 to i32
  tail call fastcc void @proc_configure_early_demux(i32 noundef %conv, i32 noundef 17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tcp_early_demux(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dou8vec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 46) to i32))
  %0 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 46), align 1
  %conv = zext i8 %0 to i32
  tail call fastcc void @proc_configure_early_demux(i32 noundef %conv, i32 noundef 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv4_local_port_range(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  %range = alloca [2 x i32], align 4
  %tmp1 = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range) #12
  %2 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %range, align 4, !annotation !337
  %3 = getelementptr inbounds [2 x i32], ptr %range, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !337
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp1) #12
  %5 = getelementptr inbounds i8, ptr %tmp1, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !337
  %7 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tmp1, align 4
  %data2 = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 1
  %8 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %range, ptr %data2, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 2
  %9 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 3
  %mode3 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %10 = ptrtoint ptr %mode3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode3, align 4
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 4
  %13 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 5
  %14 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 6
  %15 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 7
  %16 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ip_local_port_range_min, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 8
  %17 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ip_local_port_range_max, ptr %extra2, align 4
  call void @inet_get_local_port_range(ptr noundef %add.ptr, ptr noundef nonnull %range, ptr noundef %3) #12
  %call = call i32 @proc_dointvec_minmax(ptr noundef nonnull %tmp1, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %20 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp7 = icmp slt i32 %19, %21
  br i1 %cmp7, label %if.then.if.end11_crit_edge, label %lor.lhs.false

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

lor.lhs.false:                                    ; preds = %if.then
  %sysctl_ip_prot_sock = getelementptr i8, ptr %1, i32 320
  %22 = ptrtoint ptr %sysctl_ip_prot_sock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sysctl_ip_prot_sock, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp9 = icmp slt i32 %21, %23
  br i1 %cmp9, label %lor.lhs.false.if.end11_crit_edge, label %if.else

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %xor.i = xor i32 %25, %21
  %and.i = and i32 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %ip_local_ports.i = getelementptr i8, ptr %1, i32 -80
  %lock.i.i = getelementptr i8, ptr %1, i32 -44
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #12
  %26 = ptrtoint ptr %ip_local_ports.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ip_local_ports.i, align 4
  %inc.i.i.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i.i.i, ptr %ip_local_ports.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !346
  %dep_map.i.i.i.i = getelementptr i8, ptr %1, i32 -76
  %28 = call ptr @llvm.returnaddress(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %29) #12
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else.set_local_port_range.exit_crit_edge

if.else.set_local_port_range.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_local_port_range.exit

land.lhs.true.i:                                  ; preds = %if.else
  %warned.i = getelementptr i8, ptr %1, i32 8
  %30 = ptrtoint ptr %warned.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %warned.i, align 8, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not.i = icmp eq i8 %31, 0
  br i1 %tobool5.not.i, label %if.then.i, label %land.lhs.true.i.set_local_port_range.exit_crit_edge

land.lhs.true.i.set_local_port_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_local_port_range.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %32 = ptrtoint ptr %warned.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %warned.i, align 8
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @set_local_port_range._rs, ptr noundef nonnull @__func__.set_local_port_range) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.then.i.set_local_port_range.exit_crit_edge, label %do.end.i

if.then.i.set_local_port_range.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_local_port_range.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #16
  br label %set_local_port_range.exit

set_local_port_range.exit:                        ; preds = %do.end.i, %if.then.i.set_local_port_range.exit_crit_edge, %land.lhs.true.i.set_local_port_range.exit_crit_edge, %if.else.set_local_port_range.exit_crit_edge
  %33 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %range, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %1, align 16
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  %arrayidx22.i = getelementptr i8, ptr %1, i32 4
  %38 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx22.i, align 4
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %29) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !347
  %39 = ptrtoint ptr %ip_local_ports.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ip_local_ports.i, align 4
  %inc.i.i.i.i = add i32 %40, 1
  store i32 %inc.i.i.i.i, ptr %ip_local_ports.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #12
  br label %if.end11

if.end11:                                         ; preds = %set_local_port_range.exit, %lor.lhs.false.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %ret.0 = phi i32 [ 0, %set_local_port_range.exit ], [ %call, %entry.if.end11_crit_edge ], [ -22, %lor.lhs.false.if.end11_crit_edge ], [ -22, %if.then.if.end11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_do_large_bitmap(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv4_fwd_update_priority(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @proc_dou8vec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %1, i32 -1201
  %call1 = tail call i32 @call_netevent_notifiers(i32 noundef 6, ptr noundef %add.ptr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tcp_congestion_control(ptr nocapture noundef readonly %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  %val = alloca [16 x i8], align 1
  %tbl = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1364
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %val) #12
  %2 = call ptr @memset(ptr %val, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #12
  %3 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %val, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %maxlen, align 4
  call void @tcp_get_default_congestion_control(ptr noundef %add.ptr, ptr noundef nonnull %val) #12
  %call = call i32 @proc_dostring(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call i32 @tcp_set_default_congestion_control(ptr noundef %add.ptr, ptr noundef nonnull %val) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %val) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tcp_available_congestion_control(ptr nocapture noundef readnone %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
kmalloc.exit:
  %tbl = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #12
  %0 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %1 = getelementptr inbounds { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr }, ptr %tbl, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2048, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 1051840, i32 noundef 2048) #15
  %data = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tcp_get_available_congestion_control(ptr noundef nonnull %call7.i, i32 noundef 2048) #12
  %call3 = call i32 @proc_dostring(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void @kfree(ptr noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %kmalloc.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_allowed_congestion_control(ptr nocapture noundef readnone %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
kmalloc.exit:
  %tbl = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #12
  %0 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %1 = getelementptr inbounds { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr }, ptr %tbl, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2048, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 1051840, i32 noundef 2048) #15
  %data = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  tail call void @tcp_get_allowed_congestion_control(ptr noundef nonnull %call7.i, i32 noundef %6) #12
  %call4 = call i32 @proc_dostring(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool5.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  %or.cond = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call8 = call i32 @tcp_set_allowed_congestion_control(ptr noundef %8) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then6 ], [ %call4, %if.end.if.end9_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void @kfree(ptr noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ -12, %kmalloc.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tcp_fastopen_key(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
kmalloc.exit:
  %user_key.i154 = alloca [4 x i32], align 4
  %user_key.i = alloca [4 x i32], align 4
  %tbl = alloca %struct.ctl_table, align 4
  %user_key = alloca [8 x i32], align 4
  %key = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1360
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #12
  %2 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %3 = getelementptr inbounds { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr, ptr }, ptr %tbl, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 74, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %user_key) #12
  %5 = call ptr @memset(ptr %user_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #12
  %6 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 7
  %13 = call ptr @memset(ptr %key, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 74) #15
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %15 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %data1, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  %call3 = call i32 @tcp_fastopen_get_cipher(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull %key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = call ptr @memset(ptr %key, i32 0, i32 16)
  br label %for.body.preheader

if.end6:                                          ; preds = %if.end
  %mul = shl i32 %call3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp171 = icmp sgt i32 %mul, 0
  br i1 %cmp171, label %if.end6.for.body.preheader_crit_edge, label %if.end6.for.cond9.preheader_crit_edge

if.end6.for.cond9.preheader_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader

if.end6.for.body.preheader_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end6.for.body.preheader_crit_edge, %if.end6.thread
  %mul182 = phi i32 [ 4, %if.end6.thread ], [ %mul, %if.end6.for.body.preheader_crit_edge ]
  %n_keys.0181 = phi i32 [ 1, %if.end6.thread ], [ %call3, %if.end6.for.body.preheader_crit_edge ]
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body.for.cond9.preheader_crit_edge, %if.end6.for.cond9.preheader_crit_edge
  %n_keys.0180 = phi i32 [ %call3, %if.end6.for.cond9.preheader_crit_edge ], [ %n_keys.0181, %for.body.for.cond9.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_keys.0180)
  %cmp10173 = icmp sgt i32 %n_keys.0180, 0
  br i1 %cmp10173, label %for.cond9.preheader.for.body11_crit_edge, label %for.cond9.preheader.for.end83_crit_edge

for.cond9.preheader.for.end83_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end83

for.cond9.preheader.for.body11_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0172 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx7 = getelementptr [8 x i32], ptr %key, i32 0, i32 %i.0172
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx8 = getelementptr [8 x i32], ptr %user_key, i32 0, i32 %i.0172
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, %mul182
  br i1 %exitcond.not, label %for.body.for.cond9.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.cond9.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader

for.body11:                                       ; preds = %for.inc81.for.body11_crit_edge, %for.cond9.preheader.for.body11_crit_edge
  %off.0175 = phi i32 [ %off.1, %for.inc81.for.body11_crit_edge ], [ 0, %for.cond9.preheader.for.body11_crit_edge ]
  %i.1174 = phi i32 [ %add71, %for.inc81.for.body11_crit_edge ], [ 0, %for.cond9.preheader.for.body11_crit_edge ]
  %21 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data1, align 4
  %add.ptr13 = getelementptr i8, ptr %22, i32 %off.0175
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %sub = sub i32 %24, %off.0175
  %mul15 = shl i32 %i.1174, 2
  %arrayidx16 = getelementptr [8 x i32], ptr %user_key, i32 0, i32 %mul15
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx16, align 4
  %add = or i32 %mul15, 1
  %arrayidx18 = getelementptr [8 x i32], ptr %user_key, i32 0, i32 %add
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx18, align 4
  %add20 = or i32 %mul15, 2
  %arrayidx21 = getelementptr [8 x i32], ptr %user_key, i32 0, i32 %add20
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx21, align 4
  %add23 = or i32 %mul15, 3
  %arrayidx24 = getelementptr [8 x i32], ptr %user_key, i32 0, i32 %add23
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx24, align 4
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr13, i32 noundef %sub, ptr noundef nonnull @.str.127, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32)
  %add26 = add i32 %call25, %off.0175
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %3, align 4
  %sub28 = add i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %sub28)
  %cmp29.not = icmp slt i32 %add26, %sub28
  br i1 %cmp29.not, label %if.end70.critedge, label %land.rhs

land.rhs:                                         ; preds = %for.body11
  %.b152 = load i1, ptr @proc_tcp_fastopen_key.__already_done, align 1
  br i1 %.b152, label %land.rhs.for.end83_crit_edge, label %if.then37, !prof !349

land.rhs.for.end83_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end83

if.then37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @proc_tcp_fastopen_key.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.119, i32 noundef 323, i32 noundef 9, ptr noundef null) #12
  br label %for.end83

if.end70.critedge:                                ; preds = %for.body11
  %add71 = add nuw nsw i32 %i.1174, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add71, i32 %n_keys.0180)
  %cmp72 = icmp slt i32 %add71, %n_keys.0180
  br i1 %cmp72, label %if.then73, label %if.end70.critedge.for.inc81_crit_edge

if.end70.critedge.for.inc81_crit_edge:            ; preds = %if.end70.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc81

if.then73:                                        ; preds = %if.end70.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data1, align 4
  %add.ptr75 = getelementptr i8, ptr %36, i32 %add26
  %sub77 = sub i32 %34, %add26
  %call78 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr75, i32 noundef %sub77, ptr noundef nonnull @.str.128)
  %add79 = add i32 %call78, %add26
  br label %for.inc81

for.inc81:                                        ; preds = %if.then73, %if.end70.critedge.for.inc81_crit_edge
  %off.1 = phi i32 [ %add79, %if.then73 ], [ %add26, %if.end70.critedge.for.inc81_crit_edge ]
  %exitcond176.not = icmp eq i32 %add71, %n_keys.0180
  br i1 %exitcond176.not, label %for.inc81.for.end83_crit_edge, label %for.inc81.for.body11_crit_edge

for.inc81.for.body11_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

for.inc81.for.end83_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end83

for.end83:                                        ; preds = %for.inc81.for.end83_crit_edge, %if.then37, %land.rhs.for.end83_crit_edge, %for.cond9.preheader.for.end83_crit_edge
  %call84 = call i32 @proc_dostring(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool85.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp86 = icmp eq i32 %call84, 0
  %or.cond = select i1 %tobool85.not, i1 %cmp86, i1 false
  br i1 %or.cond, label %if.then87, label %for.end83.bad_key_crit_edge

for.end83.bad_key_crit_edge:                      ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_key

if.then87:                                        ; preds = %for.end83
  %37 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data1, align 4
  %call89 = call ptr @strchr(ptr noundef %38, i32 noundef 44)
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.then87.if.end92_crit_edge, label %if.then91

if.then87.if.end92_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %call89 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %call89, align 1
  %incdec.ptr = getelementptr i8, ptr %call89, i32 1
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.then87.if.end92_crit_edge
  %backup_data.0 = phi ptr [ %incdec.ptr, %if.then91 ], [ null, %if.then87.if.end92_crit_edge ]
  %40 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %user_key.i) #12
  %42 = getelementptr inbounds [4 x i32], ptr %user_key.i, i32 0, i32 1
  %43 = getelementptr inbounds [4 x i32], ptr %user_key.i, i32 0, i32 2
  %44 = getelementptr inbounds [4 x i32], ptr %user_key.i, i32 0, i32 3
  %45 = call ptr @memset(ptr %user_key.i, i32 255, i32 16)
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %41, ptr noundef nonnull @.str.129, ptr noundef nonnull %user_key.i, ptr noundef %42, ptr noundef %43, ptr noundef %44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %for.body.preheader.i, label %if.end92.do.body.i_crit_edge

if.end92.do.body.i_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.body.preheader.i:                             ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %user_key.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %user_key.i, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #12
  %49 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %key, align 4
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %42, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #12
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %6, align 4
  %54 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %43, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #12
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %7, align 4
  %58 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %44, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #12
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %8, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %for.body.preheader.i, %if.end92.do.body.i_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end92.do.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sscanf_key.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_tcp_fastopen_key, %if.then11.i)) #12
          to label %sscanf_key.exit [label %if.then11.i], !srcloc !350

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %user_key.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %user_key.i, align 4
  %64 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %42, align 4
  %66 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %43, align 4
  %68 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %44, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sscanf_key.__UNIQUE_ID_ddebug594, ptr noundef nonnull @.str.132, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, ptr noundef %41, i32 noundef %ret.0.i) #12
  br label %sscanf_key.exit

sscanf_key.exit:                                  ; preds = %if.then11.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_key.i) #12
  br i1 %cmp.not.i, label %if.end98, label %sscanf_key.exit.bad_key_crit_edge

sscanf_key.exit.bad_key_crit_edge:                ; preds = %sscanf_key.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_key

if.end98:                                         ; preds = %sscanf_key.exit
  %tobool99.not = icmp eq ptr %backup_data.0, null
  br i1 %tobool99.not, label %if.end98.if.end107_crit_edge, label %if.then100

if.end98.if.end107_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then100:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %user_key.i154) #12
  %70 = getelementptr inbounds [4 x i32], ptr %user_key.i154, i32 0, i32 1
  %71 = getelementptr inbounds [4 x i32], ptr %user_key.i154, i32 0, i32 2
  %72 = getelementptr inbounds [4 x i32], ptr %user_key.i154, i32 0, i32 3
  %73 = call ptr @memset(ptr %user_key.i154, i32 255, i32 16)
  %call.i155 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %backup_data.0, ptr noundef nonnull @.str.129, ptr noundef nonnull %user_key.i154, ptr noundef %70, ptr noundef %71, ptr noundef %72) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i155)
  %cmp.not.i156 = icmp eq i32 %call.i155, 4
  br i1 %cmp.not.i156, label %for.body.preheader.i160, label %if.then100.do.body.i162_crit_edge

if.then100.do.body.i162_crit_edge:                ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i162

for.body.preheader.i160:                          ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %user_key.i154 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %user_key.i154, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #12
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %9, align 4
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %70, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #12
  %81 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %10, align 4
  %82 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %71, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #12
  %85 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %11, align 4
  %86 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %72, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #12
  %89 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %12, align 4
  br label %do.body.i162

do.body.i162:                                     ; preds = %for.body.preheader.i160, %if.then100.do.body.i162_crit_edge
  %ret.0.i161 = phi i32 [ -22, %if.then100.do.body.i162_crit_edge ], [ 0, %for.body.preheader.i160 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sscanf_key.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@proc_tcp_fastopen_key, %if.then11.i163)) #12
          to label %sscanf_key.exit164 [label %if.then11.i163], !srcloc !350

if.then11.i163:                                   ; preds = %do.body.i162
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %user_key.i154 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %user_key.i154, align 4
  %92 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %70, align 4
  %94 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %71, align 4
  %96 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %72, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sscanf_key.__UNIQUE_ID_ddebug594, ptr noundef nonnull @.str.132, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, ptr noundef nonnull %backup_data.0, i32 noundef %ret.0.i161) #12
  br label %sscanf_key.exit164

sscanf_key.exit164:                               ; preds = %if.then11.i163, %do.body.i162
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_key.i154) #12
  br i1 %cmp.not.i156, label %sscanf_key.exit164.if.end107_crit_edge, label %sscanf_key.exit164.bad_key_crit_edge

sscanf_key.exit164.bad_key_crit_edge:             ; preds = %sscanf_key.exit164
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_key

sscanf_key.exit164.if.end107_crit_edge:           ; preds = %sscanf_key.exit164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.end107:                                        ; preds = %sscanf_key.exit164.if.end107_crit_edge, %if.end98.if.end107_crit_edge
  %cond = phi ptr [ %9, %sscanf_key.exit164.if.end107_crit_edge ], [ null, %if.end98.if.end107_crit_edge ]
  %call112 = call i32 @tcp_fastopen_reset_cipher(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull %key, ptr noundef %cond) #12
  br label %bad_key

bad_key:                                          ; preds = %if.end107, %sscanf_key.exit164.bad_key_crit_edge, %sscanf_key.exit.bad_key_crit_edge, %for.end83.bad_key_crit_edge
  %ret.0 = phi i32 [ 0, %if.end107 ], [ %call84, %for.end83.bad_key_crit_edge ], [ -22, %sscanf_key.exit.bad_key_crit_edge ], [ -22, %sscanf_key.exit164.bad_key_crit_edge ]
  %98 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data1, align 4
  call void @kfree(ptr noundef %99) #12
  br label %cleanup

cleanup:                                          ; preds = %bad_key, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %bad_key ], [ -12, %kmalloc.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %user_key) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_tfo_blackhole_detect_timeout(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tfo_active_disable_times = getelementptr i8, ptr %1, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tfo_active_disable_times, i32 noundef 4) #12
  %2 = ptrtoint ptr %tfo_active_disable_times to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %tfo_active_disable_times, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_fib_multipath_hash_policy(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @proc_dou8vec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %1, i32 -1525
  %call1 = tail call i32 @call_netevent_notifiers(i32 noundef 4, ptr noundef %add.ptr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_fib_multipath_hash_fields(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @proc_douintvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %1, i32 -1520
  %call1 = tail call i32 @call_netevent_notifiers(i32 noundef 4, ptr noundef %add.ptr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv4_privileged_ports(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  %pports = alloca i32, align 4
  %range = alloca [2 x i32], align 4
  %tmp1 = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pports) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range) #12
  %2 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %range, align 4, !annotation !337
  %3 = getelementptr inbounds [2 x i32], ptr %range, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !337
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp1) #12
  %5 = getelementptr inbounds i8, ptr %tmp1, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !337
  %7 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tmp1, align 4
  %data2 = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 1
  %8 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pports, ptr %data2, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 2
  %9 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 3
  %mode3 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %10 = ptrtoint ptr %mode3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode3, align 4
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 4
  %13 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 5
  %14 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 6
  %15 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 7
  %16 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ip_privileged_port_min, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %tmp1, i32 0, i32 8
  %17 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ip_privileged_port_max, ptr %extra2, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 32
  %20 = ptrtoint ptr %pports to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pports, align 4
  %call = call i32 @proc_dointvec_minmax(ptr noundef nonnull %tmp1, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -1504
  call void @inet_get_local_port_range(ptr noundef %add.ptr, ptr noundef nonnull %range, ptr noundef %3) #12
  %21 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %range, align 4
  %23 = ptrtoint ptr %pports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp6 = icmp slt i32 %22, %24
  br i1 %cmp6, label %if.then.if.end10_crit_edge, label %if.else

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %1, align 32
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ %call, %entry.if.end10_crit_edge ], [ -22, %if.then.if.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pports) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_configure_early_demux(i32 noundef %enabled, i32 noundef %protocol) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !327) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.122, i32 noundef 696, ptr noundef nonnull @.str.123) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %protocol
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @proc_configure_early_demux.__warned, align 1
  br i1 %.b50, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @proc_configure_early_demux.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.119, i32 noundef 366, ptr noundef nonnull @.str.120) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end12_crit_edge, label %if.then10

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool11.not = icmp eq i32 %enabled, 0
  br i1 %tobool11.not, label %if.then10.cond.end_crit_edge, label %cond.true

if.then10.cond.end_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %early_demux_handler = getelementptr inbounds %struct.net_protocol, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %early_demux_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %early_demux_handler, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then10.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ null, %if.then10.cond.end_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond, ptr %5, align 4
  br label %if.end12

if.end12:                                         ; preds = %cond.end, %do.end7.if.end12_crit_edge
  %arrayidx17 = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %protocol
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx17, align 4
  %call19 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end12.do.end29_crit_edge

if.end12.do.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

land.lhs.true21:                                  ; preds = %if.end12
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b4849 = load i1, ptr @proc_configure_early_demux.__warned.121, align 1
  br i1 %.b4849, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @proc_configure_early_demux.__warned.121, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.119, i32 noundef 372, ptr noundef nonnull @.str.120) #12
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true21.do.end29_crit_edge, %if.end12.do.end29_crit_edge
  %tobool31.not = icmp eq ptr %10, null
  br i1 %tobool31.not, label %do.end29.if.end40_crit_edge, label %if.then32

do.end29.if.end40_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then32:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool33.not = icmp eq i32 %enabled, 0
  br i1 %tobool33.not, label %if.then32.cond.end37_crit_edge, label %cond.true34

if.then32.cond.end37_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end37

cond.true34:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %early_demux_handler35 = getelementptr inbounds %struct.inet6_protocol, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %early_demux_handler35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %early_demux_handler35, align 4
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true34, %if.then32.cond.end37_crit_edge
  %cond38 = phi ptr [ %12, %cond.true34 ], [ null, %if.then32.cond.end37_crit_edge ]
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond38, ptr %10, align 4
  br label %if.end40

if.end40:                                         ; preds = %cond.end37, %do.end29.if.end40_crit_edge
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i51, label %if.end40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

if.end40.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %if.end40
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.122, i32 noundef 724, ptr noundef nonnull @.str.124) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %if.end40.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !352
  %14 = tail call i32 @llvm.read_register.i32(metadata !327) #12
  %and.i.i.i.i.i58 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_get_local_port_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netevent_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_default_congestion_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_default_congestion_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_available_congestion_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_allowed_congestion_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_allowed_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fastopen_get_cipher(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fastopen_reset_cipher(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !258, !260, !262, !263, !264, !266, !267, !269, !271, !273, !275, !277, !278, !279, !280, !281, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !307, !308, !309, !311, !313, !315, !317, !319, !321, !323, !325}
!llvm.named.register.sp = !{!327}
!llvm.module.flags = !{!328, !329, !330, !331, !332, !333, !334, !335}
!llvm.ident = !{!336}

!0 = !{ptr @__initcall__kmod_sysctl_net_ipv4__599_1468_sysctl_ipv4_init6, !1, !"__initcall__kmod_sysctl_net_ipv4__599_1468_sysctl_ipv4_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1468, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1456, i32 39}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 479, i32 15}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 486, i32 15}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 493, i32 15}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 500, i32 15}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 507, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 514, i32 15}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 522, i32 15}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 529, i32 15}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 536, i32 15}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 543, i32 15}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 551, i32 15}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 557, i32 15}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 565, i32 15}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 573, i32 15}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 580, i32 15}
!34 = !{ptr @ipv4_table, !35, !"ipv4_table", i1 false, i1 false}
!35 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 477, i32 25}
!36 = !{ptr @sysctl_tcp_low_latency, !37, !"sysctl_tcp_low_latency", i1 false, i1 false}
!37 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 48, i32 12}
!38 = !{ptr @ipv4_sysctl_ops, !39, !"ipv4_sysctl_ops", i1 false, i1 false}
!39 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1447, i32 48}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 593, i32 15}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 600, i32 15}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 609, i32 15}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 616, i32 15}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 623, i32 15}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 630, i32 15}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 637, i32 15}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 644, i32 15}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 652, i32 15}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 662, i32 15}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 669, i32 15}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 676, i32 15}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 683, i32 15}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 690, i32 21}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 697, i32 21}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 704, i32 21}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 713, i32 15}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 722, i32 15}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 729, i32 15}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 736, i32 15}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 743, i32 15}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 750, i32 15}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 759, i32 15}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 766, i32 15}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 775, i32 15}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 782, i32 15}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 790, i32 15}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 800, i32 15}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 807, i32 15}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 814, i32 15}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 823, i32 15}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 832, i32 15}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 839, i32 15}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 847, i32 15}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 854, i32 15}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 861, i32 15}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 869, i32 15}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 878, i32 15}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 885, i32 15}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 891, i32 15}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 897, i32 15}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 904, i32 15}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 911, i32 15}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 918, i32 15}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 927, i32 15}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 935, i32 15}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 943, i32 15}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 952, i32 15}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 959, i32 15}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 967, i32 15}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 974, i32 15}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 981, i32 15}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 988, i32 15}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 995, i32 15}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1004, i32 15}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1011, i32 15}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1018, i32 15}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1025, i32 15}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1037, i32 15}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1046, i32 15}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1055, i32 15}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1064, i32 15}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1074, i32 15}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1082, i32 15}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1092, i32 15}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1099, i32 15}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1106, i32 15}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1113, i32 15}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1122, i32 15}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1129, i32 21}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1136, i32 15}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1143, i32 15}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1150, i32 15}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1157, i32 15}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1164, i32 15}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1171, i32 15}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1178, i32 15}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1185, i32 15}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1192, i32 15}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1199, i32 15}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1208, i32 15}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1215, i32 15}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1222, i32 15}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1231, i32 15}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1238, i32 15}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1245, i32 15}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1252, i32 15}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1259, i32 15}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1266, i32 15}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1274, i32 15}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1283, i32 15}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1292, i32 15}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1299, i32 15}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1308, i32 15}
!228 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1317, i32 15}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1325, i32 15}
!232 = !{ptr @.str.112, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1333, i32 15}
!234 = !{ptr @.str.113, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1340, i32 15}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1347, i32 15}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1355, i32 21}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1364, i32 15}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1372, i32 15}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 1380, i32 15}
!246 = !{ptr @ipv4_net_table, !247, !"ipv4_net_table", i1 false, i1 false}
!247 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 591, i32 25}
!248 = distinct !{null, !249, !"__warned", i1 false, i1 false}
!249 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 165, i32 35}
!250 = !{ptr @ip_ping_group_range_min, !251, !"ip_ping_group_range_min", i1 false, i1 false}
!251 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 40, i32 12}
!252 = !{ptr @ip_ping_group_range_max, !253, !"ip_ping_group_range_max", i1 false, i1 false}
!253 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 41, i32 12}
!254 = distinct !{null, !255, !"__warned", i1 false, i1 false}
!255 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 366, i32 11}
!256 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!258 = distinct !{null, !259, !"__warned", i1 false, i1 false}
!259 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 372, i32 12}
!260 = distinct !{null, !261, !"__warned", i1 false, i1 false}
!261 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!262 = !{ptr @.str.122, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.123, !261, !"<string literal>", i1 false, i1 false}
!264 = distinct !{null, !265, !"__warned", i1 false, i1 false}
!265 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!266 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @ip_ttl_min, !268, !"ip_ttl_min", i1 false, i1 false}
!268 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 36, i32 12}
!269 = !{ptr @ip_ttl_max, !270, !"ip_ttl_max", i1 false, i1 false}
!270 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 37, i32 12}
!271 = !{ptr @ip_local_port_range_min, !272, !"ip_local_port_range_min", i1 false, i1 false}
!272 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 28, i32 12}
!273 = !{ptr @ip_local_port_range_max, !274, !"ip_local_port_range_max", i1 false, i1 false}
!274 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 29, i32 12}
!275 = !{ptr @.str.125, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 58, i32 3}
!277 = !{ptr @set_local_port_range._rs, !276, !"_rs", i1 false, i1 false}
!278 = !{ptr @__func__.set_local_port_range, !276, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.126, !276, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @set_local_port_range._entry, !276, !"_entry", i1 false, i1 false}
!281 = !{ptr @set_local_port_range._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @tcp_min_snd_mss_min, !283, !"tcp_min_snd_mss_min", i1 false, i1 false}
!283 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 32, i32 12}
!284 = !{ptr @tcp_min_snd_mss_max, !285, !"tcp_min_snd_mss_max", i1 false, i1 false}
!285 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 33, i32 12}
!286 = !{ptr @u32_max_div_HZ, !287, !"u32_max_div_HZ", i1 false, i1 false}
!287 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 42, i32 12}
!288 = !{ptr @tcp_syn_retries_min, !289, !"tcp_syn_retries_min", i1 false, i1 false}
!289 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 38, i32 12}
!290 = !{ptr @tcp_syn_retries_max, !291, !"tcp_syn_retries_max", i1 false, i1 false}
!291 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 39, i32 12}
!292 = !{ptr @tcp_retr1_max, !293, !"tcp_retr1_max", i1 false, i1 false}
!293 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 27, i32 12}
!294 = !{ptr @two, !295, !"two", i1 false, i1 false}
!295 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 23, i32 12}
!296 = !{ptr @.str.127, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 317, i32 5}
!298 = distinct !{null, !299, !"__already_done", i1 false, i1 false}
!299 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 323, i32 7}
!300 = !{ptr @.str.128, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 327, i32 54}
!302 = !{ptr @.str.129, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 273, i32 18}
!304 = !{ptr @.str.130, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 280, i32 2}
!306 = !{ptr @.str.131, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.132, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @sscanf_key.__UNIQUE_ID_ddebug594, !305, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!309 = !{ptr @three, !310, !"three", i1 false, i1 false}
!310 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 24, i32 12}
!311 = !{ptr @fib_multipath_hash_fields_all_mask, !312, !"fib_multipath_hash_fields_all_mask", i1 false, i1 false}
!312 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 44, i32 12}
!313 = !{ptr @ip_privileged_port_min, !314, !"ip_privileged_port_min", i1 false, i1 false}
!314 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 34, i32 12}
!315 = !{ptr @ip_privileged_port_max, !316, !"ip_privileged_port_max", i1 false, i1 false}
!316 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 35, i32 12}
!317 = !{ptr @four, !318, !"four", i1 false, i1 false}
!318 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 25, i32 12}
!319 = !{ptr @tcp_adv_win_scale_min, !320, !"tcp_adv_win_scale_min", i1 false, i1 false}
!320 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 30, i32 12}
!321 = !{ptr @tcp_adv_win_scale_max, !322, !"tcp_adv_win_scale_max", i1 false, i1 false}
!322 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 31, i32 12}
!323 = !{ptr @one_day_secs, !324, !"one_day_secs", i1 false, i1 false}
!324 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 43, i32 12}
!325 = !{ptr @thousand, !326, !"thousand", i1 false, i1 false}
!326 = !{!"../net/ipv4/sysctl_net_ipv4.c", i32 26, i32 12}
!327 = !{!"sp"}
!328 = !{i32 1, !"wchar_size", i32 2}
!329 = !{i32 1, !"min_enum_size", i32 4}
!330 = !{i32 8, !"branch-target-enforcement", i32 0}
!331 = !{i32 8, !"sign-return-address", i32 0}
!332 = !{i32 8, !"sign-return-address-all", i32 0}
!333 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!334 = !{i32 7, !"uwtable", i32 1}
!335 = !{i32 7, !"frame-pointer", i32 2}
!336 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!337 = !{!"auto-init"}
!338 = !{i64 775060, i64 775121}
!339 = !{i64 777792}
!340 = !{!"branch_weights", i32 1, i32 2000}
!341 = !{i64 778077}
!342 = !{i64 2149821275}
!343 = !{i64 2149821117}
!344 = !{i64 2149821445}
!345 = !{i64 2149806522}
!346 = !{i64 2149806847}
!347 = !{i64 2149807172}
!348 = !{i8 0, i8 2}
!349 = !{!"branch_weights", i32 2000, i32 1}
!350 = !{i64 2148776790, i64 2148776795, i64 2148776808, i64 2148776852, i64 2148776886, i64 2148776907}
!351 = !{i64 2149179841}
!352 = !{i64 2149180107}
