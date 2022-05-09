; ModuleID = '/llk/IR_all_yes/fs/lockd/mon.c_pt.bc'
source_filename = "../fs/lockd/mon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.nsm_res = type { i32, i32 }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.nsm_handle = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.__kernel_sockaddr_storage, i32, i8, %struct.nsm_private, [51 x i8] }
%struct.nsm_private = type { [16 x i8] }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.nsm_args = type { ptr, i32, i32, i32, ptr, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.102, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.102 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.83, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.83 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.71, i32, %struct.spinlock }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr, ptr }
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
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.132, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.132 = type { %struct.work_struct }
%struct.lockd_net = type { i32, i32, i32, %struct.delayed_work, %struct.lock_manager, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.64 }
%union.anon.64 = type { [4 x i32] }
%struct.nlm_reboot = type { ptr, i32, i32, %struct.nsm_private }

@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@nsm_monitor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lockd: nsm_monitor(%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nsm_monitor\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/lockd/mon.c\00", [17 x i8] zeroinitializer }, align 32
@nsm_monitor._entry_ptr = internal global ptr @nsm_monitor._entry, section ".printk_index", align 4
@nsm_use_hostnames = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@nsm_monitor._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@nsm_monitor._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015lockd: cannot monitor %s\0A\00", [36 x i8] zeroinitializer }, align 32
@nsm_monitor._entry_ptr.6 = internal global ptr @nsm_monitor._entry.4, section ".printk_index", align 4
@nsm_local_state = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@nsm_monitor._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: NSM state changed to %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nsm_monitor._entry_ptr.9 = internal global ptr @nsm_monitor._entry.7, section ".printk_index", align 4
@nsm_unmonitor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lockd: nsm_unmonitor(%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nsm_unmonitor\00", [18 x i8] zeroinitializer }, align 32
@nsm_unmonitor._entry_ptr = internal global ptr @nsm_unmonitor._entry, section ".printk_index", align 4
@nsm_unmonitor._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015lockd: cannot unmonitor %s\0A\00", [34 x i8] zeroinitializer }, align 32
@nsm_unmonitor._entry_ptr.14 = internal global ptr @nsm_unmonitor._entry.12, section ".printk_index", align 4
@lockd_net_id = external dso_local local_unnamed_addr global i32, align 4
@__func__.nsm_get_handle = private unnamed_addr constant [15 x i8] c"nsm_get_handle\00", align 1
@nsm_get_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.nsm_get_handle, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Invalid hostname \22%.*s\22 in NFS lock request\0A\00", [49 x i8] zeroinitializer }, align 32
@nsm_get_handle._entry_ptr = internal global ptr @nsm_get_handle._entry, section ".printk_index", align 4
@nsm_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nsm_get_handle._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.nsm_get_handle, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"lockd: found nsm_handle for %s (%s), cnt %d\0A\00", [51 x i8] zeroinitializer }, align 32
@nsm_get_handle._entry_ptr.18 = internal global ptr @nsm_get_handle._entry.16, section ".printk_index", align 4
@nsm_get_handle._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.nsm_get_handle, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"lockd: created nsm_handle for %s (%s)\0A\00", [57 x i8] zeroinitializer }, align 32
@nsm_get_handle._entry_ptr.21 = internal global ptr @nsm_get_handle._entry.19, section ".printk_index", align 4
@nsm_reboot_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lockd: never saw rebooted peer '%.*s' before\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nsm_reboot_lookup\00", [46 x i8] zeroinitializer }, align 32
@nsm_reboot_lookup._entry_ptr = internal global ptr @nsm_reboot_lookup._entry, section ".printk_index", align 4
@nsm_reboot_lookup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lockd: host %s (%s) rebooted, cnt %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nsm_reboot_lookup._entry_ptr.26 = internal global ptr @nsm_reboot_lookup._entry.24, section ".printk_index", align 4
@nsm_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lockd: destroyed nsm_handle for %s (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nsm_release\00", [20 x i8] zeroinitializer }, align 32
@nsm_release._entry_ptr = internal global ptr @nsm_release._entry, section ".printk_index", align 4
@nsm_mon_unmon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"lockd: failed to create NSM upcall transport, status=%ld, net=%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nsm_mon_unmon\00", [18 x i8] zeroinitializer }, align 32
@nsm_mon_unmon._entry_ptr = internal global ptr @nsm_mon_unmon._entry, section ".printk_index", align 4
@nsm_mon_unmon._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"lockd:\09NSM upcall RPC failed, status=%d, forcing rebind\0A\00", [39 x i8] zeroinitializer }, align 32
@nsm_mon_unmon._entry_ptr.33 = internal global ptr @nsm_mon_unmon._entry.31, section ".printk_index", align 4
@nsm_mon_unmon._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lockd: NSM upcall RPC failed, status=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@nsm_mon_unmon._entry_ptr.36 = internal global ptr @nsm_mon_unmon._entry.34, section ".printk_index", align 4
@__const.nsm_create.sin = private unnamed_addr constant %struct.sockaddr_in { i16 2, i16 0, %struct.in_addr { i32 2130706433 }, [8 x i8] zeroinitializer }, align 4
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rpc.statd\00", [22 x i8] zeroinitializer }, align 32
@nsm_program = internal constant { %struct.rpc_program, [40 x i8] } { %struct.rpc_program { ptr @.str.38, i32 100024, i32 2, ptr @nsm_version, ptr @nsm_stats, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"statd\00", [26 x i8] zeroinitializer }, align 32
@nsm_version = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr null, ptr @nsm_version1], [24 x i8] zeroinitializer }, align 32
@nsm_stats = internal global { %struct.rpc_stat, [56 x i8] } zeroinitializer, align 32
@nsm_version1 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 1, i32 4, ptr @nsm_procedures, ptr @nsm_version1_counts }, [16 x i8] zeroinitializer }, align 32
@nsm_procedures = internal constant { [4 x %struct.rpc_procinfo], [32 x i8] } { [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 2, ptr @nsm_xdr_enc_mon, ptr @nsm_xdr_dec_stat_res, i32 521, i32 2, i32 0, i32 2, ptr @.str.39 }, %struct.rpc_procinfo { i32 3, ptr @nsm_xdr_enc_unmon, ptr @nsm_xdr_dec_stat, i32 517, i32 1, i32 0, i32 3, ptr @.str.40 }], [32 x i8] zeroinitializer }, align 32
@nsm_version1_counts = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MONITOR\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UNMONITOR\00", [22 x i8] zeroinitializer }, align 32
@nsm_xdr_dec_stat_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lockd: %s status %d state %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nsm_xdr_dec_stat_res\00", [43 x i8] zeroinitializer }, align 32
@nsm_xdr_dec_stat_res._entry_ptr = internal global ptr @nsm_xdr_dec_stat_res._entry, section ".printk_index", align 4
@nsm_xdr_dec_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lockd: %s state %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nsm_xdr_dec_stat\00", [47 x i8] zeroinitializer }, align 32
@nsm_xdr_dec_stat._entry_ptr = internal global ptr @nsm_xdr_dec_stat._entry, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nsm_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported address family\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 154, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 169, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 176, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 197, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 203, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 324, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [9 x i8] c"nsm_lock\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 344, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 354, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 387, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 395, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 411, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 113, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 122, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 128, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 79, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"nsm_program\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 572, i32 33 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 573, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"nsm_version\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 566, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"nsm_stats\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 570, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant [13 x i8] c"nsm_version1\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 559, i32 33 }
@___asan_gen_.181 = private unnamed_addr constant [15 x i8] c"nsm_procedures\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 537, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"nsm_version1_counts\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 558, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 545, i32 14 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 554, i32 14 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 507, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 524, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 45, i32 7 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 695, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 723, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 55, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private constant [18 x i8] c"../fs/lockd/mon.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 292, i32 5 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @nsm_get_handle._entry, ptr @nsm_get_handle._entry.16, ptr @nsm_get_handle._entry.19, ptr @nsm_get_handle._entry_ptr, ptr @nsm_get_handle._entry_ptr.18, ptr @nsm_get_handle._entry_ptr.21, ptr @nsm_mon_unmon._entry, ptr @nsm_mon_unmon._entry.31, ptr @nsm_mon_unmon._entry.34, ptr @nsm_mon_unmon._entry_ptr, ptr @nsm_mon_unmon._entry_ptr.33, ptr @nsm_mon_unmon._entry_ptr.36, ptr @nsm_monitor._entry, ptr @nsm_monitor._entry.4, ptr @nsm_monitor._entry.7, ptr @nsm_monitor._entry_ptr, ptr @nsm_monitor._entry_ptr.6, ptr @nsm_monitor._entry_ptr.9, ptr @nsm_reboot_lookup._entry, ptr @nsm_reboot_lookup._entry.24, ptr @nsm_reboot_lookup._entry_ptr, ptr @nsm_reboot_lookup._entry_ptr.26, ptr @nsm_release._entry, ptr @nsm_release._entry_ptr, ptr @nsm_unmonitor._entry, ptr @nsm_unmonitor._entry.12, ptr @nsm_unmonitor._entry_ptr, ptr @nsm_unmonitor._entry_ptr.14, ptr @nsm_xdr_dec_stat._entry, ptr @nsm_xdr_dec_stat._entry_ptr, ptr @nsm_xdr_dec_stat_res._entry, ptr @nsm_xdr_dec_stat_res._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nsm_monitor._rs, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @nsm_lock, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @nsm_program, ptr @.str.38, ptr @nsm_version, ptr @nsm_stats, ptr @nsm_version1, ptr @nsm_procedures, ptr @nsm_version1_counts, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_monitor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_monitor._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_monitor._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_monitor._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_unmonitor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_unmonitor._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_get_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_get_handle._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_get_handle._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_reboot_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_reboot_lookup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_mon_unmon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_mon_unmon._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_mon_unmon._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_program to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_version to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_stats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_version1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_procedures to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_version1_counts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_xdr_dec_stat_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsm_xdr_dec_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsm_monitor(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.nsm_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %h_nsmhandle = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %h_nsmhandle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %h_nsmhandle, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #10
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %res, align 4, !annotation !128
  %3 = getelementptr inbounds %struct.nsm_res, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %5 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !129

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sm_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %sm_monitored = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %sm_monitored to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %sm_monitored, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %9 = load i8, ptr @nsm_use_hostnames, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name10 = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sm_name10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sm_name10, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %sm_addrbuf = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %11, %cond.true ], [ %sm_addrbuf, %cond.false ]
  %sm_mon_name = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %sm_mon_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cond, ptr %sm_mon_name, align 4
  %call11 = call fastcc i32 @nsm_mon_unmon(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %res, ptr noundef %host)
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end20, label %cond.end.if.then28_crit_edge, !prof !129

