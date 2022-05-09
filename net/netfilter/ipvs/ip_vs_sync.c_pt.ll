; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_sync.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_sync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ipvs_master_sync_state = type { %struct.list_head, ptr, i32, i32, %struct.delayed_work, ptr }
%struct.ip_vs_sync_buff = type { %struct.list_head, i32, ptr, ptr, ptr }
%struct.ip_vs_sync_mesg_v0 = type { i8, i8, i16 }
%struct.ip_vs_sync_conn_v0 = type { i8, i8, i16, i16, i16, i32, i32, i32, i16, i16 }
%struct.ip_vs_pe = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ip_vs_sync_mesg = type { i8, i8, i16, i8, i8, i16 }
%struct.ip_vs_sync_v4 = type { i8, i8, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.ip_vs_sync_v6 = type { i8, i8, i16, i32, i16, i16, i16, i16, i32, i32, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.ip_vs_sync_thread_data = type { ptr, ptr, ptr, ptr, i32 }
%struct.ip_mreqn = type { %struct.in_addr, %struct.in_addr, i32 }
%struct.in_addr = type { i32 }
%union.ipvs_sockaddr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.73 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.135 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sock_common = type { %union.anon.108, %union.anon.110, %union.anon.111, i16, i8, i8, i32, %union.anon.113, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.108 = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.113 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.22 }
%union.anon.22 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.158, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.114, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.84, %union.anon.85 }
%union.anon.84 = type { ptr }
%union.anon.85 = type { i64 }
%union.anon.114 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ip_vs_conn_param = type { ptr, ptr, ptr, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.ip_vs_sync_conn_options = type { %struct.ip_vs_seq, %struct.ip_vs_seq }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.ip_vs_proto_data = type { ptr, ptr, ptr, %struct.atomic_t, ptr }

@ip_vs_sync_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013IPVS: SYNC, connection pe_data invalid\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_vs_sync_conn\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/netfilter/ipvs/ip_vs_sync.c\00", [32 x i8] zeroinitializer }, align 32
@ip_vs_sync_conn._entry_ptr = internal global ptr @ip_vs_sync_conn._entry, section ".printk_index", align 4
@ip_vs_sync_conn._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013IPVS: ip_vs_sync_buff_create failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@ip_vs_sync_conn._entry_ptr.5 = internal global ptr @ip_vs_sync_conn._entry.3, section ".printk_index", align 4
@start_sync_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017IPVS: %s(): pid %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"start_sync_thread\00", [46 x i8] zeroinitializer }, align 32
@start_sync_thread._entry_ptr = internal global ptr @start_sync_thread._entry, section ".printk_index", align 4
@start_sync_thread._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 1764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017IPVS: Each ip_vs_sync_conn entry needs %zd bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@start_sync_thread._entry_ptr.10 = internal global ptr @start_sync_thread._entry.8, section ".printk_index", align 4
@start_sync_thread._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013IPVS: Unknown mcast interface: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@start_sync_thread._entry_ptr.13 = internal global ptr @start_sync_thread._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipvs-m:%d:%d\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipvs-b:%d:%d\00", [19 x i8] zeroinitializer }, align 32
@start_sync_thread.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&ms->master_wakeup_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@start_sync_thread.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&ms->master_wakeup_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@stop_sync_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.19, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stop_sync_thread\00", [47 x i8] zeroinitializer }, align 32
@stop_sync_thread._entry_ptr = internal global ptr @stop_sync_thread._entry, section ".printk_index", align 4
@stop_sync_thread._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016IPVS: stopping master sync thread %d ...\0A\00", [52 x i8] zeroinitializer }, align 32
@stop_sync_thread._entry_ptr.22 = internal global ptr @stop_sync_thread._entry.20, section ".printk_index", align 4
@stop_sync_thread._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 2000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016IPVS: stopping backup sync thread %d ...\0A\00", [52 x i8] zeroinitializer }, align 32
@stop_sync_thread._entry_ptr.25 = internal global ptr @stop_sync_thread._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipvs->sync_mutex\00", [47 x i8] zeroinitializer }, align 32
@__ipvs_sync_key = internal global %struct.lock_class_key zeroinitializer, align 4
@ip_vs_sync_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ipvs->sync_lock\00", [47 x i8] zeroinitializer }, align 32
@ip_vs_sync_net_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ipvs->sync_buff_lock\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_sync_net_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 2046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013IPVS: Failed to stop Master Daemon\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ip_vs_sync_net_cleanup\00", [41 x i8] zeroinitializer }, align 32
@ip_vs_sync_net_cleanup._entry_ptr = internal global ptr @ip_vs_sync_net_cleanup._entry, section ".printk_index", align 4
@ip_vs_sync_net_cleanup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013IPVS: Failed to stop Backup Daemon\0A\00", [58 x i8] zeroinitializer }, align 32
@ip_vs_sync_net_cleanup._entry_ptr.34 = internal global ptr @ip_vs_sync_net_cleanup._entry.32, section ".printk_index", align 4
@ip_vs_sync_conn_v0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.35, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_vs_sync_conn_v0\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_sync_conn_v0._entry_ptr = internal global ptr @ip_vs_sync_conn_v0._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sync_thread_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016IPVS: sync thread started: state = MASTER, mcast_ifn = %s, syncid = %d, id = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sync_thread_master\00", [45 x i8] zeroinitializer }, align 32
@sync_thread_master._entry_ptr = internal global ptr @sync_thread_master._entry, section ".printk_index", align 4
@ip_vs_send_sync_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013IPVS: ip_vs_send_async error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_vs_send_sync_msg\00", [44 x i8] zeroinitializer }, align 32
@ip_vs_send_sync_msg._entry_ptr = internal global ptr @ip_vs_send_sync_msg._entry, section ".printk_index", align 4
@ip_vs_send_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017IPVS: Enter: %s, %s line %i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip_vs_send_async\00", [47 x i8] zeroinitializer }, align 32
@ip_vs_send_async._entry_ptr = internal global ptr @ip_vs_send_async._entry, section ".printk_index", align 4
@ip_vs_send_async._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017IPVS: Leave: %s, %s line %i\0A\00", [33 x i8] zeroinitializer }, align 32
@ip_vs_send_async._entry_ptr.45 = internal global ptr @ip_vs_send_async._entry.43, section ".printk_index", align 4
@sync_thread_backup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016IPVS: sync thread started: state = BACKUP, mcast_ifn = %s, syncid = %d, id = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sync_thread_backup\00", [45 x i8] zeroinitializer }, align 32
@sync_thread_backup._entry_ptr = internal global ptr @sync_thread_backup._entry, section ".printk_index", align 4
@sync_thread_backup._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 1738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013IPVS: receiving message error\0A\00", [63 x i8] zeroinitializer }, align 32
@sync_thread_backup._entry_ptr.50 = internal global ptr @sync_thread_backup._entry.48, section ".printk_index", align 4
@ip_vs_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.51, ptr @.str.2, i32 1617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip_vs_receive\00", [18 x i8] zeroinitializer }, align 32
@ip_vs_receive._entry_ptr = internal global ptr @ip_vs_receive._entry, section ".printk_index", align 4
@ip_vs_receive._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.51, ptr @.str.2, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_receive._entry_ptr.53 = internal global ptr @ip_vs_receive._entry.52, section ".printk_index", align 4
@ip_vs_process_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017IPVS: BACKUP, message header too short\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_vs_process_message\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_process_message._entry_ptr = internal global ptr @ip_vs_process_message._entry, section ".printk_index", align 4
@ip_vs_process_message._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017IPVS: BACKUP, bogus message size\0A\00", [60 x i8] zeroinitializer }, align 32
@ip_vs_process_message._entry_ptr.58 = internal global ptr @ip_vs_process_message._entry.56, section ".printk_index", align 4
@ip_vs_process_message._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017IPVS: BACKUP, Ignoring syncid = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ip_vs_process_message._entry_ptr.61 = internal global ptr @ip_vs_process_message._entry.59, section ".printk_index", align 4
@ip_vs_process_message._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013IPVS: BACKUP, Dropping buffer, too small\0A\00", [52 x i8] zeroinitializer }, align 32
@ip_vs_process_message._entry_ptr.64 = internal global ptr @ip_vs_process_message._entry.62, section ".printk_index", align 4
@ip_vs_process_message._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.2, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013IPVS: BACKUP, Dropping buffer, msg > buffer\0A\00", [49 x i8] zeroinitializer }, align 32
@ip_vs_process_message._entry_ptr.67 = internal global ptr @ip_vs_process_message._entry.65, section ".printk_index", align 4
@ip_vs_process_message._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.2, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013IPVS: BACKUP, Dropping buffer, Unknown version %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_process_message._entry_ptr.70 = internal global ptr @ip_vs_process_message._entry.68, section ".printk_index", align 4
@ip_vs_process_message._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.55, ptr @.str.2, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013IPVS: BACKUP, Dropping buffer, Err: %d in decoding\0A\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_process_message._entry_ptr.73 = internal global ptr @ip_vs_process_message._entry.71, section ".printk_index", align 4
@ip_vs_proc_sync_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017IPVS: BACKUP, Unknown mandatory param %d found\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_vs_proc_sync_conn\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_proc_sync_conn._entry_ptr = internal global ptr @ip_vs_proc_sync_conn._entry, section ".printk_index", align 4
@ip_vs_proc_sync_conn._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017IPVS: BACKUP, Unsupported protocol %u\0A\00", [55 x i8] zeroinitializer }, align 32
@ip_vs_proc_sync_conn._entry_ptr.78 = internal global ptr @ip_vs_proc_sync_conn._entry.76, section ".printk_index", align 4
@ip_vs_proc_sync_conn._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 1162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017IPVS: BACKUP, Invalid %s state %u\0A\00", [59 x i8] zeroinitializer }, align 32
@ip_vs_proc_sync_conn._entry_ptr.81 = internal global ptr @ip_vs_proc_sync_conn._entry.79, section ".printk_index", align 4
@ip_vs_proc_sync_conn._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017IPVS: BACKUP, Invalid tpl state %u\0A\00", [58 x i8] zeroinitializer }, align 32
@ip_vs_proc_sync_conn._entry_ptr.84 = internal global ptr @ip_vs_proc_sync_conn._entry.82, section ".printk_index", align 4
@ip_vs_proc_sync_conn._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.2, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017IPVS: BACKUP, Single msg dropped err:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@ip_vs_proc_sync_conn._entry_ptr.87 = internal global ptr @ip_vs_proc_sync_conn._entry.85, section ".printk_index", align 4
@ip_vs_proc_seqopt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017IPVS: BACKUP, bogus conn options length\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_proc_seqopt\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_proc_seqopt._entry_ptr = internal global ptr @ip_vs_proc_seqopt._entry, section ".printk_index", align 4
@ip_vs_proc_seqopt._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017IPVS: BACKUP, conn options found twice\0A\00", [54 x i8] zeroinitializer }, align 32
@ip_vs_proc_seqopt._entry_ptr.92 = internal global ptr @ip_vs_proc_seqopt._entry.90, section ".printk_index", align 4
@ip_vs_proc_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017IPVS: BACKUP, bogus par.data len > %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip_vs_proc_str\00", [17 x i8] zeroinitializer }, align 32
@ip_vs_proc_str._entry_ptr = internal global ptr @ip_vs_proc_str._entry, section ".printk_index", align 4
@ip_vs_proc_str._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017IPVS: BACKUP, Par.data found twice 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@ip_vs_proc_str._entry_ptr.97 = internal global ptr @ip_vs_proc_str._entry.95, section ".printk_index", align 4
@ip_vs_conn_fill_param_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017IPVS: BACKUP, no %s engine found/loaded\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ip_vs_conn_fill_param_sync\00", [37 x i8] zeroinitializer }, align 32
@ip_vs_conn_fill_param_sync._entry_ptr = internal global ptr @ip_vs_conn_fill_param_sync._entry, section ".printk_index", align 4
@ip_vs_conn_fill_param_sync._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013IPVS: BACKUP, Invalid PE parameters\0A\00", [57 x i8] zeroinitializer }, align 32
@ip_vs_conn_fill_param_sync._entry_ptr.102 = internal global ptr @ip_vs_conn_fill_param_sync._entry.100, section ".printk_index", align 4
@ip_vs_proc_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017IPVS: BACKUP, add new conn. failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_vs_proc_conn\00", [16 x i8] zeroinitializer }, align 32
@ip_vs_proc_conn._entry_ptr = internal global ptr @ip_vs_proc_conn._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ip_vs_process_message_v0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013IPVS: BACKUP v0, bogus conn\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ip_vs_process_message_v0\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_process_message_v0._entry_ptr = internal global ptr @ip_vs_process_message_v0._entry, section ".printk_index", align 4
@ip_vs_process_message_v0._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013IPVS: BACKUP v0, Dropping buffer bogus conn options\0A\00", [41 x i8] zeroinitializer }, align 32
@ip_vs_process_message_v0._entry_ptr.112 = internal global ptr @ip_vs_process_message_v0._entry.110, section ".printk_index", align 4
@ip_vs_process_message_v0._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017IPVS: BACKUP v0, Unsupported protocol %u\0A\00", [52 x i8] zeroinitializer }, align 32
@ip_vs_process_message_v0._entry_ptr.115 = internal global ptr @ip_vs_process_message_v0._entry.113, section ".printk_index", align 4
@ip_vs_process_message_v0._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017IPVS: BACKUP v0, Invalid %s state %u\0A\00", [56 x i8] zeroinitializer }, align 32
@ip_vs_process_message_v0._entry_ptr.118 = internal global ptr @ip_vs_process_message_v0._entry.116, section ".printk_index", align 4
@ip_vs_process_message_v0._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.109, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017IPVS: BACKUP v0, Invalid tpl state %u\0A\00", [55 x i8] zeroinitializer }, align 32
@ip_vs_process_message_v0._entry_ptr.121 = internal global ptr @ip_vs_process_message_v0._entry.119, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@make_send_sock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013IPVS: Error during creation of socket; terminating\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"make_send_sock\00", [17 x i8] zeroinitializer }, align 32
@make_send_sock._entry_ptr = internal global ptr @make_send_sock._entry, section ".printk_index", align 4
@make_send_sock._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013IPVS: Error setting outbound mcast interface\0A\00", [48 x i8] zeroinitializer }, align 32
@make_send_sock._entry_ptr.126 = internal global ptr @make_send_sock._entry.124, section ".printk_index", align 4
@make_send_sock._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013IPVS: Error binding address of the mcast interface\0A\00", [42 x i8] zeroinitializer }, align 32
@make_send_sock._entry_ptr.129 = internal global ptr @make_send_sock._entry.127, section ".printk_index", align 4
@make_send_sock._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.123, ptr @.str.2, i32 1513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013IPVS: Error connecting to the multicast addr\0A\00", [48 x i8] zeroinitializer }, align 32
@make_send_sock._entry_ptr.132 = internal global ptr @make_send_sock._entry.130, section ".printk_index", align 4
@sysctl_wmem_max = external dso_local local_unnamed_addr global i32, align 4
@sysctl_rmem_max = external dso_local local_unnamed_addr global i32, align 4
@bind_mcastif_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013IPVS: You probably need to specify IP address on multicast interface.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bind_mcastif_addr\00", [46 x i8] zeroinitializer }, align 32
@bind_mcastif_addr._entry_ptr = internal global ptr @bind_mcastif_addr._entry, section ".printk_index", align 4
@bind_mcastif_addr._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017IPVS: binding socket with (%s) %pI4\0A\00", [57 x i8] zeroinitializer }, align 32
@bind_mcastif_addr._entry_ptr.137 = internal global ptr @bind_mcastif_addr._entry.135, section ".printk_index", align 4
@make_receive_sock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.138, ptr @.str.2, i32 1539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"make_receive_sock\00", [46 x i8] zeroinitializer }, align 32
@make_receive_sock._entry_ptr = internal global ptr @make_receive_sock._entry, section ".printk_index", align 4
@make_receive_sock._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013IPVS: Error binding to the multicast addr\0A\00", [51 x i8] zeroinitializer }, align 32
@make_receive_sock._entry_ptr.141 = internal global ptr @make_receive_sock._entry.139, section ".printk_index", align 4
@make_receive_sock._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.2, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013IPVS: Error joining to the multicast group\0A\00", [50 x i8] zeroinitializer }, align 32
@make_receive_sock._entry_ptr.144 = internal global ptr @make_receive_sock._entry.142, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 132]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 656, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 705, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1762, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1763, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1799, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1823, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1831, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1850, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1950, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1977, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1999, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2034, i32 34 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2035, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2036, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2046, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2050, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 583, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1669, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1606, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1585, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1591, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1721, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1738, i32 6 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1617, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1625, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1212, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1217, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1222, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1239, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1247, i32 5 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1251, i32 5 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1258, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1138, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1155, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1161, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1168, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1195, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1037, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1041, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1055, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1059, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 817, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 822, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 917, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 695, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 723, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 975, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 985, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 997, i32 5 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1002, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1008, i32 5 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1482, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1488, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1505, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1513, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1433, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1436, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1539, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1553, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.549 = private constant [35 x i8] c"../net/netfilter/ipvs/ip_vs_sync.c\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1567, i32 3 }
@llvm.compiler.used = appending global [186 x ptr] [ptr @bind_mcastif_addr._entry, ptr @bind_mcastif_addr._entry.135, ptr @bind_mcastif_addr._entry_ptr, ptr @bind_mcastif_addr._entry_ptr.137, ptr @ip_vs_conn_fill_param_sync._entry, ptr @ip_vs_conn_fill_param_sync._entry.100, ptr @ip_vs_conn_fill_param_sync._entry_ptr, ptr @ip_vs_conn_fill_param_sync._entry_ptr.102, ptr @ip_vs_proc_conn._entry, ptr @ip_vs_proc_conn._entry_ptr, ptr @ip_vs_proc_seqopt._entry, ptr @ip_vs_proc_seqopt._entry.90, ptr @ip_vs_proc_seqopt._entry_ptr, ptr @ip_vs_proc_seqopt._entry_ptr.92, ptr @ip_vs_proc_str._entry, ptr @ip_vs_proc_str._entry.95, ptr @ip_vs_proc_str._entry_ptr, ptr @ip_vs_proc_str._entry_ptr.97, ptr @ip_vs_proc_sync_conn._entry, ptr @ip_vs_proc_sync_conn._entry.76, ptr @ip_vs_proc_sync_conn._entry.79, ptr @ip_vs_proc_sync_conn._entry.82, ptr @ip_vs_proc_sync_conn._entry.85, ptr @ip_vs_proc_sync_conn._entry_ptr, ptr @ip_vs_proc_sync_conn._entry_ptr.78, ptr @ip_vs_proc_sync_conn._entry_ptr.81, ptr @ip_vs_proc_sync_conn._entry_ptr.84, ptr @ip_vs_proc_sync_conn._entry_ptr.87, ptr @ip_vs_process_message._entry, ptr @ip_vs_process_message._entry.56, ptr @ip_vs_process_message._entry.59, ptr @ip_vs_process_message._entry.62, ptr @ip_vs_process_message._entry.65, ptr @ip_vs_process_message._entry.68, ptr @ip_vs_process_message._entry.71, ptr @ip_vs_process_message._entry_ptr, ptr @ip_vs_process_message._entry_ptr.58, ptr @ip_vs_process_message._entry_ptr.61, ptr @ip_vs_process_message._entry_ptr.64, ptr @ip_vs_process_message._entry_ptr.67, ptr @ip_vs_process_message._entry_ptr.70, ptr @ip_vs_process_message._entry_ptr.73, ptr @ip_vs_process_message_v0._entry, ptr @ip_vs_process_message_v0._entry.110, ptr @ip_vs_process_message_v0._entry.113, ptr @ip_vs_process_message_v0._entry.116, ptr @ip_vs_process_message_v0._entry.119, ptr @ip_vs_process_message_v0._entry_ptr, ptr @ip_vs_process_message_v0._entry_ptr.112, ptr @ip_vs_process_message_v0._entry_ptr.115, ptr @ip_vs_process_message_v0._entry_ptr.118, ptr @ip_vs_process_message_v0._entry_ptr.121, ptr @ip_vs_receive._entry, ptr @ip_vs_receive._entry.52, ptr @ip_vs_receive._entry_ptr, ptr @ip_vs_receive._entry_ptr.53, ptr @ip_vs_send_async._entry, ptr @ip_vs_send_async._entry.43, ptr @ip_vs_send_async._entry_ptr, ptr @ip_vs_send_async._entry_ptr.45, ptr @ip_vs_send_sync_msg._entry, ptr @ip_vs_send_sync_msg._entry_ptr, ptr @ip_vs_sync_conn._entry, ptr @ip_vs_sync_conn._entry.3, ptr @ip_vs_sync_conn._entry_ptr, ptr @ip_vs_sync_conn._entry_ptr.5, ptr @ip_vs_sync_conn_v0._entry, ptr @ip_vs_sync_conn_v0._entry_ptr, ptr @ip_vs_sync_net_cleanup._entry, ptr @ip_vs_sync_net_cleanup._entry.32, ptr @ip_vs_sync_net_cleanup._entry_ptr, ptr @ip_vs_sync_net_cleanup._entry_ptr.34, ptr @make_receive_sock._entry, ptr @make_receive_sock._entry.139, ptr @make_receive_sock._entry.142, ptr @make_receive_sock._entry_ptr, ptr @make_receive_sock._entry_ptr.141, ptr @make_receive_sock._entry_ptr.144, ptr @make_send_sock._entry, ptr @make_send_sock._entry.124, ptr @make_send_sock._entry.127, ptr @make_send_sock._entry.130, ptr @make_send_sock._entry_ptr, ptr @make_send_sock._entry_ptr.126, ptr @make_send_sock._entry_ptr.129, ptr @make_send_sock._entry_ptr.132, ptr @start_sync_thread._entry, ptr @start_sync_thread._entry.11, ptr @start_sync_thread._entry.8, ptr @start_sync_thread._entry_ptr, ptr @start_sync_thread._entry_ptr.10, ptr @start_sync_thread._entry_ptr.13, ptr @stop_sync_thread._entry, ptr @stop_sync_thread._entry.20, ptr @stop_sync_thread._entry.23, ptr @stop_sync_thread._entry_ptr, ptr @stop_sync_thread._entry_ptr.22, ptr @stop_sync_thread._entry_ptr.25, ptr @sync_thread_backup._entry, ptr @sync_thread_backup._entry.48, ptr @sync_thread_backup._entry_ptr, ptr @sync_thread_backup._entry_ptr.50, ptr @sync_thread_master._entry, ptr @sync_thread_master._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @start_sync_thread.__key, ptr @.str.16, ptr @start_sync_thread.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @ip_vs_sync_net_init.__key, ptr @.str.27, ptr @ip_vs_sync_net_init.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.143], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sync_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sync_conn._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_sync_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_sync_thread._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_sync_thread._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_sync_thread.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_sync_thread.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_sync_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_sync_thread._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_sync_thread._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sync_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sync_net_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sync_net_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sync_net_cleanup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sync_conn_v0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_thread_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_send_sync_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_send_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_send_async._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_thread_backup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_thread_backup._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_receive._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_sync_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_sync_conn._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_sync_conn._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_sync_conn._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_sync_conn._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_seqopt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_seqopt._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_str._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_fill_param_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_fill_param_sync._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proc_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message_v0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message_v0._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message_v0._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message_v0._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_process_message_v0._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_send_sock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_send_sock._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_send_sock._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_send_sock._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bind_mcastif_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bind_mcastif_addr._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_receive_sock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_receive_sock._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_receive_sock._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_sync_conn(ptr noundef %ipvs, ptr noundef %cp, i32 noundef %pkts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_sync_ver.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 36
  %0 = ptrtoint ptr %sysctl_sync_ver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysctl_sync_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp383 = icmp eq i32 %1, 0
  br i1 %cmp383, label %if.then.lr.ph, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.lr.ph:                                    ; preds = %entry
  %sync_buff_lock.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 67
  %sync_state.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 71
  %threads_mask.i357 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 70
  %ms15.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 66
  %sync_maxlen.i316 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73, i32 2
  %syncid.i348 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73, i32 1
  %sysctl_sync_threshold.i312 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 46
  br label %if.then

if.then:                                          ; preds = %if.end74.i.if.then_crit_edge, %if.then.lr.ph
  %pkts.tr386 = phi i32 [ %pkts, %if.then.lr.ph ], [ %pkts.addr.0.i, %if.end74.i.if.then_crit_edge ]
  %cp.tr384 = phi ptr [ %cp, %if.then.lr.ph ], [ %84, %if.end74.i.if.then_crit_edge ]
  %af.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 4
  %2 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup_crit_edge, !prof !268

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 8
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %call.i = tail call fastcc i32 @ip_vs_sync_conn_needed(ptr noundef %ipvs, ptr noundef %cp.tr384, i32 noundef %pkts.tr386) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end8.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5.i
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_buff_lock.i) #11
  %6 = ptrtoint ptr %sync_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sync_state.i, align 8
  %and9.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock.i) #11
  br label %cleanup

if.end13.i:                                       ; preds = %if.end8.i
  %8 = ptrtoint ptr %cp.tr384 to i32
  %shr.i356 = ashr i32 %8, 9
  %9 = ptrtoint ptr %threads_mask.i357 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %threads_mask.i357, align 4
  %and.i358 = and i32 %10, %shr.i356
  %11 = ptrtoint ptr %ms15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ms15.i, align 4
  %arrayidx.i = getelementptr %struct.ipvs_master_sync_state, ptr %12, i32 %and.i358
  %sync_buff.i = getelementptr %struct.ipvs_master_sync_state, ptr %12, i32 %and.i358, i32 1
  %13 = ptrtoint ptr %sync_buff.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sync_buff.i, align 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %and17.i = and i32 %16, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %cond.i = select i1 %tobool18.not.i, i32 24, i32 48
  %tobool19.not.i = icmp eq ptr %14, null
  br i1 %tobool19.not.i, label %if.end13.i.if.then29.i_crit_edge, label %if.then20.i

if.end13.i.if.then29.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i

if.then20.i:                                      ; preds = %if.end13.i
  %head.i = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %cond.i
  %end.i = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %cmp21.i = icmp ugt ptr %add.ptr.i, %20
  br i1 %cmp21.i, label %if.then20.i.if.then24.i_crit_edge, label %lor.lhs.false.i

if.then20.i.if.then24.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.then20.i
  %mesg.i = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %mesg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mesg.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool23.not.i = icmp eq i8 %24, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.if.then24.i_crit_edge, label %lor.lhs.false.i.if.end37.i_crit_edge

lor.lhs.false.i.if.end37.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %if.then20.i.if.then24.i_crit_edge
  tail call fastcc void @sb_queue_tail(ptr noundef %ipvs, ptr noundef %arrayidx.i) #11
  %25 = ptrtoint ptr %sync_buff.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sync_buff.i, align 4
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.then24.i, %if.end13.i.if.then29.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i313 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2592, i32 noundef 24) #14
  %tobool.not.i314 = icmp eq ptr %call7.i.i313, null
  br i1 %tobool.not.i314, label %if.then29.i.if.then32.i_crit_edge, label %if.end.i318

if.then29.i.if.then32.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

if.end.i318:                                      ; preds = %if.then29.i
  %add.i315 = or i32 %cond.i, 4
  %27 = ptrtoint ptr %sync_maxlen.i316 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sync_maxlen.i316, align 4
  %conv.i317 = zext i16 %28 to i32
  %29 = tail call i32 @llvm.umax.i32(i32 %add.i315, i32 %conv.i317) #11
  %call9.i.i344 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 2592) #15
  %mesg3.i = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i313, i32 0, i32 2
  %30 = ptrtoint ptr %mesg3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i.i344, ptr %mesg3.i, align 4
  %tobool5.not.i = icmp eq ptr %call9.i.i344, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end35.i

if.then6.i:                                       ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i313) #11
  br label %if.then32.i

if.then32.i:                                      ; preds = %if.then6.i, %if.then29.i.if.then32.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock.i) #11
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %cleanup

