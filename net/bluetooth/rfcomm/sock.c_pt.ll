; ModuleID = '/llk/IR_all_yes/net/bluetooth/rfcomm/sock.c_pt.bc'
source_filename = "../net/bluetooth/rfcomm/sock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.68, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.68 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
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
%struct.bt_sock_list = type { %struct.hlist_head, %struct.rwlock_t, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.rfcomm_pinfo = type { %struct.bt_sock, %struct.bdaddr_t, %struct.bdaddr_t, ptr, i8, i8, i8 }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.rfcomm_dlc = type { %struct.list_head, ptr, %struct.sk_buff_head, %struct.timer_list, %struct.mutex, i32, i32, %struct.refcount_struct, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_rc = type { i16, %struct.bdaddr_t, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.109 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bt_security = type { i8, i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rfcomm_conninfo = type { i16, [3 x i8] }
%struct.rfcomm_session = type { %struct.list_head, ptr, %struct.timer_list, i32, i32, i32, i32, i32, %struct.list_head }
%struct.l2cap_pinfo = type { %struct.bt_sock, ptr, ptr }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.119, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.120, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.121, ptr, %struct.address_space, %struct.list_head, %union.anon.124, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.119 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.120 = type { %struct.callback_head }
%union.anon.121 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.124 = type { ptr }

@rfcomm_connect_ind.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rfcomm\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfcomm_connect_ind\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bluetooth/rfcomm/sock.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"session %p channel %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rfcomm_connect_ind.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"backlog full %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rfcomm_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1008, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr null, [32 x i8] c"RFCOMM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@rfcomm_sock_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 31, ptr @rfcomm_sock_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RFCOMM socket layer registration failed\0A\00", [55 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@rfcomm_sk_list = internal global { %struct.bt_sock_list, [44 x i8] } { %struct.bt_sock_list { %struct.hlist_head zeroinitializer, %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 3, i8 0, i32 0, i32 0 } }, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create RFCOMM proc file\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RFCOMM socket layer initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@bt_debugfs = external dso_local local_unnamed_addr global ptr, align 4
@rfcomm_sock_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rfcomm_sock_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rfcomm_sock_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rfcomm_sock_alloc.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_sock_alloc\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sk %p\0A\00", [25 x i8] zeroinitializer }, align 32
@rfcomm_sk_state_change.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_sk_state_change\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dlc %p state %ld err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rfcomm_sock_kill.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_sock_kill\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sk %p state %d refcnt %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rfcomm_sock_destruct.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rfcomm_sock_destruct\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sk %p dlc %p\0A\00", [18 x i8] zeroinitializer }, align 32
@rfcomm_sock_init.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.9, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_sock_init\00", [47 x i8] zeroinitializer }, align 32
@rfcomm_sock_create.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfcomm_sock_create\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sock %p\0A\00", [23 x i8] zeroinitializer }, align 32
@rfcomm_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 31, ptr null, ptr @rfcomm_sock_release, ptr @rfcomm_sock_bind, ptr @rfcomm_sock_connect, ptr @sock_no_socketpair, ptr @rfcomm_sock_accept, ptr @rfcomm_sock_getname, ptr @bt_sock_poll, ptr @rfcomm_sock_ioctl, ptr @sock_gettstamp, ptr @rfcomm_sock_listen, ptr @rfcomm_sock_shutdown, ptr @rfcomm_sock_setsockopt, ptr @rfcomm_sock_getsockopt, ptr null, ptr @rfcomm_sock_sendmsg, ptr @rfcomm_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rfcomm_sock_release.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_sock_release\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sock %p, sk %p\0A\00", [16 x i8] zeroinitializer }, align 32
@rfcomm_sock_bind.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_sock_bind\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sk %p %pMR\0A\00", [20 x i8] zeroinitializer }, align 32
@rfcomm_sock_connect.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.9, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_sock_connect\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_sock_accept.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfcomm_sock_accept\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sk %p timeo %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@rfcomm_sock_accept.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"new socket %p\0A\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_sock_getname.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.20, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_sock_getname\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_sock_ioctl.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_sock_ioctl\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sk %p cmd %x arg %lx\0A\00", [42 x i8] zeroinitializer }, align 32
@rfcomm_sock_listen.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfcomm_sock_listen\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sk %p backlog %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rfcomm_sock_shutdown.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.20, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rfcomm_sock_shutdown\00", [43 x i8] zeroinitializer }, align 32
@__rfcomm_sock_close.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__rfcomm_sock_close\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sk %p state %d socket %p\0A\00", [38 x i8] zeroinitializer }, align 32
@rfcomm_sock_cleanup_listen.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rfcomm_sock_cleanup_listen\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parent %p\0A\00", [21 x i8] zeroinitializer }, align 32
@rfcomm_sock_setsockopt.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.9, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_sock_setsockopt\00", [41 x i8] zeroinitializer }, align 32
@rfcomm_sock_setsockopt_old.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.9, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rfcomm_sock_setsockopt_old\00", [37 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rfcomm_sock_getsockopt.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.9, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_sock_getsockopt\00", [41 x i8] zeroinitializer }, align 32
@rfcomm_sock_getsockopt_old.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.9, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rfcomm_sock_getsockopt_old\00", [37 x i8] zeroinitializer }, align 32
@rfcomm_sock_sendmsg.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.20, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_sock_sendmsg\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_sk_list.lock\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%pMR %pMR %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.rfcomm_sock_getsockopt_old = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 6, i32 38, i32 102], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 274]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 274]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 942, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 955, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"rfcomm_proto\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 265, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [23 x i8] c"rfcomm_sock_family_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1031, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1049, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"rfcomm_sk_list\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 39, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1055, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1060, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"rfcomm_sock_debugfs_fops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1003, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"rfcomm_sock_debugfs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1005, i32 23 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 308, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 71, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 197, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 157, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 243, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 317, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"rfcomm_sock_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1007, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 920, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 348, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 388, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 490, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 527, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 539, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 868, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 429, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 897, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 209, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 177, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 672, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 628, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 230, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 214, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 156, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 813, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 741, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 573, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 40, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [31 x i8] c"../net/bluetooth/rfcomm/sock.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 993, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant [40 x i8] c"switch.table.rfcomm_sock_getsockopt_old\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @rfcomm_cleanup_sockets, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rfcomm_proto, ptr @rfcomm_sock_family_ops, ptr @.str.5, ptr @rfcomm_sk_list, ptr @.str.6, ptr @.str.7, ptr @rfcomm_sock_debugfs_fops, ptr @rfcomm_sock_debugfs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rfcomm_sock_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @switch.table.rfcomm_sock_getsockopt_old], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_sock_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_sk_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_sock_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_sock_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rfcomm_sock_getsockopt_old to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_connect_ind(ptr noundef %s, i8 noundef zeroext %channel, ptr nocapture noundef writeonly %d) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.bdaddr_t, align 1
  %src = alloca %struct.bdaddr_t, align 1
  %dst = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #9
  %0 = call ptr @memset(ptr %src, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dst) #9
  %1 = call ptr @memset(ptr %dst, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_connect_ind.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_connect_ind, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %channel to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_connect_ind.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.3, ptr noundef %s, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @rfcomm_session_getaddr(ptr noundef %s, ptr noundef nonnull %src, ptr noundef nonnull %dst) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral.i)
  call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  %2 = load ptr, ptr @rfcomm_sk_list, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %add.ptr.i = getelementptr i8, ptr %2, i32 -84
  %tobool2.not712.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not7.i = or i1 %tobool.not.i, %tobool2.not712.i
  br i1 %tobool2.not7.i, label %rfcomm_get_sock_by_channel.exit.thread, label %do.end.land.lhs.true.i_crit_edge

do.end.land.lhs.true.i_crit_edge:                 ; preds = %do.end
  br label %land.lhs.true.i

rfcomm_get_sock_by_channel.exit.thread:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  br label %cleanup

land.lhs.true.i:                                  ; preds = %for.inc.i.land.lhs.true.i_crit_edge, %do.end.land.lhs.true.i_crit_edge
  %sk.09.i = phi ptr [ %add.ptr32.i, %for.inc.i.land.lhs.true.i_crit_edge ], [ %add.ptr.i, %do.end.land.lhs.true.i_crit_edge ]
  %sk1.08.i = phi ptr [ %sk1.1.i, %for.inc.i.land.lhs.true.i_crit_edge ], [ null, %do.end.land.lhs.true.i_crit_edge ]
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.09.i, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 4
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %channel5.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.09.i, i32 0, i32 4
  %5 = ptrtoint ptr %channel5.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %channel5.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %channel)
  %cmp8.i = icmp eq i8 %6, %channel
  br i1 %cmp8.i, label %if.then10.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end.i
  %src11.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.09.i, i32 0, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %src11.i, ptr noundef nonnull dereferenceable(6) %src, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool12.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool12.not.i, label %rfcomm_get_sock_by_channel.exit.thread70, label %if.end14.i

rfcomm_get_sock_by_channel.exit.thread70:         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  br label %if.end6