cond.end.if.then28_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end20:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp21 = icmp slt i32 %call11, 0
  br i1 %cmp21, label %if.end20.if.then28_crit_edge, label %if.end39, !prof !131

if.end20.if.then28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %if.end20.if.then28_crit_edge, %cond.end.if.then28_crit_edge
  %status.083 = phi i32 [ %call11, %if.end20.if.then28_crit_edge ], [ -5, %cond.end.if.then28_crit_edge ]
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @nsm_monitor._rs, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %do.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name36 = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %sm_name36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm_name36, align 4
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %16) #13
  br label %cleanup

if.end39:                                         ; preds = %if.end20
  %17 = ptrtoint ptr %sm_monitored to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load41 = load i8, ptr %sm_monitored, align 4
  %bf.set = or i8 %bf.load41, -128
  store i8 %bf.set, ptr %sm_monitored, align 4
  %18 = load i32, ptr @nsm_local_state, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp42.not = icmp eq i32 %18, %20
  br i1 %cmp42.not, label %if.end39.cleanup_crit_edge, label %if.then49, !prof !129

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49:                                        ; preds = %if.end39
  store i32 %20, ptr @nsm_local_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %21 = load i32, ptr @nlm_debug, align 4
  %and52 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then49.cleanup_crit_edge, label %do.end63, !prof !129

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end63:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.then49.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %do.end34, %if.then28.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end5.cleanup_crit_edge ], [ %status.083, %do.end34 ], [ %status.083, %if.then28.cleanup_crit_edge ], [ 0, %if.then49.cleanup_crit_edge ], [ 0, %do.end63 ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsm_mon_unmon(ptr noundef %nsm, i32 noundef %proc, ptr noundef %res, ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  %sin.i = alloca %struct.sockaddr_in, align 4
  %args.i = alloca %struct.rpc_create_args, align 4
  %args = alloca %struct.nsm_args, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %0 = getelementptr inbounds %struct.nsm_args, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nsm_args, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nsm_args, ptr %args, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nsm_args, ptr %args, i32 0, i32 4
  %4 = getelementptr inbounds %struct.nsm_args, ptr %args, i32 0, i32 5
  %sm_priv = getelementptr inbounds %struct.nsm_handle, ptr %nsm, i32 0, i32 7
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sm_priv, ptr %args, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100021, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %2, align 4
  %sm_mon_name = getelementptr inbounds %struct.nsm_handle, ptr %nsm, i32 0, i32 2
  %9 = ptrtoint ptr %sm_mon_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm_mon_name, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %3, align 4
  %nodename2 = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 27
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %nodename2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #10
  %13 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %14 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %15 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %msg, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %args, ptr %13, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %res, ptr %14, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %15, align 4
  %20 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 0, ptr %res, align 4
  %net = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 25
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i) #10
  %23 = call ptr @memcpy(ptr %sin.i, ptr @__const.nsm_create.sin, i32 16)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %24 = getelementptr inbounds i8, ptr %args.i, i32 64
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 -1, ptr %24, align 4, !annotation !128
  %26 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %args.i, align 4
  %protocol.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 1
  %27 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %protocol.i, align 4
  %address.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 2
  %28 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sin.i, ptr %address.i, align 4
  %addrsize.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 3
  %29 = ptrtoint ptr %addrsize.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %addrsize.i, align 4
  %saddress.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 4
  %30 = ptrtoint ptr %saddress.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %saddress.i, align 4
  %timeout.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 5
  %31 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %timeout.i, align 4
  %servername.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 6
  %32 = ptrtoint ptr %servername.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.37, ptr %servername.i, align 4
  %nodename2.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 7
  %33 = ptrtoint ptr %nodename2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %nodename2, ptr %nodename2.i, align 4
  %program.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 8
  %34 = ptrtoint ptr %program.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @nsm_program, ptr %program.i, align 4
  %prognumber.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 9
  %35 = ptrtoint ptr %prognumber.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %prognumber.i, align 4
  %version.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 10
  %36 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %version.i, align 4
  %authflavor.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 11
  %37 = ptrtoint ptr %authflavor.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %authflavor.i, align 4
  %nconnect.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 12
  %38 = ptrtoint ptr %nconnect.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %nconnect.i, align 4
  %flags.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 13
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %flags.i, align 4
  %client_name.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 14
  %40 = ptrtoint ptr %client_name.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %client_name.i, align 4
  %bc_xprt.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 15
  %41 = ptrtoint ptr %bc_xprt.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %bc_xprt.i, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !118) #10
  %and.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i, align 8
  %cred3.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 99
  %46 = ptrtoint ptr %cred3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cred3.i, align 16
  %48 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %24, align 4
  %max_connect.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 17
  %49 = ptrtoint ptr %max_connect.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %max_connect.i, align 4
  %call4.i = call ptr @rpc_create(ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #10
  %cmp.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end16

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %50 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.pre = ptrtoint ptr %call4.i to i32
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !129

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net, align 4
  %inum = getelementptr inbounds %struct.net, ptr %52, i32 0, i32 14, i32 2
  %53 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %inum, align 8
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %.pre, i32 noundef %54) #13
  br label %cleanup