if.end35.i:                                       ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call9.i.i344 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %call9.i.i344, align 128
  %32 = ptrtoint ptr %syncid.i348 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %syncid.i348, align 8
  %conv10.i349 = trunc i32 %33 to i8
  %syncid11.i = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, ptr %call9.i.i344, i32 0, i32 1
  %34 = ptrtoint ptr %syncid11.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv10.i349, ptr %syncid11.i, align 1
  %size.i350 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, ptr %call9.i.i344, i32 0, i32 2
  %35 = ptrtoint ptr %size.i350 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 4, ptr %size.i350, align 2
  %add.ptr.i351 = getelementptr i8, ptr %call9.i.i344, i32 4
  %head.i352 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i313, i32 0, i32 3
  %36 = ptrtoint ptr %head.i352 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i351, ptr %head.i352, align 8
  %add.ptr12.i = getelementptr i8, ptr %call9.i.i344, i32 %29
  %end.i353 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i313, i32 0, i32 4
  %37 = ptrtoint ptr %end.i353 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr12.i, ptr %end.i353, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %firstuse.i354 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i313, i32 0, i32 1
  %39 = ptrtoint ptr %firstuse.i354 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %firstuse.i354, align 8
  %40 = ptrtoint ptr %sync_buff.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i313, ptr %sync_buff.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end35.i, %lor.lhs.false.i.if.end37.i_crit_edge
  %buff.1.i = phi ptr [ %call7.i.i313, %if.end35.i ], [ %14, %lor.lhs.false.i.if.end37.i_crit_edge ]
  %mesg38.i = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %buff.1.i, i32 0, i32 2
  %41 = ptrtoint ptr %mesg38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mesg38.i, align 4
  %head39.i = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %buff.1.i, i32 0, i32 3
  %43 = ptrtoint ptr %head39.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head39.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %44, align 4
  %protocol.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 9
  %46 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %protocol.i, align 4
  %conv40.i = trunc i16 %47 to i8
  %protocol41.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %protocol41.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv40.i, ptr %protocol41.i, align 1
  %cport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 1
  %49 = ptrtoint ptr %cport.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cport.i, align 4
  %cport42.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 2
  %51 = ptrtoint ptr %cport42.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %cport42.i, align 2
  %vport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 3
  %52 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vport.i, align 4
  %vport43.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 3
  %54 = ptrtoint ptr %vport43.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %vport43.i, align 4
  %dport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 2
  %55 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %dport.i, align 2
  %dport44.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 4
  %57 = ptrtoint ptr %dport44.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %dport44.i, align 2
  %caddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 5
  %58 = ptrtoint ptr %caddr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %caddr.i, align 4
  %caddr45.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 5
  %60 = ptrtoint ptr %caddr45.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %caddr45.i, align 4
  %vaddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 6
  %61 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vaddr.i, align 4
  %vaddr46.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 6
  %63 = ptrtoint ptr %vaddr46.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %vaddr46.i, align 4
  %daddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 7
  %64 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %daddr.i, align 4
  %daddr47.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 7
  %66 = ptrtoint ptr %daddr47.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %daddr47.i, align 4
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags.i, align 4
  %69 = trunc i32 %68 to i16
  %conv50.i = and i16 %69, -65
  %flags51.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 8
  %70 = ptrtoint ptr %flags51.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv50.i, ptr %flags51.i, align 4
  %state.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 16
  %71 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load volatile i16, ptr %state.i, align 4
  %state52.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %44, i32 0, i32 9
  %73 = ptrtoint ptr %state52.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %state52.i, align 2
  %74 = load volatile i32, ptr %flags.i, align 4
  %and54.i = and i32 %74, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end37.i.if.end58.i_crit_edge, label %if.then56.i

if.end37.i.if.end58.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx57.i = getelementptr %struct.ip_vs_sync_conn_v0, ptr %44, i32 1
  %in_seq.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 27
  %75 = call ptr @memcpy(ptr %arrayidx57.i, ptr %in_seq.i, i32 24)
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %if.end37.i.if.end58.i_crit_edge
  %76 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %42, align 2
  %inc.i = add i8 %77, 1
  store i8 %inc.i, ptr %42, align 2
  %size.i = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, ptr %42, i32 0, i32 2
  %78 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %size.i, align 2
  %80 = trunc i32 %cond.i to i16
  %conv61.i = add i16 %79, %80
  store i16 %conv61.i, ptr %size.i, align 2
  %81 = ptrtoint ptr %head39.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head39.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %82, i32 %cond.i
  store ptr %add.ptr64.i, ptr %head39.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock.i) #11
  %control.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr384, i32 0, i32 20
  %83 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %control.i, align 4
  %tobool66.not.i = icmp eq ptr %84, null
  br i1 %tobool66.not.i, label %if.end58.i.cleanup_crit_edge, label %if.then67.i

if.end58.i.cleanup_crit_edge:                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then67.i:                                      ; preds = %if.end58.i
  %flags68.i = getelementptr inbounds %struct.ip_vs_conn, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %flags68.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %flags68.i, align 4
  %and69.i = and i32 %86, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.else.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  %in_pkts.i = getelementptr inbounds %struct.ip_vs_conn, ptr %84, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_pkts.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %in_pkts.i, i32 1, i32 3, i32 1) #11
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_pkts.i, ptr %in_pkts.i, i32 1, ptr elementtype(i32) %in_pkts.i) #11, !srcloc !270
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %87, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !271
  br label %if.end74.i

if.else.i:                                        ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %sysctl_sync_threshold.i312 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sysctl_sync_threshold.i312, align 8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else.i, %if.then71.i
  %pkts.addr.0.i = phi i32 [ %asmresult.i.i.i.i.i, %if.then71.i ], [ %89, %if.else.i ]
  %90 = ptrtoint ptr %sysctl_sync_ver.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sysctl_sync_ver.i, align 8
  %cmp = icmp eq i32 %91, 0
  br i1 %cmp, label %if.end74.i.if.then_crit_edge, label %if.end74.i.if.end_crit_edge

if.end74.i.if.end_crit_edge:                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end74.i.if.then_crit_edge:                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end:                                           ; preds = %if.end74.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cp.tr.lcssa = phi ptr [ %cp, %entry.if.end_crit_edge ], [ %84, %if.end74.i.if.end_crit_edge ]
  %pkts.tr.lcssa = phi i32 [ %pkts, %entry.if.end_crit_edge ], [ %pkts.addr.0.i, %if.end74.i.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.tr.lcssa, i32 0, i32 8
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %flags, align 4
  %and = and i32 %93, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.sloop_crit_edge, label %if.end.control_crit_edge

if.end.control_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %control

if.end.sloop_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sloop

sloop:                                            ; preds = %if.else171, %if.then169, %if.end.sloop_crit_edge
  %pkts.addr.0 = phi i32 [ %asmresult.i.i.i.i, %if.then169 ], [ %249, %if.else171 ], [ %pkts.tr.lcssa, %if.end.sloop_crit_edge ]
  %cp.addr.0 = phi ptr [ %244, %if.then169 ], [ %244, %if.else171 ], [ %cp.tr.lcssa, %if.end.sloop_crit_edge ]
  %call3 = tail call fastcc i32 @ip_vs_sync_conn_needed(ptr noundef %ipvs, ptr noundef %cp.addr.0, i32 noundef %pkts.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %sloop.control_crit_edge, label %if.end6

sloop.control_crit_edge:                          ; preds = %sloop
  call void @__sanitizer_cov_trace_pc() #13
  br label %control

if.end6:                                          ; preds = %sloop
  %pe_data_len = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 31
  %94 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pe_data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool7.not = icmp eq i8 %95, 0
  br i1 %tobool7.not, label %if.end6.if.end22_crit_edge, label %if.then8

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then8:                                         ; preds = %if.end6
  %pe_data = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 30
  %96 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pe_data, align 4
  %tobool9.not = icmp eq ptr %97, null
  br i1 %tobool9.not, label %if.then8.do.body_crit_edge, label %lor.lhs.false

if.then8.do.body_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then8
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 22
  %98 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dest, align 4
  %tobool10.not = icmp eq ptr %99, null
  br i1 %tobool10.not, label %lor.lhs.false.do.body_crit_edge, label %if.end20

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then8.do.body_crit_edge
  %call12 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %pe = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 29
  %100 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pe, align 4
  %name = getelementptr inbounds %struct.ip_vs_pe, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name, align 4
  %call21 = tail call i32 @strnlen(ptr noundef %103, i32 noundef 16) #17
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end6.if.end22_crit_edge
  %pe_name_len.0 = phi i32 [ %call21, %if.end20 ], [ 0, %if.end6.if.end22_crit_edge ]
  %sync_buff_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_buff_lock) #11
  %sync_state = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 71
  %104 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %sync_state, align 8
  %and23 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %106 = ptrtoint ptr %cp.addr.0 to i32
  %shr.i = ashr i32 %106, 9
  %threads_mask.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 70
  %107 = ptrtoint ptr %threads_mask.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %threads_mask.i, align 4
  %and.i301 = and i32 %108, %shr.i
  %ms29 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 66
  %109 = ptrtoint ptr %ms29 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ms29, align 4
  %arrayidx = getelementptr %struct.ipvs_master_sync_state, ptr %110, i32 %and.i301
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 4
  %111 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %112)
  %cmp30 = icmp eq i16 %112, 10
  %. = select i1 %cmp30, i32 72, i32 36
  %flags34 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 8
  %113 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %flags34, align 4
  %and35 = and i32 %114, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %add = add nuw nsw i32 %., 26
  %len.1 = select i1 %tobool36.not, i32 %., i32 %add
  %115 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %pe_data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool40.not = icmp eq i8 %116, 0
  %conv43 = zext i8 %116 to i32
  %add44 = add nuw nsw i32 %conv43, 2
  %add45 = select i1 %tobool40.not, i32 0, i32 %add44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pe_name_len.0)
  %tobool47.not = icmp eq i32 %pe_name_len.0, 0
  %add49 = add i32 %pe_name_len.0, 2
  %add50 = select i1 %tobool47.not, i32 0, i32 %add49
  %len.2 = add i32 %len.1, %add50
  %len.3 = add i32 %len.2, %add45
  %sync_buff = getelementptr %struct.ipvs_master_sync_state, ptr %110, i32 %and.i301, i32 1
  %117 = ptrtoint ptr %sync_buff to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sync_buff, align 4
  %tobool52.not = icmp eq ptr %118, null
  br i1 %tobool52.not, label %if.end27.if.then67_crit_edge, label %if.then53

if.end27.if.then67_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

if.then53:                                        ; preds = %if.end27
  %head = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %head, align 4
  %121 = ptrtoint ptr %120 to i32
  %sub = sub i32 0, %121
  %and54 = and i32 %sub, 3
  %add.ptr = getelementptr i8, ptr %120, i32 %len.3
  %add.ptr56 = getelementptr i8, ptr %add.ptr, i32 %and54
  %end = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %118, i32 0, i32 4
  %122 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end, align 4
  %cmp57 = icmp ugt ptr %add.ptr56, %123
  br i1 %cmp57, label %if.then53.if.then62_crit_edge, label %lor.lhs.false59

if.then53.if.then62_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

lor.lhs.false59:                                  ; preds = %if.then53
  %mesg = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %118, i32 0, i32 2
  %124 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mesg, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool61.not = icmp eq i8 %127, 0
  br i1 %tobool61.not, label %lor.lhs.false59.if.end80_crit_edge, label %lor.lhs.false59.if.then62_crit_edge

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

lor.lhs.false59.if.end80_crit_edge:               ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %if.then53.if.then62_crit_edge
  tail call fastcc void @sb_queue_tail(ptr noundef %ipvs, ptr noundef %arrayidx)
  %128 = ptrtoint ptr %sync_buff to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %sync_buff, align 4
  br label %if.then67

if.then67:                                        ; preds = %if.then62, %if.end27.if.then67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %129 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 2592, i32 noundef 24) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then67.if.then70_crit_edge, label %if.end.i302

if.then67.if.then70_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then70

if.end.i302:                                      ; preds = %if.then67
  %add.i = add i32 %len.3, 8
  %sync_maxlen.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73, i32 2
  %130 = ptrtoint ptr %sync_maxlen.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %sync_maxlen.i, align 4
  %conv.i = zext i16 %131 to i32
  %132 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 %conv.i) #11
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %132, i32 noundef 2592) #15
  %mesg.i303 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i, i32 0, i32 2
  %133 = ptrtoint ptr %mesg.i303 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call9.i.i, ptr %mesg.i303, align 4
  %tobool4.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end77

if.then5.i:                                       ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.then70

if.then70:                                        ; preds = %if.then5.i, %if.then67.if.then70_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock) #11
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %cleanup

if.end77:                                         ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #13
  %134 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %call9.i.i, align 128
  %version.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %call9.i.i, i32 0, i32 4
  %135 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %version.i, align 1
  %syncid.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73, i32 1
  %136 = ptrtoint ptr %syncid.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %syncid.i, align 8
  %conv10.i = trunc i32 %137 to i8
  %syncid12.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %call9.i.i, i32 0, i32 1
  %138 = ptrtoint ptr %syncid12.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv10.i, ptr %syncid12.i, align 1
  %size.i304 = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %call9.i.i, i32 0, i32 2
  %139 = ptrtoint ptr %size.i304 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 8, ptr %size.i304, align 2
  %nr_conns.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %call9.i.i, i32 0, i32 3
  %140 = ptrtoint ptr %nr_conns.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %nr_conns.i, align 4
  %spare.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %call9.i.i, i32 0, i32 5
  %141 = ptrtoint ptr %spare.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %spare.i, align 2
  %add.ptr.i305 = getelementptr i8, ptr %call9.i.i, i32 8
  %head.i306 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i, i32 0, i32 3
  %142 = ptrtoint ptr %head.i306 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %add.ptr.i305, ptr %head.i306, align 8
  %add.ptr18.i = getelementptr i8, ptr %call9.i.i, i32 %132
  %end.i307 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i, i32 0, i32 4
  %143 = ptrtoint ptr %end.i307 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %add.ptr18.i, ptr %end.i307, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  %firstuse.i = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %firstuse.i, align 8
  %146 = ptrtoint ptr %sync_buff to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call7.i.i, ptr %sync_buff, align 4
  %mesg79 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call7.i.i, i32 0, i32 2
  %147 = ptrtoint ptr %mesg79 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mesg79, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %lor.lhs.false59.if.end80_crit_edge
  %pad.0367 = phi i32 [ 0, %if.end77 ], [ %and54, %lor.lhs.false59.if.end80_crit_edge ]
  %m.2 = phi ptr [ %148, %if.end77 ], [ %125, %lor.lhs.false59.if.end80_crit_edge ]
  %buff.1 = phi ptr [ %call7.i.i, %if.end77 ], [ %118, %lor.lhs.false59.if.end80_crit_edge ]
  %head81 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %buff.1, i32 0, i32 3
  %149 = ptrtoint ptr %head81 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %head81, align 4
  %add82 = add i32 %pad.0367, %len.3
  %add.ptr84 = getelementptr i8, ptr %150, i32 %add82
  store ptr %add.ptr84, ptr %head81, align 4
  %size = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %m.2, i32 0, i32 2
  %151 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %size, align 2
  %153 = trunc i32 %add82 to i16
  %conv88 = add i16 %152, %153
  store i16 %conv88, ptr %size, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad.0367)
  %tobool90.not388 = icmp eq i32 %pad.0367, 0
  br i1 %tobool90.not388, label %if.end80.while.end_crit_edge, label %while.body.preheader

if.end80.while.end_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.preheader:                             ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %154 = call ptr @memset(ptr %150, i32 0, i32 %pad.0367)
  %uglygep = getelementptr i8, ptr %150, i32 %pad.0367
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %if.end80.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %150, %if.end80.while.end_crit_edge ], [ %uglygep, %while.body.preheader ]
  %155 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %156)
  %cmp93 = icmp eq i16 %156, 10
  %conv95 = zext i1 %cmp93 to i8
  %157 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv95, ptr %p.0.lcssa, align 4
  %158 = trunc i32 %len.3 to i16
  %conv97 = and i16 %158, 4095
  %ver_size = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 2
  %159 = ptrtoint ptr %ver_size to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv97, ptr %ver_size, align 2
  %160 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %flags34, align 4
  %and99 = and i32 %161, -65
  %flags100 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 3
  %162 = ptrtoint ptr %flags100 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %and99, ptr %flags100, align 4
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 16
  %163 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load volatile i16, ptr %state, align 4
  %state101 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 4
  %165 = ptrtoint ptr %state101 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %state101, align 4
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 9
  %166 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %protocol, align 4
  %conv102 = trunc i16 %167 to i8
  %protocol103 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 1
  %168 = ptrtoint ptr %protocol103 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv102, ptr %protocol103, align 1
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 1
  %169 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %cport, align 4
  %cport104 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 5
  %171 = ptrtoint ptr %cport104 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %cport104, align 2
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 3
  %172 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %vport, align 4
  %vport105 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 6
  %174 = ptrtoint ptr %vport105 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %vport105, align 4
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 2
  %175 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %dport, align 2
  %dport106 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 7
  %177 = ptrtoint ptr %dport106 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %dport106, align 2
  %fwmark = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 18
  %178 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %fwmark, align 4
  %fwmark107 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 8
  %180 = ptrtoint ptr %fwmark107 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %fwmark107, align 4
  %timeout = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 14
  %181 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %timeout, align 4
  %div = udiv i32 %182, 100
  %timeout108 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 9
  %183 = ptrtoint ptr %timeout108 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %div, ptr %timeout108, align 4
  %nr_conns = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %m.2, i32 0, i32 3
  %184 = ptrtoint ptr %nr_conns to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %nr_conns, align 2
  %inc = add i8 %185, 1
  store i8 %inc, ptr %nr_conns, align 2
  %186 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %187)
  %cmp111 = icmp eq i16 %187, 10
  br i1 %cmp111, label %if.then113, label %if.else118

if.then113:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr114 = getelementptr i8, ptr %p.0.lcssa, i32 72
  %caddr = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %p.0.lcssa, i32 0, i32 10
  %caddr115 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 5
  %188 = call ptr @memcpy(ptr %caddr, ptr %caddr115, i32 16)
  %vaddr = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %p.0.lcssa, i32 0, i32 11
  %vaddr116 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 6
  %189 = call ptr @memcpy(ptr %vaddr, ptr %vaddr116, i32 16)
  %daddr = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %p.0.lcssa, i32 0, i32 12
  %daddr117 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 7
  %190 = call ptr @memcpy(ptr %daddr, ptr %daddr117, i32 16)
  br label %if.end126

if.else118:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr119 = getelementptr i8, ptr %p.0.lcssa, i32 36
  %caddr120 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 5
  %191 = ptrtoint ptr %caddr120 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %caddr120, align 4
  %caddr121 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 10
  %193 = ptrtoint ptr %caddr121 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %caddr121, align 4
  %vaddr122 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 6
  %194 = ptrtoint ptr %vaddr122 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %vaddr122, align 4
  %vaddr123 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 11
  %196 = ptrtoint ptr %vaddr123 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %vaddr123, align 4
  %daddr124 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 7
  %197 = ptrtoint ptr %daddr124 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %daddr124, align 4
  %daddr125 = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %p.0.lcssa, i32 0, i32 12
  %199 = ptrtoint ptr %daddr125 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %daddr125, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else118, %if.then113
  %p.1 = phi ptr [ %add.ptr114, %if.then113 ], [ %add.ptr119, %if.else118 ]
  %200 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %flags34, align 4
  %and128 = and i32 %201, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end135_crit_edge, label %if.then130

if.end126.if.end135_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr131 = getelementptr i8, ptr %p.1, i32 1
  %202 = ptrtoint ptr %p.1 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 1, ptr %p.1, align 1
  %incdec.ptr132 = getelementptr i8, ptr %p.1, i32 2
  %203 = ptrtoint ptr %incdec.ptr131 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 24, ptr %incdec.ptr131, align 1
  %in_seq = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 27
  %204 = ptrtoint ptr %incdec.ptr132 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %incdec.ptr132, align 4
  %206 = ptrtoint ptr %in_seq to i32
  call void @__asan_storeN_noabort(i32 %206, i32 4)
  store i32 %205, ptr %in_seq, align 1
  %delta.i = getelementptr i8, ptr %p.1, i32 6
  %207 = ptrtoint ptr %delta.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %delta.i, align 4
  %delta2.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 27, i32 1
  %209 = ptrtoint ptr %delta2.i to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 %208, ptr %delta2.i, align 1
  %previous_delta.i = getelementptr i8, ptr %p.1, i32 10
  %210 = ptrtoint ptr %previous_delta.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %previous_delta.i, align 4
  %previous_delta3.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 27, i32 2
  %212 = ptrtoint ptr %previous_delta3.i to i32
  call void @__asan_storeN_noabort(i32 %212, i32 4)
  store i32 %211, ptr %previous_delta3.i, align 1
  %add.ptr133 = getelementptr i8, ptr %p.1, i32 14
  %out_seq = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 28
  %213 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %add.ptr133, align 4
  %215 = ptrtoint ptr %out_seq to i32
  call void @__asan_storeN_noabort(i32 %215, i32 4)
  store i32 %214, ptr %out_seq, align 1
  %delta.i308 = getelementptr i8, ptr %p.1, i32 18
  %216 = ptrtoint ptr %delta.i308 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %delta.i308, align 4
  %delta2.i309 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 28, i32 1
  %218 = ptrtoint ptr %delta2.i309 to i32
  call void @__asan_storeN_noabort(i32 %218, i32 4)
  store i32 %217, ptr %delta2.i309, align 1
  %previous_delta.i310 = getelementptr i8, ptr %p.1, i32 22
  %219 = ptrtoint ptr %previous_delta.i310 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %previous_delta.i310, align 4
  %previous_delta3.i311 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 28, i32 2
  %221 = ptrtoint ptr %previous_delta3.i311 to i32
  call void @__asan_storeN_noabort(i32 %221, i32 4)
  store i32 %220, ptr %previous_delta3.i311, align 1
  %add.ptr134 = getelementptr i8, ptr %p.1, i32 26
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end126.if.end135_crit_edge
  %p.2 = phi ptr [ %add.ptr134, %if.then130 ], [ %p.1, %if.end126.if.end135_crit_edge ]
  %222 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %pe_data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool138.not = icmp eq i8 %223, 0
  br i1 %tobool138.not, label %if.end135.if.end160_crit_edge, label %land.lhs.true

if.end135.if.end160_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

land.lhs.true:                                    ; preds = %if.end135
  %pe_data139 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 30
  %224 = ptrtoint ptr %pe_data139 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pe_data139, align 4
  %tobool140.not = icmp eq ptr %225, null
  br i1 %tobool140.not, label %land.lhs.true.if.end160_crit_edge, label %if.then141

land.lhs.true.if.end160_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then141:                                       ; preds = %land.lhs.true
  %incdec.ptr142 = getelementptr i8, ptr %p.2, i32 1
  %226 = ptrtoint ptr %p.2 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 2, ptr %p.2, align 1
  %227 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %pe_data_len, align 4
  %incdec.ptr144 = getelementptr i8, ptr %p.2, i32 2
  %229 = ptrtoint ptr %incdec.ptr142 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %incdec.ptr142, align 1
  %230 = ptrtoint ptr %pe_data139 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pe_data139, align 4
  %232 = load i8, ptr %pe_data_len, align 4
  %conv147 = zext i8 %232 to i32
  %233 = call ptr @memcpy(ptr %incdec.ptr144, ptr %231, i32 %conv147)
  br i1 %tobool47.not, label %if.then141.if.end160_crit_edge, label %if.then152

if.then141.if.end160_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then152:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  %234 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %pe_data_len, align 4
  %conv149 = zext i8 %235 to i32
  %add.ptr150 = getelementptr i8, ptr %incdec.ptr144, i32 %conv149
  %incdec.ptr153 = getelementptr i8, ptr %add.ptr150, i32 1
  %236 = ptrtoint ptr %add.ptr150 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 3, ptr %add.ptr150, align 1
  %conv154 = trunc i32 %pe_name_len.0 to i8
  %incdec.ptr155 = getelementptr i8, ptr %incdec.ptr153, i32 1
  %237 = ptrtoint ptr %incdec.ptr153 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv154, ptr %incdec.ptr153, align 1
  %pe156 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0, i32 0, i32 29
  %238 = ptrtoint ptr %pe156 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pe156, align 4
  %name157 = getelementptr inbounds %struct.ip_vs_pe, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %name157 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %name157, align 4
  %242 = call ptr @memcpy(ptr %incdec.ptr155, ptr %241, i32 %pe_name_len.0)
  br label %if.end160

if.end160:                                        ; preds = %if.then152, %if.then141.if.end160_crit_edge, %land.lhs.true.if.end160_crit_edge, %if.end135.if.end160_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock) #11
  br label %control

control:                                          ; preds = %if.end160, %sloop.control_crit_edge, %if.end.control_crit_edge
  %cp.addr.1 = phi ptr [ %cp.tr.lcssa, %if.end.control_crit_edge ], [ %cp.addr.0, %if.end160 ], [ %cp.addr.0, %sloop.control_crit_edge ]
  %control162 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.1, i32 0, i32 20
  %243 = ptrtoint ptr %control162 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %control162, align 4
  %tobool163.not = icmp eq ptr %244, null
  br i1 %tobool163.not, label %control.cleanup_crit_edge, label %if.end165

control.cleanup_crit_edge:                        ; preds = %control
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end165:                                        ; preds = %control
  %flags166 = getelementptr inbounds %struct.ip_vs_conn, ptr %244, i32 0, i32 8
  %245 = ptrtoint ptr %flags166 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %flags166, align 4
  %and167 = and i32 %246, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.else171, label %if.then169

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %in_pkts = getelementptr inbounds %struct.ip_vs_conn, ptr %244, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_pkts, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %in_pkts, i32 1, i32 3, i32 1) #11
  %247 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_pkts, ptr %in_pkts, i32 1, ptr elementtype(i32) %in_pkts) #11, !srcloc !270
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %247, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !271
  br label %sloop

if.else171:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %sysctl_sync_threshold.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 46
  %248 = ptrtoint ptr %sysctl_sync_threshold.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %sysctl_sync_threshold.i, align 8
  br label %sloop

cleanup:                                          ; preds = %control.cleanup_crit_edge, %if.then70, %if.then25, %do.end, %do.body.cleanup_crit_edge, %if.end58.i.cleanup_crit_edge, %if.then32.i, %if.then11.i, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_vs_sync_conn_needed(ptr noundef %ipvs, ptr noundef %cp, i32 noundef %pkts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_endtime = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 19
  %0 = ptrtoint ptr %sync_endtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sync_endtime, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 14
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %timeout, align 4
  %add = add i32 %4, %2
  %and = and i32 %add, -4
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %and1 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end75_crit_edge, !prof !268

entry.if.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else:                                          ; preds = %entry
  %sysctl_sync_persist_mode.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 38
  %7 = ptrtoint ptr %sysctl_sync_persist_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sysctl_sync_persist_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.else.if.else13_crit_edge, label %if.else.for.cond.i_crit_edge

if.else.for.cond.i_crit_edge:                     ; preds = %if.else
  br label %for.cond.i

if.else.if.else13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else.for.cond.i_crit_edge
  %cp.pn.i = phi ptr [ %cp.addr.0.i, %for.body.i.for.cond.i_crit_edge ], [ %cp, %if.else.for.cond.i_crit_edge ]
  %cp.addr.0.in.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.pn.i, i32 0, i32 20
  %9 = ptrtoint ptr %cp.addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cp.addr.0.i = load ptr, ptr %cp.addr.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %cp.addr.0.i, null
  br i1 %tobool.not.i, label %for.cond.i.if.else13_crit_edge, label %for.body.i

for.cond.i.if.else13_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13

for.body.i:                                       ; preds = %for.cond.i
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.addr.0.i, i32 0, i32 8
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 4096
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup171_crit_edge

for.body.i.cleanup171_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.else13:                                        ; preds = %for.cond.i.if.else13_crit_edge, %if.else.if.else13_crit_edge
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol, align 4
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %if.else13.if.end75_crit_edge [
    i16 6, label %if.then21
    i16 132, label %if.then49
  ], !prof !272

if.else13.if.end75_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then21:                                        ; preds = %if.else13
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load volatile i16, ptr %state, align 4
  %conv22 = zext i16 %16 to i32
  %shl = shl nuw i32 1, %conv22
  %and23 = and i32 %shl, 242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then21.cleanup171_crit_edge, label %if.end

if.then21.cleanup171_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

if.end:                                           ; preds = %if.then21
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load volatile i16, ptr %state, align 4
  %old_state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 17
  %19 = ptrtoint ptr %old_state to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load volatile i16, ptr %old_state, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp29.not = icmp eq i16 %18, %20
  br i1 %cmp29.not, label %if.end.if.end75_crit_edge, label %land.lhs.true

if.end.if.end75_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load volatile i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp34.not = icmp eq i16 %22, 1
  br i1 %cmp34.not, label %land.lhs.true.if.end75_crit_edge, label %land.lhs.true.set_crit_edge

land.lhs.true.set_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then49:                                        ; preds = %if.else13
  %state50 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %23 = ptrtoint ptr %state50 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load volatile i16, ptr %state50, align 4
  %conv51 = zext i16 %24 to i32
  %shl52 = shl nuw i32 1, %conv51
  %and53 = and i32 %shl52, 12032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then49.cleanup171_crit_edge, label %if.end56

if.then49.cleanup171_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

if.end56:                                         ; preds = %if.then49
  %25 = ptrtoint ptr %state50 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load volatile i16, ptr %state50, align 4
  %old_state59 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 17
  %27 = ptrtoint ptr %old_state59 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load volatile i16, ptr %old_state59, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp61.not = icmp eq i16 %26, %28
  br i1 %cmp61.not, label %if.end56.if.end75_crit_edge, label %land.lhs.true64

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true64:                                  ; preds = %if.end56
  %29 = ptrtoint ptr %state50 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load volatile i16, ptr %state50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %30)
  %cmp67.not = icmp eq i16 %30, 8
  br i1 %cmp67.not, label %land.lhs.true64.if.end75_crit_edge, label %land.lhs.true64.set_crit_edge