if.end14.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memset(ptr %.compoundliteral.i, i32 0, i32 6)
  %bcmp6.i = call i32 @bcmp(ptr noundef dereferenceable(6) %src11.i, ptr noundef nonnull dereferenceable(6) %.compoundliteral.i, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp6.i)
  %tobool21.not.i = icmp eq i32 %bcmp6.i, 0
  %spec.select1.i = select i1 %tobool21.not.i, ptr %sk.09.i, ptr %sk1.08.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %if.end.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %sk1.1.i = phi ptr [ %sk1.08.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %sk1.08.i, %if.end.i.for.inc.i_crit_edge ], [ %spec.select1.i, %if.end14.i ]
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk.09.i, i32 0, i32 15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool28.not.i = icmp eq ptr %10, null
  %add.ptr32.i = getelementptr i8, ptr %10, i32 -84
  %tobool2.not13.i = icmp eq ptr %add.ptr32.i, null
  %tobool2.not.i = or i1 %tobool28.not.i, %tobool2.not13.i
  br i1 %tobool2.not.i, label %rfcomm_get_sock_by_channel.exit, label %for.inc.i.land.lhs.true.i_crit_edge

for.inc.i.land.lhs.true.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

rfcomm_get_sock_by_channel.exit:                  ; preds = %for.inc.i
  call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  %tobool4.not = icmp eq ptr %sk1.1.i, null
  br i1 %tobool4.not, label %rfcomm_get_sock_by_channel.exit.cleanup_crit_edge, label %rfcomm_get_sock_by_channel.exit.if.end6_crit_edge

rfcomm_get_sock_by_channel.exit.if.end6_crit_edge: ; preds = %rfcomm_get_sock_by_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

rfcomm_get_sock_by_channel.exit.cleanup_crit_edge: ; preds = %rfcomm_get_sock_by_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %rfcomm_get_sock_by_channel.exit.if.end6_crit_edge, %rfcomm_get_sock_by_channel.exit.thread70
  %sk1.0.sk.0.i73 = phi ptr [ %sk.09.i, %rfcomm_get_sock_by_channel.exit.thread70 ], [ %sk1.1.i, %rfcomm_get_sock_by_channel.exit.if.end6_crit_edge ]
  call void @lock_sock_nested(ptr noundef nonnull %sk1.0.sk.0.i73, i32 noundef 0) #9
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk1.0.sk.0.i73, i32 0, i32 53
  %11 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk1.0.sk.0.i73, i32 0, i32 54
  %13 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp ugt i32 %12, %14
  br i1 %cmp.i, label %do.body9, label %if.end25

do.body9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_connect_ind.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_connect_ind, %if.then21)) #9
          to label %done [label %if.then21], !srcloc !126

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_ack_backlog.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_connect_ind.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.4, i32 noundef %16) #9
  br label %done

if.end25:                                         ; preds = %if.end6
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk1.0.sk.0.i73, i32 0, i32 9
  %17 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i, align 4
  %call27 = call fastcc ptr @rfcomm_sock_alloc(ptr noundef %18, ptr noundef null, i32 noundef 3, i32 noundef 0)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.done_crit_edge, label %if.end30

if.end25.done_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end30:                                         ; preds = %if.end25
  call void @bt_sock_reclassify_lock(ptr noundef nonnull %call27, i32 noundef 3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_init.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_connect_ind, %if.then.i)) #9
          to label %rfcomm_sock_init.exit [label %if.then.i], !srcloc !126

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_init.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.9, ptr noundef nonnull %call27) #9
  br label %rfcomm_sock_init.exit

rfcomm_sock_init.exit:                            ; preds = %if.then.i, %if.end30
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk1.0.sk.0.i73, i32 0, i32 45
  %19 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sk_type.i, align 2
  %sk_type5.i = getelementptr inbounds %struct.sock, ptr %call27, i32 0, i32 45
  %21 = ptrtoint ptr %sk_type5.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %sk_type5.i, align 2
  %flags.i = getelementptr inbounds %struct.bt_sock, ptr %sk1.0.sk.0.i73, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %23, 1
  %dlc.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call27, i32 0, i32 3
  %24 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dlc.i, align 4
  %defer_setup.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %defer_setup.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and1.i.i, ptr %defer_setup.i, align 4
  %sec_level.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk1.0.sk.0.i73, i32 0, i32 5
  %27 = ptrtoint ptr %sec_level.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sec_level.i, align 1
  %sec_level7.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call27, i32 0, i32 5
  %29 = ptrtoint ptr %sec_level7.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %sec_level7.i, align 1
  %role_switch.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk1.0.sk.0.i73, i32 0, i32 6
  %30 = ptrtoint ptr %role_switch.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %role_switch.i, align 2
  %role_switch8.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call27, i32 0, i32 6
  %32 = ptrtoint ptr %role_switch8.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %role_switch8.i, align 2
  call void @security_sk_clone(ptr noundef nonnull %sk1.0.sk.0.i73, ptr noundef nonnull %call27) #9
  %33 = ptrtoint ptr %sec_level7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sec_level7.i, align 1
  %35 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dlc.i, align 4
  %sec_level16.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %sec_level16.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %34, ptr %sec_level16.i, align 1
  %38 = ptrtoint ptr %role_switch8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %role_switch8.i, align 2
  %40 = load ptr, ptr %dlc.i, align 4
  %role_switch19.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %role_switch19.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %39, ptr %role_switch19.i, align 4
  %src31 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call27, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %src31, ptr %src, i32 6)
  %dst32 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call27, i32 0, i32 2
  %43 = call ptr @memcpy(ptr %dst32, ptr %dst, i32 6)
  %channel33 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call27, i32 0, i32 4
  %44 = ptrtoint ptr %channel33 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %channel, ptr %channel33, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call27, i32 0, i32 4
  %45 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %45)
  store volatile i8 7, ptr %skc_state, align 2
  call void @bt_accept_enqueue(ptr noundef nonnull %sk1.0.sk.0.i73, ptr noundef nonnull %call27, i1 noundef zeroext true) #9
  %46 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dlc.i, align 4
  %48 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %d, align 4
  br label %done

done:                                             ; preds = %rfcomm_sock_init.exit, %if.end25.done_crit_edge, %if.then21, %do.body9
  %result.0 = phi i32 [ 0, %if.then21 ], [ 1, %rfcomm_sock_init.exit ], [ 0, %if.end25.done_crit_edge ], [ 0, %do.body9 ]
  call void @release_sock(ptr noundef nonnull %sk1.0.sk.0.i73) #9
  %flags = getelementptr inbounds %struct.bt_sock, ptr %sk1.0.sk.0.i73, i32 0, i32 3
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool35.not = icmp eq i32 %and1.i, 0
  br i1 %tobool35.not, label %done.cleanup_crit_edge, label %if.then36

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk1.0.sk.0.i73, i32 0, i32 76
  %51 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sk_state_change, align 4
  call void %52(ptr noundef nonnull %sk1.0.sk.0.i73) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %done.cleanup_crit_edge, %rfcomm_get_sock_by_channel.exit.cleanup_crit_edge, %rfcomm_get_sock_by_channel.exit.thread
  %retval.0 = phi i32 [ 0, %rfcomm_get_sock_by_channel.exit.cleanup_crit_edge ], [ %result.0, %if.then36 ], [ %result.0, %done.cleanup_crit_edge ], [ 0, %rfcomm_get_sock_by_channel.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dst) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfcomm_session_getaddr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rfcomm_sock_alloc(ptr noundef %net, ptr noundef %sock, i32 noundef %proto, i32 noundef %kern) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @rfcomm_proto, i32 noundef %kern) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #9
  %accept_q = getelementptr inbounds %struct.bt_sock, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %accept_q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %accept_q, ptr %accept_q, align 4
  %prev.i = getelementptr inbounds %struct.bt_sock, ptr %call, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %accept_q, ptr %prev.i, align 4
  %call1 = tail call ptr @rfcomm_dlc_alloc(i32 noundef 2592) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sk_free(ptr noundef nonnull %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data_ready = getelementptr inbounds %struct.rfcomm_dlc, ptr %call1, i32 0, i32 23
  %2 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rfcomm_sk_data_ready, ptr %data_ready, align 4
  %state_change = getelementptr inbounds %struct.rfcomm_dlc, ptr %call1, i32 0, i32 24
  %3 = ptrtoint ptr %state_change to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rfcomm_sk_state_change, ptr %state_change, align 4
  %dlc = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %dlc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %dlc, align 4
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %call1, i32 0, i32 22
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %owner, align 4
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %6 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rfcomm_sock_destruct, ptr %sk_destruct, align 4
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 31
  %7 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3000, ptr %sk_sndtimeo, align 8
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 21
  %8 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50800, ptr %sk_sndbuf, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 50800, ptr %sk_rcvbuf, align 8
  %10 = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i.i = and i32 %12, -257
  store i32 %and.i.i, ptr %10, align 4
  %conv = trunc i32 %proto to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %13 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %sk_protocol, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 2, ptr %skc_state, align 2
  tail call void @bt_sock_link(ptr noundef nonnull @rfcomm_sk_list, ptr noundef nonnull %call) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_alloc.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_alloc, %if.then9)) #9
          to label %cleanup [label %if.then9], !srcloc !126

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_alloc.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.9, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.then9 ], [ %call, %if.end4 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_reclassify_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_accept_enqueue(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_init_sockets() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @rfcomm_proto, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bt_sock_register(i32 noundef 3, ptr noundef nonnull @rfcomm_sock_family_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5) #9
  br label %error

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @bt_procfs_init(ptr noundef nonnull @init_net, ptr noundef nonnull @.str, ptr noundef nonnull @rfcomm_sk_list, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #9
  tail call void @bt_sock_unregister(i32 noundef 3) #9
  br label %error

if.end8:                                          ; preds = %if.end4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.7) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bt_debugfs to i32))
  %0 = load ptr, ptr @bt_debugfs, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @rfcomm_sock_debugfs_fops) #9
  store ptr %call12, ptr @rfcomm_sock_debugfs, align 4
  br label %cleanup