if.end16:                                         ; preds = %entry
  %cl_procinfo = getelementptr inbounds %struct.rpc_clnt, ptr %call4.i, i32 0, i32 7
  %55 = ptrtoint ptr %cl_procinfo to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cl_procinfo, align 4
  %arrayidx = getelementptr %struct.rpc_procinfo, ptr %56, i32 %proc
  %57 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx, ptr %msg, align 4
  %call18 = call i32 @rpc_call_sync(ptr noundef %call4.i, ptr noundef nonnull %msg, i32 noundef 1024) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -111, i32 %call18)
  %cmp = icmp eq i32 %call18, -111
  br i1 %cmp, label %do.body20, label %if.end16.if.end39_crit_edge

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.body20:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %58 = load i32, ptr @nlm_debug, align 4
  %and21 = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end37_crit_edge, label %do.end32, !prof !129

do.body20.do.end37_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef -111) #13
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %do.body20.do.end37_crit_edge
  call void @rpc_force_rebind(ptr noundef %call4.i) #10
  %call38 = call i32 @rpc_call_sync(ptr noundef %call4.i, ptr noundef nonnull %msg, i32 noundef 1024) #10
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %if.end16.if.end39_crit_edge
  %status.0 = phi i32 [ %call38, %do.end37 ], [ %call18, %if.end16.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp40 = icmp slt i32 %status.0, 0
  br i1 %cmp40, label %do.body42, label %if.end39.if.end60_crit_edge

if.end39.if.end60_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.body42:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %59 = load i32, ptr @nlm_debug, align 4
  %and43 = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.if.end60_crit_edge, label %do.end54, !prof !129

do.body42.if.end60_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.end54:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %status.0) #13
  br label %if.end60