land.lhs.true64.set_crit_edge:                    ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

land.lhs.true64.if.end75_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true64.if.end75_crit_edge, %if.end56.if.end75_crit_edge, %land.lhs.true.if.end75_crit_edge, %if.end.if.end75_crit_edge, %if.else13.if.end75_crit_edge, %entry.if.end75_crit_edge
  %force.0 = phi i32 [ 1, %land.lhs.true.if.end75_crit_edge ], [ 0, %if.end.if.end75_crit_edge ], [ 1, %land.lhs.true64.if.end75_crit_edge ], [ 0, %if.end56.if.end75_crit_edge ], [ 0, %entry.if.end75_crit_edge ], [ 0, %if.else13.if.end75_crit_edge ]
  %sysctl_sync_refresh_period.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 47
  %31 = ptrtoint ptr %sysctl_sync_refresh_period.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %sysctl_sync_refresh_period.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp77.not = icmp eq i32 %32, 0
  br i1 %cmp77.not, label %if.end123, label %if.then79

if.then79:                                        ; preds = %if.end75
  %sub = sub i32 %and, %1
  %33 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2001, i32 %34)
  %cmp82 = icmp ugt i32 %34, 2001
  %shr = lshr i32 %34, 1
  %cond = select i1 %cmp82, i32 %shr, i32 1000
  %35 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %36 = tail call i32 @llvm.smin.i32(i32 %32, i32 %cond)
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp99 = icmp slt i32 %35, %36
  br i1 %cmp99, label %if.then101, label %if.then79.if.end123.thread_crit_edge

if.then79.if.end123.thread_crit_edge:             ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.thread

if.then101:                                       ; preds = %if.then79
  %and102 = and i32 %1, 3
  %sysctl_sync_retries.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 48
  %37 = ptrtoint ptr %sysctl_sync_retries.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sysctl_sync_retries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and102, i32 %38)
  %cmp104.not = icmp slt i32 %and102, %38
  br i1 %cmp104.not, label %if.end107, label %if.then101.cleanup171_crit_edge

if.then101.cleanup171_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

if.end107:                                        ; preds = %if.then101
  %39 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %timeout, align 4
  %shr110 = lshr i32 %32, 3
  %41 = add i32 %1, %shr110
  %add111.neg = sub i32 %2, %41
  %sub112 = add i32 %add111.neg, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub112)
  %cmp113 = icmp slt i32 %sub112, 0
  br i1 %cmp113, label %if.end107.cleanup171_crit_edge, label %cleanup

if.end107.cleanup171_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

cleanup:                                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %add117 = add nuw nsw i32 %and102, 1
  %or = or i32 %and, %add117
  br label %if.end123.thread

if.end123:                                        ; preds = %if.end75
  %arrayidx.i = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 46, i32 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp125 = icmp sgt i32 %43, 0
  br i1 %cmp125, label %if.end123.if.then127_crit_edge, label %land.lhs.true139

if.end123.if.then127_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then127

if.end123.thread:                                 ; preds = %cleanup, %if.then79.if.end123.thread_crit_edge
  %n.2.ph = phi i32 [ %and, %if.then79.if.end123.thread_crit_edge ], [ %or, %cleanup ]
  %arrayidx.i234 = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 46, i32 1
  %44 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp125235 = icmp sgt i32 %45, 0
  br i1 %cmp125235, label %if.end123.thread.if.then127_crit_edge, label %if.end123.thread.set_crit_edge

if.end123.thread.set_crit_edge:                   ; preds = %if.end123.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

if.end123.thread.if.then127_crit_edge:            ; preds = %if.end123.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then127

if.then127:                                       ; preds = %if.end123.thread.if.then127_crit_edge, %if.end123.if.then127_crit_edge
  %46 = phi i32 [ %45, %if.end123.thread.if.then127_crit_edge ], [ %43, %if.end123.if.then127_crit_edge ]
  %n.3236 = phi i32 [ %n.2.ph, %if.end123.thread.if.then127_crit_edge ], [ %and, %if.end123.if.then127_crit_edge ]
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags, align 4
  %and129 = and i32 %48, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %land.lhs.true131, label %if.then127.set_crit_edge

if.then127.set_crit_edge:                         ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

land.lhs.true131:                                 ; preds = %if.then127
  %rem = srem i32 %pkts, %46
  %sysctl_sync_threshold.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 46
  %49 = ptrtoint ptr %sysctl_sync_threshold.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sysctl_sync_threshold.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %50)
  %cmp133.not = icmp eq i32 %rem, %50
  br i1 %cmp133.not, label %land.lhs.true131.set_crit_edge, label %land.lhs.true131.cleanup171_crit_edge

land.lhs.true131.cleanup171_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

land.lhs.true131.set_crit_edge:                   ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

land.lhs.true139:                                 ; preds = %if.end123
  %sysctl_sync_threshold.i227 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 46
  %51 = ptrtoint ptr %sysctl_sync_threshold.i227 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sysctl_sync_threshold.i227, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %pkts)
  %cmp141.not = icmp eq i32 %52, %pkts
  br i1 %cmp141.not, label %land.lhs.true139.set_crit_edge, label %land.lhs.true139.cleanup171_crit_edge

land.lhs.true139.cleanup171_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

land.lhs.true139.set_crit_edge:                   ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

set:                                              ; preds = %land.lhs.true139.set_crit_edge, %land.lhs.true131.set_crit_edge, %if.then127.set_crit_edge, %if.end123.thread.set_crit_edge, %land.lhs.true64.set_crit_edge, %land.lhs.true.set_crit_edge
  %force.1 = phi i32 [ %force.0, %if.then127.set_crit_edge ], [ %force.0, %land.lhs.true131.set_crit_edge ], [ %force.0, %land.lhs.true139.set_crit_edge ], [ 1, %land.lhs.true.set_crit_edge ], [ 1, %land.lhs.true64.set_crit_edge ], [ %force.0, %if.end123.thread.set_crit_edge ]
  %n.4 = phi i32 [ %n.3236, %if.then127.set_crit_edge ], [ %n.3236, %land.lhs.true131.set_crit_edge ], [ %and, %land.lhs.true139.set_crit_edge ], [ %and, %land.lhs.true.set_crit_edge ], [ %and, %land.lhs.true64.set_crit_edge ], [ %n.2.ph, %if.end123.thread.set_crit_edge ]
  %state146 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %53 = ptrtoint ptr %state146 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load volatile i16, ptr %state146, align 4
  %old_state147 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 17
  %55 = ptrtoint ptr %old_state147 to i32
  call void @__asan_store2_noabort(i32 %55)
  store volatile i16 %54, ptr %old_state147, align 2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_endtime, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr %sync_endtime, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %set
  %56 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %sync_endtime, i32 %1, i32 %n.4) #11, !srcloc !274
  %asmresult.i = extractvalue { i32, i32 } %56, 0
  %tobool.not.i228 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i228, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult1.i = extractvalue { i32, i32 } %56, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !275
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %1)
  %cmp168 = icmp eq i32 %asmresult1.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force.1)
  %tobool170 = icmp ne i32 %force.1, 0
  %narrow = or i1 %tobool170, %cmp168
  %57 = zext i1 %narrow to i32
  br label %cleanup171

cleanup171:                                       ; preds = %__cmpxchg.exit, %land.lhs.true139.cleanup171_crit_edge, %land.lhs.true131.cleanup171_crit_edge, %if.end107.cleanup171_crit_edge, %if.then101.cleanup171_crit_edge, %if.then49.cleanup171_crit_edge, %if.then21.cleanup171_crit_edge, %for.body.i.cleanup171_crit_edge
  %retval.3 = phi i32 [ %57, %__cmpxchg.exit ], [ 0, %if.then21.cleanup171_crit_edge ], [ 0, %if.then49.cleanup171_crit_edge ], [ 0, %land.lhs.true131.cleanup171_crit_edge ], [ 0, %land.lhs.true139.cleanup171_crit_edge ], [ 0, %if.then101.cleanup171_crit_edge ], [ 0, %if.end107.cleanup171_crit_edge ], [ 0, %for.body.i.cleanup171_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_queue_tail(ptr noundef %ipvs, ptr noundef %ms) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sync_buff = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms, i32 0, i32 1
  %0 = ptrtoint ptr %sync_buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sync_buff, align 4
  %sync_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 65
  tail call void @_raw_spin_lock(ptr noundef %sync_lock) #11
  %sync_state = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 71
  %2 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sync_state, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %sync_queue_len = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms, i32 0, i32 2
  %4 = ptrtoint ptr %sync_queue_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_queue_len, align 4
  %sysctl_sync_qlen_max.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 39
  %6 = ptrtoint ptr %sysctl_sync_qlen_max.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysctl_sync_qlen_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %master_wakeup_work = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %master_wakeup_work, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %sync_queue_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sync_queue_len, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %sync_queue_len, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ms, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i27 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %12, ptr noundef %ms) #11
  br i1 %call.i.i27, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %prev.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ms, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %sync_queue_delay = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms, i32 0, i32 3
  %17 = ptrtoint ptr %sync_queue_delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sync_queue_delay, align 4
  %inc6 = add i32 %18, 1
  store i32 %inc6, ptr %sync_queue_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc6)
  %cmp7 = icmp eq i32 %inc6, 8
  br i1 %cmp7, label %if.then8, label %list_add_tail.exit.if.end12_crit_edge

list_add_tail.exit.if.end12_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then8:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ms9 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 66
  %19 = ptrtoint ptr %ms9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ms9, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ms to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 124
  %master_tinfo = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 68
  %21 = ptrtoint ptr %master_tinfo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master_tinfo, align 4
  %arrayidx = getelementptr %struct.ip_vs_sync_thread_data, ptr %22, i32 %sub.ptr.div
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 @wake_up_process(ptr noundef %24) #11
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %mesg.i = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %mesg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mesg.i, align 4
  tail call void @kfree(ptr noundef %26) #11
  tail call void @kfree(ptr noundef %1) #11
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8, %list_add_tail.exit.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sync_lock) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @start_sync_thread(ptr noundef %ipvs, ptr noundef %c, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %mreq.i.i = alloca %struct.ip_mreqn, align 4
  %mcast_addr.i474 = alloca %union.ipvs_sockaddr, align 4
  %sock.i475 = alloca ptr, align 4
  %addr.i.i = alloca i32, align 4
  %sin.i.i = alloca %struct.sockaddr_in, align 4
  %mcast_addr.i = alloca %union.ipvs_sockaddr, align 4
  %sock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp = icmp sgt i32 %call, 6
  br i1 %cmp, label %do.end, label %entry.do.body8_crit_edge

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task3 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task3, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %5) #16
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  %call9 = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 6
  br i1 %cmp10, label %do.end14, label %do.body8.do.end19_crit_edge

do.body8.do.end19_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 24) #16
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body8.do.end19_crit_edge
  %call20 = tail call i32 @ip_vs_use_count_inc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %do.end19.cleanup287_crit_edge, label %for.cond.preheader

do.end19.cleanup287_crit_edge:                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup287

for.cond.preheader:                               ; preds = %do.end19
  tail call void @rtnl_lock() #11
  %sync_mutex = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 72
  %call23527 = tail call i32 @mutex_trylock(ptr noundef %sync_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23527)
  %tobool24.not528 = icmp eq i32 %call23527, 0
  br i1 %tobool24.not528, label %for.cond.preheader.if.end26_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end26

if.end26:                                         ; preds = %if.end31.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge
  tail call void @rtnl_unlock() #11
  tail call void @mutex_lock_nested(ptr noundef %sync_mutex, i32 noundef 0) #11
  %call28 = tail call i32 @rtnl_trylock() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end31:                                         ; preds = %if.end26
  tail call void @mutex_unlock(ptr noundef %sync_mutex) #11
  tail call void @rtnl_lock() #11
  %call23 = tail call i32 @mutex_trylock(ptr noundef %sync_mutex) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31.if.end26_crit_edge, label %if.end31.for.end_crit_edge

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end31.if.end26_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

for.end:                                          ; preds = %if.end31.for.end_crit_edge, %if.end26.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sync_state = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 71
  %6 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sync_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool33.not = icmp eq i32 %7, 0
  br i1 %tobool33.not, label %if.then34, label %if.else

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %sysctl_sync_ports.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 37
  %8 = ptrtoint ptr %sysctl_sync_ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sysctl_sync_ports.i, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 64)
  %sub = add nsw i32 %11, -1
  %threads_mask = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 70
  %12 = ptrtoint ptr %threads_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %threads_mask, align 4
  br label %if.end45

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %threads_mask44 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 70
  %13 = ptrtoint ptr %threads_mask44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %threads_mask44, align 4
  %add = add i32 %14, 1
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then34
  %count.0 = phi i32 [ %add, %if.else ], [ %11, %if.then34 ]
  %mcast_af = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, ptr %c, i32 0, i32 4
  %15 = ptrtoint ptr %mcast_af to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mcast_af, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp46 = icmp eq i8 %16, 0
  br i1 %cmp46, label %if.then48, label %if.end45.if.end50_crit_edge

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %mcast_af to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %mcast_af, align 4
  %18 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -536870831, ptr %c, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end45.if.end50_crit_edge
  %mcast_port = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, ptr %c, i32 0, i32 3
  %19 = ptrtoint ptr %mcast_port to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mcast_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool51.not = icmp eq i16 %20, 0
  br i1 %tobool51.not, label %if.then52, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %mcast_port to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8848, ptr %mcast_port, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50.if.end54_crit_edge
  %mcast_ttl = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, ptr %c, i32 0, i32 5
  %22 = ptrtoint ptr %mcast_ttl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mcast_ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool55.not = icmp eq i8 %23, 0
  br i1 %tobool55.not, label %if.then56, label %if.end54.if.end58_crit_edge

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %mcast_ttl to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %mcast_ttl, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54.if.end58_crit_edge
  %net = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %25 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net, align 8
  %mcast_ifn = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, ptr %c, i32 0, i32 6
  %call59 = tail call ptr @__dev_get_by_name(ptr noundef %26, ptr noundef %mcast_ifn) #11
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %do.end64, label %if.end69

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %mcast_ifn) #16
  br label %out_early

if.end69:                                         ; preds = %if.end58
  %27 = ptrtoint ptr %mcast_af to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mcast_af, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp72 = icmp eq i8 %28, 10
  %cond74 = select i1 %cmp72, i32 48, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp75 = icmp eq i32 %state, 2
  br i1 %cmp75, label %cond.true77, label %if.end69.cond.end94_crit_edge

if.end69.cond.end94_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end94

cond.true77:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %mtu78 = getelementptr inbounds %struct.net_device, ptr %call59, i32 0, i32 20
  %29 = ptrtoint ptr %mtu78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mtu78, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 1500)
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 65535)
  br label %cond.end94

cond.end94:                                       ; preds = %cond.true77, %if.end69.cond.end94_crit_edge
  %cond99 = phi i32 [ 1, %if.end69.cond.end94_crit_edge ], [ 1024, %cond.true77 ]
  %cond95 = phi i32 [ 1500, %if.end69.cond.end94_crit_edge ], [ %32, %cond.true77 ]
  %sync_maxlen = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, ptr %c, i32 0, i32 2
  %33 = ptrtoint ptr %sync_maxlen to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sync_maxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool101.not = icmp eq i16 %34, 0
  br i1 %tobool101.not, label %if.else123, label %if.then102

if.then102:                                       ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #13
  %conv104 = zext i16 %34 to i32
  %35 = tail call i32 @llvm.umax.i32(i32 %cond99, i32 %conv104)
  %sub113 = xor i32 %cond74, 65535
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 %sub113)
  br label %if.end128

if.else123:                                       ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #13
  %sub125 = sub nuw nsw i32 %cond95, %cond74
  br label %if.end128

if.end128:                                        ; preds = %if.else123, %if.then102
  %storemerge.in = phi i32 [ %sub125, %if.else123 ], [ %36, %if.then102 ]
  %storemerge = trunc i32 %storemerge.in to i16
  %37 = ptrtoint ptr %sync_maxlen to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %storemerge, ptr %sync_maxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp129 = icmp eq i32 %state, 1
  br i1 %cmp129, label %if.then131, label %if.else135

if.then131:                                       ; preds = %if.end128
  %ms = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 66
  %38 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ms, align 4
  %tobool132.not = icmp eq ptr %39, null
  br i1 %tobool132.not, label %if.then147, label %if.then131.out_early_crit_edge

if.then131.out_early_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_early

if.else135:                                       ; preds = %if.end128
  br i1 %cmp75, label %if.then138, label %if.else135.out_early_crit_edge

if.else135.out_early_crit_edge:                   ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_early

if.then138:                                       ; preds = %if.else135
  %backup_tinfo = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 69
  %40 = ptrtoint ptr %backup_tinfo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %backup_tinfo, align 8
  %tobool139.not = icmp eq ptr %41, null
  br i1 %tobool139.not, label %if.end144, label %if.then138.out_early_crit_edge

if.then138.out_early_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_early

if.end144:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  %bcfg = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 74
  %42 = call ptr @memcpy(ptr %bcfg, ptr %c, i32 44)
  br label %if.end180

if.then147:                                       ; preds = %if.then131
  %mcfg = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73
  %43 = call ptr @memcpy(ptr %mcfg, ptr %c, i32 44)
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0, i32 124) #11
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !276

kcalloc.exit.thread:                              ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ms, align 4
  br label %out

if.end7.i.i:                                      ; preds = %if.then147
  %47 = extractvalue { i32, i1 } %44, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #15
  %48 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call8.i.i, ptr %ms, align 4
  %tobool152.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool152.not, label %if.end7.i.i.out_crit_edge, label %for.cond156.preheader

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond156.preheader:                            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %cmp157530.not = icmp eq i32 %count.0, 0
  br i1 %cmp157530.not, label %for.cond156.preheader.if.end180_crit_edge, label %for.cond156.preheader.for.body_crit_edge

for.cond156.preheader.for.body_crit_edge:         ; preds = %for.cond156.preheader
  br label %for.body

for.cond156.preheader.if.end180_crit_edge:        ; preds = %for.cond156.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond156.preheader.for.body_crit_edge
  %ms148.0532 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call8.i.i, %for.cond156.preheader.for.body_crit_edge ]
  %id.0531 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond156.preheader.for.body_crit_edge ]
  %49 = ptrtoint ptr %ms148.0532 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %ms148.0532, ptr %ms148.0532, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ms148.0532, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ms148.0532, ptr %prev.i, align 4
  %sync_queue_len = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 2
  %51 = ptrtoint ptr %sync_queue_len to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %sync_queue_len, align 4
  %sync_queue_delay = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 3
  %52 = ptrtoint ptr %sync_queue_delay to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %sync_queue_delay, align 4
  %master_wakeup_work = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 4
  tail call void @__init_work(ptr noundef %master_wakeup_work, i32 noundef 0) #11
  %53 = ptrtoint ptr %master_wakeup_work to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %master_wakeup_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @start_sync_thread.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry167 = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 4, i32 0, i32 1
  %54 = ptrtoint ptr %entry167 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry167, ptr %entry167, align 4
  %prev.i433 = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 4, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i433 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry167, ptr %prev.i433, align 4
  %func = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 4, i32 0, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @master_wakeup_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @start_sync_thread.__key.17) #11
  %ipvs178 = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 0, i32 5
  %57 = ptrtoint ptr %ipvs178 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ipvs, ptr %ipvs178, align 4
  %inc = add nuw nsw i32 %id.0531, 1
  %incdec.ptr = getelementptr %struct.ipvs_master_sync_state, ptr %ms148.0532, i32 1
  %exitcond.not = icmp eq i32 %inc, %count.0
  br i1 %exitcond.not, label %for.body.if.end180_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end180_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

if.end180:                                        ; preds = %for.body.if.end180_crit_edge, %for.cond156.preheader.if.end180_crit_edge, %if.end144
  %name.0513 = phi ptr [ @.str.15, %if.end144 ], [ @.str.14, %for.cond156.preheader.if.end180_crit_edge ], [ @.str.14, %for.body.if.end180_crit_edge ]
  %threadfn.0511 = phi ptr [ @sync_thread_backup, %if.end144 ], [ @sync_thread_master, %for.cond156.preheader.if.end180_crit_edge ], [ @sync_thread_master, %for.body.if.end180_crit_edge ]
  %id.2 = phi i32 [ 0, %if.end144 ], [ 0, %for.cond156.preheader.if.end180_crit_edge ], [ %count.0, %for.body.if.end180_crit_edge ]
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0, i32 20) #11
  %59 = extractvalue { i32, i1 } %58, 1
  br i1 %59, label %if.end180.out_crit_edge, label %if.end7.i.i464, !prof !276

if.end180.out_crit_edge:                          ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7.i.i464:                                   ; preds = %if.end180
  %60 = extractvalue { i32, i1 } %58, 0
  %call8.i.i463 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #15
  %tobool182.not = icmp eq ptr %call8.i.i463, null
  br i1 %tobool182.not, label %if.end7.i.i464.out_crit_edge, label %for.cond185.preheader

if.end7.i.i464.out_crit_edge:                     ; preds = %if.end7.i.i464
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond185.preheader:                            ; preds = %if.end7.i.i464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %cmp186534.not = icmp eq i32 %count.0, 0
  br i1 %cmp186534.not, label %for.cond185.preheader.for.end228_crit_edge, label %for.body188.lr.ph

for.cond185.preheader.for.end228_crit_edge:       ; preds = %for.cond185.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end228

for.body188.lr.ph:                                ; preds = %for.cond185.preheader
  %sync_maxlen194 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 74, i32 2
  %61 = getelementptr inbounds %struct.sockaddr_in6, ptr %mcast_addr.i474, i32 0, i32 1
  %62 = getelementptr inbounds %struct.sockaddr_in6, ptr %mcast_addr.i474, i32 0, i32 2
  %63 = getelementptr inbounds %struct.sockaddr_in6, ptr %mcast_addr.i474, i32 0, i32 3
  %bcfg.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 74
  %mcast_af.i477 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 74, i32 4
  %sysctl_sync_sock_size.i.i482 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 40
  %mcast_port.i.i488 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 74, i32 3
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %call59, i32 0, i32 17
  %64 = getelementptr inbounds %struct.ip_mreqn, ptr %mreq.i.i, i32 0, i32 2
  %65 = getelementptr inbounds i8, ptr %mreq.i.i, i32 4
  %66 = getelementptr inbounds %struct.sockaddr_in6, ptr %mcast_addr.i, i32 0, i32 1
  %67 = getelementptr inbounds %struct.sockaddr_in6, ptr %mcast_addr.i, i32 0, i32 2
  %68 = getelementptr inbounds %struct.sockaddr_in6, ptr %mcast_addr.i, i32 0, i32 3
  %mcfg.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73
  %mcast_af.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73, i32 4
  %mcast_ttl.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73, i32 5
  %69 = getelementptr inbounds i8, ptr %sin.i.i, i32 8
  %70 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i.i, i32 0, i32 2
  %71 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i.i, i32 0, i32 1
  %mcast_port.i.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 73, i32 3
  br label %for.body188

for.body188:                                      ; preds = %if.end224.for.body188_crit_edge, %for.body188.lr.ph
  %id.3535 = phi i32 [ 0, %for.body188.lr.ph ], [ %inc227, %if.end224.for.body188_crit_edge ]
  %arrayidx = getelementptr %struct.ip_vs_sync_thread_data, ptr %call8.i.i463, i32 %id.3535
  %ipvs189 = getelementptr %struct.ip_vs_sync_thread_data, ptr %call8.i.i463, i32 %id.3535, i32 1
  %72 = ptrtoint ptr %ipvs189 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ipvs, ptr %ipvs189, align 4
  br i1 %cmp75, label %if.end8.i, label %for.body188.if.end201_crit_edge

for.body188.if.end201_crit_edge:                  ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

if.end8.i:                                        ; preds = %for.body188
  %73 = ptrtoint ptr %sync_maxlen194 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %sync_maxlen194, align 4
  %conv195 = zext i16 %74 to i32
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv195, i32 noundef 3264) #15
  %buf = getelementptr %struct.ip_vs_sync_thread_data, ptr %call8.i.i463, i32 %id.3535, i32 3
  %75 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call9.i, ptr %buf, align 4
  %tobool198.not = icmp eq ptr %call9.i, null
  br i1 %tobool198.not, label %if.end8.i.out_crit_edge, label %if.end8.i.if.end201_crit_edge

if.end8.i.if.end201_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end201:                                        ; preds = %if.end8.i.if.end201_crit_edge, %for.body188.if.end201_crit_edge
  %id202 = getelementptr %struct.ip_vs_sync_thread_data, ptr %call8.i.i463, i32 %id.3535, i32 4
  %76 = ptrtoint ptr %id202 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %id.3535, ptr %id202, align 4
  br i1 %cmp129, label %if.then205, label %if.else207

if.then205:                                       ; preds = %if.end201
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mcast_addr.i) #11
  %77 = call ptr @memset(ptr %mcast_addr.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i) #11
  %78 = ptrtoint ptr %sock.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock.i, align 4, !annotation !277
  %79 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net, align 8
  %81 = ptrtoint ptr %mcast_af.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mcast_af.i, align 8
  %conv.i = zext i8 %82 to i32
  %call.i = call i32 @sock_create_kern(ptr noundef %80, i32 noundef %conv.i, i32 noundef 2, i32 noundef 17, ptr noundef nonnull %sock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i467 = icmp slt i32 %call.i, 0
  br i1 %cmp.i467, label %if.then205.cleanup.sink.split.i_crit_edge, label %if.end.i469

if.then205.cleanup.sink.split.i_crit_edge:        ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i469:                                      ; preds = %if.then205
  %sock = getelementptr %struct.ip_vs_sync_thread_data, ptr %call8.i.i463, i32 %id.3535, i32 2
  %83 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sock.i, align 4
  %85 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %sock, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %84, i32 0, i32 4
  %86 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sk.i, align 16
  %skc_bound_dev_if.i.i = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %skc_bound_dev_if.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %skc_bound_dev_if.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i468 = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i468, label %if.end.i469.if.end.i.i471_crit_edge, label %land.lhs.true.i.i470

if.end.i469.if.end.i.i471_crit_edge:              ; preds = %if.end.i469
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i471

land.lhs.true.i.i470:                             ; preds = %if.end.i469
  %90 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %89)
  %cmp.not.i.i = icmp eq i32 %91, %89
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i470.if.end.i.i471_crit_edge, label %land.lhs.true.i.i470.cleanup.sink.split.i_crit_edge

land.lhs.true.i.i470.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i470
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

land.lhs.true.i.i470.if.end.i.i471_crit_edge:     ; preds = %land.lhs.true.i.i470
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i471

if.end.i.i471:                                    ; preds = %land.lhs.true.i.i470.if.end.i.i471_crit_edge, %if.end.i469.if.end.i.i471_crit_edge
  call void @lock_sock_nested(ptr noundef %87, i32 noundef 0) #11
  %92 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ifindex.i, align 4
  %mc_index.i.i = getelementptr inbounds %struct.inet_sock, ptr %87, i32 0, i32 16
  %94 = ptrtoint ptr %mc_index.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %mc_index.i.i, align 8
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 3
  %95 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %skc_family.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %96)
  %cmp5.i.i = icmp eq i16 %96, 10
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.end.i.i471.if.end12.i_crit_edge

if.end.i.i471.if.end12.i_crit_edge:               ; preds = %if.end.i.i471
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then7.i.i:                                     ; preds = %if.end.i.i471
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %87, i32 0, i32 4
  %97 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %98 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.then7.i.i.inet6_sk.exit.i.i_crit_edge, label %cond.true.i.i.i