error:                                            ; preds = %if.then7, %if.then3
  %err.0 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ]
  tail call void @proto_unregister(ptr noundef nonnull @rfcomm_proto) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end11, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_register(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_procfs_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rfcomm_cleanup_sockets() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bt_procfs_cleanup(ptr noundef nonnull @init_net, ptr noundef nonnull @.str) #9
  %0 = load ptr, ptr @rfcomm_sock_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  tail call void @bt_sock_unregister(i32 noundef 3) #9
  tail call void @proto_unregister(ptr noundef nonnull @rfcomm_proto) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_procfs_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rfcomm_dlc_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_sk_data_ready(ptr noundef %d, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 22
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %3, ptr elementtype(i32) %sk_backlog) #9, !srcloc !127
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef %skb) #9
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 77
  %5 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_data_ready, align 8
  tail call void %6(ptr noundef nonnull %1) #9
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #9
  %7 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp slt i32 %8, %10
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 6
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__rfcomm_dlc_throttle(ptr noundef %d) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_sk_state_change(ptr noundef %d, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 22
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sk_state_change.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sk_state_change, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !126

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sk_state_change.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.11, ptr noundef %d, i32 noundef %3, i32 noundef %err) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool6.not = icmp eq i32 %err, 0
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %err, ptr %sk_err, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  %state9 = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 5
  %5 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state9, align 4
  %conv = trunc i32 %6 to i8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 %conv, ptr %skc_state, align 2
  %parent10 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent10, align 8
  %tobool11.not = icmp eq ptr %9, null
  %10 = load i32, ptr %state9, align 4
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %cmp = icmp eq i32 %10, 9
  br i1 %cmp, label %if.then15, label %if.then12.if.end16_crit_edge

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %11 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %or.i.i = or i32 %13, 256
  store i32 %or.i.i, ptr %11, align 4
  tail call void @bt_accept_unlink(ptr noundef nonnull %1) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12.if.end16_crit_edge
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 77
  %14 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_data_ready, align 8
  tail call void %15(ptr noundef nonnull %9) #9
  tail call void @release_sock(ptr noundef nonnull %1) #9
  %16 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %if.end16.cleanup_crit_edge, label %if.then26

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp18 = icmp eq i32 %10, 1
  br i1 %cmp18, label %if.then20, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 1
  %20 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %session, align 4
  %src = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 1
  tail call void @rfcomm_session_getaddr(ptr noundef %21, ptr noundef %src, ptr noundef null) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else.if.end21_crit_edge
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %22 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_state_change, align 4
  tail call void %23(ptr noundef nonnull %1) #9
  tail call void @release_sock(ptr noundef nonnull %1) #9
  br label %cleanup

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %d, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call fastcc void @rfcomm_sock_kill(ptr noundef nonnull %1)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end21, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_sock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dlc = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_destruct.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_destruct, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_destruct.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.15, ptr noundef %sk, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #9
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #9
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dlc, align 4
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 4
  %cmp = icmp eq ptr %4, %sk
  br i1 %cmp, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %refcnt.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %1, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !130

if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rfcomm_dlc_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #9
  br label %rfcomm_dlc_put.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @rfcomm_dlc_free(ptr noundef %1) #9
  br label %rfcomm_dlc_put.exit

rfcomm_dlc_put.exit:                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rfcomm_dlc_throttle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_accept_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_sock_kill(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_kill.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_kill, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !126

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %7 to i32
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #9
  %8 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_kill.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.13, ptr noundef %sk, i32 noundef %conv, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @bt_sock_unlink(ptr noundef nonnull @rfcomm_sk_list, ptr noundef %sk) #9
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %or.i.i = or i32 %11, 1
  store i32 %or.i.i, ptr %0, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !130

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %return

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @sk_free(ptr noundef %sk) #9
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfcomm_dlc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_create.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_create, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_create.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.18, ptr noundef %sock) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %sock, align 128
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 4
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %do.end.cleanup_crit_edge [
    i16 1, label %do.end.if.end9_crit_edge
    i16 3, label %do.end.if.end9_crit_edge21
  ]

do.end.if.end9_crit_edge21:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end.if.end9_crit_edge, %do.end.if.end9_crit_edge21
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rfcomm_sock_ops, ptr %ops, align 4
  %call10 = tail call fastcc ptr @rfcomm_sock_alloc(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_init.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_create, %if.then.i)) #9
          to label %rfcomm_sock_init.exit [label %if.then.i], !srcloc !126

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_init.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.9, ptr noundef nonnull %call10) #9
  br label %rfcomm_sock_init.exit

rfcomm_sock_init.exit:                            ; preds = %if.then.i, %if.end13
  %dlc9.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call10, i32 0, i32 3
  %5 = ptrtoint ptr %dlc9.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dlc9.i, align 4
  %defer_setup10.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %defer_setup10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %defer_setup10.i, align 4
  %sec_level11.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call10, i32 0, i32 5
  %8 = ptrtoint ptr %sec_level11.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %sec_level11.i, align 1
  %role_switch12.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %call10, i32 0, i32 6
  %9 = ptrtoint ptr %role_switch12.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %role_switch12.i, align 2
  %10 = load ptr, ptr %dlc9.i, align 4
  %sec_level16.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %sec_level16.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %sec_level16.i, align 1
  %12 = load i8, ptr %role_switch12.i, align 2
  %13 = load ptr, ptr %dlc9.i, align 4
  %role_switch19.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %role_switch19.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %role_switch19.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rfcomm_sock_init.exit, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rfcomm_sock_init.exit ], [ -94, %do.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_release(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_release.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_release.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.20, ptr noundef %sock, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @rfcomm_sock_shutdown(ptr noundef %sock, i32 noundef 2)
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #9
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %4, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %5 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk_socket.i.i, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #9
  tail call fastcc void @rfcomm_sock_kill(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_bind(ptr nocapture noundef readonly %sock, ptr noundef readonly %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  %sa = alloca %struct.sockaddr_rc, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sa) #9
  %0 = call ptr @memset(ptr %sa, i32 255, i32 10)
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %addr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 2
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %4)
  %cmp3.not = icmp eq i16 %4, 31
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %5 = tail call i32 @llvm.umin.i32(i32 %addr_len, i32 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %6 = icmp ugt i32 %5, 9
  %7 = sub nuw nsw i32 10, %5
  %8 = select i1 %6, i32 0, i32 %7
  %9 = getelementptr i8, ptr %sa, i32 %5
  %10 = call ptr @memset(ptr %9, i32 0, i32 %8)
  %11 = call ptr @memcpy(ptr %sa, ptr %addr, i32 %5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_bind.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_bind, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !126

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rc_bdaddr = getelementptr inbounds %struct.sockaddr_rc, ptr %sa, i32 0, i32 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_bind.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.22, ptr noundef %2, ptr noundef %rc_bdaddr) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp14.not = icmp eq i8 %13, 2
  br i1 %cmp14.not, label %if.end17, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end17:                                         ; preds = %do.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 45
  %14 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp19.not = icmp eq i16 %15, 1
  br i1 %cmp19.not, label %if.end22, label %if.end17.done_crit_edge

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end22:                                         ; preds = %if.end17
  call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  %rc_channel = getelementptr inbounds %struct.sockaddr_rc, ptr %sa, i32 0, i32 2
  %16 = ptrtoint ptr %rc_channel to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rc_channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool24.not = icmp eq i8 %17, 0
  br i1 %tobool24.not, label %if.end22.if.else_crit_edge, label %land.lhs.true

if.end22.if.else_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end22
  %rc_bdaddr26 = getelementptr inbounds %struct.sockaddr_rc, ptr %sa, i32 0, i32 1
  %18 = load ptr, ptr @rfcomm_sk_list, align 4
  %tobool.not.i = icmp eq ptr %18, null
  %add.ptr.i = getelementptr i8, ptr %18, i32 -84
  %tobool2.not5055.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not50.i = or i1 %tobool.not.i, %tobool2.not5055.i
  br i1 %tobool2.not50.i, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.for.body.i_crit_edge

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %sk.051.i = phi ptr [ %add.ptr27.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %land.lhs.true.for.body.i_crit_edge ]
  %channel3.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.051.i, i32 0, i32 4
  %19 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel3.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %17)
  %cmp.not.i = icmp eq i8 %20, %17
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %src6.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.051.i, i32 0, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %src6.i, ptr noundef dereferenceable(6) %rc_bdaddr26, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool7.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.051.i, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp11.i = icmp eq i8 %22, 3
  br i1 %cmp11.i, label %if.end9.i.if.end34_crit_edge, label %lor.lhs.false.i

if.end9.i.if.end34_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %23 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %cmp16.i = icmp eq i8 %24, 4
  br i1 %cmp16.i, label %lor.lhs.false.i.if.end34_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.if.end34_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk.051.i, i32 0, i32 15
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool23.not.i = icmp eq ptr %27, null
  %add.ptr27.i = getelementptr i8, ptr %27, i32 -84
  %tobool2.not56.i = icmp eq ptr %add.ptr27.i, null
  %tobool2.not.i = or i1 %tobool23.not.i, %tobool2.not56.i
  br i1 %tobool2.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %for.inc.i.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end22.if.else_crit_edge
  %src = getelementptr inbounds %struct.rfcomm_pinfo, ptr %2, i32 0, i32 1
  %rc_bdaddr30 = getelementptr inbounds %struct.sockaddr_rc, ptr %sa, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %src, ptr %rc_bdaddr30, i32 6)
  %channel = getelementptr inbounds %struct.rfcomm_pinfo, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %17, ptr %channel, align 8
  %30 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %30)
  store volatile i8 3, ptr %skc_state, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.else, %lor.lhs.false.i.if.end34_crit_edge, %if.end9.i.if.end34_crit_edge
  %err.0 = phi i32 [ 0, %if.else ], [ -98, %if.end9.i.if.end34_crit_edge ], [ -98, %lor.lhs.false.i.if.end34_crit_edge ]
  call void @_raw_write_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  br label %done