if.end60:                                         ; preds = %do.end54, %do.body42.if.end60_crit_edge, %if.end39.if.end60_crit_edge
  %status.1 = phi i32 [ %status.0, %do.end54 ], [ %status.0, %do.body42.if.end60_crit_edge ], [ 0, %if.end39.if.end60_crit_edge ]
  call void @rpc_shutdown_client(ptr noundef %call4.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %if.end60 ], [ %.pre, %do.end ], [ %.pre, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsm_unmonitor(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.nsm_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %h_nsmhandle = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %h_nsmhandle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %h_nsmhandle, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #10
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %res, align 4, !annotation !128
  %3 = getelementptr inbounds %struct.nsm_res, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !128
  %sm_count = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sm_count, i32 noundef 4) #10
  %5 = ptrtoint ptr %sm_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sm_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %entry
  %sm_monitored = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %sm_monitored to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %sm_monitored, align 4
  %8 = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %8)
  %9 = icmp eq i8 %8, -128
  br i1 %9, label %do.body, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %10 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.do.end13_crit_edge, label %do.end, !prof !129

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %sm_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sm_name, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %12) #13
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %call14 = call fastcc i32 @nsm_mon_unmon(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %res, ptr noundef %host)
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp1939 = icmp slt i32 %call14, 0
  %cmp19 = select i1 %cmp16.not, i1 true, i1 %cmp1939
  br i1 %cmp19, label %do.end23, label %if.else

do.end23:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name25 = getelementptr inbounds %struct.nsm_handle, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %sm_name25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm_name25, align 4
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %16) #13
  br label %if.end31

if.else:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %sm_monitored to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load28 = load i8, ptr %sm_monitored, align 4
  %bf.clear29 = and i8 %bf.load28, 127
  store i8 %bf.clear29, ptr %sm_monitored, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %do.end23, %land.lhs.true.if.end31_crit_edge, %entry.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nsm_get_handle(ptr noundef %net, ptr nocapture noundef readonly %sap, i32 noundef %salen, ptr noundef %hostname, i32 noundef %hostname_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockd_net_id to i32))
  %0 = load i32, ptr @lockd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %tobool.not = icmp eq ptr %hostname, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call ptr @memchr(ptr noundef nonnull %hostname, i32 noundef 47, i32 noundef %hostname_len) #14
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.nsm_get_handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %hostname_len, ptr noundef nonnull %hostname) #13
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %nsm_handles = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 5
  %sin6_addr1.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  %arrayidx6.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx11.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx17.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin6_scope_id5.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 4
  %sin_addr1.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  %add1.i = add i32 %hostname_len, 221
  br label %retry

retry:                                            ; preds = %nsm_create_handle.exit, %if.end6
  %new.0 = phi ptr [ null, %if.end6 ], [ %call9.i.i.i, %nsm_create_handle.exit ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @nsm_lock) #10
  %1 = load i8, ptr @nsm_use_hostnames, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool7.not = icmp eq i8 %1, 0
  %brmerge = or i1 %tobool.not, %tobool7.not
  %2 = ptrtoint ptr %nsm_handles to i32
  call void @__asan_load4_noabort(i32 %2)
  %nsm.012.i = load ptr, ptr %nsm_handles, align 4
  %cmp.not13.i = icmp eq ptr %nsm.012.i, %nsm_handles
  br i1 %brmerge, label %if.else, label %if.then10

if.then10:                                        ; preds = %retry
  br i1 %cmp.not13.i, label %if.then10.if.end32_crit_edge, label %if.then10.for.body.i_crit_edge

if.then10.for.body.i_crit_edge:                   ; preds = %if.then10
  br label %for.body.i

if.then10.if.end32_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then10.for.body.i_crit_edge
  %nsm.018.i = phi ptr [ %nsm.0.i, %for.inc.i.for.body.i_crit_edge ], [ %nsm.012.i, %if.then10.for.body.i_crit_edge ]
  %sm_name.i = getelementptr inbounds %struct.nsm_handle, ptr %nsm.018.i, i32 0, i32 3
  %3 = ptrtoint ptr %sm_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm_name.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %4) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %hostname_len)
  %cmp1.i = icmp eq i32 %call.i, %hostname_len
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bcmp.i = tail call i32 @bcmp(ptr %4, ptr %hostname, i32 %hostname_len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp4.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp4.i, label %land.lhs.true.i.if.end14_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %nsm.018.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %nsm.0.i = load ptr, ptr %nsm.018.i, align 4
  %cmp.not.i = icmp eq ptr %nsm.0.i, %nsm_handles
  br i1 %cmp.not.i, label %for.inc.i.if.end32_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end32_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else:                                          ; preds = %retry
  br i1 %cmp.not13.i, label %if.else.if.end32_crit_edge, label %if.else.for.body.i92_crit_edge

if.else.for.body.i92_crit_edge:                   ; preds = %if.else
  br label %for.body.i92

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.body.i92:                                     ; preds = %for.cond.backedge.i.for.body.i92_crit_edge, %if.else.for.body.i92_crit_edge
  %nsm.014.i = phi ptr [ %nsm.0.i93, %for.cond.backedge.i.for.body.i92_crit_edge ], [ %nsm.012.i, %if.else.for.body.i92_crit_edge ]
  %sm_addr.i.i = getelementptr inbounds %struct.nsm_handle, ptr %nsm.014.i, i32 0, i32 4
  %6 = ptrtoint ptr %sm_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sm_addr.i.i, align 2
  %8 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sap, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.i.i = icmp eq i16 %7, %9
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i92.for.cond.backedge.i_crit_edge

for.body.i92.for.cond.backedge.i_crit_edge:       ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.then.i.i:                                      ; preds = %for.body.i92
  %10 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.then.i.i.for.cond.backedge.i_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb6.i.i
  ]