if.then7.i.i.inet6_sk.exit.i.i_crit_edge:         ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %87, i32 0, i32 1
  %99 = ptrtoint ptr %pinet6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pinet6.i.i.i, align 8
  br label %inet6_sk.exit.i.i

inet6_sk.exit.i.i:                                ; preds = %cond.true.i.i.i, %if.then7.i.i.inet6_sk.exit.i.i_crit_edge
  %cond.i.i.i = phi ptr [ %100, %cond.true.i.i.i ], [ null, %if.then7.i.i.inet6_sk.exit.i.i_crit_edge ]
  %101 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ifindex.i, align 4
  %mcast_oif.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i.i, i32 0, i32 8
  %103 = ptrtoint ptr %mcast_oif.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %mcast_oif.i.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %inet6_sk.exit.i.i, %if.end.i.i471.if.end12.i_crit_edge
  call void @release_sock(ptr noundef %87) #11
  %104 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sock.i, align 4
  %sk13.i = getelementptr inbounds %struct.socket, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %sk13.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sk13.i, align 16
  call void @lock_sock_nested(ptr noundef %107, i32 noundef 0) #11
  %mc_loop.i.i = getelementptr inbounds %struct.inet_sock, ptr %107, i32 0, i32 12
  %108 = ptrtoint ptr %mc_loop.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i.i = load i16, ptr %mc_loop.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -2049
  store i16 %bf.clear.i.i, ptr %mc_loop.i.i, align 8
  %skc_family.i66.i = getelementptr inbounds %struct.sock_common, ptr %107, i32 0, i32 3
  %109 = ptrtoint ptr %skc_family.i66.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %skc_family.i66.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %110)
  %cmp.i.i472 = icmp eq i16 %110, 10
  br i1 %cmp.i.i472, label %if.then.i.i, label %if.end12.i.set_mcast_loop.exit.i_crit_edge

if.end12.i.set_mcast_loop.exit.i_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_mcast_loop.exit.i

if.then.i.i:                                      ; preds = %if.end12.i
  %skc_state.i.i.i67.i = getelementptr inbounds %struct.sock_common, ptr %107, i32 0, i32 4
  %111 = ptrtoint ptr %skc_state.i.i.i67.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load volatile i8, ptr %skc_state.i.i.i67.i, align 2
  %conv.i.i.i68.i = zext i8 %112 to i32
  %shl.i.i.i69.i = shl nuw i32 1, %conv.i.i.i68.i
  %and.i.i.i70.i = and i32 %shl.i.i.i69.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i70.i)
  %tobool.i.not.i.i71.i = icmp eq i32 %and.i.i.i70.i, 0
  br i1 %tobool.i.not.i.i71.i, label %if.then.i.i.inet6_sk.exit.i75.i_crit_edge, label %cond.true.i.i73.i

if.then.i.i.inet6_sk.exit.i75.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i75.i

cond.true.i.i73.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i72.i = getelementptr inbounds %struct.inet_sock, ptr %107, i32 0, i32 1
  %113 = ptrtoint ptr %pinet6.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pinet6.i.i72.i, align 8
  br label %inet6_sk.exit.i75.i

inet6_sk.exit.i75.i:                              ; preds = %cond.true.i.i73.i, %if.then.i.i.inet6_sk.exit.i75.i_crit_edge
  %cond.i.i74.i = phi ptr [ %114, %cond.true.i.i73.i ], [ null, %if.then.i.i.inet6_sk.exit.i75.i_crit_edge ]
  %mc_loop9.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i74.i, i32 0, i32 6
  %115 = ptrtoint ptr %mc_loop9.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load10.i.i = load i32, ptr %mc_loop9.i.i, align 4
  %bf.clear12.i.i = and i32 %bf.load10.i.i, -2
  store i32 %bf.clear12.i.i, ptr %mc_loop9.i.i, align 4
  br label %set_mcast_loop.exit.i

set_mcast_loop.exit.i:                            ; preds = %inet6_sk.exit.i75.i, %if.end12.i.set_mcast_loop.exit.i_crit_edge
  call void @release_sock(ptr noundef %107) #11
  %116 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sock.i, align 4
  %sk14.i = getelementptr inbounds %struct.socket, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %sk14.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sk14.i, align 16
  %120 = ptrtoint ptr %mcast_ttl.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %mcast_ttl.i, align 1
  call void @lock_sock_nested(ptr noundef %119, i32 noundef 0) #11
  %mc_ttl.i.i = getelementptr inbounds %struct.inet_sock, ptr %119, i32 0, i32 10
  %122 = ptrtoint ptr %mc_ttl.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %mc_ttl.i.i, align 2
  %skc_family.i77.i = getelementptr inbounds %struct.sock_common, ptr %119, i32 0, i32 3
  %123 = ptrtoint ptr %skc_family.i77.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %skc_family.i77.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %124)
  %cmp.i78.i = icmp eq i16 %124, 10
  br i1 %cmp.i78.i, label %if.then.i84.i, label %set_mcast_loop.exit.i.set_mcast_ttl.exit.i_crit_edge

set_mcast_loop.exit.i.set_mcast_ttl.exit.i_crit_edge: ; preds = %set_mcast_loop.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_mcast_ttl.exit.i

if.then.i84.i:                                    ; preds = %set_mcast_loop.exit.i
  %skc_state.i.i.i79.i = getelementptr inbounds %struct.sock_common, ptr %119, i32 0, i32 4
  %125 = ptrtoint ptr %skc_state.i.i.i79.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load volatile i8, ptr %skc_state.i.i.i79.i, align 2
  %conv.i.i.i80.i = zext i8 %126 to i32
  %shl.i.i.i81.i = shl nuw i32 1, %conv.i.i.i80.i
  %and.i.i.i82.i = and i32 %shl.i.i.i81.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i82.i)
  %tobool.i.not.i.i83.i = icmp eq i32 %and.i.i.i82.i, 0
  br i1 %tobool.i.not.i.i83.i, label %if.then.i84.i.inet6_sk.exit.i90.i_crit_edge, label %cond.true.i.i86.i

if.then.i84.i.inet6_sk.exit.i90.i_crit_edge:      ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i90.i

cond.true.i.i86.i:                                ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i85.i = getelementptr inbounds %struct.inet_sock, ptr %119, i32 0, i32 1
  %127 = ptrtoint ptr %pinet6.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pinet6.i.i85.i, align 8
  br label %inet6_sk.exit.i90.i

inet6_sk.exit.i90.i:                              ; preds = %cond.true.i.i86.i, %if.then.i84.i.inet6_sk.exit.i90.i_crit_edge
  %cond.i.i87.i = phi ptr [ %128, %cond.true.i.i86.i ], [ null, %if.then.i84.i.inet6_sk.exit.i90.i_crit_edge ]
  %mcast_hops.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i87.i, i32 0, i32 6
  %129 = zext i8 %121 to i32
  %130 = ptrtoint ptr %mcast_hops.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load.i88.i = load i32, ptr %mcast_hops.i.i, align 4
  %bf.shl.i.i = shl nuw nsw i32 %129, 7
  %bf.clear.i89.i = and i32 %bf.load.i88.i, -65409
  %bf.set.i.i = or i32 %bf.clear.i89.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %mcast_hops.i.i, align 4
  br label %set_mcast_ttl.exit.i

set_mcast_ttl.exit.i:                             ; preds = %inet6_sk.exit.i90.i, %set_mcast_loop.exit.i.set_mcast_ttl.exit.i_crit_edge
  call void @release_sock(ptr noundef %119) #11
  %131 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sock.i, align 4
  %sk16.i = getelementptr inbounds %struct.socket, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %sk16.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sk16.i, align 16
  call void @lock_sock_nested(ptr noundef %134, i32 noundef 0) #11
  %pmtudisc.i.i = getelementptr inbounds %struct.inet_sock, ptr %134, i32 0, i32 11
  %135 = ptrtoint ptr %pmtudisc.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %pmtudisc.i.i, align 1
  %skc_family.i92.i = getelementptr inbounds %struct.sock_common, ptr %134, i32 0, i32 3
  %136 = ptrtoint ptr %skc_family.i92.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %skc_family.i92.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %137)
  %cmp.i93.i = icmp eq i16 %137, 10
  br i1 %cmp.i93.i, label %if.then.i99.i, label %set_mcast_ttl.exit.i.set_mcast_pmtudisc.exit.i_crit_edge

set_mcast_ttl.exit.i.set_mcast_pmtudisc.exit.i_crit_edge: ; preds = %set_mcast_ttl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_mcast_pmtudisc.exit.i

if.then.i99.i:                                    ; preds = %set_mcast_ttl.exit.i
  %skc_state.i.i.i94.i = getelementptr inbounds %struct.sock_common, ptr %134, i32 0, i32 4
  %138 = ptrtoint ptr %skc_state.i.i.i94.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load volatile i8, ptr %skc_state.i.i.i94.i, align 2
  %conv.i.i.i95.i = zext i8 %139 to i32
  %shl.i.i.i96.i = shl nuw i32 1, %conv.i.i.i95.i
  %and.i.i.i97.i = and i32 %shl.i.i.i96.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i97.i)
  %tobool.i.not.i.i98.i = icmp eq i32 %and.i.i.i97.i, 0
  br i1 %tobool.i.not.i.i98.i, label %if.then.i99.i.inet6_sk.exit.i105.i_crit_edge, label %cond.true.i.i101.i

if.then.i99.i.inet6_sk.exit.i105.i_crit_edge:     ; preds = %if.then.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i105.i

cond.true.i.i101.i:                               ; preds = %if.then.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i100.i = getelementptr inbounds %struct.inet_sock, ptr %134, i32 0, i32 1
  %140 = ptrtoint ptr %pinet6.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pinet6.i.i100.i, align 8
  br label %inet6_sk.exit.i105.i

inet6_sk.exit.i105.i:                             ; preds = %cond.true.i.i101.i, %if.then.i99.i.inet6_sk.exit.i105.i_crit_edge
  %cond.i.i102.i = phi ptr [ %141, %cond.true.i.i101.i ], [ null, %if.then.i99.i.inet6_sk.exit.i105.i_crit_edge ]
  %pmtudisc5.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i102.i, i32 0, i32 10
  %142 = ptrtoint ptr %pmtudisc5.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load.i103.i = load i16, ptr %pmtudisc5.i.i, align 2
  %bf.clear.i104.i = and i16 %bf.load.i103.i, -7169
  store i16 %bf.clear.i104.i, ptr %pmtudisc5.i.i, align 2
  br label %set_mcast_pmtudisc.exit.i

set_mcast_pmtudisc.exit.i:                        ; preds = %inet6_sk.exit.i105.i, %set_mcast_ttl.exit.i.set_mcast_pmtudisc.exit.i_crit_edge
  call void @release_sock(ptr noundef %134) #11
  %143 = ptrtoint ptr %sysctl_sync_sock_size.i.i482 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sysctl_sync_sock_size.i.i482, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp18.i = icmp sgt i32 %144, 0
  br i1 %cmp18.i, label %if.then20.i, label %set_mcast_pmtudisc.exit.i.if.end22.i_crit_edge

set_mcast_pmtudisc.exit.i.if.end22.i_crit_edge:   ; preds = %set_mcast_pmtudisc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then20.i:                                      ; preds = %set_mcast_pmtudisc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sock.i, align 4
  %sk21.i = getelementptr inbounds %struct.socket, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %sk21.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sk21.i, align 16
  call void @lock_sock_nested(ptr noundef %148, i32 noundef 0) #11
  %149 = call i32 @llvm.smax.i32(i32 %144, i32 2304) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_wmem_max to i32))
  %150 = load i32, ptr @sysctl_wmem_max, align 4
  %151 = call i32 @llvm.smin.i32(i32 %149, i32 %150) #11
  %mul.i.i = shl i32 %151, 1
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %148, i32 0, i32 21
  %152 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %mul.i.i, ptr %sk_sndbuf.i.i, align 4
  %sk_userlocks25.i.i = getelementptr inbounds %struct.sock, ptr %148, i32 0, i32 43
  %153 = ptrtoint ptr %sk_userlocks25.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %bf.load26.i.i = load i8, ptr %sk_userlocks25.i.i, align 8
  %bf.set34.i.i = or i8 %bf.load26.i.i, 1
  store i8 %bf.set34.i.i, ptr %sk_userlocks25.i.i, align 8
  call void @release_sock(ptr noundef %148) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %set_mcast_pmtudisc.exit.i.if.end22.i_crit_edge
  %154 = ptrtoint ptr %mcast_af.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %mcast_af.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %155)
  %cmp26.i = icmp eq i8 %155, 2
  br i1 %cmp26.i, label %if.then28.i, label %if.end22.i.if.end39.i_crit_edge

if.end22.i.if.end39.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

if.then28.i:                                      ; preds = %if.end22.i
  %156 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i.i) #11
  %158 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 8)
  store i64 -1, ptr %69, align 4
  %call.i.i = call i32 @inet_select_addr(ptr noundef nonnull %call59, i32 noundef 0, i32 noundef 0) #11
  %159 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call.i.i, ptr %addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i109.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i109.i, label %do.end.i.i, label %if.then28.i.do.body2.i.i_crit_edge

if.then28.i.do.body2.i.i_crit_edge:               ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i.i

do.end.i.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i473 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #16
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %do.end.i.i, %if.then28.i.do.body2.i.i_crit_edge
  %call3.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i.i)
  %cmp.i110.i = icmp sgt i32 %call3.i.i, 6
  br i1 %cmp.i110.i, label %do.end7.i.i, label %do.body2.i.i.if.end30.i_crit_edge

do.body2.i.i.if.end30.i_crit_edge:                ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

do.end7.i.i:                                      ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull %call59, ptr noundef nonnull %addr.i.i) #16
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end7.i.i, %do.body2.i.i.if.end30.i_crit_edge
  %160 = ptrtoint ptr %sin.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 2, ptr %sin.i.i, align 4
  %161 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %addr.i.i, align 4
  %163 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %70, align 4
  %164 = ptrtoint ptr %71 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %71, align 2
  %ops.i.i = getelementptr inbounds %struct.socket, ptr %157, i32 0, i32 5
  %165 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ops.i.i, align 4
  %bind.i.i = getelementptr inbounds %struct.proto_ops, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %bind.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bind.i.i, align 4
  %call13.i.i = call i32 %168(ptr noundef %157, ptr noundef nonnull %sin.i.i, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp31.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp31.i, label %if.end30.i.cleanup.sink.split.i_crit_edge, label %if.end39thread-pre-split.i

if.end30.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end39thread-pre-split.i:                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %mcast_af.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %.pr.i = load i8, ptr %mcast_af.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end39thread-pre-split.i, %if.end22.i.if.end39.i_crit_edge
  %170 = phi i8 [ %.pr.i, %if.end39thread-pre-split.i ], [ %155, %if.end22.i.if.end39.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %170)
  %cmp.i111.i = icmp eq i8 %170, 10
  %171 = ptrtoint ptr %mcast_port.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %mcast_port.i.i, align 2
  %173 = trunc i32 %id.3535 to i16
  %conv3.i.i = add i16 %172, %173
  br i1 %cmp.i111.i, label %if.then.i112.i, label %if.else.i.i

if.then.i112.i:                                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %174 = ptrtoint ptr %mcast_addr.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 10, ptr %mcast_addr.i, align 4
  %175 = call ptr @memset(ptr %67, i32 0, i32 24)
  %176 = call ptr @memcpy(ptr %68, ptr %mcfg.i, i32 16)
  br label %get_mcast_sockaddr.exit.i

if.else.i.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %177 = ptrtoint ptr %mcast_addr.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 2, ptr %mcast_addr.i, align 4
  %178 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 8)
  store i64 0, ptr %68, align 4
  %179 = ptrtoint ptr %mcfg.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mcfg.i, align 4
  %181 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %67, align 4
  br label %get_mcast_sockaddr.exit.i

get_mcast_sockaddr.exit.i:                        ; preds = %if.else.i.i, %if.then.i112.i
  %storemerge.i.i = phi i32 [ 28, %if.then.i112.i ], [ 16, %if.else.i.i ]
  %182 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv3.i.i, ptr %66, align 2
  %183 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sock.i, align 4
  %ops.i = getelementptr inbounds %struct.socket, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ops.i, align 4
  %connect.i = getelementptr inbounds %struct.proto_ops, ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %connect.i, align 4
  %call41.i = call i32 %188(ptr noundef %184, ptr noundef nonnull %mcast_addr.i, i32 noundef %storemerge.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %get_mcast_sockaddr.exit.i.cleanup.sink.split.i_crit_edge, label %get_mcast_sockaddr.exit.i.make_send_sock.exit_crit_edge

get_mcast_sockaddr.exit.i.make_send_sock.exit_crit_edge: ; preds = %get_mcast_sockaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %make_send_sock.exit

get_mcast_sockaddr.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %get_mcast_sockaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %get_mcast_sockaddr.exit.i.cleanup.sink.split.i_crit_edge, %if.end30.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.i470.cleanup.sink.split.i_crit_edge, %if.then205.cleanup.sink.split.i_crit_edge
  %.str.122.sink.i = phi ptr [ @.str.122, %if.then205.cleanup.sink.split.i_crit_edge ], [ @.str.125, %land.lhs.true.i.i470.cleanup.sink.split.i_crit_edge ], [ @.str.128, %if.end30.i.cleanup.sink.split.i_crit_edge ], [ @.str.131, %get_mcast_sockaddr.exit.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.then205.cleanup.sink.split.i_crit_edge ], [ -22, %land.lhs.true.i.i470.cleanup.sink.split.i_crit_edge ], [ %call13.i.i, %if.end30.i.cleanup.sink.split.i_crit_edge ], [ %call41.i, %get_mcast_sockaddr.exit.i.cleanup.sink.split.i_crit_edge ]
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.122.sink.i) #16
  br label %make_send_sock.exit

make_send_sock.exit:                              ; preds = %cleanup.sink.split.i, %get_mcast_sockaddr.exit.i.make_send_sock.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %get_mcast_sockaddr.exit.i.make_send_sock.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mcast_addr.i) #11
  br label %if.end210

if.else207:                                       ; preds = %if.end201
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mcast_addr.i474) #11
  %189 = call ptr @memset(ptr %mcast_addr.i474, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i475) #11
  %190 = ptrtoint ptr %sock.i475 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock.i475, align 4, !annotation !277
  %191 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %net, align 8
  %193 = ptrtoint ptr %mcast_af.i477 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %mcast_af.i477, align 4
  %conv.i478 = zext i8 %194 to i32
  %call.i479 = call i32 @sock_create_kern(ptr noundef %192, i32 noundef %conv.i478, i32 noundef 2, i32 noundef 17, ptr noundef nonnull %sock.i475) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i479)
  %cmp.i480 = icmp slt i32 %call.i479, 0
  br i1 %cmp.i480, label %if.else207.cleanup.sink.split.i505_crit_edge, label %if.end.i483

if.else207.cleanup.sink.split.i505_crit_edge:     ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i505

if.end.i483:                                      ; preds = %if.else207
  %sock208 = getelementptr %struct.ip_vs_sync_thread_data, ptr %call8.i.i463, i32 %id.3535, i32 2
  %195 = ptrtoint ptr %sock.i475 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %sock.i475, align 4
  %197 = ptrtoint ptr %sock208 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %196, ptr %sock208, align 4
  %sk.i481 = getelementptr inbounds %struct.socket, ptr %196, i32 0, i32 4
  %198 = ptrtoint ptr %sk.i481 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sk.i481, align 16
  %skc_reuse.i = getelementptr inbounds %struct.sock_common, ptr %199, i32 0, i32 5
  %200 = ptrtoint ptr %skc_reuse.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load.i = load i8, ptr %skc_reuse.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  %bf.set.i = or i8 %bf.clear.i, 16
  store i8 %bf.set.i, ptr %skc_reuse.i, align 1
  %201 = ptrtoint ptr %sysctl_sync_sock_size.i.i482 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %sysctl_sync_sock_size.i.i482, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp4.i = icmp sgt i32 %202, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i483.if.end8.i490_crit_edge

if.end.i483.if.end8.i490_crit_edge:               ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i490

if.then6.i:                                       ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #13
  %203 = ptrtoint ptr %sk.i481 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sk.i481, align 16
  call void @lock_sock_nested(ptr noundef %204, i32 noundef 0) #11
  %205 = call i32 @llvm.smax.i32(i32 %202, i32 1152) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_rmem_max to i32))
  %206 = load i32, ptr @sysctl_rmem_max, align 4
  %207 = call i32 @llvm.smin.i32(i32 %205, i32 %206) #11
  %mul24.i.i = shl i32 %207, 1
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %204, i32 0, i32 15
  %208 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %mul24.i.i, ptr %sk_rcvbuf.i.i, align 8
  %sk_userlocks25.i.i484 = getelementptr inbounds %struct.sock, ptr %204, i32 0, i32 43
  %209 = ptrtoint ptr %sk_userlocks25.i.i484 to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load26.i.i485 = load i8, ptr %sk_userlocks25.i.i484, align 8
  %bf.set34.i.i486 = or i8 %bf.load26.i.i485, 2
  store i8 %bf.set34.i.i486, ptr %sk_userlocks25.i.i484, align 8
  call void @release_sock(ptr noundef %204) #11
  br label %if.end8.i490

if.end8.i490:                                     ; preds = %if.then6.i, %if.end.i483.if.end8.i490_crit_edge
  %210 = ptrtoint ptr %mcast_af.i477 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %mcast_af.i477, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %211)
  %cmp.i.i487 = icmp eq i8 %211, 10
  %212 = ptrtoint ptr %mcast_port.i.i488 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %mcast_port.i.i488, align 2
  %214 = trunc i32 %id.3535 to i16
  %conv3.i.i489 = add i16 %213, %214
  br i1 %cmp.i.i487, label %if.then.i.i491, label %if.else.i.i492

if.then.i.i491:                                   ; preds = %if.end8.i490
  call void @__sanitizer_cov_trace_pc() #13
  %215 = ptrtoint ptr %mcast_addr.i474 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 10, ptr %mcast_addr.i474, align 4
  %216 = call ptr @memset(ptr %62, i32 0, i32 24)
  %217 = call ptr @memcpy(ptr %63, ptr %bcfg.i, i32 16)
  br label %get_mcast_sockaddr.exit.i495

if.else.i.i492:                                   ; preds = %if.end8.i490
  call void @__sanitizer_cov_trace_pc() #13
  %218 = ptrtoint ptr %mcast_addr.i474 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 2, ptr %mcast_addr.i474, align 4
  %219 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %219, i32 8)
  store i64 0, ptr %63, align 4
  %220 = ptrtoint ptr %bcfg.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %bcfg.i, align 4
  %222 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %62, align 4
  br label %get_mcast_sockaddr.exit.i495

get_mcast_sockaddr.exit.i495:                     ; preds = %if.else.i.i492, %if.then.i.i491
  %storemerge.i.i493 = phi i32 [ 28, %if.then.i.i491 ], [ 16, %if.else.i.i492 ]
  %223 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv3.i.i489, ptr %61, align 2
  %224 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ifindex.i, align 4
  %226 = ptrtoint ptr %sock.i475 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %sock.i475, align 4
  %sk10.i = getelementptr inbounds %struct.socket, ptr %227, i32 0, i32 4
  %228 = ptrtoint ptr %sk10.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %sk10.i, align 16
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %229, i32 0, i32 6
  %230 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %225, ptr %skc_bound_dev_if.i, align 4
  %ops.i494 = getelementptr inbounds %struct.socket, ptr %227, i32 0, i32 5
  %231 = ptrtoint ptr %ops.i494 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ops.i494, align 4
  %bind.i = getelementptr inbounds %struct.proto_ops, ptr %232, i32 0, i32 3
  %233 = ptrtoint ptr %bind.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %bind.i, align 4
  %call12.i = call i32 %234(ptr noundef %227, ptr noundef nonnull %mcast_addr.i474, i32 noundef %storemerge.i.i493) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %get_mcast_sockaddr.exit.i495.cleanup.sink.split.i505_crit_edge, label %if.end21.i

get_mcast_sockaddr.exit.i495.cleanup.sink.split.i505_crit_edge: ; preds = %get_mcast_sockaddr.exit.i495
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i505

if.end21.i:                                       ; preds = %get_mcast_sockaddr.exit.i495
  %235 = ptrtoint ptr %mcast_af.i477 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %mcast_af.i477, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %236)
  %cmp25.i = icmp eq i8 %236, 10
  %237 = ptrtoint ptr %sock.i475 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %sock.i475, align 4
  %sk28.i = getelementptr inbounds %struct.socket, ptr %238, i32 0, i32 4
  %239 = ptrtoint ptr %sk28.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %sk28.i, align 16
  br i1 %cmp25.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end21.i
  %skc_bound_dev_if.i.i496 = getelementptr inbounds %struct.sock_common, ptr %240, i32 0, i32 6
  %241 = ptrtoint ptr %skc_bound_dev_if.i.i496 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %skc_bound_dev_if.i.i496, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool.not.i.i497 = icmp eq i32 %242, 0
  br i1 %tobool.not.i.i497, label %if.then27.i.if.end.i.i501_crit_edge, label %land.lhs.true.i.i499

if.then27.i.if.end.i.i501_crit_edge:              ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i501

land.lhs.true.i.i499:                             ; preds = %if.then27.i
  %243 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %242)
  %cmp.not.i.i498 = icmp eq i32 %244, %242
  br i1 %cmp.not.i.i498, label %land.lhs.true.i.i499.if.end.i.i501_crit_edge, label %land.lhs.true.i.i499.cleanup.sink.split.i505_crit_edge

land.lhs.true.i.i499.cleanup.sink.split.i505_crit_edge: ; preds = %land.lhs.true.i.i499
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i505

land.lhs.true.i.i499.if.end.i.i501_crit_edge:     ; preds = %land.lhs.true.i.i499
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i501

if.end.i.i501:                                    ; preds = %land.lhs.true.i.i499.if.end.i.i501_crit_edge, %if.then27.i.if.end.i.i501_crit_edge
  call void @lock_sock_nested(ptr noundef %240, i32 noundef 0) #11
  %245 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %ifindex.i, align 4
  %call.i.i500 = call i32 @ipv6_sock_mc_join(ptr noundef %240, i32 noundef %246, ptr noundef %63) #11
  call void @release_sock(ptr noundef %240) #11
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end21.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mreq.i.i) #11
  %247 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 0, ptr %65, align 4
  %248 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %62, align 4
  %250 = ptrtoint ptr %mreq.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %mreq.i.i, align 4
  %skc_bound_dev_if.i56.i = getelementptr inbounds %struct.sock_common, ptr %240, i32 0, i32 6
  %251 = ptrtoint ptr %skc_bound_dev_if.i56.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %skc_bound_dev_if.i56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool.not.i57.i = icmp eq i32 %252, 0
  br i1 %tobool.not.i57.i, label %if.else.i.if.end.i63.i_crit_edge, label %land.lhs.true.i60.i

if.else.i.if.end.i63.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i63.i

land.lhs.true.i60.i:                              ; preds = %if.else.i
  %253 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %252)
  %cmp.not.i59.i = icmp eq i32 %254, %252
  br i1 %cmp.not.i59.i, label %land.lhs.true.i60.i.if.end.i63.i_crit_edge, label %land.lhs.true.i60.i.join_mcast_group.exit.i_crit_edge

land.lhs.true.i60.i.join_mcast_group.exit.i_crit_edge: ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %join_mcast_group.exit.i

land.lhs.true.i60.i.if.end.i63.i_crit_edge:       ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i63.i

if.end.i63.i:                                     ; preds = %land.lhs.true.i60.i.if.end.i63.i_crit_edge, %if.else.i.if.end.i63.i_crit_edge
  %255 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %ifindex.i, align 4
  %257 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %64, align 4
  call void @lock_sock_nested(ptr noundef %240, i32 noundef 0) #11
  %call.i62.i = call i32 @ip_mc_join_group(ptr noundef %240, ptr noundef nonnull %mreq.i.i) #11
  call void @release_sock(ptr noundef %240) #11
  br label %join_mcast_group.exit.i