done:                                             ; preds = %if.end34, %if.end17.done_crit_edge, %do.end.done_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end34 ], [ -77, %do.end.done_crit_edge ], [ -22, %if.end17.done_crit_edge ]
  call void @release_sock(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %done ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sa) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_connect(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %alen, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %dlc = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_connect.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_connect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_connect.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.9, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %alen)
  %cmp = icmp ult i32 %alen, 10
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %5)
  %cmp4.not = icmp eq i16 %5, 31
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp9.not = icmp eq i8 %7, 2
  br i1 %cmp9.not, label %if.end7.if.end17_crit_edge, label %land.lhs.true

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end7
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp14.not = icmp eq i8 %9, 3
  br i1 %cmp14.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.done_crit_edge

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %10 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp19.not = icmp eq i16 %11, 1
  br i1 %cmp19.not, label %if.end22, label %if.end17.done_crit_edge

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end22:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 5, ptr %skc_state, align 2
  %dst = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 2
  %rc_bdaddr = getelementptr inbounds %struct.sockaddr_rc, ptr %addr, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %dst, ptr %rc_bdaddr, i32 6)
  %rc_channel = getelementptr inbounds %struct.sockaddr_rc, ptr %addr, i32 0, i32 2
  %14 = ptrtoint ptr %rc_channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rc_channel, align 2
  %channel = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %channel, align 8
  %sec_level = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sec_level, align 1
  %sec_level25 = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 15
  %19 = ptrtoint ptr %sec_level25 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %sec_level25, align 1
  %role_switch = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %role_switch to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %role_switch, align 2
  %role_switch26 = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 16
  %22 = ptrtoint ptr %role_switch26 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %role_switch26, align 4
  %src = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 1
  %23 = load i8, ptr %rc_channel, align 2
  %call29 = tail call i32 @rfcomm_dlc_open(ptr noundef %3, ptr noundef %src, ptr noundef %rc_bdaddr, i8 noundef zeroext %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end22.done_crit_edge

if.end22.done_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then31:                                        ; preds = %if.end22
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %cond.false.i, label %if.then31.sock_sndtimeo.exit_crit_edge

if.then31.sock_sndtimeo.exit_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %24 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.then31.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %25, %cond.false.i ], [ 0, %if.then31.sock_sndtimeo.exit_crit_edge ]
  %call34 = tail call i32 @bt_sock_wait_state(ptr noundef %1, i32 noundef 1, i32 noundef %cond.i) #9
  br label %done

done:                                             ; preds = %sock_sndtimeo.exit, %if.end22.done_crit_edge, %if.end17.done_crit_edge, %land.lhs.true.done_crit_edge
  %err.0 = phi i32 [ %call29, %if.end22.done_crit_edge ], [ %call34, %sock_sndtimeo.exit ], [ -77, %land.lhs.true.done_crit_edge ], [ -22, %if.end17.done_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !116) #9
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
  store ptr @woken_wake_function, ptr %1, align 4
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
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 1) #9
  %sk_type = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp.not = icmp eq i16 %16, 1
  br i1 %cmp.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %if.end.sock_rcvtimeo.exit_crit_edge

if.end.sock_rcvtimeo.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 62
  %17 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %18, %cond.false.i ], [ 0, %if.end.sock_rcvtimeo.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_accept.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_accept, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !126

if.then13:                                        ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_accept.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.25, ptr noundef %14, i32 noundef %cond.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %sock_rcvtimeo.exit
  %19 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 8
  call void @add_wait_queue_exclusive(ptr noundef %21, ptr noundef nonnull %wait) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp17.not87 = icmp eq i8 %23, 4
  br i1 %cmp17.not87, label %do.end.if.end20_crit_edge, label %do.end.while.end.thread_crit_edge

do.end.while.end.thread_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

do.end.if.end20_crit_edge:                        ; preds = %do.end
  br label %if.end20

if.end20:                                         ; preds = %if.end34.if.end20_crit_edge, %do.end.if.end20_crit_edge
  %timeo.088 = phi i32 [ %call35, %if.end34.if.end20_crit_edge ], [ %cond.i, %do.end.if.end20_crit_edge ]
  %call21 = call ptr @bt_accept_dequeue(ptr noundef %14, ptr noundef %newsock) #9
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end24, label %if.end39

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.088)
  %tobool25.not = icmp eq i32 %timeo.088, 0
  br i1 %tobool25.not, label %if.end24.while.end.thread_crit_edge, label %if.end27

if.end24.while.end.thread_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

if.end27:                                         ; preds = %if.end24
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end27.if.then32_crit_edge, !prof !130

if.end27.if.then32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

signal_pending.exit:                              ; preds = %if.end27
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool31.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool31.not, label %if.end34, label %signal_pending.exit.if.then32_crit_edge

signal_pending.exit.if.then32_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %signal_pending.exit.if.then32_crit_edge, %if.end27.if.then32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.088)
  %cmp.i = icmp eq i32 %timeo.088, 2147483647
  %cond.i76 = select i1 %cmp.i, i32 -512, i32 -4
  br label %while.end.thread

if.end34:                                         ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %14) #9
  %call35 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeo.088) #9
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 1) #9
  %33 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %skc_state, align 2
  %cmp17.not = icmp eq i8 %34, 4
  br i1 %cmp17.not, label %if.end34.if.end20_crit_edge, label %if.end34.while.end.thread_crit_edge

if.end34.while.end.thread_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

if.end34.if.end20_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

while.end.thread:                                 ; preds = %if.end34.while.end.thread_crit_edge, %if.then32, %if.end24.while.end.thread_crit_edge, %do.end.while.end.thread_crit_edge
  %err.0.ph = phi i32 [ %cond.i76, %if.then32 ], [ -77, %do.end.while.end.thread_crit_edge ], [ -11, %if.end24.while.end.thread_crit_edge ], [ -77, %if.end34.while.end.thread_crit_edge ]
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %19, align 8
  call void @remove_wait_queue(ptr noundef %36, ptr noundef nonnull %wait) #9
  br label %done

if.end39:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %19, align 8
  call void @remove_wait_queue(ptr noundef %38, ptr noundef nonnull %wait) #9
  %39 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %newsock, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_accept.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_accept, %if.then52)) #9
          to label %done [label %if.then52], !srcloc !126

if.then52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_accept.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.26, ptr noundef nonnull %call21) #9
  br label %done