if.then.i.i.for.cond.backedge.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

sw.bb.i.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i.i.i = getelementptr inbounds %struct.nsm_handle, ptr %nsm.014.i, i32 0, i32 4, i32 0, i32 1
  br label %return.sink.split.i.i

sw.bb6.i.i:                                       ; preds = %if.then.i.i
  %sin6_addr.i.i.i = getelementptr inbounds %struct.nsm_handle, ptr %nsm.014.i, i32 0, i32 4, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %sin6_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sin6_addr.i.i.i, align 4
  %13 = ptrtoint ptr %sin6_addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sin6_addr1.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %14, %12
  %arrayidx4.i.i.i.i = getelementptr %struct.nsm_handle, ptr %nsm.014.i, i32 0, i32 4, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %17 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.i.i.i.i, align 4
  %xor7.i.i.i.i = xor i32 %18, %16
  %or.i.i.i.i = or i32 %xor7.i.i.i.i, %xor.i.i.i.i
  %arrayidx9.i.i.i.i = getelementptr %struct.nsm_handle, ptr %nsm.014.i, i32 0, i32 4, i32 0, i32 1, i32 12
  %19 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %21 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11.i.i.i.i, align 4
  %xor12.i.i.i.i = xor i32 %22, %20
  %or13.i.i.i.i = or i32 %or.i.i.i.i, %xor12.i.i.i.i
  %arrayidx15.i.i.i.i = getelementptr %struct.nsm_handle, ptr %nsm.014.i, i32 0, i32 4, i32 0, i32 1, i32 16
  %23 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15.i.i.i.i, align 4
  %25 = ptrtoint ptr %arrayidx17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx17.i.i.i.i, align 4
  %xor18.i.i.i.i = xor i32 %26, %24
  %or19.i.i.i.i = or i32 %or13.i.i.i.i, %xor18.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or19.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.else.i.i.i, label %sw.bb6.i.i.for.cond.backedge.i_crit_edge

sw.bb6.i.i.for.cond.backedge.i_crit_edge:         ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.else.i.i.i:                                    ; preds = %sw.bb6.i.i
  %call.i.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i.i) #10
  %and.i.i.i = and i32 %call.i.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i.if.end14_crit_edge, label %if.then4.i.i.i

if.else.i.i.i.if.end14_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_scope_id.i.i.i = getelementptr inbounds %struct.nsm_handle, ptr %nsm.014.i, i32 0, i32 4, i32 0, i32 1, i32 20
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.then4.i.i.i, %sw.bb.i.i
  %sin6_scope_id5.i.sink.i.i = phi ptr [ %sin6_scope_id5.i.i.i, %if.then4.i.i.i ], [ %sin_addr1.i.i.i, %sw.bb.i.i ]
  %.sink.in.i.i = phi ptr [ %sin6_scope_id.i.i.i, %if.then4.i.i.i ], [ %sin_addr.i.i.i, %sw.bb.i.i ]
  %27 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4
  %28 = ptrtoint ptr %sin6_scope_id5.i.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sin6_scope_id5.i.sink.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i.i, i32 %29)
  %cmp.i13.i.i = icmp eq i32 %.sink.i.i, %29
  br i1 %cmp.i13.i.i, label %return.sink.split.i.i.if.end14_crit_edge, label %return.sink.split.i.i.for.cond.backedge.i_crit_edge

return.sink.split.i.i.for.cond.backedge.i_crit_edge: ; preds = %return.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

return.sink.split.i.i.if.end14_crit_edge:         ; preds = %return.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.cond.backedge.i:                              ; preds = %return.sink.split.i.i.for.cond.backedge.i_crit_edge, %sw.bb6.i.i.for.cond.backedge.i_crit_edge, %if.then.i.i.for.cond.backedge.i_crit_edge, %for.body.i92.for.cond.backedge.i_crit_edge
  %30 = ptrtoint ptr %nsm.014.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %nsm.0.i93 = load ptr, ptr %nsm.014.i, align 4
  %cmp.not.i94 = icmp eq ptr %nsm.0.i93, %nsm_handles
  br i1 %cmp.not.i94, label %for.cond.backedge.i.if.end32_crit_edge, label %for.cond.backedge.i.for.body.i92_crit_edge

for.cond.backedge.i.for.body.i92_crit_edge:       ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i92

for.cond.backedge.i.if.end32_crit_edge:           ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end14:                                         ; preds = %return.sink.split.i.i.if.end14_crit_edge, %if.else.i.i.i.if.end14_crit_edge, %land.lhs.true.i.if.end14_crit_edge
  %cached.0 = phi ptr [ %nsm.014.i, %if.else.i.i.i.if.end14_crit_edge ], [ %nsm.014.i, %return.sink.split.i.i.if.end14_crit_edge ], [ %nsm.018.i, %land.lhs.true.i.if.end14_crit_edge ]
  %cmp15.not = icmp eq ptr %cached.0, null
  br i1 %cmp15.not, label %if.end14.if.end32_crit_edge, label %if.then16

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then16:                                        ; preds = %if.end14
  %sm_count = getelementptr inbounds %struct.nsm_handle, ptr %cached.0, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sm_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sm_count, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sm_count, ptr %sm_count, i32 1, ptr elementtype(i32) %sm_count) #10, !srcloc !132
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then16.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i96, !prof !131