join_mcast_group.exit.i:                          ; preds = %if.end.i63.i, %land.lhs.true.i60.i.join_mcast_group.exit.i_crit_edge
  %retval.0.i64.i = phi i32 [ %call.i62.i, %if.end.i63.i ], [ -22, %land.lhs.true.i60.i.join_mcast_group.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mreq.i.i) #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %join_mcast_group.exit.i, %if.end.i.i501
  %result.0.i = phi i32 [ %retval.0.i64.i, %join_mcast_group.exit.i ], [ %call.i.i500, %if.end.i.i501 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp33.i = icmp slt i32 %result.0.i, 0
  br i1 %cmp33.i, label %if.end32.i.cleanup.sink.split.i505_crit_edge, label %if.end32.i.make_receive_sock.exit_crit_edge

if.end32.i.make_receive_sock.exit_crit_edge:      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %make_receive_sock.exit

if.end32.i.cleanup.sink.split.i505_crit_edge:     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i505

cleanup.sink.split.i505:                          ; preds = %if.end32.i.cleanup.sink.split.i505_crit_edge, %land.lhs.true.i.i499.cleanup.sink.split.i505_crit_edge, %get_mcast_sockaddr.exit.i495.cleanup.sink.split.i505_crit_edge, %if.else207.cleanup.sink.split.i505_crit_edge
  %.str.122.sink.i502 = phi ptr [ @.str.122, %if.else207.cleanup.sink.split.i505_crit_edge ], [ @.str.140, %get_mcast_sockaddr.exit.i495.cleanup.sink.split.i505_crit_edge ], [ @.str.143, %land.lhs.true.i.i499.cleanup.sink.split.i505_crit_edge ], [ @.str.143, %if.end32.i.cleanup.sink.split.i505_crit_edge ]
  %retval.0.ph.i503 = phi i32 [ %call.i479, %if.else207.cleanup.sink.split.i505_crit_edge ], [ %call12.i, %get_mcast_sockaddr.exit.i495.cleanup.sink.split.i505_crit_edge ], [ -22, %land.lhs.true.i.i499.cleanup.sink.split.i505_crit_edge ], [ %result.0.i, %if.end32.i.cleanup.sink.split.i505_crit_edge ]
  %call2.i504 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.122.sink.i502) #16
  br label %make_receive_sock.exit

make_receive_sock.exit:                           ; preds = %cleanup.sink.split.i505, %if.end32.i.make_receive_sock.exit_crit_edge
  %retval.0.i506 = phi i32 [ 0, %if.end32.i.make_receive_sock.exit_crit_edge ], [ %retval.0.ph.i503, %cleanup.sink.split.i505 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i475) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mcast_addr.i474) #11
  br label %if.end210

if.end210:                                        ; preds = %make_receive_sock.exit, %make_send_sock.exit
  %result.0 = phi i32 [ %retval.0.i, %make_send_sock.exit ], [ %retval.0.i506, %make_receive_sock.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %cmp211 = icmp slt i32 %result.0, 0
  br i1 %cmp211, label %if.end210.out_crit_edge, label %if.end214

if.end210.out_crit_edge:                          ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end214:                                        ; preds = %if.end210
  %258 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %ipvs, align 8
  %call215 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull %threadfn.0511, ptr noundef %arrayidx, i32 noundef -1, ptr noundef nonnull %name.0513, i32 noundef %259, i32 noundef %id.3535) #11
  %cmp.i507 = icmp ugt ptr %call215, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i507, label %if.then222, label %if.end224

if.then222:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  %260 = ptrtoint ptr %call215 to i32
  br label %out

if.end224:                                        ; preds = %if.end214
  %call218 = call i32 @wake_up_process(ptr noundef %call215) #11
  %261 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call215, ptr %arrayidx, align 4
  %inc227 = add nuw nsw i32 %id.3535, 1
  %exitcond543.not = icmp eq i32 %inc227, %count.0
  br i1 %exitcond543.not, label %if.end224.for.end228_crit_edge, label %if.end224.for.body188_crit_edge

if.end224.for.body188_crit_edge:                  ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body188

if.end224.for.end228_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end228

for.end228:                                       ; preds = %if.end224.for.end228_crit_edge, %for.cond185.preheader.for.end228_crit_edge
  br i1 %cmp129, label %if.then231, label %if.else232

if.then231:                                       ; preds = %for.end228
  call void @__sanitizer_cov_trace_pc() #13
  %master_tinfo = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 68
  %262 = ptrtoint ptr %master_tinfo to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call8.i.i463, ptr %master_tinfo, align 4
  br label %if.end234

if.else232:                                       ; preds = %for.end228
  call void @__sanitizer_cov_trace_pc() #13
  %backup_tinfo233 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 69
  %263 = ptrtoint ptr %backup_tinfo233 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call8.i.i463, ptr %backup_tinfo233, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.else232, %if.then231
  %sync_buff_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 67
  call void @_raw_spin_lock_bh(ptr noundef %sync_buff_lock) #11
  %264 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load volatile i32, ptr %sync_state, align 8
  %or = or i32 %265, %state
  store volatile i32 %or, ptr %sync_state, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock) #11
  call void @mutex_unlock(ptr noundef %sync_mutex) #11
  call void @rtnl_unlock() #11
  br label %cleanup287

out:                                              ; preds = %if.then222, %if.end210.out_crit_edge, %if.end8.i.out_crit_edge, %if.end7.i.i464.out_crit_edge, %if.end180.out_crit_edge, %if.end7.i.i.out_crit_edge, %kcalloc.exit.thread
  %result.1 = phi i32 [ %260, %if.then222 ], [ -12, %if.end7.i.i464.out_crit_edge ], [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %if.end180.out_crit_edge ], [ -12, %if.end8.i.out_crit_edge ], [ %result.0, %if.end210.out_crit_edge ]
  %id.4 = phi i32 [ %id.3535, %if.then222 ], [ %id.2, %if.end7.i.i464.out_crit_edge ], [ 0, %if.end7.i.i.out_crit_edge ], [ 0, %kcalloc.exit.thread ], [ %id.2, %if.end180.out_crit_edge ], [ %id.3535, %if.end8.i.out_crit_edge ], [ %id.3535, %if.end210.out_crit_edge ]
  %ti.0 = phi ptr [ %call8.i.i463, %if.then222 ], [ null, %if.end7.i.i464.out_crit_edge ], [ null, %if.end7.i.i.out_crit_edge ], [ null, %kcalloc.exit.thread ], [ null, %if.end180.out_crit_edge ], [ %call8.i.i463, %if.end8.i.out_crit_edge ], [ %call8.i.i463, %if.end210.out_crit_edge ]
  call void @rtnl_unlock() #11
  %sub238 = add i32 %count.0, -1
  %266 = call i32 @llvm.smin.i32(i32 %id.4, i32 %sub238)
  %tobool246.not = icmp eq ptr %ti.0, null
  %add.ptr = getelementptr %struct.ip_vs_sync_thread_data, ptr %ti.0, i32 %266
  %cmp249.not536 = icmp ult ptr %add.ptr, %ti.0
  %or.cond = select i1 %tobool246.not, i1 true, i1 %cmp249.not536
  br i1 %or.cond, label %out.if.end261_crit_edge, label %out.for.body251_crit_edge

out.for.body251_crit_edge:                        ; preds = %out
  br label %for.body251

out.if.end261_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261

for.body251:                                      ; preds = %for.inc258.for.body251_crit_edge, %out.for.body251_crit_edge
  %tinfo.0537 = phi ptr [ %incdec.ptr259, %for.inc258.for.body251_crit_edge ], [ %add.ptr, %out.for.body251_crit_edge ]
  %267 = ptrtoint ptr %tinfo.0537 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %tinfo.0537, align 4
  %tobool253.not = icmp eq ptr %268, null
  br i1 %tobool253.not, label %for.body251.for.inc258_crit_edge, label %if.then254

for.body251.for.inc258_crit_edge:                 ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc258

if.then254:                                       ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #13
  %call256 = call i32 @kthread_stop(ptr noundef nonnull %268) #11
  br label %for.inc258

for.inc258:                                       ; preds = %if.then254, %for.body251.for.inc258_crit_edge
  %incdec.ptr259 = getelementptr %struct.ip_vs_sync_thread_data, ptr %tinfo.0537, i32 -1
  %cmp249.not = icmp ult ptr %incdec.ptr259, %ti.0
  br i1 %cmp249.not, label %for.inc258.if.end261_crit_edge, label %for.inc258.for.body251_crit_edge

for.inc258.for.body251_crit_edge:                 ; preds = %for.inc258
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body251

for.inc258.if.end261_crit_edge:                   ; preds = %for.inc258
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261

if.end261:                                        ; preds = %for.inc258.if.end261_crit_edge, %out.if.end261_crit_edge
  %269 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load volatile i32, ptr %sync_state, align 8
  %and = and i32 %270, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool263.not = icmp eq i32 %and, 0
  br i1 %tobool263.not, label %if.then264, label %if.end261.if.end267_crit_edge

if.end261.if.end267_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end267

if.then264:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  %ms265 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 66
  %271 = ptrtoint ptr %ms265 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ms265, align 4
  call void @kfree(ptr noundef %272) #11
  %273 = ptrtoint ptr %ms265 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr null, ptr %ms265, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %if.end261.if.end267_crit_edge
  call void @mutex_unlock(ptr noundef %sync_mutex) #11
  br i1 %tobool246.not, label %if.end267.if.end285_crit_edge, label %if.then270

if.end267.if.end285_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end285

if.then270:                                       ; preds = %if.end267
  br i1 %cmp249.not536, label %if.then270.for.end284_crit_edge, label %if.then270.for.body275_crit_edge

if.then270.for.body275_crit_edge:                 ; preds = %if.then270
  br label %for.body275

if.then270.for.end284_crit_edge:                  ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end284

for.body275:                                      ; preds = %if.end280.for.body275_crit_edge, %if.then270.for.body275_crit_edge
  %tinfo.1539 = phi ptr [ %incdec.ptr283, %if.end280.for.body275_crit_edge ], [ %add.ptr, %if.then270.for.body275_crit_edge ]
  %sock276 = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %tinfo.1539, i32 0, i32 2
  %274 = ptrtoint ptr %sock276 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %sock276, align 4
  %tobool277.not = icmp eq ptr %275, null
  br i1 %tobool277.not, label %for.body275.if.end280_crit_edge, label %if.then278

for.body275.if.end280_crit_edge:                  ; preds = %for.body275
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end280

if.then278:                                       ; preds = %for.body275
  call void @__sanitizer_cov_trace_pc() #13
  call void @sock_release(ptr noundef nonnull %275) #11
  br label %if.end280

if.end280:                                        ; preds = %if.then278, %for.body275.if.end280_crit_edge
  %buf281 = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %tinfo.1539, i32 0, i32 3
  %276 = ptrtoint ptr %buf281 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %buf281, align 4
  call void @kfree(ptr noundef %277) #11
  %incdec.ptr283 = getelementptr %struct.ip_vs_sync_thread_data, ptr %tinfo.1539, i32 -1
  %cmp273.not = icmp ult ptr %incdec.ptr283, %ti.0
  br i1 %cmp273.not, label %if.end280.for.end284_crit_edge, label %if.end280.for.body275_crit_edge

if.end280.for.body275_crit_edge:                  ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body275

if.end280.for.end284_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end284

for.end284:                                       ; preds = %if.end280.for.end284_crit_edge, %if.then270.for.end284_crit_edge
  call void @kfree(ptr noundef nonnull %ti.0) #11
  br label %if.end285

if.end285:                                        ; preds = %for.end284, %if.end267.if.end285_crit_edge
  call void @ip_vs_use_count_dec() #11
  br label %cleanup287

out_early:                                        ; preds = %if.then138.out_early_crit_edge, %if.else135.out_early_crit_edge, %if.then131.out_early_crit_edge, %do.end64
  %result.2 = phi i32 [ -17, %if.then131.out_early_crit_edge ], [ -17, %if.then138.out_early_crit_edge ], [ -19, %do.end64 ], [ -22, %if.else135.out_early_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sync_mutex) #11
  tail call void @rtnl_unlock() #11
  tail call void @ip_vs_use_count_dec() #11
  br label %cleanup287

cleanup287:                                       ; preds = %out_early, %if.end285, %if.end234, %do.end19.cleanup287_crit_edge
  %retval.0 = phi i32 [ %result.2, %out_early ], [ %result.1, %if.end285 ], [ 0, %if.end234 ], [ -92, %do.end19.cleanup287_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_use_count_inc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_thread_master(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.msghdr, align 8
  %iov.i.i = alloca %struct.kvec, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs1 = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs1, align 4
  %ms2 = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %ms2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ms2, align 4
  %id = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.ipvs_master_sync_state, ptr %3, i32 %5
  %sock = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock, align 4
  %sk3 = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk3, align 16
  %mcast_ifn = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 73, i32 6
  %syncid = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 73, i32 1
  %10 = ptrtoint ptr %syncid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %syncid, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %mcast_ifn, i32 noundef %11, i32 noundef %5) #16
  %12 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.84, %union.anon.85 }, %union.anon.114, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i, i32 0, i32 7
  %13 = getelementptr inbounds %struct.kvec, ptr %iov.i.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 17
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 23
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 21
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call.i = call fastcc ptr @sb_dequeue(ptr noundef %1, ptr noundef %arrayidx) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %for.cond.next_sync_buff.exit_crit_edge

for.cond.next_sync_buff.exit_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_sync_buff.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = call fastcc ptr @get_curr_sync_buff(ptr noundef %1, ptr noundef %arrayidx, i32 noundef 200) #11
  br label %next_sync_buff.exit

next_sync_buff.exit:                              ; preds = %if.end.i, %for.cond.next_sync_buff.exit_crit_edge
  %retval.0.i = phi ptr [ %call1.i, %if.end.i ], [ %call.i, %for.cond.next_sync_buff.exit_crit_edge ]
  %call7 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call7, label %next_sync_buff.exit.__here_crit_edge, label %if.end, !prof !276

next_sync_buff.exit.__here_crit_edge:             ; preds = %next_sync_buff.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

if.end:                                           ; preds = %next_sync_buff.exit
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %if.then10, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %mesg = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %retval.0.i, i32 0, i32 2
  br label %while.cond

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 @schedule_timeout(i32 noundef 100) #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %while.end, %if.then10
  br label %for.cond

while.cond:                                       ; preds = %__out.while.cond_crit_edge, %while.cond.preheader
  %15 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sock, align 4
  %17 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mesg, align 4
  %size.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %20 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #11
  %21 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16448, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i) #11
  %call.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %while.cond.do.end4.i.i_crit_edge

while.cond.do.end4.i.i_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, i32 noundef 1585) #16
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %while.cond.do.end4.i.i_crit_edge
  %23 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %iov.i.i, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i, ptr %13, align 4
  %call5.i.i = call i32 @kernel_sendmsg(ptr noundef %16, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %iov.i.i, i32 noundef 1, i32 noundef %conv.i) #11
  %call7.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call7.i.i)
  %cmp8.i.i = icmp sgt i32 %call7.i.i, 6
  br i1 %cmp8.i.i, label %do.end12.i.i, label %do.end4.i.i.ip_vs_send_async.exit.i_crit_edge

do.end4.i.i.ip_vs_send_async.exit.i_crit_edge:    ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_send_async.exit.i

do.end12.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, i32 noundef 1591) #16
  br label %ip_vs_send_async.exit.i

ip_vs_send_async.exit.i:                          ; preds = %do.end12.i.i, %do.end4.i.i.ip_vs_send_async.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %cmp.i = icmp sgt i32 %call5.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5.i.i)
  %cmp2.i = icmp eq i32 %call5.i.i, -11
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %ip_vs_send_sync_msg.exit, label %ip_vs_send_sync_msg.exit.thread

ip_vs_send_sync_msg.exit.thread:                  ; preds = %ip_vs_send_async.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %call5.i.i) #16
  br label %while.end

ip_vs_send_sync_msg.exit:                         ; preds = %ip_vs_send_async.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %while.body, label %ip_vs_send_sync_msg.exit.while.end_crit_edge

ip_vs_send_sync_msg.exit.while.end_crit_edge:     ; preds = %ip_vs_send_sync_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %ip_vs_send_sync_msg.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %14, align 8
  %call17234 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i.i.i235 = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %28 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %30 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i236 = ashr i32 %31, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %shr.i236)
  %cmp.i214237 = icmp ult i32 %29, %shr.i236
  br i1 %cmp.i214237, label %while.body.for.end_crit_edge, label %while.body.lor.lhs.false_crit_edge

while.body.lor.lhs.false_crit_edge:               ; preds = %while.body
  br label %lor.lhs.false

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.lhs.false:                                    ; preds = %cleanup.lor.lhs.false_crit_edge, %while.body.lor.lhs.false_crit_edge
  %call17238 = phi i32 [ %call17, %cleanup.lor.lhs.false_crit_edge ], [ %call17234, %while.body.lor.lhs.false_crit_edge ]
  %call19 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call19, label %lor.lhs.false.for.end_crit_edge, label %if.end21

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17238)
  %tobool22.not = icmp eq i32 %call17238, 0
  br i1 %tobool22.not, label %cleanup, label %if.end21.__out_crit_edge

if.end21.__out_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end21
  call void @schedule() #11
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %14, align 8
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %33, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %36 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i = ashr i32 %37, 1
  %cmp.i214 = icmp ult i32 %35, %shr.i
  br i1 %cmp.i214, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false_crit_edge

cleanup.lor.lhs.false_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %while.body.for.end_crit_edge
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %14, align 8
  call void @finish_wait(ptr noundef %39, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end21.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  %call27 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call27, label %__out.__here_crit_edge, label %__out.while.cond_crit_edge, !prof !276

__out.while.cond_crit_edge:                       ; preds = %__out
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

__out.__here_crit_edge:                           ; preds = %__out
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

while.end:                                        ; preds = %ip_vs_send_sync_msg.exit.while.end_crit_edge, %ip_vs_send_sync_msg.exit.thread
  %40 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mesg, align 4
  call void @kfree(ptr noundef %41) #11
  call void @kfree(ptr noundef nonnull %retval.0.i) #11
  br label %for.cond.backedge

__here:                                           ; preds = %__out.__here_crit_edge, %next_sync_buff.exit.__here_crit_edge
  %42 = call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 212
  %46 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 ptrtoint (ptr blockaddress(@sync_thread_master, %__here) to i32), ptr %task_state_change, align 4
  %47 = load ptr, ptr %task, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %47, align 128
  %tobool100.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool100.not, label %__here.if.end102_crit_edge, label %if.then101

__here.if.end102_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then101:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  %mesg.i215 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %retval.0.i, i32 0, i32 2
  %49 = ptrtoint ptr %mesg.i215 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mesg.i215, align 4
  call void @kfree(ptr noundef %50) #11
  call void @kfree(ptr noundef nonnull %retval.0.i) #11
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %__here.if.end102_crit_edge
  %call104241 = call fastcc ptr @sb_dequeue(ptr noundef %1, ptr noundef %arrayidx)
  %tobool105.not242 = icmp eq ptr %call104241, null
  br i1 %tobool105.not242, label %if.end102.__here158_crit_edge, label %if.end102.while.body106_crit_edge

if.end102.while.body106_crit_edge:                ; preds = %if.end102
  br label %while.body106

if.end102.__here158_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here158

while.body106:                                    ; preds = %while.body106.while.body106_crit_edge, %if.end102.while.body106_crit_edge
  %call104243 = phi ptr [ %call104, %while.body106.while.body106_crit_edge ], [ %call104241, %if.end102.while.body106_crit_edge ]
  %mesg.i216 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call104243, i32 0, i32 2
  %51 = ptrtoint ptr %mesg.i216 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mesg.i216, align 4
  call void @kfree(ptr noundef %52) #11
  call void @kfree(ptr noundef nonnull %call104243) #11
  %call104 = call fastcc ptr @sb_dequeue(ptr noundef %1, ptr noundef %arrayidx)
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %while.body106.__here158_crit_edge, label %while.body106.while.body106_crit_edge

while.body106.while.body106_crit_edge:            ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body106

while.body106.__here158_crit_edge:                ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here158

__here158:                                        ; preds = %while.body106.__here158_crit_edge, %if.end102.__here158_crit_edge
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %task_state_change162 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 212
  %55 = ptrtoint ptr %task_state_change162 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 ptrtoint (ptr blockaddress(@sync_thread_master, %__here158) to i32), ptr %task_state_change162, align 4
  %56 = load ptr, ptr %task, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %56, align 128
  %call179 = call fastcc ptr @get_curr_sync_buff(ptr noundef %1, ptr noundef %arrayidx, i32 noundef 0)
  %tobool180.not = icmp eq ptr %call179, null
  br i1 %tobool180.not, label %__here158.if.end182_crit_edge, label %if.then181

__here158.if.end182_crit_edge:                    ; preds = %__here158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

if.then181:                                       ; preds = %__here158
  call void @__sanitizer_cov_trace_pc() #13
  %mesg.i217 = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %call179, i32 0, i32 2
  %58 = ptrtoint ptr %mesg.i217 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mesg.i217, align 4
  call void @kfree(ptr noundef %59) #11
  call void @kfree(ptr noundef nonnull %call179) #11
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %__here158.if.end182_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_thread_backup(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %param.i180.i = alloca %struct.ip_vs_conn_param, align 4
  %buff.i.i.i = alloca [17 x i8], align 1
  %opt.i.i = alloca %struct.ip_vs_sync_conn_options, align 4
  %param.i.i = alloca %struct.ip_vs_conn_param, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.kvec, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs1 = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs1, align 4
  %sock = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 4
  %sk2 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk2, align 16
  %mcast_ifn = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 74, i32 6
  %syncid = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 74, i32 1
  %6 = ptrtoint ptr %syncid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %syncid, align 4
  %id = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %mcast_ifn, i32 noundef %7, i32 noundef %9) #16
  %call5172 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call5172, label %entry.while.end56_crit_edge, label %while.body.lr.ph

entry.while.end56_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end56

while.body.lr.ph:                                 ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %reader_queue = getelementptr inbounds %struct.udp_sock, ptr %5, i32 0, i32 17
  %10 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  %buf = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %data, i32 0, i32 3
  %sync_maxlen = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 74, i32 2
  %11 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  %af2.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i180.i, i32 0, i32 6
  %protocol4.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i180.i, i32 0, i32 5
  %caddr5.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i180.i, i32 0, i32 1
  %cport6.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i180.i, i32 0, i32 3
  %vaddr7.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i180.i, i32 0, i32 2
  %vport8.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i180.i, i32 0, i32 4
  %pe.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i180.i, i32 0, i32 7
  %pe_data.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i180.i, i32 0, i32 8
  %12 = getelementptr inbounds %struct.ip_vs_seq, ptr %opt.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ip_vs_seq, ptr %opt.i.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.ip_vs_sync_conn_options, ptr %opt.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ip_vs_sync_conn_options, ptr %opt.i.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.ip_vs_sync_conn_options, ptr %opt.i.i, i32 0, i32 1, i32 2
  %17 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 6
  %18 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 5
  %19 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 7
  %24 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 8
  %pe_data_len47.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param.i.i, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1729) #11
  %25 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %26, %sk_receive_queue
  br i1 %cmp.i, label %lor.lhs.false, label %while.body.while.cond33.preheader_crit_edge

while.body.while.cond33.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.preheader

lor.lhs.false:                                    ; preds = %while.body
  %27 = ptrtoint ptr %reader_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %reader_queue, align 4
  %cmp.i80 = icmp eq ptr %28, %reader_queue
  br i1 %cmp.i80, label %lor.lhs.false14, label %lor.lhs.false.while.cond33.preheader_crit_edge

lor.lhs.false.while.cond33.preheader_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.preheader

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %call15 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call15, label %lor.lhs.false14.while.cond33.preheader_crit_edge, label %if.then

lor.lhs.false14.while.cond33.preheader_crit_edge: ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.preheader

if.then:                                          ; preds = %lor.lhs.false14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %29 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %10, align 8
  %call18167 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %32 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i81168 = icmp eq ptr %33, %sk_receive_queue
  br i1 %cmp.i81168, label %if.then.lor.lhs.false21_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.lor.lhs.false21_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %cleanup.lor.lhs.false21_crit_edge, %if.then.lor.lhs.false21_crit_edge
  %call18169 = phi i32 [ %call18, %cleanup.lor.lhs.false21_crit_edge ], [ %call18167, %if.then.lor.lhs.false21_crit_edge ]
  %34 = ptrtoint ptr %reader_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %reader_queue, align 4
  %cmp.i82 = icmp eq ptr %35, %reader_queue
  br i1 %cmp.i82, label %lor.lhs.false24, label %lor.lhs.false21.for.end_crit_edge

lor.lhs.false21.for.end_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %call25 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call25, label %lor.lhs.false24.for.end_crit_edge, label %if.end

lor.lhs.false24.for.end_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18169)
  %tobool.not = icmp eq i32 %call18169, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #11
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %10, align 8
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %37, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %38 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i81 = icmp eq ptr %39, %sk_receive_queue
  br i1 %cmp.i81, label %cleanup.lor.lhs.false21_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.lor.lhs.false21_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false21

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false24.for.end_crit_edge, %lor.lhs.false21.for.end_crit_edge, %if.then.for.end_crit_edge
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %10, align 8
  call void @finish_wait(ptr noundef %41, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %while.cond33.preheader

while.cond33.preheader:                           ; preds = %__out, %lor.lhs.false14.while.cond33.preheader_crit_edge, %lor.lhs.false.while.cond33.preheader_crit_edge, %while.body.while.cond33.preheader_crit_edge
  br label %while.cond33

while.cond33:                                     ; preds = %while.cond33.backedge, %while.cond33.preheader
  %42 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i83 = icmp eq ptr %43, %sk_receive_queue
  br i1 %cmp.i83, label %lor.rhs, label %while.cond33.while.body39_crit_edge

while.cond33.while.body39_crit_edge:              ; preds = %while.cond33
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body39

lor.rhs:                                          ; preds = %while.cond33
  %44 = ptrtoint ptr %reader_queue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %reader_queue, align 4
  %cmp.i84 = icmp eq ptr %45, %reader_queue
  br i1 %cmp.i84, label %lor.rhs.while.end_crit_edge, label %lor.rhs.while.body39_crit_edge

lor.rhs.while.body39_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body39

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body39:                                     ; preds = %lor.rhs.while.body39_crit_edge, %while.cond33.while.body39_crit_edge
  %46 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sock, align 4
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf, align 4
  %50 = ptrtoint ptr %sync_maxlen to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sync_maxlen, align 4
  %conv = zext i16 %51 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %52 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #11
  %53 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %49, ptr %iov.i, align 4
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv, ptr %11, align 4
  %call.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp.i85 = icmp sgt i32 %call.i, 6
  br i1 %cmp.i85, label %do.end.i, label %while.body39.do.end4.i_crit_edge

while.body39.do.end4.i_crit_edge:                 ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i

do.end.i:                                         ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1617) #16
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %while.body39.do.end4.i_crit_edge
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %conv) #11
  %call5.i = call i32 @sock_recvmsg(ptr noundef %47, ptr noundef nonnull %msg.i, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then44, label %do.body9.i

do.body9.i:                                       ; preds = %do.end4.i
  %call10.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call10.i)
  %cmp11.i = icmp sgt i32 %call10.i, 6
  br i1 %cmp11.i, label %do.end15.i, label %do.body9.i.ip_vs_receive.exit_crit_edge

do.body9.i.ip_vs_receive.exit_crit_edge:          ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_receive.exit

do.end15.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1625) #16
  br label %ip_vs_receive.exit

ip_vs_receive.exit:                               ; preds = %do.end15.i, %do.body9.i.ip_vs_receive.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp eq i32 %call5.i, 0
  br i1 %cmp, label %ip_vs_receive.exit.do.end50_crit_edge, label %if.end54

ip_vs_receive.exit.do.end50_crit_edge:            ; preds = %ip_vs_receive.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50

if.then44:                                        ; preds = %do.end4.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5.i)
  %cmp45.not = icmp eq i32 %call5.i, -11
  br i1 %cmp45.not, label %if.then44.while.end_crit_edge, label %if.then44.do.end50_crit_edge

if.then44.do.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50

if.then44.while.end_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end50:                                         ; preds = %if.then44.do.end50_crit_edge, %ip_vs_receive.exit.do.end50_crit_edge
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #16
  br label %while.end

if.end54:                                         ; preds = %ip_vs_receive.exit
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call5.i)
  %cmp.i86 = icmp ult i32 %call5.i, 4
  br i1 %cmp.i86, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end54
  %call.i87 = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i87)
  %cmp1.i = icmp sgt i32 %call.i87, 1
  br i1 %cmp1.i, label %do.end.i88, label %do.body.i.while.cond33.backedge_crit_edge

do.body.i.while.cond33.backedge_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