done:                                             ; preds = %if.then52, %if.end39, %while.end.thread, %entry.done_crit_edge
  %err.1 = phi i32 [ 0, %if.then52 ], [ -22, %entry.done_crit_edge ], [ %err.0.ph, %while.end.thread ], [ 0, %if.end39 ]
  call void @release_sock(ptr noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_getname(ptr noundef %sock, ptr nocapture noundef writeonly %addr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_getname.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_getname, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_getname.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.20, ptr noundef %sock, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool4.not = icmp eq i32 %peer, 0
  br i1 %tobool4.not, label %if.else.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %land.lhs.true.if.then21_crit_edge, label %land.lhs.true6

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp10.not = icmp eq i8 %5, 5
  br i1 %cmp10.not, label %land.lhs.true6.if.then21_crit_edge, label %land.lhs.true12

land.lhs.true6.if.then21_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

land.lhs.true12:                                  ; preds = %land.lhs.true6
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp16.not = icmp eq i8 %7, 6
  br i1 %cmp16.not, label %land.lhs.true12.if.then21_crit_edge, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true12.if.then21_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %land.lhs.true12.if.then21_crit_edge, %land.lhs.true6.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %8 = getelementptr inbounds i8, ptr %addr, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %8, align 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 31, ptr %addr, align 2
  %channel.c41 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %channel.c41 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel.c41, align 8
  %rc_channel.c42 = getelementptr inbounds %struct.sockaddr_rc, ptr %addr, i32 0, i32 2
  %13 = ptrtoint ptr %rc_channel.c42 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rc_channel.c42, align 2
  %rc_bdaddr = getelementptr inbounds %struct.sockaddr_rc, ptr %addr, i32 0, i32 1
  %dst = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %rc_bdaddr, ptr %dst, i32 6)
  br label %cleanup

if.else.critedge:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = getelementptr inbounds i8, ptr %addr, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %15, align 2
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 31, ptr %addr, align 2
  %channel.c43 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %channel.c43 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %channel.c43, align 8
  %rc_channel.c44 = getelementptr inbounds %struct.sockaddr_rc, ptr %addr, i32 0, i32 2
  %20 = ptrtoint ptr %rc_channel.c44 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %rc_channel.c44, align 2
  %rc_bdaddr22 = getelementptr inbounds %struct.sockaddr_rc, ptr %addr, i32 0, i32 1
  %src = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %rc_bdaddr22, ptr %src, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.else.critedge, %if.then21, %land.lhs.true12.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %land.lhs.true12.cleanup_crit_edge ], [ 10, %if.else.critedge ], [ 10, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_ioctl(ptr noundef %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_ioctl.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_ioctl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_ioctl.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.29, ptr noundef %1, i32 noundef %cmd, i32 noundef %arg) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @bt_sock_ioctl(ptr noundef %sock, i32 noundef %cmd, i32 noundef %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call4)
  %cmp = icmp eq i32 %call4, -515
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %2 = inttoptr i32 %arg to ptr
  %call6 = tail call i32 @rfcomm_dev_ioctl(ptr noundef %1, i32 noundef %cmd, ptr noundef %2) #9
  tail call void @release_sock(ptr noundef %1) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %err.0 = phi i32 [ %call6, %if.then5 ], [ %call4, %do.end.if.end7_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_listen.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_listen, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_listen.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.31, ptr noundef %1, i32 noundef %backlog) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.not = icmp eq i8 %3, 3
  br i1 %cmp.not, label %if.end6, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end6:                                          ; preds = %do.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp8.not = icmp eq i16 %5, 1
  br i1 %cmp8.not, label %if.end11, label %if.end6.done_crit_edge

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end11:                                         ; preds = %if.end6
  %channel = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channel, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end29_crit_edge

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then13:                                        ; preds = %if.end11
  %src14 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 1
  tail call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  %8 = load ptr, ptr @rfcomm_sk_list, align 4
  %tobool.not.i = icmp eq ptr %8, null
  %add.ptr.i = getelementptr i8, ptr %8, i32 -84
  %tobool2.not5055.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not50.i = or i1 %tobool.not.i, %tobool2.not5055.i
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_write_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  br label %done

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then13
  %channel15.058 = phi i8 [ 1, %if.then13 ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool2.not50.i, label %for.body.if.end29.sink.split_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.if.end29.sink.split_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.sink.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %sk.051.i = phi ptr [ %add.ptr27.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.for.body.i_crit_edge ]
  %channel3.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.051.i, i32 0, i32 4
  %9 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel3.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %channel15.058)
  %cmp.not.i = icmp eq i8 %10, %channel15.058
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %src6.i = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.051.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src6.i, ptr noundef dereferenceable(6) %src14, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool7.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.051.i, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp11.i = icmp eq i8 %12, 3
  br i1 %cmp11.i, label %if.end9.i.for.inc_crit_edge, label %lor.lhs.false.i

if.end9.i.for.inc_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %13 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp16.i = icmp eq i8 %14, 4
  br i1 %cmp16.i, label %lor.lhs.false.i.for.inc_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %15 = getelementptr inbounds %struct.sock_common, ptr %sk.051.i, i32 0, i32 15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool23.not.i = icmp eq ptr %17, null
  %add.ptr27.i = getelementptr i8, ptr %17, i32 -84
  %tobool2.not56.i = icmp eq ptr %add.ptr27.i, null
  %tobool2.not.i = or i1 %tobool23.not.i, %tobool2.not56.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end29.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end29.sink.split_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.sink.split

for.inc:                                          ; preds = %lor.lhs.false.i.for.inc_crit_edge, %if.end9.i.for.inc_crit_edge
  %inc = add nuw nsw i8 %channel15.058, 1
  %cmp17 = icmp ult i8 %channel15.058, 30
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.end.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end29.sink.split:                              ; preds = %for.inc.i.if.end29.sink.split_crit_edge, %for.body.if.end29.sink.split_crit_edge
  %channel15.058.lcssa65.sink = phi i8 [ %channel15.058, %for.inc.i.if.end29.sink.split_crit_edge ], [ 1, %for.body.if.end29.sink.split_crit_edge ]
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %channel15.058.lcssa65.sink, ptr %channel, align 8
  tail call void @_raw_write_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.end11.if.end29_crit_edge
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %19 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %20 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sk_ack_backlog, align 4
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %21)
  store volatile i8 4, ptr %skc_state, align 2
  br label %done

done:                                             ; preds = %if.end29, %for.end.thread, %if.end6.done_crit_edge, %do.end.done_crit_edge
  %err.2 = phi i32 [ 0, %if.end29 ], [ -77, %do.end.done_crit_edge ], [ -22, %if.end6.done_crit_edge ], [ -22, %for.end.thread ]
  tail call void @release_sock(ptr noundef %1) #9
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_shutdown(ptr noundef %sock, i32 noundef %how) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_shutdown.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_shutdown, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_shutdown.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.20, ptr noundef %sock, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #9
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sk_shutdown, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end19_crit_edge

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then8:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %sk_shutdown, align 2
  tail call fastcc void @__rfcomm_sock_close(ptr noundef nonnull %1)
  %5 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.then8.if.end19_crit_edge, label %land.lhs.true

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then8
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 48
  %9 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_lingertime, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true12

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true12:                                  ; preds = %land.lhs.true
  %11 = tail call i32 @llvm.read_register.i32(metadata !116) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true12.if.end19_crit_edge

land.lhs.true12.if.end19_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @bt_sock_wait_state(ptr noundef nonnull %1, i32 noundef 9, i32 noundef %10) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true12.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.then8.if.end19_crit_edge, %if.end6.if.end19_crit_edge
  %err.0 = phi i32 [ 0, %if.end6.if.end19_crit_edge ], [ 0, %land.lhs.true12.if.end19_crit_edge ], [ %call17, %if.then15 ], [ 0, %land.lhs.true.if.end19_crit_edge ], [ 0, %if.then8.if.end19_crit_edge ]
  tail call void @release_sock(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end19 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %sec = alloca %struct.bt_security, align 1
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sec) #9
  %2 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sec, align 1, !annotation !132
  %3 = getelementptr inbounds %struct.bt_security, ptr %sec, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #9
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %opt, align 4, !annotation !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_setsockopt.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_setsockopt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_setsockopt.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.9, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %level, label %do.end.cleanup_crit_edge [
    i32 18, label %if.then4
    i32 274, label %if.end9
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @rfcomm_sock_setsockopt_old(ptr noundef %sock, i32 noundef %optname, [2 x i32] %optval.coerce)
  br label %cleanup

if.end9:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %7 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %optname, label %if.end9.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 7, label %sw.bb29
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %8 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp10.not = icmp eq i16 %9, 1
  br i1 %cmp10.not, label %if.end13, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb
  %10 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %sec, align 1
  %11 = tail call i32 @llvm.umin.i32(i32 %optlen, i32 2)
  %call18 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %sec, [2 x i32] %optval.coerce, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end13.sw.epilog_crit_edge

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end21:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp24 = icmp ugt i8 %13, 3
  br i1 %cmp24, label %if.end21.sw.epilog_crit_edge, label %if.end27

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %sec_level = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %sec_level to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %sec_level, align 1
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp31.not = icmp eq i8 %16, 3
  br i1 %cmp31.not, label %sw.bb29.if.end39_crit_edge, label %land.lhs.true

sw.bb29.if.end39_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %sw.bb29
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %18)
  %cmp36.not = icmp eq i8 %18, 4
  br i1 %cmp36.not, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %sw.bb29.if.end39_crit_edge
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %19 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end39
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 4, i32 -1226833920) #13, !srcloc !133
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !130

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #9
  %21 = call i32 @llvm.read_register.i32(metadata !116) #9
  %and.i.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !134
  %and.i.i.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %19, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #9, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end43thread-pre-split, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !130

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i85 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i85
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i85)
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %19, align 1
  %27 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %opt, align 4
  br label %if.end43