if.then16.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i96:                                  ; preds = %if.then16
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i96.refcount_inc.exit_crit_edge, label %if.else.i.i.i96.if.end15.sink.split.i.i.i_crit_edge, !prof !129

if.else.i.i.i96.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i96.refcount_inc.exit_crit_edge:      ; preds = %if.else.i.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i96.if.end15.sink.split.i.i.i_crit_edge, %if.then16.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then16.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i96.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sm_count, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i96.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nsm_lock) #10
  tail call void @kfree(ptr noundef %new.0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %33 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %refcount_inc.exit.cleanup_crit_edge, label %do.end24, !prof !129

refcount_inc.exit.cleanup_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end24:                                         ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name = getelementptr inbounds %struct.nsm_handle, ptr %cached.0, i32 0, i32 3
  %34 = ptrtoint ptr %sm_name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sm_name, align 4
  %sm_addrbuf = getelementptr inbounds %struct.nsm_handle, ptr %cached.0, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sm_count, i32 noundef 4) #10
  %36 = ptrtoint ptr %sm_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %sm_count, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %35, ptr noundef %sm_addrbuf, i32 noundef %37) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end14.if.end32_crit_edge, %for.cond.backedge.i.if.end32_crit_edge, %if.else.if.end32_crit_edge, %for.inc.i.if.end32_crit_edge, %if.then10.if.end32_crit_edge
  %cmp33.not = icmp eq ptr %new.0, null
  br i1 %cmp33.not, label %if.end57, label %if.then34

if.then34:                                        ; preds = %if.end32
  %38 = ptrtoint ptr %nsm_handles to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nsm_handles, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %new.0, ptr noundef %nsm_handles, ptr noundef %39) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.list_add.exit_crit_edge

if.then34.list_add.exit_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %new.0, ptr %prev1.i.i, align 4
  %41 = ptrtoint ptr %new.0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %new.0, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %new.0, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %nsm_handles, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %nsm_handles to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %new.0, ptr %nsm_handles, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then34.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nsm_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %44 = load i32, ptr @nlm_debug, align 4
  %and37 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %list_add.exit.cleanup_crit_edge, label %do.end48, !prof !129

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end48:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name50 = getelementptr inbounds %struct.nsm_handle, ptr %new.0, i32 0, i32 3
  %45 = ptrtoint ptr %sm_name50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sm_name50, align 16
  %sm_addrbuf51 = getelementptr inbounds %struct.nsm_handle, ptr %new.0, i32 0, i32 8
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %46, ptr noundef %sm_addrbuf51) #13
  br label %cleanup

if.end57:                                         ; preds = %if.end32
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nsm_lock) #10
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i, i32 noundef 3520) #16
  %cmp.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i, label %if.end57.cleanup_crit_edge, label %if.end.i, !prof !131

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end57
  %sm_count.i = getelementptr inbounds %struct.nsm_handle, ptr %call9.i.i.i, i32 0, i32 1
  %call.i.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sm_count.i, i32 noundef 4) #10
  %47 = ptrtoint ptr %sm_count.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %sm_count.i, align 8
  %add.ptr.i = getelementptr %struct.nsm_handle, ptr %call9.i.i.i, i32 1
  %sm_name.i99 = getelementptr inbounds %struct.nsm_handle, ptr %call9.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %sm_name.i99 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %sm_name.i99, align 16
  %sm_addr.i.i100 = getelementptr inbounds %struct.nsm_handle, ptr %call9.i.i.i, i32 0, i32 4
  %49 = call ptr @memcpy(ptr %sm_addr.i.i100, ptr %sap, i32 %salen)
  %sm_addrlen.i = getelementptr inbounds %struct.nsm_handle, ptr %call9.i.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %sm_addrlen.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %salen, ptr %sm_addrlen.i, align 4
  %sm_priv.i.i = getelementptr inbounds %struct.nsm_handle, ptr %call9.i.i.i, i32 0, i32 7
  %call.i.i.i101 = tail call i64 @ktime_get() #10
  %51 = ptrtoint ptr %sm_priv.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %call.i.i.i101, ptr %sm_priv.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.nsm_handle, ptr %call9.i.i.i, i32 0, i32 7, i32 0, i32 8
  %52 = ptrtoint ptr %call9.i.i.i to i32
  %conv.i.i = zext i32 %52 to i64
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %conv.i.i, ptr %add.ptr.i.i, align 1
  %sm_addrbuf.i = getelementptr inbounds %struct.nsm_handle, ptr %call9.i.i.i, i32 0, i32 8
  %call5.i = tail call i32 @rpc_ntop(ptr noundef %sm_addr.i.i100, ptr noundef %sm_addrbuf.i, i32 noundef 51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.nsm_create_handle.exit_crit_edge

if.end.i.nsm_create_handle.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nsm_create_handle.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = call ptr @memcpy(ptr %sm_addrbuf.i, ptr @.str.51, i32 27)
  br label %nsm_create_handle.exit

nsm_create_handle.exit:                           ; preds = %if.then7.i, %if.end.i.nsm_create_handle.exit_crit_edge
  %55 = ptrtoint ptr %sm_name.i99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sm_name.i99, align 16
  %57 = call ptr @memcpy(ptr %56, ptr %hostname, i32 %hostname_len)
  %58 = load ptr, ptr %sm_name.i99, align 16
  %arrayidx.i = getelementptr i8, ptr %58, i32 %hostname_len
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx.i, align 1
  br label %retry

cleanup:                                          ; preds = %if.end57.cleanup_crit_edge, %do.end48, %list_add.exit.cleanup_crit_edge, %do.end24, %refcount_inc.exit.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.then.cleanup_crit_edge ], [ %cached.0, %do.end24 ], [ %cached.0, %refcount_inc.exit.cleanup_crit_edge ], [ %new.0, %do.end48 ], [ %new.0, %list_add.exit.cleanup_crit_edge ], [ null, %if.end57.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 45, ptr noundef nonnull @.str.46) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.49) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  %8 = tail call i32 @llvm.read_register.i32(metadata !118) #10
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %7
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nsm_reboot_lookup(ptr noundef %net, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockd_net_id to i32))
  %0 = load i32, ptr @lockd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @_raw_spin_lock(ptr noundef nonnull @nsm_lock) #10
  %nsm_handles = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 5
  %priv = getelementptr inbounds %struct.nlm_reboot, ptr %info, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %nsm.0.in.i = phi ptr [ %nsm_handles, %entry ], [ %nsm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %nsm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %nsm.0.i = load ptr, ptr %nsm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %nsm.0.i, %nsm_handles
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %sm_priv.i = getelementptr inbounds %struct.nsm_handle, ptr %nsm.0.i, i32 0, i32 7
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sm_priv.i, ptr noundef dereferenceable(16) %priv, i32 16) #15
  %cmp3.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp3.i, label %nsm_lookup_priv.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