while.cond33.backedge:                            ; preds = %ip_vs_process_message_v0.exit.i, %for.inc.i.while.cond33.backedge_crit_edge, %do.end133.i, %do.body127.i.while.cond33.backedge_crit_edge, %do.end113.i, %do.body107.i.while.cond33.backedge_crit_edge, %do.end96.i, %do.body90.i.while.cond33.backedge_crit_edge, %do.end77.i, %do.body72.i.while.cond33.backedge_crit_edge, %if.then61.i.while.cond33.backedge_crit_edge, %do.end41.i, %do.body34.i.while.cond33.backedge_crit_edge, %do.end18.i, %do.body11.i.while.cond33.backedge_crit_edge, %do.end.i88, %do.body.i.while.cond33.backedge_crit_edge
  br label %while.cond33

do.end.i88:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #16
  br label %while.cond33.backedge

if.end7.i:                                        ; preds = %if.end54
  %size.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %conv.i)
  %cmp8.not.i = icmp eq i32 %call5.i, %conv.i
  br i1 %cmp8.not.i, label %if.end24.i, label %do.body11.i

do.body11.i:                                      ; preds = %if.end7.i
  %call12.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.i = icmp sgt i32 %call12.i, 1
  br i1 %cmp13.i, label %do.end18.i, label %do.body11.i.while.cond33.backedge_crit_edge

do.body11.i.while.cond33.backedge_crit_edge:      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

do.end18.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #16
  br label %while.cond33.backedge

if.end24.i:                                       ; preds = %if.end7.i
  %59 = ptrtoint ptr %syncid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %syncid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp25.not.i = icmp eq i32 %60, 0
  br i1 %cmp25.not.i, label %if.end24.i.if.end49.i_crit_edge, label %land.lhs.true.i

if.end24.i.if.end49.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %syncid27.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %syncid27.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %syncid27.i, align 1
  %conv28.i = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv28.i)
  %cmp31.not.i = icmp eq i32 %60, %conv28.i
  br i1 %cmp31.not.i, label %land.lhs.true.i.if.end49.i_crit_edge, label %do.body34.i

land.lhs.true.i.if.end49.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

do.body34.i:                                      ; preds = %land.lhs.true.i
  %call35.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call35.i)
  %cmp36.i = icmp sgt i32 %call35.i, 6
  br i1 %cmp36.i, label %do.end41.i, label %do.body34.i.while.cond33.backedge_crit_edge

do.body34.i.while.cond33.backedge_crit_edge:      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

do.end41.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %syncid27.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %syncid27.i, align 1
  %conv44.i = zext i8 %64 to i32
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv44.i) #16
  br label %while.cond33.backedge

if.end49.i:                                       ; preds = %land.lhs.true.i.if.end49.i_crit_edge, %if.end24.i.if.end49.i_crit_edge
  %version.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %56, i32 0, i32 4
  %65 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp51.i = icmp eq i8 %66, 1
  br i1 %cmp51.i, label %land.lhs.true53.i, label %if.end49.i.if.else.i_crit_edge

if.end49.i.if.else.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true53.i:                                ; preds = %if.end49.i
  %67 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp55.i = icmp eq i8 %68, 0
  br i1 %cmp55.i, label %land.lhs.true57.i, label %if.else.thread.i

if.else.thread.i:                                 ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %param.i180.i) #11
  %69 = call ptr @memset(ptr %param.i180.i, i32 255, i32 32)
  br label %for.body.lr.ph.i.i

land.lhs.true57.i:                                ; preds = %land.lhs.true53.i
  %spare.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %56, i32 0, i32 5
  %70 = ptrtoint ptr %spare.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %spare.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp59.i = icmp eq i16 %71, 0
  br i1 %cmp59.i, label %if.then61.i, label %land.lhs.true57.i.if.else.i_crit_edge

land.lhs.true57.i.if.else.i_crit_edge:            ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then61.i:                                      ; preds = %land.lhs.true57.i
  %nr_conns62.i = getelementptr inbounds %struct.ip_vs_sync_mesg, ptr %56, i32 0, i32 3
  %72 = ptrtoint ptr %nr_conns62.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %nr_conns62.i, align 2
  %conv63.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp64298.not.i = icmp eq i8 %73, 0
  br i1 %cmp64298.not.i, label %if.then61.i.while.cond33.backedge_crit_edge, label %for.body.lr.ph.i

if.then61.i.while.cond33.backedge_crit_edge:      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

for.body.lr.ph.i:                                 ; preds = %if.then61.i
  %add.ptr.i = getelementptr i8, ptr %56, i32 8
  %add.ptr68.i = getelementptr i8, ptr %56, i32 %call5.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %msg_end.0300.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr141.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0299.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr67.i = getelementptr i8, ptr %msg_end.0300.i, i32 36
  %cmp69.i = icmp ugt ptr %add.ptr67.i, %add.ptr68.i
  br i1 %cmp69.i, label %do.body72.i, label %if.end83.i

do.body72.i:                                      ; preds = %for.body.i
  %call73.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool.not.i, label %do.body72.i.while.cond33.backedge_crit_edge, label %do.end77.i

do.body72.i.while.cond33.backedge_crit_edge:      ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

do.end77.i:                                       ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #13
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #16
  br label %while.cond33.backedge

if.end83.i:                                       ; preds = %for.body.i
  %ver_size.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 2
  %74 = ptrtoint ptr %ver_size.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ver_size.i, align 2
  %76 = and i16 %75, 4095
  %and.i = zext i16 %76 to i32
  %add.ptr85.i = getelementptr i8, ptr %msg_end.0300.i, i32 %and.i
  %cmp87.i = icmp ugt ptr %add.ptr85.i, %add.ptr68.i
  br i1 %cmp87.i, label %do.body90.i, label %if.end102.i

do.body90.i:                                      ; preds = %if.end83.i
  %call91.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %do.body90.i.while.cond33.backedge_crit_edge, label %do.end96.i

do.body90.i.while.cond33.backedge_crit_edge:      ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

do.end96.i:                                       ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #13
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %while.cond33.backedge

if.end102.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %75)
  %tobool105.not.i = icmp ult i16 %75, 4096
  br i1 %tobool105.not.i, label %if.end122.i, label %do.body107.i

do.body107.i:                                     ; preds = %if.end102.i
  %call108.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %do.body107.i.while.cond33.backedge_crit_edge, label %do.end113.i

do.body107.i.while.cond33.backedge_crit_edge:     ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

do.end113.i:                                      ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #13
  %ver_size.i.le = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 2
  %77 = ptrtoint ptr %ver_size.i.le to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ver_size.i.le, align 2
  %79 = lshr i16 %78, 12
  %80 = zext i16 %79 to i32
  %call118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %80) #16
  br label %while.cond33.backedge

if.end122.i:                                      ; preds = %if.end102.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt.i.i) #11
  %81 = call ptr @memset(ptr %opt.i.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %param.i.i) #11
  %82 = call ptr @memset(ptr %param.i.i, i32 255, i32 32)
  %83 = ptrtoint ptr %msg_end.0300.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %msg_end.0300.i, align 4
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end122.i.if.end6.i.i_crit_edge

if.end122.i.if.end6.i.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool2.not.i.i = icmp eq i8 %84, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.if.end6.i.i_crit_edge, label %if.else.i.i.do.body127.i_crit_edge

if.else.i.i.do.body127.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

if.else.i.i.if.end6.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.else.i.i.if.end6.i.i_crit_edge, %if.end122.i.if.end6.i.i_crit_edge
  %.sink.i.i = phi i32 [ 72, %if.end122.i.if.end6.i.i_crit_edge ], [ 36, %if.else.i.i.if.end6.i.i_crit_edge ]
  %af.0.i.i = phi i32 [ 10, %if.end122.i.if.end6.i.i_crit_edge ], [ 2, %if.else.i.i.if.end6.i.i_crit_edge ]
  %add.ptr4.i.i = getelementptr i8, ptr %msg_end.0300.i, i32 %.sink.i.i
  %cmp.i.i = icmp ugt ptr %add.ptr4.i.i, %add.ptr85.i
  br i1 %cmp.i.i, label %if.end6.i.i.do.body127.i_crit_edge, label %while.cond.preheader.i.i

if.end6.i.i.do.body127.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

while.cond.preheader.i.i:                         ; preds = %if.end6.i.i
  %cmp10341.i.i = icmp ult ptr %add.ptr4.i.i, %add.ptr85.i
  br i1 %cmp10341.i.i, label %while.body.preheader.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %while.cond.preheader.i.i
  %86 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %opt.promoted.i.i = load i32, ptr %opt.i.i, align 4
  %87 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.promoted.i.i = load i32, ptr %12, align 4
  %88 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.promoted379.i.i = load i32, ptr %13, align 4
  %89 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.promoted388.i.i = load i32, ptr %14, align 4
  %90 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.promoted397.i.i = load i32, ptr %15, align 4
  %91 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.promoted406.i.i = load i32, ptr %16, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %92 = phi i32 [ %151, %cleanup.i.i.while.body.i.i_crit_edge ], [ %.promoted406.i.i, %while.body.preheader.i.i ]
  %93 = phi i32 [ %152, %cleanup.i.i.while.body.i.i_crit_edge ], [ %.promoted397.i.i, %while.body.preheader.i.i ]
  %94 = phi i32 [ %153, %cleanup.i.i.while.body.i.i_crit_edge ], [ %.promoted388.i.i, %while.body.preheader.i.i ]
  %95 = phi i32 [ %154, %cleanup.i.i.while.body.i.i_crit_edge ], [ %.promoted379.i.i, %while.body.preheader.i.i ]
  %96 = phi i32 [ %155, %cleanup.i.i.while.body.i.i_crit_edge ], [ %.promoted.i.i, %while.body.preheader.i.i ]
  %97 = phi i32 [ %156, %cleanup.i.i.while.body.i.i_crit_edge ], [ %opt.promoted.i.i, %while.body.preheader.i.i ]
  %p.addr.1347.i.i = phi ptr [ %add.ptr21.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %add.ptr4.i.i, %while.body.preheader.i.i ]
  %opt_flags.0346.i.i = phi i32 [ %opt_flags.5.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %pe_name.0345.i.i = phi ptr [ %pe_name.3.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ null, %while.body.preheader.i.i ]
  %pe_data.0344.i.i = phi ptr [ %pe_data.3.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ null, %while.body.preheader.i.i ]
  %pe_name_len.0343.i.i = phi i32 [ %pe_name_len.3.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %pe_data_len.0342.i.i = phi i32 [ %pe_data_len.3.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %add.ptr12.i.i = getelementptr i8, ptr %p.addr.1347.i.i, i32 2
  %cmp13.i.i = icmp ugt ptr %add.ptr12.i.i, %add.ptr85.i
  br i1 %cmp13.i.i, label %while.body.i.i.do.body127.i_crit_edge, label %if.end16.i.i

while.body.i.i.do.body127.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

if.end16.i.i:                                     ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %p.addr.1347.i.i, i32 1
  %98 = ptrtoint ptr %p.addr.1347.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %p.addr.1347.i.i, align 1
  %conv17.i.i = zext i8 %99 to i32
  %100 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv19.i.i = zext i8 %101 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool20.not.i.i = icmp eq i8 %101, 0
  br i1 %tobool20.not.i.i, label %if.end16.i.i.do.body127.i_crit_edge, label %lor.lhs.false.i.i

if.end16.i.i.do.body127.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %add.ptr12.i.i, i32 %conv19.i.i
  %cmp22.i.i = icmp ugt ptr %add.ptr21.i.i, %add.ptr85.i
  br i1 %cmp22.i.i, label %lor.lhs.false.i.i.do.body127.i_crit_edge, label %if.end25.i.i

lor.lhs.false.i.i.do.body127.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

if.end25.i.i:                                     ; preds = %lor.lhs.false.i.i
  %and26.i.i = and i32 %conv17.i.i, 191
  %trunc.i.i = trunc i32 %and26.i.i to i8
  %102 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %trunc.i.i, label %sw.default.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb30.i.i
    i8 3, label %sw.bb35.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %101)
  %cmp.not.i.i.i = icmp eq i8 %101, 24
  br i1 %cmp.not.i.i.i, label %if.end7.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %sw.bb.i.i
  %103 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %97, ptr %opt.i.i, align 4
  %104 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %96, ptr %12, align 4
  %105 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %95, ptr %13, align 4
  %106 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %94, ptr %14, align 4
  %107 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %93, ptr %15, align 4
  %108 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %92, ptr %16, align 4
  %call.i.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp sgt i32 %call.i.i.i, 1
  br i1 %cmp1.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.do.body127.i_crit_edge

do.body.i.i.i.do.body127.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #16
  br label %do.body127.i

if.end7.i.i.i:                                    ; preds = %sw.bb.i.i
  %and.i.i.i = and i32 %opt_flags.0346.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %ip_vs_proc_seqopt.exit.i.i, label %do.body9.i.i.i

do.body9.i.i.i:                                   ; preds = %if.end7.i.i.i
  %109 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %97, ptr %opt.i.i, align 4
  %110 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %96, ptr %12, align 4
  %111 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %95, ptr %13, align 4
  %112 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %94, ptr %14, align 4
  %113 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %93, ptr %15, align 4
  %114 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %92, ptr %16, align 4
  %call10.i.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i.i.i)
  %cmp11.i.i.i = icmp sgt i32 %call10.i.i.i, 1
  br i1 %cmp11.i.i.i, label %do.end15.i.i.i, label %do.body9.i.i.i.do.body127.i_crit_edge

do.body9.i.i.i.do.body127.i_crit_edge:            ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

do.end15.i.i.i:                                   ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #16
  br label %do.body127.i

ip_vs_proc_seqopt.exit.i.i:                       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %add.ptr12.i.i, align 1
  %delta.i.i.i.i = getelementptr i8, ptr %p.addr.1347.i.i, i32 6
  %117 = ptrtoint ptr %delta.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %delta.i.i.i.i, align 1
  %previous_delta.i.i.i.i = getelementptr i8, ptr %p.addr.1347.i.i, i32 10
  %119 = ptrtoint ptr %previous_delta.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %previous_delta.i.i.i.i, align 1
  %out_seq.i.i.i = getelementptr i8, ptr %p.addr.1347.i.i, i32 14
  %121 = ptrtoint ptr %out_seq.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %out_seq.i.i.i, align 1
  %delta.i27.i.i.i = getelementptr i8, ptr %p.addr.1347.i.i, i32 18
  %123 = ptrtoint ptr %delta.i27.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %delta.i27.i.i.i, align 1
  %previous_delta.i29.i.i.i = getelementptr i8, ptr %p.addr.1347.i.i, i32 22
  %125 = ptrtoint ptr %previous_delta.i29.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %previous_delta.i29.i.i.i, align 1
  %or.i.i.i = or i32 %opt_flags.0346.i.i, 1
  br label %cleanup.i.i

sw.bb30.i.i:                                      ; preds = %if.end25.i.i
  %and.i234.i.i = and i32 %opt_flags.0346.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234.i.i)
  %tobool.not.i235.i.i = icmp eq i32 %and.i234.i.i, 0
  br i1 %tobool.not.i235.i.i, label %ip_vs_proc_str.exit.i.i, label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %sw.bb30.i.i
  %127 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %97, ptr %opt.i.i, align 4
  %128 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %96, ptr %12, align 4
  %129 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %95, ptr %13, align 4
  %130 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %94, ptr %14, align 4
  %131 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %93, ptr %15, align 4
  %132 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %92, ptr %16, align 4
  %call9.i.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i.i)
  %cmp10.i.i.i = icmp sgt i32 %call9.i.i.i, 1
  br i1 %cmp10.i.i.i, label %do.end13.i.i.i, label %do.body8.i.i.i.do.body127.i_crit_edge

do.body8.i.i.i.do.body127.i_crit_edge:            ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

do.end13.i.i.i:                                   ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef 2) #16
  br label %do.body127.i

ip_vs_proc_str.exit.i.i:                          ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i236.i.i = or i32 %opt_flags.0346.i.i, 2
  br label %cleanup.i.i

sw.bb35.i.i:                                      ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %101)
  %cmp.i.i.i = icmp ugt i8 %101, 16
  br i1 %cmp.i.i.i, label %do.body.i240.i.i, label %if.end6.i.i.i

do.body.i240.i.i:                                 ; preds = %sw.bb35.i.i
  %133 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %97, ptr %opt.i.i, align 4
  %134 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %96, ptr %12, align 4
  %135 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %95, ptr %13, align 4
  %136 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %94, ptr %14, align 4
  %137 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %93, ptr %15, align 4
  %138 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %92, ptr %16, align 4
  %call.i238.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i238.i.i)
  %cmp1.i239.i.i = icmp sgt i32 %call.i238.i.i, 1
  br i1 %cmp1.i239.i.i, label %do.end.i242.i.i, label %do.body.i240.i.i.do.body127.i_crit_edge

do.body.i240.i.i.do.body127.i_crit_edge:          ; preds = %do.body.i240.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

do.end.i242.i.i:                                  ; preds = %do.body.i240.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i241.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef 16) #16
  br label %do.body127.i

if.end6.i.i.i:                                    ; preds = %sw.bb35.i.i
  %and.i243.i.i = and i32 %opt_flags.0346.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i243.i.i)
  %tobool.not.i244.i.i = icmp eq i32 %and.i243.i.i, 0
  br i1 %tobool.not.i244.i.i, label %ip_vs_proc_str.exit253.i.i, label %do.body8.i247.i.i

do.body8.i247.i.i:                                ; preds = %if.end6.i.i.i
  %139 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %97, ptr %opt.i.i, align 4
  %140 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %96, ptr %12, align 4
  %141 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %95, ptr %13, align 4
  %142 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %94, ptr %14, align 4
  %143 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %93, ptr %15, align 4
  %144 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %92, ptr %16, align 4
  %call9.i245.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i245.i.i)
  %cmp10.i246.i.i = icmp sgt i32 %call9.i245.i.i, 1
  br i1 %cmp10.i246.i.i, label %do.end13.i249.i.i, label %do.body8.i247.i.i.do.body127.i_crit_edge

do.body8.i247.i.i.do.body127.i_crit_edge:         ; preds = %do.body8.i247.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127.i

do.end13.i249.i.i:                                ; preds = %do.body8.i247.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i248.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef 4) #16
  br label %do.body127.i

ip_vs_proc_str.exit253.i.i:                       ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i250.i.i = or i32 %opt_flags.0346.i.i, 4
  br label %cleanup.i.i

sw.default.i.i:                                   ; preds = %if.end25.i.i
  %and40.i.i = and i32 %conv17.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %do.body.i.i, label %sw.default.i.i.cleanup.i.i_crit_edge

sw.default.i.i.cleanup.i.i_crit_edge:             ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

do.body.i.i:                                      ; preds = %sw.default.i.i
  %145 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %97, ptr %opt.i.i, align 4
  %146 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %96, ptr %12, align 4
  %147 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %95, ptr %13, align 4
  %148 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %94, ptr %14, align 4
  %149 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %93, ptr %15, align 4
  %150 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %92, ptr %16, align 4
  %call43.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call43.i.i)
  %cmp44.i.i = icmp sgt i32 %call43.i.i, 2
  br i1 %cmp44.i.i, label %do.end.i.i, label %do.body.i.i.do.body152.i.i_crit_edge

do.body.i.i.do.body152.i.i_crit_edge:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body152.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %and26.i.i) #16
  br label %do.body152.i.i

cleanup.i.i:                                      ; preds = %sw.default.i.i.cleanup.i.i_crit_edge, %ip_vs_proc_str.exit253.i.i, %ip_vs_proc_str.exit.i.i, %ip_vs_proc_seqopt.exit.i.i
  %151 = phi i32 [ %92, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %92, %ip_vs_proc_str.exit253.i.i ], [ %92, %ip_vs_proc_str.exit.i.i ], [ %126, %ip_vs_proc_seqopt.exit.i.i ]
  %152 = phi i32 [ %93, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %93, %ip_vs_proc_str.exit253.i.i ], [ %93, %ip_vs_proc_str.exit.i.i ], [ %124, %ip_vs_proc_seqopt.exit.i.i ]
  %153 = phi i32 [ %94, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %94, %ip_vs_proc_str.exit253.i.i ], [ %94, %ip_vs_proc_str.exit.i.i ], [ %122, %ip_vs_proc_seqopt.exit.i.i ]
  %154 = phi i32 [ %95, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %95, %ip_vs_proc_str.exit253.i.i ], [ %95, %ip_vs_proc_str.exit.i.i ], [ %120, %ip_vs_proc_seqopt.exit.i.i ]
  %155 = phi i32 [ %96, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %96, %ip_vs_proc_str.exit253.i.i ], [ %96, %ip_vs_proc_str.exit.i.i ], [ %118, %ip_vs_proc_seqopt.exit.i.i ]
  %156 = phi i32 [ %97, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %97, %ip_vs_proc_str.exit253.i.i ], [ %97, %ip_vs_proc_str.exit.i.i ], [ %116, %ip_vs_proc_seqopt.exit.i.i ]
  %pe_data_len.3.i.i = phi i32 [ %pe_data_len.0342.i.i, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %pe_data_len.0342.i.i, %ip_vs_proc_str.exit253.i.i ], [ %conv19.i.i, %ip_vs_proc_str.exit.i.i ], [ %pe_data_len.0342.i.i, %ip_vs_proc_seqopt.exit.i.i ]
  %pe_name_len.3.i.i = phi i32 [ %pe_name_len.0343.i.i, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %conv19.i.i, %ip_vs_proc_str.exit253.i.i ], [ %pe_name_len.0343.i.i, %ip_vs_proc_str.exit.i.i ], [ %pe_name_len.0343.i.i, %ip_vs_proc_seqopt.exit.i.i ]
  %pe_data.3.i.i = phi ptr [ %pe_data.0344.i.i, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %pe_data.0344.i.i, %ip_vs_proc_str.exit253.i.i ], [ %add.ptr12.i.i, %ip_vs_proc_str.exit.i.i ], [ %pe_data.0344.i.i, %ip_vs_proc_seqopt.exit.i.i ]
  %pe_name.3.i.i = phi ptr [ %pe_name.0345.i.i, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %add.ptr12.i.i, %ip_vs_proc_str.exit253.i.i ], [ %pe_name.0345.i.i, %ip_vs_proc_str.exit.i.i ], [ %pe_name.0345.i.i, %ip_vs_proc_seqopt.exit.i.i ]
  %opt_flags.5.i.i = phi i32 [ %opt_flags.0346.i.i, %sw.default.i.i.cleanup.i.i_crit_edge ], [ %or.i250.i.i, %ip_vs_proc_str.exit253.i.i ], [ %or.i236.i.i, %ip_vs_proc_str.exit.i.i ], [ %or.i.i.i, %ip_vs_proc_seqopt.exit.i.i ]
  %cmp10.i.i = icmp ult ptr %add.ptr21.i.i, %add.ptr85.i
  br i1 %cmp10.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %while.end.loopexit.i.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.end.loopexit.i.i:                           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %opt.i.i, align 4
  %158 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %155, ptr %12, align 4
  %159 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %154, ptr %13, align 4
  %160 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %153, ptr %14, align 4
  %161 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %152, ptr %15, align 4
  %162 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %151, ptr %16, align 4
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.loopexit.i.i, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %pe_data_len.0.lcssa.i.i = phi i32 [ 0, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %pe_data_len.3.i.i, %while.end.loopexit.i.i ]
  %pe_name_len.0.lcssa.i.i = phi i32 [ 0, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %pe_name_len.3.i.i, %while.end.loopexit.i.i ]
  %pe_data.0.lcssa.i.i = phi ptr [ null, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %pe_data.3.i.i, %while.end.loopexit.i.i ]
  %pe_name.0.lcssa.i.i = phi ptr [ null, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %pe_name.3.i.i, %while.end.loopexit.i.i ]
  %opt_flags.0.lcssa.i.i = phi i32 [ 0, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %opt_flags.5.i.i, %while.end.loopexit.i.i ]
  %flags56.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 3
  %163 = ptrtoint ptr %flags56.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %flags56.i.i, align 4
  %and57.i.i = and i32 %164, 8071
  %or.i.i = or i32 %and57.i.i, 32
  %state58.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 4
  %165 = ptrtoint ptr %state58.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %state58.i.i, align 4
  %conv59.i.i = zext i16 %166 to i32
  %and60.i.i = and i32 %164, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.then62.i.i, label %if.else101.i.i

if.then62.i.i:                                    ; preds = %while.end.i.i
  %protocol.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 1
  %167 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %protocol.i.i, align 1
  %conv63.i.i = zext i8 %168 to i16
  %call64.i.i = call ptr @ip_vs_proto_get(i16 noundef zeroext %conv63.i.i) #11
  %tobool65.not.i.i = icmp eq ptr %call64.i.i, null
  br i1 %tobool65.not.i.i, label %do.body67.i.i, label %if.end82.i.i

do.body67.i.i:                                    ; preds = %if.then62.i.i
  %call68.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call68.i.i)
  %cmp69.i.i = icmp sgt i32 %call68.i.i, 2
  br i1 %cmp69.i.i, label %do.end74.i.i, label %do.body67.i.i.do.body152.i.i_crit_edge

do.body67.i.i.do.body152.i.i_crit_edge:           ; preds = %do.body67.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body152.i.i

do.end74.i.i:                                     ; preds = %do.body67.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %protocol.i.i, align 1
  %conv77.i.i = zext i8 %170 to i32
  %call78.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %conv77.i.i) #16
  br label %do.body152.i.i

if.end82.i.i:                                     ; preds = %if.then62.i.i
  %num_states.i.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call64.i.i, i32 0, i32 3
  %171 = ptrtoint ptr %num_states.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %num_states.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %166, i16 %172)
  %cmp84.not.i.i = icmp ult i16 %166, %172
  br i1 %cmp84.not.i.i, label %if.end82.i.i.if.end119.i.i_crit_edge, label %do.body87.i.i

if.end82.i.i.if.end119.i.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119.i.i

do.body87.i.i:                                    ; preds = %if.end82.i.i
  %call88.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call88.i.i)
  %cmp89.i.i = icmp sgt i32 %call88.i.i, 2
  br i1 %cmp89.i.i, label %do.end94.i.i, label %do.body87.i.i.do.body152.i.i_crit_edge

do.body87.i.i.do.body152.i.i_crit_edge:           ; preds = %do.body87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body152.i.i

do.end94.i.i:                                     ; preds = %do.body87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call64.i.i, i32 0, i32 1
  %173 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name.i.i, align 4
  %call96.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %174, i32 noundef %conv59.i.i) #16
  br label %do.body152.i.i

if.else101.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %166)
  %cmp102.i.i = icmp ugt i16 %166, 1
  br i1 %cmp102.i.i, label %do.body105.i.i, label %if.else101.i.i.if.end119.i.i_crit_edge

if.else101.i.i.if.end119.i.i_crit_edge:           ; preds = %if.else101.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119.i.i

do.body105.i.i:                                   ; preds = %if.else101.i.i
  %call106.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call106.i.i)
  %cmp107.i.i = icmp sgt i32 %call106.i.i, 6
  br i1 %cmp107.i.i, label %do.end112.i.i, label %do.body105.i.i.if.end119.i.i_crit_edge

do.body105.i.i.if.end119.i.i_crit_edge:           ; preds = %do.body105.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119.i.i

do.end112.i.i:                                    ; preds = %do.body105.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call114.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %conv59.i.i) #16
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %do.end112.i.i, %do.body105.i.i.if.end119.i.i_crit_edge, %if.else101.i.i.if.end119.i.i_crit_edge, %if.end82.i.i.if.end119.i.i_crit_edge
  br i1 %tobool.not.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %protocol.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 1
  %175 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %protocol.i.i.i, align 1
  %caddr.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 10
  %cport.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 5
  %177 = ptrtoint ptr %cport.i.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %cport.i.i.i, align 2
  %vaddr.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 11
  %vport.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 6
  %179 = ptrtoint ptr %vport.i.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %vport.i.i.i, align 4
  %181 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %1, ptr %param.i.i, align 4
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %protocol1.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 1
  %182 = ptrtoint ptr %protocol1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %protocol1.i.i.i, align 1
  %caddr3.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 10
  %cport4.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 5
  %184 = ptrtoint ptr %cport4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %cport4.i.i.i, align 2
  %vaddr5.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 11
  %vport6.i.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 6
  %186 = ptrtoint ptr %vport6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %vport6.i.i.i, align 4
  %188 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %1, ptr %param.i.i, align 4
  %conv.i.i.i.i = trunc i32 %af.0.i.i to i16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %conv.i.sink.i.i.i = phi i16 [ 10, %if.then.i.i.i ], [ %conv.i.i.i.i, %if.else.i.i.i ]
  %conv3.i73.sink.in.i.i.i = phi i8 [ %176, %if.then.i.i.i ], [ %183, %if.else.i.i.i ]
  %caddr3.sink.i.i.i = phi ptr [ %caddr.i.i.i, %if.then.i.i.i ], [ %caddr3.i.i.i, %if.else.i.i.i ]
  %.sink82.i.i.i = phi i16 [ %178, %if.then.i.i.i ], [ %185, %if.else.i.i.i ]
  %vaddr5.sink.i.i.i = phi ptr [ %vaddr.i.i.i, %if.then.i.i.i ], [ %vaddr5.i.i.i, %if.else.i.i.i ]
  %.sink.i.i.i = phi i16 [ %180, %if.then.i.i.i ], [ %187, %if.else.i.i.i ]
  %conv3.i73.sink.i.i.i = zext i8 %conv3.i73.sink.in.i.i.i to i16
  %189 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv.i.sink.i.i.i, ptr %17, align 2
  %190 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv3.i73.sink.i.i.i, ptr %18, align 4
  %191 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %caddr3.sink.i.i.i, ptr %19, align 4
  %192 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %.sink82.i.i.i, ptr %20, align 4
  %193 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %vaddr5.sink.i.i.i, ptr %21, align 4
  %194 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %.sink.i.i.i, ptr %22, align 2
  %195 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %23, align 4
  %196 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pe_data_len.0.lcssa.i.i)
  %tobool.not.i255.i.i = icmp eq i32 %pe_data_len.0.lcssa.i.i, 0
  br i1 %tobool.not.i255.i.i, label %if.end.i.i.i.if.end123.i.i_crit_edge, label %if.then7.i.i.i