if.end43thread-pre-split:                         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %opt, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43thread-pre-split, %if.end.i.i
  %29 = phi i32 [ %.pr, %if.end43thread-pre-split ], [ %26, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool44.not = icmp eq i32 %29, 0
  %flags46 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 0, ptr noundef %flags46) #9
  br label %sw.epilog

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags46) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then45, %if.then11.i.i.i.i, %land.lhs.true.sw.epilog_crit_edge, %if.end27, %if.end21.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %if.then45 ], [ 0, %if.else ], [ 0, %if.end27 ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -14, %if.end13.sw.epilog_crit_edge ], [ -22, %if.end21.sw.epilog_crit_edge ], [ -22, %land.lhs.true.sw.epilog_crit_edge ], [ -92, %if.end9.sw.epilog_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %err.0, %sw.epilog ], [ -92, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sec) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %sec = alloca %struct.bt_security, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sec) #9
  %2 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sec, align 1, !annotation !132
  %3 = getelementptr inbounds %struct.bt_security, ptr %sec, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_getsockopt.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_getsockopt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_getsockopt.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.9, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %level, label %do.end.cleanup_crit_edge [
    i32 18, label %if.then4
    i32 274, label %if.end9
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @rfcomm_sock_getsockopt_old(ptr noundef %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen)
  br label %cleanup

if.end9:                                          ; preds = %do.end
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 821) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !116) #9
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !134
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #9, !srcloc !137
  %asmresult = extractvalue { i32, i32 } %9, 0
  %asmresult12 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %10 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %optname, label %if.end16.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 7, label %sw.bb29
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %11 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp17.not = icmp eq i16 %12, 1
  br i1 %cmp17.not, label %if.end20, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end20:                                         ; preds = %sw.bb
  %sec_level = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sec_level, align 1
  %15 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %sec, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %3, align 1
  %17 = tail call i32 @llvm.umin.i32(i32 %asmresult12, i32 2)
  call void @__check_object_size(ptr noundef nonnull %sec, i32 noundef %17, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end20.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end20.copy_to_user.exit_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end20
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %17, i32 -1226833920) #13, !srcloc !138
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sec, i32 noundef %17) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %sec, i32 noundef %17) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end20.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %17, %if.end20.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %17, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool26.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select75 = select i1 %tobool26.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp31.not = icmp eq i8 %20, 3
  br i1 %cmp31.not, label %sw.bb29.if.end39_crit_edge, label %land.lhs.true

sw.bb29.if.end39_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %sw.bb29
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp36.not = icmp eq i8 %22, 4
  br i1 %cmp36.not, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %sw.bb29.if.end39_crit_edge
  %flags = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %24, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 849) #9
  %25 = tail call i32 @llvm.read_register.i32(metadata !116) #9
  %and.i.i.i76 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i76 to ptr
  %cpu_domain.i.i77 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i77) #5, !srcloc !134
  %and.i78 = and i32 %27, -13
  %or.i79 = or i32 %and.i78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i79) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %28 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %and1.i, i32 -1226833921) #9, !srcloc !139
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool53.not = icmp eq i32 %28, 0
  %spec.select = select i1 %tobool53.not, i32 0, i32 -14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end39, %land.lhs.true.sw.epilog_crit_edge, %copy_to_user.exit, %sw.bb.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %land.lhs.true.sw.epilog_crit_edge ], [ %spec.select, %if.end39 ], [ -92, %if.end16.sw.epilog_crit_edge ], [ %spec.select75, %copy_to_user.exit ]
  call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end9.cleanup_crit_edge, %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %err.0, %sw.epilog ], [ -92, %do.end.cleanup_crit_edge ], [ -14, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sec) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %dlc = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %flags = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %9 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sk_shutdown, align 2
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %do.body, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_sendmsg.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_sendmsg, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !126

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_sendmsg.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.20, ptr noundef %sock, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %12 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_flags, align 4
  %call16 = tail call i32 @bt_sock_wait_ready(ptr noundef %1, i32 noundef %13) #9
  tail call void @release_sock(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %mtu = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu, align 4
  %call.i = tail call fastcc ptr @bt_skb_sendmsg(ptr noundef %1, ptr noundef %msg, i32 noundef %len, i32 noundef %15) #9
  %tobool.not.i.i = icmp eq ptr %call.i, null
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end19.bt_skb_sendmmsg.exit_crit_edge, label %if.end.i

if.end19.bt_skb_sendmmsg.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %bt_skb_sendmmsg.exit

if.end.i:                                         ; preds = %if.end19
  %len2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len2.i, align 4
  %sub.i = sub i32 %len, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end.i.bt_skb_sendmmsg.exit_crit_edge, label %if.end4.i

if.end.i.bt_skb_sendmmsg.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bt_skb_sendmmsg.exit

if.end4.i:                                        ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end4.i
  %frag.07.i = phi ptr [ %frag_list.i, %if.end4.i ], [ %call7.i, %cleanup.i.while.body.i_crit_edge ]
  %len.addr.06.i = phi i32 [ %sub.i, %if.end4.i ], [ %sub12.i, %cleanup.i.while.body.i_crit_edge ]
  %call7.i = tail call fastcc ptr @bt_skb_sendmsg(ptr noundef %1, ptr noundef %msg, i32 noundef %len.addr.06.i, i32 noundef %15) #9
  %cmp.i1.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %while.body.i.bt_skb_sendmmsg.exit_crit_edge, label %cleanup.i

while.body.i.bt_skb_sendmmsg.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bt_skb_sendmmsg.exit

cleanup.i:                                        ; preds = %while.body.i
  %len11.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 6
  %20 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len11.i, align 4
  %sub12.i = sub i32 %len.addr.06.i, %21
  %22 = ptrtoint ptr %frag.07.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %frag.07.i, align 4
  %tobool6.not.i = icmp eq i32 %sub12.i, 0
  br i1 %tobool6.not.i, label %cleanup.i.bt_skb_sendmmsg.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.bt_skb_sendmmsg.exit_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bt_skb_sendmmsg.exit

bt_skb_sendmmsg.exit:                             ; preds = %cleanup.i.bt_skb_sendmmsg.exit_crit_edge, %while.body.i.bt_skb_sendmmsg.exit_crit_edge, %if.end.i.bt_skb_sendmmsg.exit_crit_edge, %if.end19.bt_skb_sendmmsg.exit_crit_edge
  br i1 %cmp.i.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %bt_skb_sendmmsg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end24:                                         ; preds = %bt_skb_sendmmsg.exit
  %call25 = tail call i32 @rfcomm_dlc_send(ptr noundef %3, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.then27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %call.i, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %if.then22, %do.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then22 ], [ -107, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -32, %if.end4.cleanup_crit_edge ], [ %call16, %do.end.cleanup_crit_edge ], [ %call25, %if.then27 ], [ %call25, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %dlc = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %flags2 = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flags2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rfcomm_dlc_accept(ptr noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @bt_sock_stream_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #9
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  %or.cond = select i1 %tobool4.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %call3, ptr elementtype(i32) %sk_backlog) #9, !srcloc !140
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %sk_backlog7 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog7, i32 noundef 4) #9
  %5 = ptrtoint ptr %sk_backlog7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sk_backlog7, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_rcvbuf, align 8
  %shr = ashr i32 %8, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %shr)
  %cmp10.not = icmp sgt i32 %6, %shr
  br i1 %cmp10.not, label %if.end6.if.end13_crit_edge, label %if.then11

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end6
  %9 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dlc, align 4
  %flags.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %10, i32 0, i32 6
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then11.if.end13_crit_edge, label %if.then.i

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__rfcomm_dlc_unthrottle(ptr noundef %10) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then.i, %if.then11.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_dlc_open(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_wait_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bt_accept_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_dev_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rfcomm_sock_close(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dlc = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rfcomm_sock_close.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_sock_close, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %3 to i32
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rfcomm_sock_close.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.34, ptr noundef %sk, i32 noundef %conv, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %skc_state4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state4, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %7, label %do.end.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 5, label %do.end.sw.bb6_crit_edge
    i8 6, label %do.end.sw.bb6_crit_edge22
    i8 7, label %do.end.sw.bb6_crit_edge23
    i8 1, label %do.end.sw.bb6_crit_edge24
  ]

do.end.sw.bb6_crit_edge24:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

do.end.sw.bb6_crit_edge23:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

do.end.sw.bb6_crit_edge22:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

do.end.sw.bb6_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_cleanup_listen.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_sock_close, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !126

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_cleanup_listen.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.36, ptr noundef %sk) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  %call3.i17 = tail call ptr @bt_accept_dequeue(ptr noundef %sk, ptr noundef null) #9
  %tobool4.not.i18 = icmp eq ptr %call3.i17, null
  br i1 %tobool4.not.i18, label %do.end.i.rfcomm_sock_cleanup_listen.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.rfcomm_sock_cleanup_listen.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rfcomm_sock_cleanup_listen.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %call3.i19 = phi ptr [ %call3.i, %while.body.i.while.body.i_crit_edge ], [ %call3.i17, %do.end.i.while.body.i_crit_edge ]
  tail call void @lock_sock_nested(ptr noundef nonnull %call3.i19, i32 noundef 0) #9
  tail call fastcc void @__rfcomm_sock_close(ptr noundef nonnull %call3.i19) #9
  tail call void @release_sock(ptr noundef nonnull %call3.i19) #9
  tail call fastcc void @rfcomm_sock_kill(ptr noundef nonnull %call3.i19) #9
  %call3.i = tail call ptr @bt_accept_dequeue(ptr noundef %sk, ptr noundef null) #9
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.rfcomm_sock_cleanup_listen.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.rfcomm_sock_cleanup_listen.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rfcomm_sock_cleanup_listen.exit