nsm_lookup_priv.exit:                             ; preds = %for.body.i
  %cmp = icmp eq ptr %nsm.0.i, null
  br i1 %cmp, label %nsm_lookup_priv.exit.if.then_crit_edge, label %if.end15, !prof !131

nsm_lookup_priv.exit.if.then_crit_edge:           ; preds = %nsm_lookup_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %nsm_lookup_priv.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nsm_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %2 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %do.end, !prof !129

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.nlm_reboot, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %4, ptr noundef %6) #13
  br label %cleanup

if.end15:                                         ; preds = %nsm_lookup_priv.exit
  %sm_count = getelementptr inbounds %struct.nsm_handle, ptr %nsm.0.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sm_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sm_count, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sm_count, ptr %sm_count, i32 1, ptr elementtype(i32) %sm_count) #10, !srcloc !132
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end15.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !131

if.end15.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end15
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !129

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end15.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end15.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sm_count, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nsm_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %9 = load i32, ptr @nlm_debug, align 4
  %and17 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %refcount_inc.exit.cleanup_crit_edge, label %do.end28, !prof !129

refcount_inc.exit.cleanup_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end28:                                         ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name = getelementptr inbounds %struct.nsm_handle, ptr %nsm.0.i, i32 0, i32 3
  %10 = ptrtoint ptr %sm_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sm_name, align 4
  %sm_addrbuf = getelementptr inbounds %struct.nsm_handle, ptr %nsm.0.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sm_count, i32 noundef 4) #10
  %12 = ptrtoint ptr %sm_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sm_count, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %11, ptr noundef %sm_addrbuf, i32 noundef %13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %refcount_inc.exit.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0.i47 = phi ptr [ %nsm.0.i, %refcount_inc.exit.cleanup_crit_edge ], [ %nsm.0.i, %do.end28 ], [ null, %if.then.cleanup_crit_edge ], [ null, %do.end ]
  ret ptr %retval.0.i47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsm_release(ptr noundef %nsm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_count = getelementptr inbounds %struct.nsm_handle, ptr %nsm, i32 0, i32 1
  %call = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %sm_count, ptr noundef nonnull @nsm_lock) #10
  br i1 %call, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nsm) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nsm, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %nsm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsm, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %6 = ptrtoint ptr %nsm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %nsm, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nsm, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nsm_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %8 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %list_del.exit.do.end6_crit_edge, label %do.end, !prof !129