if.end.i.i.i.if.end123.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pe_name_len.0.lcssa.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %pe_name_len.0.lcssa.i.i, 0
  br i1 %tobool8.not.i.i.i, label %do.body26.i.i.i, label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %if.then7.i.i.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buff.i.i.i) #11
  %197 = zext i32 %pe_name_len.0.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %pe_name_len.0.lcssa.i.i)
  %198 = icmp ugt i32 %pe_name_len.0.lcssa.i.i, 16
  %199 = sub nsw i64 17, %197
  %200 = select i1 %198, i64 0, i64 %199
  %201 = getelementptr i8, ptr %buff.i.i.i, i32 %pe_name_len.0.lcssa.i.i
  %202 = trunc i64 %200 to i32
  %203 = call ptr @memset(ptr %201, i32 255, i32 %202)
  %204 = call ptr @memcpy(ptr %buff.i.i.i, ptr %pe_name.0.lcssa.i.i, i32 %pe_name_len.0.lcssa.i.i)
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %201, align 1
  %call.i256.i.i = call ptr @__ip_vs_pe_getbyname(ptr noundef nonnull %buff.i.i.i) #11
  %206 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call.i256.i.i, ptr %23, align 4
  %tobool12.not.i.i.i = icmp eq ptr %call.i256.i.i, null
  br i1 %tobool12.not.i.i.i, label %do.body.i257.i.i, label %if.end38.i.i.i

do.body.i257.i.i:                                 ; preds = %if.then9.i.i.i
  %call14.i.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i.i.i)
  %cmp15.i.i.i = icmp sgt i32 %call14.i.i.i, 2
  br i1 %cmp15.i.i.i, label %do.end.i258.i.i, label %do.body.i257.i.i.cleanup.thread.i.i.i_crit_edge

do.body.i257.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %do.body.i257.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

do.end.i258.i.i:                                  ; preds = %do.body.i257.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %buff.i.i.i) #16
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %do.end.i258.i.i, %do.body.i257.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buff.i.i.i) #11
  br label %do.body152.i.i

do.body26.i.i.i:                                  ; preds = %if.then7.i.i.i
  %call27.i.i.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %do.body26.i.i.i.do.body152.i.i_crit_edge, label %do.end32.i.i.i

do.body26.i.i.i.do.body152.i.i_crit_edge:         ; preds = %do.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body152.i.i

do.end32.i.i.i:                                   ; preds = %do.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #16
  br label %do.body152.i.i

if.end38.i.i.i:                                   ; preds = %if.then9.i.i.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buff.i.i.i) #11
  %call39.i.i.i = call ptr @kmemdup(ptr noundef %pe_data.0.lcssa.i.i, i32 noundef %pe_data_len.0.lcssa.i.i, i32 noundef 2592) #11
  %207 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call39.i.i.i, ptr %24, align 4
  %tobool42.not.i.i.i = icmp eq ptr %call39.i.i.i, null
  br i1 %tobool42.not.i.i.i, label %if.then43.i.i.i, label %if.end45.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %208 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %23, align 4
  %module.i.i.i = getelementptr inbounds %struct.ip_vs_pe, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %module.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %module.i.i.i, align 4
  call void @module_put(ptr noundef %211) #11
  br label %do.body152.i.i

if.end45.i.i.i:                                   ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv46.i.i.i = trunc i32 %pe_data_len.0.lcssa.i.i to i8
  %212 = ptrtoint ptr %pe_data_len47.i.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv46.i.i.i, ptr %pe_data_len47.i.i.i, align 4
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %if.end45.i.i.i, %if.end.i.i.i.if.end123.i.i_crit_edge
  br i1 %tobool.not.i.i, label %if.then126.i.i, label %if.else131.i.i

if.then126.i.i:                                   ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %protocol127.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 1
  %213 = ptrtoint ptr %protocol127.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %protocol127.i.i, align 1
  %conv128.i.i = zext i8 %214 to i32
  %daddr.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 12
  %dport.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 7
  %215 = ptrtoint ptr %dport.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %dport.i.i, align 2
  %timeout.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 9
  %217 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %timeout.i.i, align 4
  %fwmark.i.i = getelementptr inbounds %struct.ip_vs_sync_v4, ptr %msg_end.0300.i, i32 0, i32 8
  %219 = ptrtoint ptr %fwmark.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %fwmark.i.i, align 4
  %and129.i.i = and i32 %opt_flags.0.lcssa.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i.i)
  %tobool130.not.i.i = icmp eq i32 %and129.i.i, 0
  %opt..i.i = select i1 %tobool130.not.i.i, ptr null, ptr %opt.i.i
  call fastcc void @ip_vs_proc_conn(ptr noundef %1, ptr noundef nonnull %param.i.i, i32 noundef %or.i.i, i32 noundef %conv59.i.i, i32 noundef %conv128.i.i, i32 noundef 2, ptr noundef %daddr.i.i, i16 noundef zeroext %216, i32 noundef %218, i32 noundef %220, ptr noundef %opt..i.i) #11
  br label %if.end144.i.i

if.else131.i.i:                                   ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %protocol132.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 1
  %221 = ptrtoint ptr %protocol132.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %protocol132.i.i, align 1
  %conv133.i.i = zext i8 %222 to i32
  %daddr134.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 12
  %dport135.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 7
  %223 = ptrtoint ptr %dport135.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %dport135.i.i, align 2
  %timeout136.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 9
  %225 = ptrtoint ptr %timeout136.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %timeout136.i.i, align 4
  %fwmark137.i.i = getelementptr inbounds %struct.ip_vs_sync_v6, ptr %msg_end.0300.i, i32 0, i32 8
  %227 = ptrtoint ptr %fwmark137.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %fwmark137.i.i, align 4
  %and138.i.i = and i32 %opt_flags.0.lcssa.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i.i)
  %tobool139.not.i.i = icmp eq i32 %and138.i.i, 0
  %opt.178.i.i = select i1 %tobool139.not.i.i, ptr null, ptr %opt.i.i
  call fastcc void @ip_vs_proc_conn(ptr noundef %1, ptr noundef nonnull %param.i.i, i32 noundef %or.i.i, i32 noundef %conv59.i.i, i32 noundef %conv133.i.i, i32 noundef %af.0.i.i, ptr noundef %daddr134.i.i, i16 noundef zeroext %224, i32 noundef %226, i32 noundef %228, ptr noundef %opt.178.i.i) #11
  br label %if.end144.i.i

if.end144.i.i:                                    ; preds = %if.else131.i.i, %if.then126.i.i
  %229 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %23, align 4
  %tobool145.not.i.i = icmp eq ptr %230, null
  br i1 %tobool145.not.i.i, label %if.end144.i.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

if.end144.i.i.for.inc.i_crit_edge:                ; preds = %if.end144.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %if.end144.i.i
  %module.i.i = getelementptr inbounds %struct.ip_vs_pe, ptr %230, i32 0, i32 3
  %231 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %module.i.i, align 4
  %tobool147.not.i.i = icmp eq ptr %232, null
  br i1 %tobool147.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %if.then148.i.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then148.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @module_put(ptr noundef nonnull %232) #11
  br label %for.inc.i

do.body152.i.i:                                   ; preds = %if.then43.i.i.i, %do.end32.i.i.i, %do.body26.i.i.i.do.body152.i.i_crit_edge, %cleanup.thread.i.i.i, %do.end94.i.i, %do.body87.i.i.do.body152.i.i_crit_edge, %do.end74.i.i, %do.body67.i.i.do.body152.i.i_crit_edge, %do.end.i.i, %do.body.i.i.do.body152.i.i_crit_edge
  %retc.2.i.i = phi i32 [ 30, %do.end74.i.i ], [ 30, %do.body67.i.i.do.body152.i.i_crit_edge ], [ 40, %do.end94.i.i ], [ 40, %do.body87.i.i.do.body152.i.i_crit_edge ], [ 20, %do.end.i.i ], [ 20, %do.body.i.i.do.body152.i.i_crit_edge ], [ 50, %if.then43.i.i.i ], [ 50, %do.body26.i.i.i.do.body152.i.i_crit_edge ], [ 50, %do.end32.i.i.i ], [ 50, %cleanup.thread.i.i.i ]
  %call153.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call153.i.i)
  %cmp154.i.i = icmp sgt i32 %call153.i.i, 1
  br i1 %cmp154.i.i, label %do.end159.i.i, label %do.body152.i.i.for.inc.i_crit_edge

do.body152.i.i.for.inc.i_crit_edge:               ; preds = %do.body152.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end159.i.i:                                    ; preds = %do.body152.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call161.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %retc.2.i.i) #16
  br label %for.inc.i

do.body127.i:                                     ; preds = %do.end13.i249.i.i, %do.body8.i247.i.i.do.body127.i_crit_edge, %do.end.i242.i.i, %do.body.i240.i.i.do.body127.i_crit_edge, %do.end13.i.i.i, %do.body8.i.i.i.do.body127.i_crit_edge, %do.end15.i.i.i, %do.body9.i.i.i.do.body127.i_crit_edge, %do.end.i.i.i, %do.body.i.i.i.do.body127.i_crit_edge, %lor.lhs.false.i.i.do.body127.i_crit_edge, %if.end16.i.i.do.body127.i_crit_edge, %while.body.i.i.do.body127.i_crit_edge, %if.end6.i.i.do.body127.i_crit_edge, %if.else.i.i.do.body127.i_crit_edge
  %retval.2.i.ph.i = phi i32 [ -70, %do.end13.i249.i.i ], [ -70, %do.body8.i247.i.i.do.body127.i_crit_edge ], [ -70, %do.end.i242.i.i ], [ -70, %do.body.i240.i.i.do.body127.i_crit_edge ], [ -60, %do.end13.i.i.i ], [ -60, %do.body8.i.i.i.do.body127.i_crit_edge ], [ -50, %do.body9.i.i.i.do.body127.i_crit_edge ], [ -50, %do.end15.i.i.i ], [ -50, %do.body.i.i.i.do.body127.i_crit_edge ], [ -50, %do.end.i.i.i ], [ -30, %while.body.i.i.do.body127.i_crit_edge ], [ -40, %lor.lhs.false.i.i.do.body127.i_crit_edge ], [ -40, %if.end16.i.i.do.body127.i_crit_edge ], [ -20, %if.end6.i.i.do.body127.i_crit_edge ], [ -10, %if.else.i.i.do.body127.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %param.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt.i.i) #11
  %call128.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool129.not.i, label %do.body127.i.while.cond33.backedge_crit_edge, label %do.end133.i

do.body127.i.while.cond33.backedge_crit_edge:     ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

do.end133.i:                                      ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #13
  %call135.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %retval.2.i.ph.i) #16
  br label %while.cond33.backedge

for.inc.i:                                        ; preds = %do.end159.i.i, %do.body152.i.i.for.inc.i_crit_edge, %if.then148.i.i, %land.lhs.true.i.i.for.inc.i_crit_edge, %if.end144.i.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %param.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt.i.i) #11
  %add.i = add nuw nsw i32 %and.i, 3
  %and140.i = and i32 %add.i, 8188
  %add.ptr141.i = getelementptr i8, ptr %msg_end.0300.i, i32 %and140.i
  %inc.i = add nuw nsw i32 %i.0299.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv63.i
  br i1 %exitcond.not.i, label %for.inc.i.while.cond33.backedge_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.while.cond33.backedge_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.backedge

if.else.i:                                        ; preds = %land.lhs.true57.i.if.else.i_crit_edge, %if.end49.i.if.else.i_crit_edge
  %233 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %233)
  %.pr.i = load i8, ptr %56, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %param.i180.i) #11
  %234 = call ptr @memset(ptr %param.i180.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp148.not.i.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp148.not.i.i, label %if.else.i.ip_vs_process_message_v0.exit.i_crit_edge, label %if.else.i.for.body.lr.ph.i.i_crit_edge

if.else.i.for.body.lr.ph.i.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i.i

if.else.i.ip_vs_process_message_v0.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_process_message_v0.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i.for.body.lr.ph.i.i_crit_edge, %if.else.thread.i
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 4
  %add.ptr3.i.i = getelementptr i8, ptr %56, i32 %call5.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %p.0150.i.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i.i ], [ %p.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0149.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.ptr2.i.i = getelementptr i8, ptr %p.0150.i.i, i32 24
  %cmp4.i.i = icmp ugt ptr %add.ptr2.i.i, %add.ptr3.i.i
  br i1 %cmp4.i.i, label %do.body.i182.i, label %if.end11.i.i

do.body.i182.i:                                   ; preds = %for.body.i.i
  %call.i.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i181.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i181.i, label %do.body.i182.i.ip_vs_process_message_v0.exit.i_crit_edge, label %do.body.i182.i.cleanup104.sink.split.i.i_crit_edge

do.body.i182.i.cleanup104.sink.split.i.i_crit_edge: ; preds = %do.body.i182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104.sink.split.i.i

do.body.i182.i.ip_vs_process_message_v0.exit.i_crit_edge: ; preds = %do.body.i182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_process_message_v0.exit.i

if.end11.i.i:                                     ; preds = %for.body.i.i
  %flags12.i.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 8
  %235 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %flags12.i.i, align 4
  %237 = and i16 %236, -97
  %238 = or i16 %237, 32
  %and.i.i = zext i16 %238 to i32
  %and14.i.i = and i32 %and.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end11.i.i.if.end36.i.i_crit_edge, label %if.then16.i.i

if.end11.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i

if.then16.i.i:                                    ; preds = %if.end11.i.i
  %add.ptr17.i.i = getelementptr i8, ptr %p.0150.i.i, i32 48
  %cmp19.i.i = icmp ugt ptr %add.ptr17.i.i, %add.ptr3.i.i
  br i1 %cmp19.i.i, label %do.body22.i.i, label %if.then16.i.i.if.end36.i.i_crit_edge

if.then16.i.i.if.end36.i.i_crit_edge:             ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i

do.body22.i.i:                                    ; preds = %if.then16.i.i
  %call23.i.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %do.body22.i.i.ip_vs_process_message_v0.exit.i_crit_edge, label %do.body22.i.i.cleanup104.sink.split.i.i_crit_edge

do.body22.i.i.cleanup104.sink.split.i.i_crit_edge: ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup104.sink.split.i.i

do.body22.i.i.ip_vs_process_message_v0.exit.i_crit_edge: ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_process_message_v0.exit.i

if.end36.i.i:                                     ; preds = %if.then16.i.i.if.end36.i.i_crit_edge, %if.end11.i.i.if.end36.i.i_crit_edge
  %p.1.i.i = phi ptr [ %add.ptr17.i.i, %if.then16.i.i.if.end36.i.i_crit_edge ], [ %add.ptr2.i.i, %if.end11.i.i.if.end36.i.i_crit_edge ]
  %opt.0.i.i = phi ptr [ %add.ptr2.i.i, %if.then16.i.i.if.end36.i.i_crit_edge ], [ null, %if.end11.i.i.if.end36.i.i_crit_edge ]
  %state37.i.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 9
  %239 = ptrtoint ptr %state37.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %state37.i.i, align 2
  %conv38.i.i = zext i16 %240 to i32
  %and39.i.i = and i32 %and.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool40.not.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.then41.i.i, label %if.else80.i.i

if.then41.i.i:                                    ; preds = %if.end36.i.i
  %protocol.i183.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 1
  %241 = ptrtoint ptr %protocol.i183.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %protocol.i183.i, align 1
  %conv42.i.i = zext i8 %242 to i16
  %call43.i184.i = call ptr @ip_vs_proto_get(i16 noundef zeroext %conv42.i.i) #11
  %tobool44.not.i.i = icmp eq ptr %call43.i184.i, null
  br i1 %tobool44.not.i.i, label %do.body46.i.i, label %if.end61.i.i

do.body46.i.i:                                    ; preds = %if.then41.i.i
  %call47.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47.i.i)
  %cmp48.i.i = icmp sgt i32 %call47.i.i, 1
  br i1 %cmp48.i.i, label %do.end53.i.i, label %do.body46.i.i.for.inc.i.i_crit_edge

do.body46.i.i.for.inc.i.i_crit_edge:              ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

do.end53.i.i:                                     ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %243 = ptrtoint ptr %protocol.i183.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %protocol.i183.i, align 1
  %conv56.i.i = zext i8 %244 to i32
  %call57.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %conv56.i.i) #16
  br label %for.inc.i.i

if.end61.i.i:                                     ; preds = %if.then41.i.i
  %num_states.i185.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call43.i184.i, i32 0, i32 3
  %245 = ptrtoint ptr %num_states.i185.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %num_states.i185.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %240, i16 %246)
  %cmp63.not.i.i = icmp ult i16 %240, %246
  br i1 %cmp63.not.i.i, label %if.end61.i.i.if.end98.i.i_crit_edge, label %do.body66.i.i

if.end61.i.i.if.end98.i.i_crit_edge:              ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98.i.i

do.body66.i.i:                                    ; preds = %if.end61.i.i
  %call67.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67.i.i)
  %cmp68.i.i = icmp sgt i32 %call67.i.i, 1
  br i1 %cmp68.i.i, label %do.end73.i.i, label %do.body66.i.i.for.inc.i.i_crit_edge

do.body66.i.i.for.inc.i.i_crit_edge:              ; preds = %do.body66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

do.end73.i.i:                                     ; preds = %do.body66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i186.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call43.i184.i, i32 0, i32 1
  %247 = ptrtoint ptr %name.i186.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %name.i186.i, align 4
  %call75.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %248, i32 noundef %conv38.i.i) #16
  br label %for.inc.i.i

if.else80.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %240)
  %cmp81.i.i = icmp ugt i16 %240, 1
  br i1 %cmp81.i.i, label %do.body84.i.i, label %if.else80.i.i.if.end98.i.i_crit_edge

if.else80.i.i.if.end98.i.i_crit_edge:             ; preds = %if.else80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98.i.i

do.body84.i.i:                                    ; preds = %if.else80.i.i
  %call85.i.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call85.i.i)
  %cmp86.i.i = icmp sgt i32 %call85.i.i, 6
  br i1 %cmp86.i.i, label %do.end91.i.i, label %do.body84.i.i.if.end98.i.i_crit_edge

do.body84.i.i.if.end98.i.i_crit_edge:             ; preds = %do.body84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98.i.i

do.end91.i.i:                                     ; preds = %do.body84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call93.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %conv38.i.i) #16
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %do.end91.i.i, %do.body84.i.i.if.end98.i.i_crit_edge, %if.else80.i.i.if.end98.i.i_crit_edge, %if.end61.i.i.if.end98.i.i_crit_edge
  %protocol99.i.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 1
  %249 = ptrtoint ptr %protocol99.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %protocol99.i.i, align 1
  %caddr.i.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 5
  %cport.i.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 2
  %251 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %cport.i.i, align 2
  %vaddr.i.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 6
  %vport.i.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 3
  %253 = ptrtoint ptr %vport.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %vport.i.i, align 4
  %255 = ptrtoint ptr %param.i180.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %1, ptr %param.i180.i, align 4
  %256 = ptrtoint ptr %af2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 2, ptr %af2.i.i.i, align 2
  %conv3.i.i.i = zext i8 %250 to i16
  %257 = ptrtoint ptr %protocol4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv3.i.i.i, ptr %protocol4.i.i.i, align 4
  %258 = ptrtoint ptr %caddr5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %caddr.i.i, ptr %caddr5.i.i.i, align 4
  %259 = ptrtoint ptr %cport6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %252, ptr %cport6.i.i.i, align 4
  %260 = ptrtoint ptr %vaddr7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %vaddr.i.i, ptr %vaddr7.i.i.i, align 4
  %261 = ptrtoint ptr %vport8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %254, ptr %vport8.i.i.i, align 2
  %262 = ptrtoint ptr %pe.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr null, ptr %pe.i.i.i, align 4
  %263 = ptrtoint ptr %pe_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr null, ptr %pe_data.i.i.i, align 4
  %264 = load i8, ptr %protocol99.i.i, align 1
  %conv102.i.i = zext i8 %264 to i32
  %daddr.i187.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 7
  %dport.i188.i = getelementptr inbounds %struct.ip_vs_sync_conn_v0, ptr %p.0150.i.i, i32 0, i32 4
  %265 = ptrtoint ptr %dport.i188.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %dport.i188.i, align 2
  call fastcc void @ip_vs_proc_conn(ptr noundef %1, ptr noundef nonnull %param.i180.i, i32 noundef %and.i.i, i32 noundef %conv38.i.i, i32 noundef %conv102.i.i, i32 noundef 2, ptr noundef %daddr.i187.i, i16 noundef zeroext %266, i32 noundef 0, i32 noundef 0, ptr noundef %opt.0.i.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end98.i.i, %do.end73.i.i, %do.body66.i.i.for.inc.i.i_crit_edge, %do.end53.i.i, %do.body46.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0149.i.i, 1
  %267 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %56, align 2
  %conv.i.i = zext i8 %268 to i32
  %cmp.i189.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i189.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ip_vs_process_message_v0.exit.i_crit_edge

for.inc.i.i.ip_vs_process_message_v0.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_vs_process_message_v0.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

cleanup104.sink.split.i.i:                        ; preds = %do.body22.i.i.cleanup104.sink.split.i.i_crit_edge, %do.body.i182.i.cleanup104.sink.split.i.i_crit_edge
  %.str.108.sink.i.i = phi ptr [ @.str.108, %do.body.i182.i.cleanup104.sink.split.i.i_crit_edge ], [ @.str.111, %do.body22.i.i.cleanup104.sink.split.i.i_crit_edge ]
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.108.sink.i.i) #16
  br label %ip_vs_process_message_v0.exit.i

ip_vs_process_message_v0.exit.i:                  ; preds = %cleanup104.sink.split.i.i, %for.inc.i.i.ip_vs_process_message_v0.exit.i_crit_edge, %do.body22.i.i.ip_vs_process_message_v0.exit.i_crit_edge, %do.body.i182.i.ip_vs_process_message_v0.exit.i_crit_edge, %if.else.i.ip_vs_process_message_v0.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %param.i180.i) #11
  br label %while.cond33.backedge

while.end:                                        ; preds = %do.end50, %if.then44.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  %call5 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call5, label %while.end.while.end56_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.while.end56_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end56

while.end56:                                      ; preds = %while.end.while.end56_crit_edge, %entry.while.end56_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @master_wakeup_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %ipvs1 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs1, align 4
  %sync_lock = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 65
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_lock) #11
  %sync_queue_len = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %sync_queue_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sync_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sync_queue_delay = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %sync_queue_delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_queue_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp ult i32 %5, 8
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %ms2 = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %ms2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ms2, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 124
  %8 = ptrtoint ptr %sync_queue_delay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %sync_queue_delay, align 4
  %master_tinfo = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 68
  %9 = ptrtoint ptr %master_tinfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master_tinfo, align 4
  %arrayidx = getelementptr %struct.ip_vs_sync_thread_data, ptr %10, i32 %sub.ptr.div
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %12) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_use_count_dec() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stop_sync_thread(ptr noundef %ipvs, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp = icmp sgt i32 %call, 6
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19, i32 noundef %5) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %sync_mutex = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 72
  tail call void @mutex_lock_nested(ptr noundef %sync_mutex, i32 noundef 0) #11
  %6 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %state, label %do.end6.err_crit_edge [
    i32 1, label %if.then8
    i32 2, label %if.then34
  ]

do.end6.err_crit_edge:                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then8:                                         ; preds = %do.end6
  %ms = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 66
  %7 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ms, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then8.err_crit_edge, label %if.end10

if.then8.err_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end10:                                         ; preds = %if.then8
  %master_tinfo = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 68
  %9 = ptrtoint ptr %master_tinfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master_tinfo, align 4
  %sync_buff_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_buff_lock) #11
  %sync_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 65
  tail call void @_raw_spin_lock(ptr noundef %sync_lock) #11
  %sync_state = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 71
  %11 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sync_state, align 8
  %and = and i32 %12, -2
  store volatile i32 %and, ptr %sync_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %sync_lock) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock) #11
  %threads_mask = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 70
  %13 = ptrtoint ptr %threads_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %threads_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp13133 = icmp sgt i32 %14, -1
  br i1 %cmp13133, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %id.0135 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %14, %if.end10.for.body_crit_edge ]
  %retc.0134 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %15 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ms, align 4
  %arrayidx16 = getelementptr %struct.ip_vs_sync_thread_data, ptr %10, i32 %id.0135
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx16, align 4
  %pid.i126 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid.i126 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid.i126, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %20) #16
  %master_wakeup_work = getelementptr %struct.ipvs_master_sync_state, ptr %16, i32 %id.0135, i32 4
  %call24 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %master_wakeup_work) #11
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx16, align 4
  %call26 = tail call i32 @kthread_stop(ptr noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retc.0134)
  %cmp27129 = icmp slt i32 %retc.0134, 0
  %spec.select = select i1 %cmp27129, i32 %retc.0134, i32 %call26
  %dec = add nsw i32 %id.0135, -1
  %cmp13.not = icmp eq i32 %id.0135, 0
  br i1 %cmp13.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %retc.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %23 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ms, align 4
  tail call void @kfree(ptr noundef %24) #11
  %25 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ms, align 4
  %26 = ptrtoint ptr %master_tinfo to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %master_tinfo, align 4
  br label %if.end65

if.then34:                                        ; preds = %do.end6
  %backup_tinfo = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 69
  %27 = ptrtoint ptr %backup_tinfo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %backup_tinfo, align 8
  %tobool35.not = icmp eq ptr %28, null
  br i1 %tobool35.not, label %if.then34.err_crit_edge, label %if.end37

if.then34.err_crit_edge:                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end37:                                         ; preds = %if.then34
  %sync_state39 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 71
  %29 = ptrtoint ptr %sync_state39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %sync_state39, align 8
  %and40 = and i32 %30, -3
  store volatile i32 %and40, ptr %sync_state39, align 8
  %threads_mask41 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 70
  %31 = ptrtoint ptr %threads_mask41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %threads_mask41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp43130 = icmp sgt i32 %32, -1
  br i1 %cmp43130, label %if.end37.for.body44_crit_edge, label %if.end37.for.end61_crit_edge

if.end37.for.end61_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

if.end37.for.body44_crit_edge:                    ; preds = %if.end37
  br label %for.body44

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %if.end37.for.body44_crit_edge
  %id.1132 = phi i32 [ %dec60, %for.body44.for.body44_crit_edge ], [ %32, %if.end37.for.body44_crit_edge ]
  %retc.2131 = phi i32 [ %spec.select125, %for.body44.for.body44_crit_edge ], [ 0, %if.end37.for.body44_crit_edge ]
  %arrayidx46 = getelementptr %struct.ip_vs_sync_thread_data, ptr %28, i32 %id.1132
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx46, align 4
  %pid.i127 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid.i127 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid.i127, align 8
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %36) #16
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx46, align 4
  %call55 = tail call i32 @kthread_stop(ptr noundef %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retc.2131)
  %cmp56128 = icmp slt i32 %retc.2131, 0
  %spec.select125 = select i1 %cmp56128, i32 %retc.2131, i32 %call55
  %dec60 = add nsw i32 %id.1132, -1
  %cmp43.not = icmp eq i32 %id.1132, 0
  br i1 %cmp43.not, label %for.body44.for.end61_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body44