rfcomm_sock_cleanup_listen.exit:                  ; preds = %while.body.i.rfcomm_sock_cleanup_listen.exit_crit_edge, %do.end.i.rfcomm_sock_cleanup_listen.exit_crit_edge
  %9 = ptrtoint ptr %skc_state4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 9, ptr %skc_state4, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end.sw.bb6_crit_edge, %do.end.sw.bb6_crit_edge22, %do.end.sw.bb6_crit_edge23, %do.end.sw.bb6_crit_edge24
  %call7 = tail call i32 @rfcomm_dlc_close(ptr noundef %1, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %rfcomm_sock_cleanup_listen.exit, %do.end.sw.epilog_crit_edge
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %or.i.i = or i32 %12, 256
  store i32 %or.i.i, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_dlc_close(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rfcomm_sock_setsockopt_old(ptr nocapture noundef readonly %sock, i32 noundef %optname, [2 x i32] %optval.coerce) unnamed_addr #0 align 64 {
entry:
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #9
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %opt, align 4, !annotation !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_setsockopt_old.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_setsockopt_old, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_setsockopt_old.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.9, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %optname)
  %cond = icmp eq i32 %optname, 3
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #13, !srcloc !133
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !130

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #9
  %5 = call i32 @llvm.read_register.i32(metadata !116) #9
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !134
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %3, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end7_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !130

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end7_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i4 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i4)
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %opt, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end7_crit_edge
  %12 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opt, align 4
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.sw.epilog_crit_edge

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end10:                                         ; preds = %if.end7
  %and11 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %sec_level = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %sec_level to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %sec_level, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %and15 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %sec_level18 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %sec_level18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %sec_level18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %and20 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %sec_level23 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %sec_level23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %sec_level23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %17 = trunc i32 %13 to i8
  %conv = and i8 %17, 1
  %role_switch = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %role_switch to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %role_switch, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end24, %if.end7.sw.epilog_crit_edge, %if.then11.i.i.i.i, %do.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %if.end24 ], [ -22, %if.end7.sw.epilog_crit_edge ], [ -92, %do.end.sw.epilog_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @release_sock(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #9
  ret i32 %err.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9.i.i.i = icmp slt i32 %size, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then27.i.i.i, !prof !130

land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_sockptr_offset.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_sockptr_offset.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #13, !srcloc !133
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !130

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !116) #9
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !134
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !130

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ], [ %size, %if.then27.i.i.i ], [ %size, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rfcomm_sock_getsockopt_old(ptr nocapture noundef readonly %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) unnamed_addr #0 align 64 {
entry:
  %cinfo = alloca %struct.rfcomm_conninfo, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cinfo) #9
  %2 = call ptr @memset(ptr %cinfo, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_sock_getsockopt_old.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_sock_getsockopt_old, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_sock_getsockopt_old.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.9, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 743) #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !116) #9
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !134
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #9, !srcloc !141
  %asmresult = extractvalue { i32, i32 } %6, 0
  %asmresult6 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool8.not = icmp eq i32 %asmresult, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %7 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %optname, label %if.end10.sw.epilog54_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb33
  ]

if.end10.sw.epilog54_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog54

sw.bb:                                            ; preds = %if.end10
  %sec_level = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sec_level, align 1
  %switch.tableidx = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rfcomm_sock_getsockopt_old, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.bb.sw.epilog_crit_edge
  %opt.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  %role_switch = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %role_switch to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %role_switch, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp ne i8 %14, 0
  %or = zext i1 %tobool15.not to i32
  %spec.select = or i32 %opt.0, %or
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 773) #9
  %15 = tail call i32 @llvm.read_register.i32(metadata !116) #9
  %and.i.i.i76 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i76 to ptr
  %cpu_domain.i.i77 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i77) #5, !srcloc !134
  %and.i78 = and i32 %17, -13
  %or.i79 = or i32 %and.i78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i79) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %spec.select, i32 -1226833921) #9, !srcloc !142
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  %spec.select74 = select i1 %tobool30.not, i32 0, i32 -14
  br label %sw.epilog54

sw.bb33:                                          ; preds = %if.end10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.not = icmp eq i8 %20, 1
  br i1 %cmp.not, label %sw.bb33.if.end38_crit_edge, label %land.lhs.true

sw.bb33.if.end38_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %sw.bb33
  %dlc = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dlc, align 4
  %defer_setup = getelementptr inbounds %struct.rfcomm_dlc, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %defer_setup to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %defer_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool36.not = icmp eq i32 %24, 0
  br i1 %tobool36.not, label %land.lhs.true.sw.epilog54_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true.sw.epilog54_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog54

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %sw.bb33.if.end38_crit_edge
  %dlc39 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %dlc39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dlc39, align 4
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %session, align 4
  %sock40 = getelementptr inbounds %struct.rfcomm_session, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %sock40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sock40, align 4
  %sk41 = getelementptr inbounds %struct.socket, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %sk41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk41, align 16
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = getelementptr inbounds i8, ptr %cinfo, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %37, align 2
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %handle = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %handle, align 2
  %43 = ptrtoint ptr %cinfo to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %cinfo, align 2
  %dev_class = getelementptr inbounds %struct.rfcomm_conninfo, ptr %cinfo, i32 0, i32 1
  %44 = load ptr, ptr %36, align 4
  %dev_class44 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 18
  %45 = call ptr @memcpy(ptr %dev_class, ptr %dev_class44, i32 3)
  %46 = tail call i32 @llvm.umin.i32(i32 %asmresult6, i32 6)
  call void @__check_object_size(ptr noundef nonnull %cinfo, i32 noundef %46, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end38.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end38.copy_to_user.exit_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end38
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %46, i32 -1226833920) #13, !srcloc !138
  %asmresult.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cinfo, i32 noundef %46) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %cinfo, i32 noundef %46) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end38.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %46, %if.end38.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %46, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool50.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select75 = select i1 %tobool50.not, i32 0, i32 -14
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %copy_to_user.exit, %land.lhs.true.sw.epilog54_crit_edge, %sw.epilog, %if.end10.sw.epilog54_crit_edge
  %err.0 = phi i32 [ -107, %land.lhs.true.sw.epilog54_crit_edge ], [ -92, %if.end10.sw.epilog54_crit_edge ], [ %spec.select74, %sw.epilog ], [ %spec.select75, %copy_to_user.exit ]
  call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog54, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %sw.epilog54 ], [ -14, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cinfo) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_wait_ready(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_dlc_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bt_skb_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %mtu) unnamed_addr #6 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.umin.i32(i32 %len, i32 %mtu)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %err, align 4, !annotation !132
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_flags, align 4
  %and = and i32 %3, 64
  %add.i = add i32 %0, 18
  %call.i = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add.i, i32 noundef %and, ptr noundef nonnull %err) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.lhs.true.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end4.i

land.lhs.true.critedge.i:                         ; preds = %entry
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %land.lhs.true.critedge.i.if.end4.i_crit_edge, label %land.lhs.true.critedge.i.if.then_crit_edge

land.lhs.true.critedge.i.if.then_crit_edge:       ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.critedge.i.if.end4.i_crit_edge:     ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %land.lhs.true.critedge.i.if.end4.i_crit_edge, %if.then.i
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %10 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %sock_error.exit.thread.i, label %sock_error.exit.i, !prof !130

sock_error.exit.thread.i:                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %err, align 4
  br label %if.end8.i

sock_error.exit.i:                                ; preds = %if.end4.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !143
  call void @llvm.prefetch.p0(ptr %sk_err.i.i, i32 1, i32 3, i32 1) #9
  %13 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i.i) #9, !srcloc !144
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  %sub.i.i = sub i32 0, %asmresult.i.i.i
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool6.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool6.not.i, label %sock_error.exit.i.if.end8.i_crit_edge, label %sock_error.exit.i.out.i_crit_edge

sock_error.exit.i.out.i_crit_edge:                ; preds = %sock_error.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

sock_error.exit.i.if.end8.i_crit_edge:            ; preds = %sock_error.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %sock_error.exit.i.if.end8.i_crit_edge, %sock_error.exit.thread.i
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %15 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sk_shutdown.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not.i = icmp eq i8 %16, 0
  br i1 %tobool9.not.i, label %bt_skb_send_alloc.exit, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -104, ptr %err, align 4
  br label %out.i

out.i:                                            ; preds = %if.then10.i, %sock_error.exit.i.out.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %call.i, i32 noundef 0) #9
  br label %if.then

bt_skb_send_alloc.exit:                           ; preds = %if.end8.i
  br i1 %tobool.not.i, label %bt_skb_send_alloc.exit.if.then_crit_edge, label %if.end

bt_skb_send_alloc.exit.if.then_crit_edge:         ; preds = %bt_skb_send_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %bt_skb_send_alloc.exit.if.then_crit_edge, %out.i, %land.lhs.true.critedge.i.if.then_crit_edge
  %18 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %err, align 4
  %20 = inttoptr i32 %19 to ptr
  br label %cleanup

if.end:                                           ; preds = %bt_skb_send_alloc.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit.i, label %do.body2.i, !prof !130

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2502, 0\0A.popsection", ""() #9, !srcloc !146
  unreachable

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %27 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 -2, %sub.ptr.rhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.i, %sub.ptr.lhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mtu)
  %cmp.i2 = icmp ugt i32 %sub.i, %mtu
  %29 = add i32 %sub.ptr.rhs.cast.i.i, %mtu
  %sub9.i = sub i32 %sub.ptr.lhs.cast.i.i, %29
  %.sink.i = select i1 %cmp.i2, i32 %sub9.i, i32 2
  %30 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 13
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i, ptr %30, align 4
  %call3 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %0) #9
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp9.i.i.i = icmp slt i32 %0, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %skb_tailroom.exit.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !130

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__check_object_size(ptr noundef %call3, i32 noundef %0, i1 noundef zeroext false) #9
  %call3.i.i = call i32 @_copy_from_iter(ptr noundef %call3, i32 noundef %0, ptr noundef %msg_iter) #9
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %0)
  %cmp.i = icmp eq i32 %retval.0.i.i, %0
  br i1 %cmp.i, label %if.end7, label %if.then5, !prof !130