list_del.exit.do.end6_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sm_name = getelementptr inbounds %struct.nsm_handle, ptr %nsm, i32 0, i32 3
  %9 = ptrtoint ptr %sm_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm_name, align 4
  %sm_addrbuf = getelementptr inbounds %struct.nsm_handle, ptr %nsm, i32 0, i32 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %10, ptr noundef %sm_addrbuf) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %list_del.exit.do.end6_crit_edge
  tail call void @kfree(ptr noundef %nsm) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end6, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_force_rebind(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsm_xdr_enc_mon(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mon_name.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 4
  %0 = ptrtoint ptr %mon_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mon_name.i.i, align 4
  %call.i.i.i = tail call i32 @strlen(ptr noundef %1) #15
  %add.i.i.i = add i32 %call.i.i.i, 4
  %call1.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i.i) #10
  %call2.i.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call1.i.i.i, ptr noundef %1, i32 noundef %call.i.i.i) #10
  %nodename.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 5
  %2 = ptrtoint ptr %nodename.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nodename.i.i, align 4
  %call.i.i3.i = tail call i32 @strlen(ptr noundef %3) #15
  %add.i.i4.i = add i32 %call.i.i3.i, 4
  %call1.i.i5.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i4.i) #10
  %call2.i.i6.i = tail call ptr @xdr_encode_opaque(ptr noundef %call1.i.i5.i, ptr noundef %3, i32 noundef %call.i.i3.i) #10
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #10
  %prog.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 1
  %4 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prog.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i.i, i32 1
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call.i.i, align 4
  %vers.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 2
  %7 = ptrtoint ptr %vers.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vers.i.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %call.i.i, i32 2
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %incdec.ptr.i.i, align 4
  %proc.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 3
  %10 = ptrtoint ptr %proc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %proc.i.i, align 4
  %12 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr1.i.i, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #10
  %13 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %argp, align 4
  %call1.i = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %call.i, ptr noundef %14, i32 noundef 16) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsm_xdr_dec_stat_res(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !131

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %data, align 4
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %incdec.ptr, align 4
  %state = getelementptr inbounds %struct.nsm_res, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %6 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end, !prof !129

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %4) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsm_xdr_enc_unmon(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mon_name.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 4
  %0 = ptrtoint ptr %mon_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mon_name.i.i, align 4
  %call.i.i.i = tail call i32 @strlen(ptr noundef %1) #15
  %add.i.i.i = add i32 %call.i.i.i, 4
  %call1.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i.i) #10
  %call2.i.i.i = tail call ptr @xdr_encode_opaque(ptr noundef %call1.i.i.i, ptr noundef %1, i32 noundef %call.i.i.i) #10
  %nodename.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 5
  %2 = ptrtoint ptr %nodename.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nodename.i.i, align 4
  %call.i.i3.i = tail call i32 @strlen(ptr noundef %3) #15
  %add.i.i4.i = add i32 %call.i.i3.i, 4
  %call1.i.i5.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i4.i) #10
  %call2.i.i6.i = tail call ptr @xdr_encode_opaque(ptr noundef %call1.i.i5.i, ptr noundef %3, i32 noundef %call.i.i3.i) #10
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #10
  %prog.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 1
  %4 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prog.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i.i, i32 1
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call.i.i, align 4
  %vers.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 2
  %7 = ptrtoint ptr %vers.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vers.i.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %call.i.i, i32 2
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %incdec.ptr.i.i, align 4
  %proc.i.i = getelementptr inbounds %struct.nsm_args, ptr %argp, i32 0, i32 3
  %10 = ptrtoint ptr %proc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %proc.i.i, align 4
  %12 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr1.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsm_xdr_dec_stat(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !131

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %state = getelementptr inbounds %struct.nsm_res, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %3 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end, !prof !129

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/lockd/mon.c", i32 154, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nsm_monitor._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nsm_monitor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/lockd/mon.c", i32 169, i32 3}
!8 = !{ptr @nsm_monitor._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nsm_monitor._entry.4, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @nsm_monitor._entry_ptr.6, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/lockd/mon.c", i32 176, i32 3}
!14 = !{ptr @nsm_monitor._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nsm_monitor._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/lockd/mon.c", i32 197, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nsm_unmonitor._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nsm_unmonitor._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/lockd/mon.c", i32 203, i32 4}
!23 = !{ptr @nsm_unmonitor._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nsm_unmonitor._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__func__.nsm_get_handle, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/lockd/mon.c", i32 323, i32 7}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/lockd/mon.c", i32 324, i32 4}
!29 = !{ptr @nsm_get_handle._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nsm_get_handle._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/lockd/mon.c", i32 344, i32 3}
!33 = !{ptr @nsm_get_handle._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nsm_get_handle._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/lockd/mon.c", i32 354, i32 3}
!37 = !{ptr @nsm_get_handle._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nsm_get_handle._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/lockd/mon.c", i32 387, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nsm_reboot_lookup._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @nsm_reboot_lookup._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/lockd/mon.c", i32 395, i32 2}
!46 = !{ptr @nsm_reboot_lookup._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nsm_reboot_lookup._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/lockd/mon.c", i32 411, i32 3}
!50 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nsm_release._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nsm_release._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @nsm_local_state, !54, !"nsm_local_state", i1 false, i1 false}
!54 = !{!"../fs/lockd/mon.c", i32 60, i32 20}
!55 = !{ptr @nsm_use_hostnames, !56, !"nsm_use_hostnames", i1 false, i1 false}
!56 = !{!"../fs/lockd/mon.c", i32 61, i32 21}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/lockd/mon.c", i32 113, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nsm_mon_unmon._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nsm_mon_unmon._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/lockd/mon.c", i32 122, i32 3}
!64 = !{ptr @nsm_mon_unmon._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @nsm_mon_unmon._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/lockd/mon.c", i32 128, i32 3}
!68 = !{ptr @nsm_mon_unmon._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @nsm_mon_unmon._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/lockd/mon.c", i32 79, i32 18}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../fs/lockd/mon.c", i32 85, i32 13}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/lockd/mon.c", i32 573, i32 11}
!76 = !{ptr @nsm_program, !77, !"nsm_program", i1 false, i1 false}
!77 = !{!"../fs/lockd/mon.c", i32 572, i32 33}
!78 = !{ptr @nsm_version, !79, !"nsm_version", i1 false, i1 false}
!79 = !{!"../fs/lockd/mon.c", i32 566, i32 34}
!80 = !{ptr @nsm_version1, !81, !"nsm_version1", i1 false, i1 false}
!81 = !{!"../fs/lockd/mon.c", i32 559, i32 33}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/lockd/mon.c", i32 545, i32 14}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/lockd/mon.c", i32 554, i32 14}
!86 = !{ptr @nsm_procedures, !87, !"nsm_procedures", i1 false, i1 false}
!87 = !{!"../fs/lockd/mon.c", i32 537, i32 34}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/lockd/mon.c", i32 507, i32 2}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @nsm_xdr_dec_stat_res._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @nsm_xdr_dec_stat_res._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/lockd/mon.c", i32 524, i32 2}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @nsm_xdr_dec_stat._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @nsm_xdr_dec_stat._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @nsm_version1_counts, !99, !"nsm_version1_counts", i1 false, i1 false}
!99 = !{!"../fs/lockd/mon.c", i32 558, i32 21}
!100 = !{ptr @nsm_stats, !101, !"nsm_stats", i1 false, i1 false}
!101 = !{!"../fs/lockd/mon.c", i32 570, i32 25}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/lockd/mon.c", i32 55, i32 11}
!115 = !{ptr @nsm_lock, !114, !"nsm_lock", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/lockd/mon.c", i32 292, i32 5}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{i8 0, i8 2}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 2148223986, i64 2148224018, i64 2148224047, i64 2148224081, i64 2148224112, i64 2148224135}
!133 = !{i64 2150003584}
!134 = !{i64 2150003850}