for.body44.for.end61_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.end61:                                        ; preds = %for.body44.for.end61_crit_edge, %if.end37.for.end61_crit_edge
  %retc.2.lcssa = phi i32 [ 0, %if.end37.for.end61_crit_edge ], [ %spec.select125, %for.body44.for.end61_crit_edge ]
  %39 = ptrtoint ptr %backup_tinfo to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %backup_tinfo, align 8
  br label %if.end65

if.end65:                                         ; preds = %for.end61, %for.end
  %retc.4 = phi i32 [ %retc.0.lcssa, %for.end ], [ %retc.2.lcssa, %for.end61 ]
  %ti.0 = phi ptr [ %10, %for.end ], [ %28, %for.end61 ]
  %threads_mask66 = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 70
  %40 = ptrtoint ptr %threads_mask66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %threads_mask66, align 4
  tail call void @mutex_unlock(ptr noundef %sync_mutex) #11
  %add.ptr = getelementptr %struct.ip_vs_sync_thread_data, ptr %ti.0, i32 %41
  %cmp69.not137 = icmp ult ptr %add.ptr, %ti.0
  br i1 %cmp69.not137, label %if.end65.for.end76_crit_edge, label %if.end65.for.body70_crit_edge

if.end65.for.body70_crit_edge:                    ; preds = %if.end65
  br label %for.body70

if.end65.for.end76_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end76

for.body70:                                       ; preds = %if.end74.for.body70_crit_edge, %if.end65.for.body70_crit_edge
  %tinfo.0138 = phi ptr [ %incdec.ptr, %if.end74.for.body70_crit_edge ], [ %add.ptr, %if.end65.for.body70_crit_edge ]
  %sock = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %tinfo.0138, i32 0, i32 2
  %42 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sock, align 4
  %tobool71.not = icmp eq ptr %43, null
  br i1 %tobool71.not, label %for.body70.if.end74_crit_edge, label %if.then72

for.body70.if.end74_crit_edge:                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then72:                                        ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sock_release(ptr noundef nonnull %43) #11
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %for.body70.if.end74_crit_edge
  %buf = getelementptr inbounds %struct.ip_vs_sync_thread_data, ptr %tinfo.0138, i32 0, i32 3
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %45) #11
  %incdec.ptr = getelementptr %struct.ip_vs_sync_thread_data, ptr %tinfo.0138, i32 -1
  %cmp69.not = icmp ult ptr %incdec.ptr, %ti.0
  br i1 %cmp69.not, label %if.end74.for.end76_crit_edge, label %if.end74.for.body70_crit_edge

if.end74.for.body70_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body70

if.end74.for.end76_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end76

for.end76:                                        ; preds = %if.end74.for.end76_crit_edge, %if.end65.for.end76_crit_edge
  tail call void @kfree(ptr noundef nonnull %ti.0) #11
  tail call void @ip_vs_use_count_dec() #11
  br label %cleanup

err:                                              ; preds = %if.then34.err_crit_edge, %if.then8.err_crit_edge, %do.end6.err_crit_edge
  %retc.5 = phi i32 [ -3, %if.then8.err_crit_edge ], [ -3, %if.then34.err_crit_edge ], [ -22, %do.end6.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sync_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end76
  %retval.0 = phi i32 [ %retc.4, %for.end76 ], [ %retc.5, %err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_sync_net_init(ptr noundef %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mutex = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 72
  tail call void @__mutex_init(ptr noundef %sync_mutex, ptr noundef nonnull @.str.26, ptr noundef nonnull @__ipvs_sync_key) #11
  %sync_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 65
  tail call void @__raw_spin_lock_init(ptr noundef %sync_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @ip_vs_sync_net_init.__key, i16 noundef signext 3) #11
  %sync_buff_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 67
  tail call void @__raw_spin_lock_init(ptr noundef %sync_buff_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @ip_vs_sync_net_init.__key.28, i16 noundef signext 3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_sync_net_cleanup(ptr noundef %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stop_sync_thread(ptr noundef %ipvs, i32 noundef 1)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call, label %do.end [
    i32 0, label %entry.if.end_crit_edge
    i32 -3, label %entry.if.end_crit_edge17
  ]

entry.if.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge17
  %call2 = tail call i32 @stop_sync_thread(ptr noundef %ipvs, i32 noundef 2)
  %1 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %call2, label %do.end9 [
    i32 0, label %if.end.if.end12_crit_edge
    i32 -3, label %if.end.if.end12_crit_edge18
  ]

if.end.if.end12_crit_edge18:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #16
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge, %if.end.if.end12_crit_edge18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sb_dequeue(ptr noundef %ipvs, ptr noundef %ms) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sync_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 65
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_lock) #11
  %0 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ms, align 4
  %cmp.i.not = icmp eq ptr %1, %ms
  br i1 %cmp.i.not, label %__here, label %if.else

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@sb_dequeue, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  br label %if.end60

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %sync_queue_len = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms, i32 0, i32 2
  %17 = ptrtoint ptr %sync_queue_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sync_queue_len, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %sync_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool57.not = icmp eq i32 %dec, 0
  br i1 %tobool57.not, label %if.then58, label %list_del.exit.if.end60_crit_edge

list_del.exit.if.end60_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then58:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sync_queue_delay = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms, i32 0, i32 3
  %19 = ptrtoint ptr %sync_queue_delay to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sync_queue_delay, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %list_del.exit.if.end60_crit_edge, %__here
  %sb.0 = phi ptr [ null, %__here ], [ %1, %list_del.exit.if.end60_crit_edge ], [ %1, %if.then58 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_lock) #11
  ret ptr %sb.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_curr_sync_buff(ptr noundef %ipvs, ptr nocapture noundef %ms, i32 noundef %time) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sync_buff_lock = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_buff_lock) #11
  %sync_buff = getelementptr inbounds %struct.ipvs_master_sync_state, ptr %ms, i32 0, i32 1
  %0 = ptrtoint ptr %sync_buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sync_buff, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %land.lhs.true

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %firstuse = getelementptr inbounds %struct.ip_vs_sync_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %firstuse to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %firstuse, align 4
  %5 = add i32 %4, %time
  %sub1 = sub i32 %2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub1)
  %cmp = icmp sgt i32 %sub1, -1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %sync_buff to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sync_buff, align 4
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %7 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 212
  %11 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 ptrtoint (ptr blockaddress(@get_curr_sync_buff, %__here) to i32), ptr %task_state_change, align 4
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %12, align 128
  br label %if.end55

if.end55:                                         ; preds = %__here, %land.lhs.true.if.end55_crit_edge, %entry.if.end55_crit_edge
  %sb.0 = phi ptr [ %1, %__here ], [ null, %land.lhs.true.if.end55_crit_edge ], [ null, %entry.if.end55_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_buff_lock) #11
  ret ptr %sb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_get(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_proc_conn(ptr noundef %ipvs, ptr noundef %param, i32 noundef %flags, i32 noundef %state, i32 noundef %protocol, i32 noundef %type, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %timeout, i32 noundef %fwmark, ptr noundef readonly %opt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %call = tail call ptr @ip_vs_conn_in_get(ptr noundef %param) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.if.else46_crit_edge, label %land.lhs.true

if.then.if.else46_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else46

land.lhs.true:                                    ; preds = %if.then
  %dport2 = getelementptr inbounds %struct.ip_vs_conn, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %dport2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dport2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %dport)
  %cmp.not = icmp eq i16 %1, %dport
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then9_crit_edge

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false:                                    ; preds = %land.lhs.true
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %daf, align 2
  %daddr6 = getelementptr inbounds %struct.ip_vs_conn, ptr %call, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.i = icmp eq i16 %3, 10
  %4 = ptrtoint ptr %daddr6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %daddr6, align 4
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  br i1 %cmp.i, label %if.then.i175, label %ip_vs_addr_equal.exit

if.then.i175:                                     ; preds = %lor.lhs.false
  %xor.i.i = xor i32 %7, %5
  %arrayidx4.i.i = getelementptr %struct.ip_vs_conn, ptr %call, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %11, %9
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.ip_vs_conn, ptr %call, i32 0, i32 7, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %15, %13
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.ip_vs_conn, ptr %call, i32 0, i32 7, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %19, %17
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %if.then.i175.if.then18_crit_edge, label %if.then.i175.if.then9_crit_edge

if.then.i175.if.then9_crit_edge:                  ; preds = %if.then.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then.i175.if.then18_crit_edge:                 ; preds = %if.then.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

ip_vs_addr_equal.exit:                            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.i = icmp eq i32 %5, %7
  br i1 %cmp1.i, label %ip_vs_addr_equal.exit.if.then18_crit_edge, label %ip_vs_addr_equal.exit.if.then9_crit_edge

ip_vs_addr_equal.exit.if.then9_crit_edge:         ; preds = %ip_vs_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

ip_vs_addr_equal.exit.if.then18_crit_edge:        ; preds = %ip_vs_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then9:                                         ; preds = %ip_vs_addr_equal.exit.if.then9_crit_edge, %if.then.i175.if.then9_crit_edge, %land.lhs.true.if.then9_crit_edge
  %and10 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  tail call void @ip_vs_conn_expire_now(ptr noundef nonnull %call) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !278
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %call, i32 0, i32 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !280
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.then12.if.else46_crit_edge, !prof !276

if.then12.if.else46_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else46

if.then3.i.i.i:                                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #11
  br label %if.else46

if.else:                                          ; preds = %if.then9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !278
  %refcnt.i176 = getelementptr inbounds %struct.ip_vs_conn, ptr %call, i32 0, i32 12
  %call.i.i.i.i.i177 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i176, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %refcnt.i176, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i176, ptr %refcnt.i176, i32 1, ptr elementtype(i32) %refcnt.i176) #11, !srcloc !280
  %asmresult.i.i.i.i.i.i178 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i178)
  %cmp.i.i.i179 = icmp slt i32 %asmresult.i.i.i.i.i.i178, 2
  br i1 %cmp.i.i.i179, label %if.then3.i.i.i180, label %if.else.__ip_vs_conn_put.exit181_crit_edge, !prof !276

if.else.__ip_vs_conn_put.exit181_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ip_vs_conn_put.exit181

if.then3.i.i.i180:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i176, i32 noundef 4) #11
  br label %__ip_vs_conn_put.exit181

__ip_vs_conn_put.exit181:                         ; preds = %if.then3.i.i.i180, %if.else.__ip_vs_conn_put.exit181_crit_edge
  %pe_data = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param, i32 0, i32 8
  %22 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pe_data, align 4
  tail call void @kfree(ptr noundef %23) #11
  br label %cleanup

if.end16:                                         ; preds = %entry
  %call15 = tail call ptr @ip_vs_ct_in_get(ptr noundef %param) #11
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end16.if.else46_crit_edge, label %if.end16.if.then18_crit_edge

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.end16.if.else46_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else46

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %ip_vs_addr_equal.exit.if.then18_crit_edge, %if.then.i175.if.then18_crit_edge
  %cp.0196 = phi ptr [ %call15, %if.end16.if.then18_crit_edge ], [ %call, %ip_vs_addr_equal.exit.if.then18_crit_edge ], [ %call, %if.then.i175.if.then18_crit_edge ]
  %pe_data19 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param, i32 0, i32 8
  %24 = ptrtoint ptr %pe_data19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pe_data19, align 4
  tail call void @kfree(ptr noundef %25) #11
  %dest20 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0196, i32 0, i32 22
  %26 = ptrtoint ptr %dest20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dest20, align 4
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0196, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %flags21 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0196, i32 0, i32 8
  %28 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags21, align 4
  %xor = xor i32 %29, %flags
  %and22 = and i32 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = or i1 %tobool23.not, %tobool.not.not
  %tobool28.not = icmp eq ptr %27, null
  %or.cond = select i1 %brmerge, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.then18.if.end37_crit_edge, label %if.then29

if.then18.if.end37_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then29:                                        ; preds = %if.then18
  %and30 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %activeconns34 = getelementptr inbounds %struct.ip_vs_dest, ptr %27, i32 0, i32 15
  %call.i.i172 = tail call zeroext i1 @__kasan_check_write(ptr noundef %activeconns34, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %activeconns34, i32 1, i32 3, i32 1) #11
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %activeconns34, ptr %activeconns34, i32 1, ptr elementtype(i32) %activeconns34) #11, !srcloc !281
  %inactconns = getelementptr inbounds %struct.ip_vs_dest, ptr %27, i32 0, i32 16
  %call.i.i171 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inactconns, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inactconns, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inactconns, ptr %inactconns, i32 1, ptr elementtype(i32) %inactconns) #11, !srcloc !282
  br label %if.end37

if.else33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %activeconns34, ptr %activeconns34, i32 1, ptr elementtype(i32) %activeconns34) #11, !srcloc !282
  %inactconns35 = getelementptr inbounds %struct.ip_vs_dest, ptr %27, i32 0, i32 16
  %call.i.i173 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inactconns35, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inactconns35, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inactconns35, ptr %inactconns35, i32 1, ptr elementtype(i32) %inactconns35) #11, !srcloc !281
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.then32, %if.then18.if.end37_crit_edge
  %and38 = and i32 %flags, 1792
  %34 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags21, align 4
  %and40 = and i32 %35, -1793
  %or = or i32 %and40, %and38
  store volatile i32 %or, ptr %flags21, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br i1 %tobool28.not, label %if.then44, label %if.end37.if.end68_crit_edge

if.end37.if.end68_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ip_vs_try_bind_dest(ptr noundef nonnull %cp.0196) #11
  br label %if.end68

if.else46:                                        ; preds = %if.end16.if.else46_crit_edge, %if.then3.i.i.i, %if.then12.if.else46_crit_edge, %if.then.if.else46_crit_edge
  %36 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !283
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.else46.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else46.rcu_read_lock.exit_crit_edge:           ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else46
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.105, i32 noundef 696, ptr noundef nonnull @.str.106) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else46.rcu_read_lock.exit_crit_edge
  %vaddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param, i32 0, i32 2
  %40 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vaddr, align 4
  %vport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param, i32 0, i32 4
  %42 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vport, align 2
  %conv47 = trunc i32 %protocol to i16
  %call48 = tail call ptr @ip_vs_find_dest(ptr noundef %ipvs, i32 noundef %type, i32 noundef %type, ptr noundef %daddr, i16 noundef zeroext %dport, ptr noundef %41, i16 noundef zeroext %43, i16 noundef zeroext %conv47, i32 noundef %fwmark, i32 noundef %flags) #11
  %call49 = tail call ptr @ip_vs_conn_new(ptr noundef %param, i32 noundef %type, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %flags, ptr noundef %call48, i32 noundef %fwmark) #11
  %call.i182 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i182, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i185

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i185:                               ; preds = %rcu_read_lock.exit
  %call1.i183 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i183)
  %tobool.not.i184 = icmp eq i32 %call1.i183, 0
  br i1 %tobool.not.i184, label %land.lhs.true.i185.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i187

land.lhs.true.i185.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i187:                              ; preds = %land.lhs.true.i185
  %.b4.i186 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i186, label %land.lhs.true2.i187.rcu_read_unlock.exit_crit_edge, label %if.then.i188

land.lhs.true2.i187.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i187
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i188:                                     ; preds = %land.lhs.true2.i187
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.105, i32 noundef 724, ptr noundef nonnull @.str.107) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i188, %land.lhs.true2.i187.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i185.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !284
  %44 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i.i.i.i.i189 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i189 to ptr
  %preempt_count.i.i.i.i190 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i190, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i190, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.then51, label %if.end62

if.then51:                                        ; preds = %rcu_read_unlock.exit
  %pe_data52 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param, i32 0, i32 8
  %48 = ptrtoint ptr %pe_data52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pe_data52, align 4
  tail call void @kfree(ptr noundef %49) #11
  %call53 = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call53)
  %cmp54 = icmp sgt i32 %call53, 1
  br i1 %cmp54, label %do.end, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #16
  br label %cleanup

if.end62:                                         ; preds = %rcu_read_unlock.exit
  br i1 %tobool.not, label %if.then65, label %if.end62.if.end68_crit_edge

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %pe_data66 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %param, i32 0, i32 8
  %50 = ptrtoint ptr %pe_data66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pe_data66, align 4
  tail call void @kfree(ptr noundef %51) #11
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end62.if.end68_crit_edge, %if.then44, %if.end37.if.end68_crit_edge
  %cp.1 = phi ptr [ %cp.0196, %if.end37.if.end68_crit_edge ], [ %cp.0196, %if.then44 ], [ %call49, %if.end62.if.end68_crit_edge ], [ %call49, %if.then65 ]
  %flags.addr.0 = phi i32 [ %or, %if.end37.if.end68_crit_edge ], [ %or, %if.then44 ], [ %flags, %if.end62.if.end68_crit_edge ], [ %flags, %if.then65 ]
  %tobool69.not = icmp eq ptr %opt, null
  br i1 %tobool69.not, label %if.end68.if.end73_crit_edge, label %if.then70

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %in_seq = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.1, i32 0, i32 27
  %52 = call ptr @memcpy(ptr %in_seq, ptr %opt, i32 12)
  %out_seq = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.1, i32 0, i32 28
  %out_seq72 = getelementptr inbounds %struct.ip_vs_sync_conn_options, ptr %opt, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %out_seq, ptr %out_seq72, i32 12)
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end68.if.end73_crit_edge
  %in_pkts = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.1, i32 0, i32 23
  %sysctl_sync_threshold.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 46
  %54 = ptrtoint ptr %sysctl_sync_threshold.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sysctl_sync_threshold.i, align 8
  %call.i.i174 = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_pkts, i32 noundef 4) #11
  %56 = ptrtoint ptr %in_pkts to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %55, ptr %in_pkts, align 4
  %conv75 = trunc i32 %state to i16
  %state76 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.1, i32 0, i32 16
  %57 = ptrtoint ptr %state76 to i32
  call void @__asan_store2_noabort(i32 %57)
  store volatile i16 %conv75, ptr %state76, align 4
  %58 = load volatile i16, ptr %state76, align 4
  %old_state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.1, i32 0, i32 17
  %59 = ptrtoint ptr %old_state to i32
  call void @__asan_store2_noabort(i32 %59)
  store volatile i16 %58, ptr %old_state, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool78.not = icmp eq i32 %timeout, 0
  br i1 %tobool78.not, label %if.else85, label %if.then79

if.then79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %60 = tail call i32 @llvm.umin.i32(i32 %timeout, i32 21474836)
  %mul = mul nuw nsw i32 %60, 100
  br label %if.end100

if.else85:                                        ; preds = %if.end73
  %conv86 = trunc i32 %protocol to i16
  %call87 = tail call ptr @ip_vs_proto_data_get(ptr noundef %ipvs, i16 noundef zeroext %conv86) #11
  %and88 = and i32 %flags.addr.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp ne i32 %and88, 0
  %tobool91.not = icmp eq ptr %call87, null
  %or.cond170 = select i1 %tobool89.not, i1 true, i1 %tobool91.not
  br i1 %or.cond170, label %if.else85.if.end100_crit_edge, label %land.lhs.true92

if.else85.if.end100_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

land.lhs.true92:                                  ; preds = %if.else85
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call87, i32 0, i32 2
  %61 = ptrtoint ptr %timeout_table to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %timeout_table, align 4
  %tobool93.not = icmp eq ptr %62, null
  br i1 %tobool93.not, label %land.lhs.true92.if.end100_crit_edge, label %if.then94

land.lhs.true92.if.end100_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then94:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i32, ptr %62, i32 %state
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then94, %land.lhs.true92.if.end100_crit_edge, %if.else85.if.end100_crit_edge, %if.then79
  %.sink = phi i32 [ %64, %if.then94 ], [ %mul, %if.then79 ], [ 18000, %land.lhs.true92.if.end100_crit_edge ], [ 18000, %if.else85.if.end100_crit_edge ]
  %timeout96 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.1, i32 0, i32 14
  %65 = ptrtoint ptr %timeout96 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %.sink, ptr %timeout96, align 4
  tail call void @ip_vs_conn_put(ptr noundef nonnull %cp.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %do.end, %if.then51.cleanup_crit_edge, %__ip_vs_conn_put.exit181
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_vs_pe_getbyname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_in_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_conn_expire_now(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_ct_in_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_try_bind_dest(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_find_dest(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_new(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_data_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_conn_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_join_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257}
!llvm.named.register.sp = !{!258}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 656, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ip_vs_sync_conn._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ip_vs_sync_conn._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 705, i32 4}
!8 = !{ptr @ip_vs_sync_conn._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ip_vs_sync_conn._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1762, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @start_sync_thread._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @start_sync_thread._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1763, i32 2}
!17 = !{ptr @start_sync_thread._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @start_sync_thread._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1799, i32 3}
!21 = !{ptr @start_sync_thread._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @start_sync_thread._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1823, i32 10}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1831, i32 10}
!27 = !{ptr @start_sync_thread.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1850, i32 4}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @start_sync_thread.__key.17, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1950, i32 2}
!34 = !{ptr @stop_sync_thread._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @stop_sync_thread._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1977, i32 4}
!38 = !{ptr @stop_sync_thread._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @stop_sync_thread._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1999, i32 4}
!42 = !{ptr @stop_sync_thread._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @stop_sync_thread._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 2034, i32 34}
!46 = !{ptr @ip_vs_sync_net_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 2035, i32 2}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ip_vs_sync_net_init.__key.28, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 2036, i32 2}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 2046, i32 3}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ip_vs_sync_net_cleanup._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ip_vs_sync_net_cleanup._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 2050, i32 3}
!59 = !{ptr @ip_vs_sync_net_cleanup._entry.32, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ip_vs_sync_net_cleanup._entry_ptr.34, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @__ipvs_sync_key, !62, !"__ipvs_sync_key", i1 false, i1 false}
!62 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 66, i32 30}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 583, i32 4}
!65 = !{ptr @ip_vs_sync_conn_v0._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ip_vs_sync_conn_v0._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1669, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sync_thread_master._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sync_thread_master._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1695, i32 2}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1702, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1606, i32 2}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ip_vs_send_sync_msg._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ip_vs_send_sync_msg._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1585, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ip_vs_send_async._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @ip_vs_send_async._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1591, i32 2}
!88 = !{ptr @ip_vs_send_async._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ip_vs_send_async._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 311, i32 3}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 399, i32 3}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1721, i32 2}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sync_thread_backup._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sync_thread_backup._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1738, i32 6}
!101 = !{ptr @sync_thread_backup._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sync_thread_backup._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1617, i32 2}
!105 = !{ptr @ip_vs_receive._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ip_vs_receive._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @ip_vs_receive._entry.52, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1625, i32 2}
!109 = !{ptr @ip_vs_receive._entry_ptr.53, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1212, i32 3}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ip_vs_process_message._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ip_vs_process_message._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1217, i32 3}
!117 = !{ptr @ip_vs_process_message._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ip_vs_process_message._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1222, i32 3}
!121 = !{ptr @ip_vs_process_message._entry.59, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ip_vs_process_message._entry_ptr.61, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1239, i32 5}
!125 = !{ptr @ip_vs_process_message._entry.62, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ip_vs_process_message._entry_ptr.64, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1247, i32 5}
!129 = !{ptr @ip_vs_process_message._entry.65, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ip_vs_process_message._entry_ptr.67, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1251, i32 5}
!133 = !{ptr @ip_vs_process_message._entry.68, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ip_vs_process_message._entry_ptr.70, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1258, i32 5}
!137 = !{ptr @ip_vs_process_message._entry.71, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @ip_vs_process_message._entry_ptr.73, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1138, i32 5}
!141 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ip_vs_proc_sync_conn._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @ip_vs_proc_sync_conn._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1155, i32 4}
!146 = !{ptr @ip_vs_proc_sync_conn._entry.76, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ip_vs_proc_sync_conn._entry_ptr.78, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1161, i32 4}
!150 = !{ptr @ip_vs_proc_sync_conn._entry.79, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ip_vs_proc_sync_conn._entry_ptr.81, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1168, i32 4}
!154 = !{ptr @ip_vs_proc_sync_conn._entry.82, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ip_vs_proc_sync_conn._entry_ptr.84, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1195, i32 2}
!158 = !{ptr @ip_vs_proc_sync_conn._entry.85, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @ip_vs_proc_sync_conn._entry_ptr.87, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.88, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1037, i32 3}
!162 = !{ptr @.str.89, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ip_vs_proc_seqopt._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @ip_vs_proc_seqopt._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1041, i32 3}
!167 = !{ptr @ip_vs_proc_seqopt._entry.90, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ip_vs_proc_seqopt._entry_ptr.92, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1055, i32 3}
!171 = !{ptr @.str.94, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ip_vs_proc_str._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @ip_vs_proc_str._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1059, i32 3}
!176 = !{ptr @ip_vs_proc_str._entry.95, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ip_vs_proc_str._entry_ptr.97, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.98, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 817, i32 5}
!180 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ip_vs_conn_fill_param_sync._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @ip_vs_conn_fill_param_sync._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.101, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 822, i32 4}
!185 = !{ptr @ip_vs_conn_fill_param_sync._entry.100, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @ip_vs_conn_fill_param_sync._entry_ptr.102, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 917, i32 4}
!189 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ip_vs_proc_conn._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @ip_vs_proc_conn._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!194 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.106, !193, !"<string literal>", i1 false, i1 false}
!196 = distinct !{null, !197, !"__warned", i1 false, i1 false}
!197 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!198 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.108, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 975, i32 4}
!201 = !{ptr @.str.109, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @ip_vs_process_message_v0._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @ip_vs_process_message_v0._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.111, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 985, i32 5}
!206 = !{ptr @ip_vs_process_message_v0._entry.110, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @ip_vs_process_message_v0._entry_ptr.112, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 997, i32 5}
!210 = !{ptr @ip_vs_process_message_v0._entry.113, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @ip_vs_process_message_v0._entry_ptr.115, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.117, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1002, i32 5}
!214 = !{ptr @ip_vs_process_message_v0._entry.116, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @ip_vs_process_message_v0._entry_ptr.118, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1008, i32 5}
!218 = !{ptr @ip_vs_process_message_v0._entry.119, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @ip_vs_process_message_v0._entry_ptr.121, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.122, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1482, i32 3}
!222 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @make_send_sock._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @make_send_sock._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1488, i32 3}
!227 = !{ptr @make_send_sock._entry.124, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @make_send_sock._entry_ptr.126, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.128, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1505, i32 3}
!231 = !{ptr @make_send_sock._entry.127, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @make_send_sock._entry_ptr.129, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.131, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1513, i32 3}
!235 = !{ptr @make_send_sock._entry.130, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @make_send_sock._entry_ptr.132, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.133, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1433, i32 3}
!239 = !{ptr @.str.134, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @bind_mcastif_addr._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @bind_mcastif_addr._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.136, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1436, i32 2}
!244 = !{ptr @bind_mcastif_addr._entry.135, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @bind_mcastif_addr._entry_ptr.137, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.138, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1539, i32 3}
!248 = !{ptr @make_receive_sock._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @make_receive_sock._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.140, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1553, i32 3}
!252 = !{ptr @make_receive_sock._entry.139, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @make_receive_sock._entry_ptr.141, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.143, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../net/netfilter/ipvs/ip_vs_sync.c", i32 1567, i32 3}
!256 = !{ptr @make_receive_sock._entry.142, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @make_receive_sock._entry_ptr.144, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{!"sp"}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 1, !"min_enum_size", i32 4}
!261 = !{i32 8, !"branch-target-enforcement", i32 0}
!262 = !{i32 8, !"sign-return-address", i32 0}
!263 = !{i32 8, !"sign-return-address-all", i32 0}
!264 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!268 = !{!"branch_weights", i32 2000, i32 1}
!269 = !{i64 2148478749}
!270 = !{i64 2148394034, i64 2148394066, i64 2148394095, i64 2148394129, i64 2148394160, i64 2148394183}
!271 = !{i64 2148478978}
!272 = !{!"branch_weights", i32 2000, i32 4002000, i32 1}
!273 = !{i64 2158251722}
!274 = !{i64 902806, i64 902827, i64 902850, i64 902869, i64 902888}
!275 = !{i64 2158252126}
!276 = !{!"branch_weights", i32 1, i32 2000}
!277 = !{!"auto-init"}
!278 = !{i64 2158197853}
!279 = !{i64 2148482869}
!280 = !{i64 2148397309, i64 2148397341, i64 2148397370, i64 2148397404, i64 2148397435, i64 2148397458}
!281 = !{i64 2148395779, i64 2148395805, i64 2148395834, i64 2148395868, i64 2148395899, i64 2148395922}
!282 = !{i64 2148393314, i64 2148393340, i64 2148393369, i64 2148393403, i64 2148393434, i64 2148393457}
!283 = !{i64 2149409473}
!284 = !{i64 2149409739}