if.then5:                                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i) #9
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #9
  br label %cleanup

if.end7:                                          ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %32 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 6
  %34 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %priority, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi ptr [ %call.i, %if.end7 ], [ inttoptr (i32 -14 to ptr), %if.then5 ], [ %20, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfcomm_dlc_accept(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_stream_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rfcomm_dlc_unthrottle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rfcomm_sock_debugfs_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_sock_debugfs_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  %0 = load ptr, ptr @rfcomm_sk_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not2628 = icmp eq ptr %add.ptr, null
  %tobool2.not26 = or i1 %tobool.not, %tobool2.not2628
  br i1 %tobool2.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %sk.027 = phi ptr [ %add.ptr11, %for.body.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %src = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.027, i32 0, i32 1
  %dst = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.027, i32 0, i32 2
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.027, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %2 to i32
  %channel = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk.027, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %channel, align 8
  %conv3 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.46, ptr noundef %src, ptr noundef %dst, i32 noundef %conv, i32 noundef %conv3) #9
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk.027, i32 0, i32 15
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool7.not = icmp eq ptr %7, null
  %add.ptr11 = getelementptr i8, ptr %7, i32 -84
  %tobool2.not29 = icmp eq ptr %add.ptr11, null
  %tobool2.not = or i1 %tobool7.not, %tobool2.not29
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @rfcomm_sk_list, i32 0, i32 1)) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !99, !101, !102, !104, !105, !107, !108, !110, !112, !114}
!llvm.named.register.sp = !{!116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/rfcomm/sock.c", i32 942, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rfcomm_connect_ind.__UNIQUE_ID_ddebug506, !1, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/rfcomm/sock.c", i32 955, i32 3}
!8 = !{ptr @rfcomm_connect_ind.__UNIQUE_ID_ddebug507, !7, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/bluetooth/rfcomm/sock.c", i32 1049, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/bluetooth/rfcomm/sock.c", i32 1055, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bluetooth/rfcomm/sock.c", i32 1060, i32 2}
!15 = !{ptr @rfcomm_sock_debugfs, !16, !"rfcomm_sock_debugfs", i1 false, i1 false}
!16 = !{!"../net/bluetooth/rfcomm/sock.c", i32 1005, i32 23}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/bluetooth/rfcomm/sock.c", i32 308, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rfcomm_sock_alloc.__UNIQUE_ID_ddebug482, !18, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bluetooth/rfcomm/sock.c", i32 71, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rfcomm_sk_state_change.__UNIQUE_ID_ddebug476, !22, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/bluetooth/rfcomm/sock.c", i32 197, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rfcomm_sock_kill.__UNIQUE_ID_ddebug479, !26, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/bluetooth/rfcomm/sock.c", i32 157, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rfcomm_sock_destruct.__UNIQUE_ID_ddebug477, !30, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/bluetooth/rfcomm/sock.c", i32 243, i32 2}
!35 = !{ptr @rfcomm_sock_init.__UNIQUE_ID_ddebug481, !34, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!36 = !{ptr @rfcomm_proto, !37, !"rfcomm_proto", i1 false, i1 false}
!37 = !{!"../net/bluetooth/rfcomm/sock.c", i32 265, i32 21}
!38 = !{ptr @rfcomm_sock_family_ops, !39, !"rfcomm_sock_family_ops", i1 false, i1 false}
!39 = !{!"../net/bluetooth/rfcomm/sock.c", i32 1031, i32 38}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/bluetooth/rfcomm/sock.c", i32 317, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rfcomm_sock_create.__UNIQUE_ID_ddebug483, !41, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!44 = !{ptr @rfcomm_sock_ops, !45, !"rfcomm_sock_ops", i1 false, i1 false}
!45 = !{!"../net/bluetooth/rfcomm/sock.c", i32 1007, i32 31}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/bluetooth/rfcomm/sock.c", i32 920, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rfcomm_sock_release.__UNIQUE_ID_ddebug505, !47, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/bluetooth/rfcomm/sock.c", i32 348, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rfcomm_sock_bind.__UNIQUE_ID_ddebug486, !51, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/bluetooth/rfcomm/sock.c", i32 388, i32 2}
!56 = !{ptr @rfcomm_sock_connect.__UNIQUE_ID_ddebug487, !55, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/bluetooth/rfcomm/sock.c", i32 490, i32 2}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rfcomm_sock_accept.__UNIQUE_ID_ddebug489, !58, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/bluetooth/rfcomm/sock.c", i32 527, i32 2}
!63 = !{ptr @rfcomm_sock_accept.__UNIQUE_ID_ddebug490, !62, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/bluetooth/rfcomm/sock.c", i32 539, i32 2}
!66 = !{ptr @rfcomm_sock_getname.__UNIQUE_ID_ddebug491, !65, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/bluetooth/rfcomm/sock.c", i32 868, i32 2}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rfcomm_sock_ioctl.__UNIQUE_ID_ddebug503, !68, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/bluetooth/rfcomm/sock.c", i32 429, i32 2}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rfcomm_sock_listen.__UNIQUE_ID_ddebug488, !72, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/bluetooth/rfcomm/sock.c", i32 897, i32 2}
!77 = !{ptr @rfcomm_sock_shutdown.__UNIQUE_ID_ddebug504, !76, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/bluetooth/rfcomm/sock.c", i32 209, i32 2}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__rfcomm_sock_close.__UNIQUE_ID_ddebug480, !79, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/bluetooth/rfcomm/sock.c", i32 177, i32 2}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rfcomm_sock_cleanup_listen.__UNIQUE_ID_ddebug478, !83, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/bluetooth/rfcomm/sock.c", i32 672, i32 2}
!88 = !{ptr @rfcomm_sock_setsockopt.__UNIQUE_ID_ddebug494, !87, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/bluetooth/rfcomm/sock.c", i32 628, i32 2}
!91 = !{ptr @rfcomm_sock_setsockopt_old.__UNIQUE_ID_ddebug493, !90, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/bluetooth/rfcomm/sock.c", i32 813, i32 2}
!101 = !{ptr @rfcomm_sock_getsockopt.__UNIQUE_ID_ddebug500, !100, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/rfcomm/sock.c", i32 741, i32 2}
!104 = !{ptr @rfcomm_sock_getsockopt_old.__UNIQUE_ID_ddebug497, !103, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/bluetooth/rfcomm/sock.c", i32 573, i32 2}
!107 = !{ptr @rfcomm_sock_sendmsg.__UNIQUE_ID_ddebug492, !106, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/bluetooth/rfcomm/sock.c", i32 40, i32 10}
!110 = !{ptr @rfcomm_sk_list, !111, !"rfcomm_sk_list", i1 false, i1 false}
!111 = !{!"../net/bluetooth/rfcomm/sock.c", i32 39, i32 28}
!112 = !{ptr @rfcomm_sock_debugfs_fops, !113, !"rfcomm_sock_debugfs_fops", i1 false, i1 false}
!113 = !{!"../net/bluetooth/rfcomm/sock.c", i32 1003, i32 1}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/bluetooth/rfcomm/sock.c", i32 993, i32 17}
!116 = !{!"sp"}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 2148952898, i64 2148952903, i64 2148952916, i64 2148952960, i64 2148952994, i64 2148953015}
!127 = !{i64 2148252968, i64 2148252994, i64 2148253023, i64 2148253057, i64 2148253088, i64 2148253111}
!128 = !{i64 2148342499}
!129 = !{i64 2148256963, i64 2148256995, i64 2148257024, i64 2148257058, i64 2148257089, i64 2148257112}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2149460551}
!132 = !{!"auto-init"}
!133 = !{i64 2152284167, i64 2152284192}
!134 = !{i64 4779722}
!135 = !{i64 4779919}
!136 = !{i64 2152265152}
!137 = !{i64 2157443046, i64 2157443326, i64 2157443660, i64 2157443994}
!138 = !{i64 2152284848, i64 2152284873}
!139 = !{i64 2157454741, i64 2157455021, i64 2157455355, i64 2157455689}
!140 = !{i64 2148255433, i64 2148255459, i64 2148255488, i64 2148255522, i64 2148255553, i64 2148255576}
!141 = !{i64 2157417646, i64 2157417926, i64 2157418260, i64 2157418594}
!142 = !{i64 2157427351, i64 2157427631, i64 2157427965, i64 2157428299}
!143 = !{i64 2156831826}
!144 = !{i64 759736, i64 759753, i64 759777, i64 759803, i64 759821}
!145 = !{i64 2156832169}
!146 = !{i64 2155168135, i64 2155168623, i64 2155168172, i64 2155168228, i64 2155168262, i64 2155168286, i64 2155168327, i64 2155168348, i64 2155168376, i64 2155168410}
