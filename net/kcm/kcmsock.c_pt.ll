; ModuleID = '/llk/IR_all_yes/net/kcm/kcmsock.c_pt.bc'
source_filename = "../net/kcm/kcmsock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.191, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.191 = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.109 }
%struct.atomic_t = type { i32 }
%union.anon.109 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kcm_net = type { %struct.mutex, %struct.kcm_psock_stats, %struct.kcm_mux_stats, %struct.strp_aggr_stats, %struct.list_head, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kcm_psock_stats = type { i64, i64, i64, i64, i32 }
%struct.kcm_mux_stats = type { i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_aggr_stats = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.205, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.205 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.150, i32, %struct.spinlock }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, ptr }
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
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kcm_mux = type { %struct.list_head, %struct.callback_head, ptr, %struct.list_head, i32, %struct.list_head, i32, %struct.kcm_mux_stats, %struct.kcm_psock_stats, %struct.strp_aggr_stats, [64 x i8], %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sk_buff_head, [12 x i8], %struct.spinlock, %struct.list_head, %struct.list_head, [68 x i8] }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.192, [0 x i32], %union.anon.193, i16, i16, %union.anon.194, %struct.refcount_struct, [0 x i32], %union.anon.195 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.164 }
%union.anon.164 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.192 = type { i32 }
%union.anon.193 = type { %struct.hlist_node }
%union.anon.194 = type { i32 }
%union.anon.195 = type { i32 }
%struct.kcm_sock = type { %struct.sock, ptr, %struct.list_head, i32, i8, %struct.work_struct, %struct.kcm_stats, ptr, %struct.work_struct, %struct.list_head, ptr, i8, i8, i8, ptr, %struct.list_head, i8, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.196, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.197, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.198, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.196 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.197 = type { ptr }
%union.anon.198 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.kcm_stats = type { i64, i64, i64, i64 }
%struct.anon.144 = type { ptr, ptr, %union.anon.145 }
%union.anon.145 = type { ptr }
%struct.kcm_attach = type { i32, i32 }
%struct.kcm_unattach = type { i32 }
%struct.kcm_clone = type { i32 }
%struct.kcm_psock = type { ptr, %struct.strparser, ptr, i32, i8, ptr, ptr, ptr, %struct.list_head, %struct.kcm_psock_stats, %struct.list_head, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, i64, i64 }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.142, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.140 }
%union.anon.20 = type { ptr }
%union.anon.140 = type { i64 }
%union.anon.142 = type { ptr }
%struct.sk_buff = type { %union.anon.143, %union.anon.174, %union.anon.175, [48 x i8], %union.anon.176, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.178, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.143 = type { %struct.anon.144 }
%union.anon.174 = type { ptr }
%union.anon.175 = type { i64 }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type { i32, ptr }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.180, i32, i32, i32, i16, i16, %union.anon.182, i32, %union.anon.183, %union.anon.184, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.180 = type { i32 }
%union.anon.182 = type { i32 }
%union.anon.183 = type { i32 }
%union.anon.184 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.115, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.115 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.21, %union.anon.139, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.139 = type { %struct.atomic_t }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { %struct.anon.103, [0 x %struct.sock_filter] }
%struct.anon.103 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.kcm_tx_msg = type { i32, i32, i32, i32, ptr, ptr }

@kcm_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @kcm_init_net, ptr null, ptr @kcm_exit_net, ptr null, ptr @kcm_net_id, i32 256 }, [32 x i8] zeroinitializer }, align 32
@kcm_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1136, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.191 zeroinitializer, ptr null, [32 x i8] c"KCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@kcm_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kcm_muxp = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@kcm_psockp = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_kcm__561_2102_kcm_init6 = internal global ptr @kcm_init, section ".initcall6.init", align 4
@__exitcall_kcm_exit = internal global ptr @kcm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file562 = internal constant [21 x i8] c"kcm.file=net/kcm/kcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license563 = internal constant [16 x i8] c"kcm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias564 = internal constant [20 x i8] c"kcm.alias=net-pf-41\00", section ".modinfo", align 1
@kcm_net_id = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@kcm_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&knet->mutex\00", [19 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/kcm/kcmsock.c\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kcm_mux_cache\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kcm_psock_cache\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kkcmd\00", [26 x i8] zeroinitializer }, align 32
@kcm_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 41, ptr @kcm_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@kcm_dgram_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 41, ptr null, ptr @kcm_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @kcm_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @kcm_setsockopt, ptr @kcm_getsockopt, ptr null, ptr @kcm_sendmsg, ptr @kcm_recvmsg, ptr @sock_no_mmap, ptr @kcm_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kcm_seqpacket_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 41, ptr null, ptr @kcm_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @kcm_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @kcm_setsockopt, ptr @kcm_getsockopt, ptr null, ptr @kcm_sendmsg, ptr @kcm_recvmsg, ptr @sock_no_mmap, ptr @kcm_sendpage, ptr @kcm_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kcm_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mux->lock\00", [21 x i8] zeroinitializer }, align 32
@kcm_create.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mux->rx_lock\00", [18 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kcm_attach.cb = internal constant { %struct.strp_callbacks, [40 x i8] } { %struct.strp_callbacks { ptr @kcm_parse_func_strparser, ptr @kcm_rcv_strparser, ptr @kcm_read_sock_done, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@unreserve_rx_kcm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&kcm->done_work)\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kcm_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014KCM: Hard failure on kcm_write_msgs\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kcm_sendmsg\00", [20 x i8] zeroinitializer }, align 32
@kcm_sendmsg._entry_ptr = internal global ptr @kcm_sendmsg._entry, section ".printk_index", align 4
@.str.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@kcm_sendpage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.23, ptr @.str.6, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kcm_sendpage\00", [19 x i8] zeroinitializer }, align 32
@kcm_sendpage._entry_ptr = internal global ptr @kcm_sendpage._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_kcm_sock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&kcm->tx_work)\00", [63 x i8] zeroinitializer }, align 32
@kcm_tx_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014KCM: Hard failure on kcm_write_msgs %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kcm_tx_work\00", [20 x i8] zeroinitializer }, align 32
@kcm_tx_work._entry_ptr = internal global ptr @kcm_tx_work._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 35296, i64 35297, i64 35298]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"kcm_net_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 2026, i32 33 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"kcm_proto\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1652, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"kcm_wq\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 36, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"kcm_net_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 32, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 2011, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 45, i32 7 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 695, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 723, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 2023, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 2037, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 2043, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 2049, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"kcm_family_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 2000, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"kcm_dgram_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1897, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"kcm_seqpacket_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1918, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1973, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1974, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 230, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 214, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 156, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1379, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 613, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 271, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 326, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1042, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1160, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 871, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1984, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1363, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [21 x i8] c"../net/kcm/kcmsock.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 734, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias564, ptr @__UNIQUE_ID_file562, ptr @__UNIQUE_ID_license563, ptr @__exitcall_kcm_exit, ptr @__initcall__kmod_kcm__561_2102_kcm_init6, ptr @kcm_exit, ptr @kcm_sendmsg._entry, ptr @kcm_sendmsg._entry_ptr, ptr @kcm_sendpage._entry, ptr @kcm_sendpage._entry_ptr, ptr @kcm_tx_work._entry, ptr @kcm_tx_work._entry_ptr, ptr @kcm_net_ops, ptr @kcm_proto, ptr @kcm_wq, ptr @kcm_net_id, ptr @kcm_init_net.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @kcm_family_ops, ptr @kcm_dgram_ops, ptr @kcm_seqpacket_ops, ptr @kcm_create.__key, ptr @.str.11, ptr @kcm_create.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @kcm_attach.cb, ptr @.str.17, ptr @.str.18, ptr @unreserve_rx_kcm.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @skb_queue_head_init.__key, ptr @.str.24, ptr @init_kcm_sock.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_dgram_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_seqpacket_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_create.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_attach.cb to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unreserve_rx_kcm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_sendpage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_kcm_sock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcm_tx_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kcm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kcm_proc_exit() #10
  tail call void @sock_unregister(i32 noundef 41) #10
  tail call void @unregister_pernet_device(ptr noundef nonnull @kcm_net_ops) #10
  tail call void @proto_unregister(ptr noundef nonnull @kcm_proto) #10
  %0 = load ptr, ptr @kcm_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  %1 = load ptr, ptr @kcm_muxp, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  %2 = load ptr, ptr @kcm_psockp, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcm_proc_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.7, i32 noundef 512, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call, ptr @kcm_muxp, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 376, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call1, ptr @kcm_psockp, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.fail_crit_edge, label %if.end4

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.10) #10
  store ptr %call5, ptr @kcm_wq, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.fail_crit_edge, label %if.end8

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @proto_register(ptr noundef nonnull @kcm_proto, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.fail_crit_edge

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @register_pernet_device(ptr noundef nonnull @kcm_net_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.net_ops_fail_crit_edge

if.end12.net_ops_fail_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_ops_fail

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @sock_register(ptr noundef nonnull @kcm_family_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.sock_register_fail_crit_edge

if.end16.sock_register_fail_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_register_fail

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @kcm_proc_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %proc_init_fail

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

proc_init_fail:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sock_unregister(i32 noundef 41) #10
  br label %sock_register_fail

sock_register_fail:                               ; preds = %proc_init_fail, %if.end16.sock_register_fail_crit_edge
  %err.0 = phi i32 [ %call17, %if.end16.sock_register_fail_crit_edge ], [ %call21, %proc_init_fail ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @kcm_net_ops) #10
  br label %net_ops_fail

net_ops_fail:                                     ; preds = %sock_register_fail, %if.end12.net_ops_fail_crit_edge
  %err.1 = phi i32 [ %call13, %if.end12.net_ops_fail_crit_edge ], [ %err.0, %sock_register_fail ]
  tail call void @proto_unregister(ptr noundef nonnull @kcm_proto) #10
  br label %fail

fail:                                             ; preds = %net_ops_fail, %if.end8.fail_crit_edge, %if.end4.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %err.2 = phi i32 [ %call9, %if.end8.fail_crit_edge ], [ %err.1, %net_ops_fail ], [ -12, %if.end4.fail_crit_edge ], [ -12, %if.end.fail_crit_edge ], [ -12, %entry.fail_crit_edge ]
  %0 = load ptr, ptr @kcm_muxp, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  %1 = load ptr, ptr @kcm_psockp, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  %2 = load ptr, ptr @kcm_wq, align 4
  %tobool25.not = icmp eq ptr %2, null
  br i1 %tobool25.not, label %fail.cleanup_crit_edge, label %if.then26

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %fail.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20.cleanup_crit_edge ], [ %err.2, %if.then26 ], [ %err.2, %fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kcm_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %mux_list = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %mux_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %mux_list, ptr %mux_list, align 4
  %prev.i = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mux_list, ptr %prev.i, align 4
  tail call void @__mutex_init(ptr noundef %call, ptr noundef nonnull @.str, ptr noundef nonnull @kcm_init_net.__key) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcm_exit_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kcm_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %mux_list = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %mux_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %mux_list, align 4
  %cmp.i.not = icmp eq ptr %2, %mux_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !105

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2023, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.2) #10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %8 = tail call i32 @llvm.read_register.i32(metadata !95) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcm_proc_init() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kcm_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 4
  %conv = sext i16 %2 to i32
  %3 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 5, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %kcm_seqpacket_ops.sink = phi ptr [ @kcm_seqpacket_ops, %sw.bb1 ], [ @kcm_dgram_ops, %entry.sw.epilog_crit_edge ]
  %ops2 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %4 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %kcm_seqpacket_ops.sink, ptr %ops2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %cmp.not = icmp eq i32 %protocol, 0
  br i1 %cmp.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %call4 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 41, i32 noundef 3264, ptr noundef nonnull @kcm_proto, i32 noundef %kern) #10
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr @kcm_muxp, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3520) #10
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then9, label %do.body

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sk_free(ptr noundef nonnull %call4) #10
  br label %cleanup

do.body:                                          ; preds = %if.end6
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @kcm_create.__key, i16 noundef signext 3) #10
  %rx_lock = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @kcm_create.__key.12, i16 noundef signext 3) #10
  %kcm_socks = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %kcm_socks to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %kcm_socks, ptr %kcm_socks, align 4
  %prev.i = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %kcm_socks, ptr %prev.i, align 8
  %kcm_rx_waiters = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %kcm_rx_waiters to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %kcm_rx_waiters, ptr %kcm_rx_waiters, align 4
  %prev.i44 = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %kcm_rx_waiters, ptr %prev.i44, align 8
  %kcm_tx_waiters = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 18
  %10 = ptrtoint ptr %kcm_tx_waiters to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %kcm_tx_waiters, ptr %kcm_tx_waiters, align 4
  %prev.i45 = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %kcm_tx_waiters, ptr %prev.i45, align 8
  %psocks = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %psocks to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %psocks, ptr %psocks, align 8
  %prev.i46 = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %psocks, ptr %prev.i46, align 4
  %psocks_ready = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %psocks_ready to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %psocks_ready, ptr %psocks_ready, align 4
  %prev.i47 = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %psocks_ready, ptr %prev.i47, align 8
  %psocks_avail = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 17
  %16 = ptrtoint ptr %psocks_avail to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %psocks_avail, ptr %psocks_avail, align 4
  %prev.i48 = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %psocks_avail, ptr %prev.i48, align 8
  %knet16 = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %knet16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %knet16, align 16
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #10
  %mux_list = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %mux_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mux_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %mux_list, ptr noundef %20) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_add_rcu.exit_crit_edge

do.body.list_add_rcu.exit_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %call.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mux_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !108
  %23 = ptrtoint ptr %mux_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call.i, ptr %mux_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %do.body.list_add_rcu.exit_crit_edge
  %count = getelementptr inbounds %struct.kcm_net, ptr %call, i32 0, i32 5
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %count, align 8
  tail call void @mutex_unlock(ptr noundef %call) #10
  %rx_hold_queue = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 14
  %lock.i = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 14, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %27 = ptrtoint ptr %rx_hold_queue to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rx_hold_queue, ptr %rx_hold_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rx_hold_queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.kcm_mux, ptr %call.i, i32 0, i32 14, i32 1
  %29 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %qlen.i.i, align 4
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call4) #10
  tail call fastcc void @init_kcm_sock(ptr noundef nonnull %call4, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %list_add_rcu.exit, %if.then9, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_rcu.exit ], [ -12, %if.then9 ], [ -94, %entry.cleanup_crit_edge ], [ -93, %sw.epilog.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_kcm_sock(ptr noundef %kcm, ptr noundef %mux) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %kcm, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 1, ptr %skc_state, align 2
  %mux1 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 1
  %1 = ptrtoint ptr %mux1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mux, ptr %mux1, align 8
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %mux, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %kcm_socks = getelementptr inbounds %struct.kcm_mux, ptr %mux, i32 0, i32 3
  %2 = ptrtoint ptr %kcm_socks to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn44 = load ptr, ptr %kcm_socks, align 4
  %cmp.not45 = icmp eq ptr %.pn44, %kcm_socks
  br i1 %cmp.not45, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %index454 = getelementptr i8, ptr %.pn44, i32 8
  %3 = ptrtoint ptr %index454 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index454, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5.not55 = icmp eq i32 %4, 0
  br i1 %cmp5.not55, label %for.body.preheader.if.end_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader.if.end_crit_edge:              ; preds = %for.body.preheader
  br label %if.end

for.body:                                         ; preds = %if.end
  %index4 = getelementptr i8, ptr %.pn, i32 8
  %5 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index4, align 4
  %cmp5.not = icmp eq i32 %6, %inc
  br i1 %cmp5.not, label %for.body.if.end_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.preheader.if.end_crit_edge
  %index.04657 = phi i32 [ %inc, %for.body.if.end_crit_edge ], [ 0, %for.body.preheader.if.end_crit_edge ]
  %.pn4856 = phi ptr [ %.pn, %for.body.if.end_crit_edge ], [ %.pn44, %for.body.preheader.if.end_crit_edge ]
  %inc = add i32 %index.04657, 1
  %7 = ptrtoint ptr %.pn4856 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn4856, align 4
  %cmp.not = icmp eq ptr %.pn, %kcm_socks
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %index.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %for.body.preheader.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %head.0.lcssa = phi ptr [ %kcm_socks, %entry.for.end_crit_edge ], [ %kcm_socks, %for.body.preheader.for.end_crit_edge ], [ %.pn4856, %if.end.for.end_crit_edge ], [ %.pn4856, %for.body.for.end_crit_edge ]
  %.pn.lcssa = phi ptr [ %kcm_socks, %entry.for.end_crit_edge ], [ %.pn44, %for.body.preheader.for.end_crit_edge ], [ %kcm_socks, %if.end.for.end_crit_edge ], [ %.pn, %for.body.for.end_crit_edge ]
  %kcm_sock_list12 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %kcm_sock_list12, ptr noundef %head.0.lcssa, ptr noundef %.pn.lcssa) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %kcm_sock_list12, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %kcm_sock_list12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.pn.lcssa, ptr %kcm_sock_list12, align 4
  %prev3.i.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head.0.lcssa, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %head.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %kcm_sock_list12, ptr %head.0.lcssa, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  %index13 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 3
  %12 = ptrtoint ptr %index13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %index.0.lcssa, ptr %index13, align 4
  %kcm_socks_cnt = getelementptr inbounds %struct.kcm_mux, ptr %mux, i32 0, i32 4
  %13 = ptrtoint ptr %kcm_socks_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %kcm_socks_cnt, align 4
  %inc14 = add i32 %14, 1
  store i32 %inc14, ptr %kcm_socks_cnt, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %tx_work = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 8
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #10
  %15 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_kcm_sock.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry19 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 8, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kcm_tx_work, ptr %func, align 4
  %rx_lock = getelementptr inbounds %struct.kcm_mux, ptr %mux, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #10
  tail call fastcc void @kcm_rcv_ready(ptr noundef %kcm)
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mux2 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mux2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux2, align 8
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %or.i.i.i = or i32 %6, 1
  store i32 %or.i.i.i, ptr %4, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %7 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %sk_socket.i.i, align 8
  %8 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %seq_skb = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %seq_skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seq_skb, align 8
  tail call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #10
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %13, %sk_write_queue
  %tobool.not.i13.i = icmp eq ptr %13, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.end.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

if.end.__skb_queue_purge.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = phi ptr [ %13, %while.body.lr.ph.i ], [ %24, %while.body.i.while.body.i_crit_edge ]
  %15 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.144, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %14, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.144, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %prev17.i.i.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %20, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #10
  %23 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.i.i = icmp eq ptr %24, %sk_write_queue
  %tobool.not.i1.i = icmp eq ptr %24, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %if.end.__skb_queue_purge.exit_crit_edge
  %tx_stopped = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %tx_stopped, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %tx_stopped, align 4
  tail call void @release_sock(ptr noundef nonnull %1) #10
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %tx_wait = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %tx_wait to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_wait, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.not = icmp eq i8 %27, 0
  br i1 %tobool3.not, label %__skb_queue_purge.exit.if.end6_crit_edge, label %if.then4

__skb_queue_purge.exit.if.end6_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %__skb_queue_purge.exit
  %wait_psock_list = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %wait_psock_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %wait_psock_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wait_psock_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %34 = ptrtoint ptr %wait_psock_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %wait_psock_list, align 4
  %prev.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %36 = ptrtoint ptr %tx_wait to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %tx_wait, align 1
  br label %if.end6

if.end6:                                          ; preds = %list_del.exit, %__skb_queue_purge.exit.if.end6_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %tx_work = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 8
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #10
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %tx_psock = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %tx_psock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_psock, align 8
  %tobool9.not = icmp eq ptr %38, null
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @kcm_abort_tx_psock(ptr noundef nonnull %38, i1 noundef zeroext false)
  tail call fastcc void @unreserve_psock(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  tail call void @release_sock(ptr noundef nonnull %1) #10
  %39 = ptrtoint ptr %tx_wait to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_wait, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool13.not = icmp eq i8 %40, 0
  br i1 %tobool13.not, label %if.end11.if.end28_crit_edge, label %do.end, !prof !105

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1887, i32 noundef 9, ptr noundef null) #10
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end11.if.end28_crit_edge
  %41 = ptrtoint ptr %tx_psock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_psock, align 8
  %tobool37.not = icmp eq ptr %42, null
  br i1 %tobool37.not, label %if.end28.if.end59_crit_edge, label %do.end53, !prof !105

if.end28.if.end59_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.end53:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1888, i32 noundef 9, ptr noundef null) #10
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %if.end28.if.end59_crit_edge
  %43 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %sk1, align 16
  tail call fastcc void @kcm_done(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %err.i86 = alloca i32, align 4
  %err.i = alloca i32, align 4
  %info = alloca %struct.kcm_attach, align 4
  %info3 = alloca %struct.kcm_unattach, align 4
  %info12 = alloca %struct.kcm_clone, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %cmd, label %entry.cleanup35_crit_edge [
    i32 35296, label %sw.bb
    i32 35297, label %sw.bb2
    i32 35298, label %sw.bb11
  ]

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #10
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %info, align 4, !annotation !110
  %2 = getelementptr inbounds %struct.kcm_attach, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !110
  %4 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 8, i32 -1226833920) #13, !srcloc !111
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !105

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 8) #10
  %6 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !112
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %4, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !105

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #10
  br label %cleanup35

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #10
  %9 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %err.i, align 4, !annotation !110
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %call.i = call ptr @sockfd_lookup(i32 noundef %11, ptr noundef nonnull %err.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup.thread_crit_edge, label %if.end.i

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %call.i.i80 = call ptr @bpf_prog_get_type_dev(i32 noundef %13, i32 noundef 1, i1 noundef zeroext false) #10
  %cmp.i.i81 = icmp ugt ptr %call.i.i80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i81, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call.i.i80 to i32
  %15 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %err.i, align 4
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %16 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk.i.i, align 16
  %mux1.i.i = getelementptr inbounds %struct.kcm_sock, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %mux1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mux1.i.i, align 8
  %sk2.i.i = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %sk2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk2.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end5.i.if.then8.i_crit_edge, label %if.end.i.i82

if.end5.i.if.then8.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end.i.i82:                                     ; preds = %if.end5.i
  call void @lock_sock_nested(ptr noundef nonnull %21, i32 noundef 0) #10
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %skc_family.i.i, align 8
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %23, label %if.end.i.i82.kcm_attach.exit.thread27.i_crit_edge [
    i16 2, label %if.end.i.i82.lor.lhs.false.i.i_crit_edge
    i16 10, label %if.end.i.i82.lor.lhs.false.i.i_crit_edge128
  ]

if.end.i.i82.lor.lhs.false.i.i_crit_edge128:      ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i

if.end.i.i82.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i

if.end.i.i82.kcm_attach.exit.thread27.i_crit_edge: ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_attach.exit.thread27.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i82.lor.lhs.false.i.i_crit_edge, %if.end.i.i82.lor.lhs.false.i.i_crit_edge128
  %sk_protocol.i.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 46
  %25 = ptrtoint ptr %sk_protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sk_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %26)
  %cmp10.not.i.i = icmp eq i16 %26, 6
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %lor.lhs.false.i.i.kcm_attach.exit.thread27.i_crit_edge

lor.lhs.false.i.i.kcm_attach.exit.thread27.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_attach.exit.thread27.i

if.end13.i.i:                                     ; preds = %lor.lhs.false.i.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 4
  %27 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp16.i.i = icmp eq i8 %28, 10
  br i1 %cmp16.i.i, label %if.end13.i.i.kcm_attach.exit.thread27.i_crit_edge, label %lor.lhs.false18.i.i

if.end13.i.i.kcm_attach.exit.thread27.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_attach.exit.thread27.i

lor.lhs.false18.i.i:                              ; preds = %if.end13.i.i
  %29 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %30)
  %cmp22.i.i = icmp eq i8 %30, 7
  br i1 %cmp22.i.i, label %lor.lhs.false18.i.i.kcm_attach.exit.thread27.i_crit_edge, label %if.end25.i.i

lor.lhs.false18.i.i.kcm_attach.exit.thread27.i_crit_edge: ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_attach.exit.thread27.i

if.end25.i.i:                                     ; preds = %lor.lhs.false18.i.i
  %31 = load ptr, ptr @kcm_psockp, align 4
  %call.i.i.i83 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %31, i32 noundef 3520) #10
  %tobool27.not.i.i = icmp eq ptr %call.i.i.i83, null
  br i1 %tobool27.not.i.i, label %if.end25.i.i.kcm_attach.exit.thread27.i_crit_edge, label %if.end29.i.i

if.end25.i.i.kcm_attach.exit.thread27.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_attach.exit.thread27.i

if.end29.i.i:                                     ; preds = %if.end25.i.i
  %mux30.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 2
  %32 = ptrtoint ptr %mux30.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %19, ptr %mux30.i.i, align 8
  %33 = ptrtoint ptr %call.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %21, ptr %call.i.i.i83, align 8
  %bpf_prog.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 11
  %34 = ptrtoint ptr %bpf_prog.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i80, ptr %bpf_prog.i.i, align 8
  %strp.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 1
  %call32.i.i = call i32 @strp_init(ptr noundef %strp.i.i, ptr noundef nonnull %21, ptr noundef nonnull @kcm_attach.cb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end35.i.i, label %if.end29.i.i.kcm_attach.exit.thread27.sink.split.i_crit_edge

if.end29.i.i.kcm_attach.exit.thread27.sink.split.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_attach.exit.thread27.sink.split.i

if.end35.i.i:                                     ; preds = %if.end29.i.i
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i.i) #10
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 72
  %35 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_user_data.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %36, null
  br i1 %tobool36.not.i.i, label %if.end41.i.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i.i) #10
  call void @strp_stop(ptr noundef %strp.i.i) #10
  call void @strp_done(ptr noundef %strp.i.i) #10
  br label %kcm_attach.exit.thread27.sink.split.i

if.end41.i.i:                                     ; preds = %if.end35.i.i
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 77
  %37 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk_data_ready.i.i, align 8
  %save_data_ready.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 6
  %39 = ptrtoint ptr %save_data_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %save_data_ready.i.i, align 8
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 78
  %40 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk_write_space.i.i, align 4
  %save_write_space.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 7
  %42 = ptrtoint ptr %save_write_space.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %save_write_space.i.i, align 4
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 76
  %43 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk_state_change.i.i, align 4
  %save_state_change.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 5
  %45 = ptrtoint ptr %save_state_change.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %save_state_change.i.i, align 4
  %46 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i.i83, ptr %sk_user_data.i.i, align 4
  store ptr @psock_data_ready, ptr %sk_data_ready.i.i, align 8
  store ptr @psock_write_space, ptr %sk_write_space.i.i, align 4
  store ptr @psock_state_change, ptr %sk_state_change.i.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i.i) #10
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #10
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end41.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !116

if.end41.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end41.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !105

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end41.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end41.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.kcm_mux, ptr %19, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #10
  %psocks.i.i = getelementptr inbounds %struct.kcm_mux, ptr %19, i32 0, i32 5
  %49 = ptrtoint ptr %psocks.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn125.i.i = load ptr, ptr %psocks.i.i, align 8
  %cmp49.not126.i.i = icmp eq ptr %.pn125.i.i, %psocks.i.i
  br i1 %cmp49.not126.i.i, label %sock_hold.exit.i.i.for.end.i.i_crit_edge, label %for.body.i.preheader.i

sock_hold.exit.i.i.for.end.i.i_crit_edge:         ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.preheader.i:                           ; preds = %sock_hold.exit.i.i
  %index51.i30.i = getelementptr i8, ptr %.pn125.i.i, i32 -20
  %50 = ptrtoint ptr %index51.i30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index51.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp52.not.i31.i = icmp eq i32 %51, 0
  br i1 %cmp52.not.i31.i, label %for.body.i.preheader.i.if.end55.i.i_crit_edge, label %for.body.i.preheader.i.for.end.i.i_crit_edge

for.body.i.preheader.i.for.end.i.i_crit_edge:     ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.preheader.i.if.end55.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %if.end55.i.i

for.body.i.i:                                     ; preds = %if.end55.i.i
  %index51.i.i = getelementptr i8, ptr %.pn.i.i, i32 -20
  %52 = ptrtoint ptr %index51.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index51.i.i, align 4
  %cmp52.not.i.i = icmp eq i32 %53, %inc.i.i
  br i1 %cmp52.not.i.i, label %for.body.i.i.if.end55.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i.if.end55.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %for.body.i.i.if.end55.i.i_crit_edge, %for.body.i.preheader.i.if.end55.i.i_crit_edge
  %index.0128.i33.i = phi i32 [ %inc.i.i, %for.body.i.i.if.end55.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.if.end55.i.i_crit_edge ]
  %.pn129.i32.i = phi ptr [ %.pn.i.i, %for.body.i.i.if.end55.i.i_crit_edge ], [ %.pn125.i.i, %for.body.i.preheader.i.if.end55.i.i_crit_edge ]
  %inc.i.i = add i32 %index.0128.i33.i, 1
  %54 = ptrtoint ptr %.pn129.i32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i.i = load ptr, ptr %.pn129.i32.i, align 8
  %cmp49.not.i.i = icmp eq ptr %.pn.i.i, %psocks.i.i
  br i1 %cmp49.not.i.i, label %if.end55.i.i.for.end.i.i_crit_edge, label %for.body.i.i

if.end55.i.i.for.end.i.i_crit_edge:               ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end55.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %for.body.i.preheader.i.for.end.i.i_crit_edge, %sock_hold.exit.i.i.for.end.i.i_crit_edge
  %head.0.lcssa.i.i = phi ptr [ %psocks.i.i, %sock_hold.exit.i.i.for.end.i.i_crit_edge ], [ %psocks.i.i, %for.body.i.preheader.i.for.end.i.i_crit_edge ], [ %.pn129.i32.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %.pn129.i32.i, %if.end55.i.i.for.end.i.i_crit_edge ]
  %index.0.lcssa.i.i = phi i32 [ 0, %sock_hold.exit.i.i.for.end.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.end.i.i_crit_edge ], [ %inc.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %inc.i.i, %if.end55.i.i.for.end.i.i_crit_edge ]
  %.pn.lcssa.i.i = phi ptr [ %psocks.i.i, %sock_hold.exit.i.i.for.end.i.i_crit_edge ], [ %.pn125.i.i, %for.body.i.preheader.i.for.end.i.i_crit_edge ], [ %psocks.i.i, %if.end55.i.i.for.end.i.i_crit_edge ], [ %.pn.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %psock_list62.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %psock_list62.i.i, ptr noundef %head.0.lcssa.i.i, ptr noundef %.pn.lcssa.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.list_add.exit.i.i_crit_edge

for.end.i.i.list_add.exit.i.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %psock_list62.i.i, ptr %prev1.i.i.i.i, align 4
  %56 = ptrtoint ptr %psock_list62.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %.pn.lcssa.i.i, ptr %psock_list62.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %head.0.lcssa.i.i, ptr %prev3.i.i.i.i, align 4
  %58 = ptrtoint ptr %head.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %psock_list62.i.i, ptr %head.0.lcssa.i.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.end.i.i.list_add.exit.i.i_crit_edge
  %index63.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 3
  %59 = ptrtoint ptr %index63.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %index.0.lcssa.i.i, ptr %index63.i.i, align 4
  %psock_attach.i.i = getelementptr inbounds %struct.kcm_mux, ptr %19, i32 0, i32 7, i32 6
  %60 = ptrtoint ptr %psock_attach.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %psock_attach.i.i, align 8
  %inc64.i.i = add i32 %61, 1
  store i32 %inc64.i.i, ptr %psock_attach.i.i, align 8
  %psocks_cnt.i.i = getelementptr inbounds %struct.kcm_mux, ptr %19, i32 0, i32 6
  %62 = ptrtoint ptr %psocks_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %psocks_cnt.i.i, align 8
  %inc65.i.i = add i32 %63, 1
  store i32 %inc65.i.i, ptr %psocks_cnt.i.i, align 8
  %64 = ptrtoint ptr %mux30.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mux30.i.i, align 8
  %kcm_tx_waiters.i.i = getelementptr inbounds %struct.kcm_mux, ptr %65, i32 0, i32 18
  %66 = ptrtoint ptr %kcm_tx_waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %kcm_tx_waiters.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %67, %kcm_tx_waiters.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i84, label %if.else.i.i

if.then.i.i84:                                    ; preds = %list_add.exit.i.i
  %psock_avail_list.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 17
  %psocks_avail.i.i = getelementptr inbounds %struct.kcm_mux, ptr %65, i32 0, i32 17
  %prev.i.i.i = getelementptr inbounds %struct.kcm_mux, ptr %65, i32 0, i32 17, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i19.i = call zeroext i1 @__list_add_valid(ptr noundef %psock_avail_list.i.i, ptr noundef %69, ptr noundef %psocks_avail.i.i) #10
  br i1 %call.i.i.i19.i, label %if.end.i.i.i21.i, label %if.then.i.i84.kcm_attach.exit.i_crit_edge

if.then.i.i84.kcm_attach.exit.i_crit_edge:        ; preds = %if.then.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_attach.exit.i

if.end.i.i.i21.i:                                 ; preds = %if.then.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %psock_avail_list.i.i, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %psock_avail_list.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %psocks_avail.i.i, ptr %psock_avail_list.i.i, align 8
  %prev3.i.i.i20.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 17, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i.i20.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %psock_avail_list.i.i, ptr %69, align 4
  br label %kcm_attach.exit.i

if.else.i.i:                                      ; preds = %list_add.exit.i.i
  %add.ptr.i.i85 = getelementptr i8, ptr %67, i32 -1104
  %call.i.i17.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %67) #10
  br i1 %call.i.i17.i.i, label %if.end.i.i18.i.i, label %if.else.i.i.list_del.exit.i.i_crit_edge

if.else.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i18.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i.i, align 4
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %67, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i18.i.i, %if.else.i.i.list_del.exit.i.i_crit_edge
  %80 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %67, align 4
  %prev.i19.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i19.i.i, align 4
  %tx_wait.i.i = getelementptr i8, ptr %67, i32 13
  %82 = ptrtoint ptr %tx_wait.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %tx_wait.i.i, align 1
  %tx_kcm.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 16
  %83 = ptrtoint ptr %tx_kcm.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr.i.i85, ptr %tx_kcm.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  %tx_psock.i.i = getelementptr i8, ptr %67, i32 -48
  %84 = ptrtoint ptr %tx_psock.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i.i83, ptr %tx_psock.i.i, align 8
  %reserved.i.i = getelementptr inbounds %struct.kcm_psock, ptr %call.i.i.i83, i32 0, i32 9, i32 2
  %85 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %reserved.i.i, align 8
  %inc.i22.i = add i64 %86, 1
  store i64 %inc.i22.i, ptr %reserved.i.i, align 8
  %87 = load ptr, ptr @kcm_wq, align 4
  %tx_work.i.i = getelementptr i8, ptr %67, i32 -44
  %call.i.i23.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %87, ptr noundef %tx_work.i.i) #10
  br label %kcm_attach.exit.i

kcm_attach.exit.thread27.sink.split.i:            ; preds = %if.then37.i.i, %if.end29.i.i.kcm_attach.exit.thread27.sink.split.i_crit_edge
  %err.0.i.ph.ph.i = phi i32 [ -114, %if.then37.i.i ], [ %call32.i.i, %if.end29.i.i.kcm_attach.exit.thread27.sink.split.i_crit_edge ]
  %88 = load ptr, ptr @kcm_psockp, align 4
  call void @kmem_cache_free(ptr noundef %88, ptr noundef nonnull %call.i.i.i83) #10
  br label %kcm_attach.exit.thread27.i

kcm_attach.exit.thread27.i:                       ; preds = %kcm_attach.exit.thread27.sink.split.i, %if.end25.i.i.kcm_attach.exit.thread27.i_crit_edge, %lor.lhs.false18.i.i.kcm_attach.exit.thread27.i_crit_edge, %if.end13.i.i.kcm_attach.exit.thread27.i_crit_edge, %lor.lhs.false.i.i.kcm_attach.exit.thread27.i_crit_edge, %if.end.i.i82.kcm_attach.exit.thread27.i_crit_edge
  %err.0.i.ph.i = phi i32 [ -12, %if.end25.i.i.kcm_attach.exit.thread27.i_crit_edge ], [ -95, %if.end13.i.i.kcm_attach.exit.thread27.i_crit_edge ], [ -95, %lor.lhs.false18.i.i.kcm_attach.exit.thread27.i_crit_edge ], [ -95, %lor.lhs.false.i.i.kcm_attach.exit.thread27.i_crit_edge ], [ -95, %if.end.i.i82.kcm_attach.exit.thread27.i_crit_edge ], [ %err.0.i.ph.ph.i, %kcm_attach.exit.thread27.sink.split.i ]
  call void @release_sock(ptr noundef nonnull %21) #10
  br label %if.then8.i

kcm_attach.exit.i:                                ; preds = %list_del.exit.i.i, %if.end.i.i.i21.i, %if.then.i.i84.kcm_attach.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  call void @strp_check_rcv(ptr noundef %strp.i.i) #10
  call void @release_sock(ptr noundef nonnull %21) #10
  br label %cleanup.thread

if.then8.i:                                       ; preds = %kcm_attach.exit.thread27.i, %if.end5.i.if.then8.i_crit_edge
  %storemerge.i = phi i32 [ %err.0.i.ph.i, %kcm_attach.exit.thread27.i ], [ -22, %if.end5.i.if.then8.i_crit_edge ]
  %89 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %storemerge.i, ptr %err.i, align 4
  call void @bpf_prog_put(ptr noundef %call.i.i80) #10
  br label %out.i

out.i:                                            ; preds = %if.then8.i, %if.then3.i
  %file.i = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 3
  %90 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %file.i, align 4
  call void @fput(ptr noundef %91) #10
  %92 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %err.i, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %out.i, %kcm_attach.exit.i, %if.end.cleanup.thread_crit_edge
  %retval.0.i = phi i32 [ %93, %out.i ], [ -2, %if.end.cleanup.thread_crit_edge ], [ 0, %kcm_attach.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #10
  br label %cleanup35

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info3) #10
  %94 = ptrtoint ptr %info3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %info3, align 4, !annotation !110
  %95 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #10
  %call.i.i51 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i51, label %sw.bb2.if.then11.i.i67_crit_edge, label %land.lhs.true.i.i54

sw.bb2.if.then11.i.i67_crit_edge:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i67

land.lhs.true.i.i54:                              ; preds = %sw.bb2
  %96 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %95, i32 4, i32 -1226833920) #13, !srcloc !111
  %asmresult.i.i52 = extractvalue { i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i52)
  %cmp.i6.i53 = icmp eq i32 %asmresult.i.i52, 0
  br i1 %cmp.i6.i53, label %if.end.i.i64, label %land.lhs.true.i.i54.if.then11.i.i67_crit_edge, !prof !105

land.lhs.true.i.i54.if.then11.i.i67_crit_edge:    ; preds = %land.lhs.true.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i67

if.end.i.i64:                                     ; preds = %land.lhs.true.i.i54
  %call.i.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info3, i32 noundef 4) #10
  %97 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i56 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i.i56 to ptr
  %cpu_domain.i.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 4
  %99 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i57) #5, !srcloc !112
  %and.i.i.i.i58 = and i32 %99, -13
  %or.i.i.i.i59 = or i32 %and.i.i.i.i58, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i59) #10, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %call1.i.i.i60 = call i32 @arm_copy_from_user(ptr noundef nonnull %info3, ptr noundef %95, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #10, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i60)
  %tobool4.not.i.i63 = icmp eq i32 %call1.i.i.i60, 0
  br i1 %tobool4.not.i.i63, label %if.end7, label %if.end.i.i64.if.then11.i.i67_crit_edge, !prof !105

if.end.i.i64.if.then11.i.i67_crit_edge:           ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i67

if.then11.i.i67:                                  ; preds = %if.end.i.i64.if.then11.i.i67_crit_edge, %land.lhs.true.i.i54.if.then11.i.i67_crit_edge, %sw.bb2.if.then11.i.i67_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info3) #10
  br label %cleanup35

if.end7:                                          ; preds = %if.end.i.i64
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %100 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sk.i, align 16
  %mux1.i = getelementptr inbounds %struct.kcm_sock, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mux1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i86) #10
  %104 = ptrtoint ptr %err.i86 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %err.i86, align 4, !annotation !110
  %105 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %info3, align 4
  %call2.i = call ptr @sockfd_lookup(i32 noundef %106, ptr noundef nonnull %err.i86) #10
  %tobool.not.i87 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i87, label %if.end7.cleanup9.thread_crit_edge, label %if.end.i88

if.end7.cleanup9.thread_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9.thread

if.end.i88:                                       ; preds = %if.end7
  %sk3.i = getelementptr inbounds %struct.socket, ptr %call2.i, i32 0, i32 4
  %107 = ptrtoint ptr %sk3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sk3.i, align 16
  %tobool4.not.i = icmp eq ptr %108, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %err.i86 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -22, ptr %err.i86, align 4
  br label %out.i90

if.end6.i:                                        ; preds = %if.end.i88
  %110 = ptrtoint ptr %err.i86 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -2, ptr %err.i86, align 4
  %lock.i = getelementptr inbounds %struct.kcm_mux, ptr %103, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %psocks.i = getelementptr inbounds %struct.kcm_mux, ptr %103, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end6.i
  %.pn.in.i = phi ptr [ %psocks.i, %if.end6.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %111 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %psocks.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %psock.0.i = getelementptr i8, ptr %.pn.i, i32 -264
  %112 = ptrtoint ptr %psock.0.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %psock.0.i, align 8
  %cmp9.not.i = icmp eq ptr %113, %108
  br i1 %cmp9.not.i, label %if.end11.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end11.i:                                       ; preds = %for.body.i
  %psock.0.i.le = getelementptr i8, ptr %.pn.i, i32 -264
  %unattaching.i = getelementptr i8, ptr %.pn.i, i32 -16
  %114 = ptrtoint ptr %unattaching.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load.i = load i8, ptr %unattaching.i, align 8
  %115 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool12.not.i = icmp eq i8 %115, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i, label %if.end11.i.if.then42.i_crit_edge

if.end11.i.if.then42.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %116 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool17.not.i = icmp eq i8 %116, 0
  br i1 %tobool17.not.i, label %if.end43.i, label %do.end.i, !prof !105

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1629, i32 noundef 9, ptr noundef null) #10
  br label %if.then42.i

if.then42.i:                                      ; preds = %do.end.i, %if.end11.i.if.then42.i_crit_edge
  %117 = ptrtoint ptr %err.i86 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -114, ptr %err.i86, align 4
  br label %for.end.i

if.end43.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i = or i8 %bf.load.i, 32
  %118 = ptrtoint ptr %unattaching.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %bf.set.i, ptr %unattaching.i, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  call fastcc void @kcm_unattach(ptr noundef %psock.0.i.le) #10
  %119 = ptrtoint ptr %err.i86 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %err.i86, align 4
  br label %out.i90

for.end.i:                                        ; preds = %if.then42.i, %for.cond.i.for.end.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %out.i90

out.i90:                                          ; preds = %for.end.i, %if.end43.i, %if.then5.i
  %file.i89 = getelementptr inbounds %struct.socket, ptr %call2.i, i32 0, i32 3
  %120 = ptrtoint ptr %file.i89 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %file.i89, align 4
  call void @fput(ptr noundef %121) #10
  %122 = ptrtoint ptr %err.i86 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %err.i86, align 4
  br label %cleanup9.thread

cleanup9.thread:                                  ; preds = %out.i90, %if.end7.cleanup9.thread_crit_edge
  %retval.0.i91 = phi i32 [ %123, %out.i90 ], [ -2, %if.end7.cleanup9.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i86) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info3) #10
  br label %cleanup35

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info12) #10
  %call13 = tail call i32 @get_unused_fd_flags(i32 noundef 0) #10
  %124 = ptrtoint ptr %info12 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call13, ptr %info12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %sw.bb11.cleanup32.thread_crit_edge, label %if.end19, !prof !116

sw.bb11.cleanup32.thread_crit_edge:               ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32.thread

if.end19:                                         ; preds = %sw.bb11
  %call.i92 = tail call ptr @sock_alloc() #10
  %tobool.not.i93 = icmp eq ptr %call.i92, null
  br i1 %tobool.not.i93, label %if.end19.if.then22_crit_edge, label %if.end.i95

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end.i95:                                       ; preds = %if.end19
  %type.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %125 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.socket, ptr %call.i92, i32 0, i32 1
  %127 = ptrtoint ptr %type2.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %type2.i, align 4
  %ops.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %128 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i, align 4
  %ops3.i = getelementptr inbounds %struct.socket, ptr %call.i92, i32 0, i32 5
  %130 = ptrtoint ptr %ops3.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %ops3.i, align 4
  %owner.i = getelementptr inbounds %struct.proto_ops, ptr %129, i32 0, i32 1
  %131 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %132) #10
  %sk.i94 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %133 = ptrtoint ptr %sk.i94 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sk.i94, align 16
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %134, i32 0, i32 9
  %135 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %skc_net.i.i, align 4
  %call6.i = tail call ptr @sk_alloc(ptr noundef %136, i32 noundef 41, i32 noundef 3264, ptr noundef nonnull @kcm_proto, i32 noundef 0) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then8.i96, label %kcm_clone.exit

if.then8.i96:                                     ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sock_release(ptr noundef nonnull %call.i92) #10
  br label %if.then22

kcm_clone.exit:                                   ; preds = %if.end.i95
  tail call void @sock_init_data(ptr noundef nonnull %call.i92, ptr noundef nonnull %call6.i) #10
  %137 = ptrtoint ptr %sk.i94 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sk.i94, align 16
  %mux.i = getelementptr inbounds %struct.kcm_sock, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mux.i, align 8
  tail call fastcc void @init_kcm_sock(ptr noundef nonnull %call6.i, ptr noundef %140) #10
  %141 = ptrtoint ptr %sk.i94 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sk.i94, align 16
  %sk_prot_creator.i = getelementptr inbounds %struct.sock, ptr %142, i32 0, i32 49
  %143 = ptrtoint ptr %sk_prot_creator.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sk_prot_creator.i, align 4
  %name.i = getelementptr inbounds %struct.proto, ptr %144, i32 0, i32 52
  %call15.i = tail call ptr @sock_alloc_file(ptr noundef nonnull %call.i92, i32 noundef 0, ptr noundef %name.i) #10
  %cmp.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %kcm_clone.exit.if.then22_crit_edge, label %if.end25

kcm_clone.exit.if.then22_crit_edge:               ; preds = %kcm_clone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %kcm_clone.exit.if.then22_crit_edge, %if.then8.i96, %if.end19.if.then22_crit_edge
  %retval.0.i97116 = phi ptr [ %call15.i, %kcm_clone.exit.if.then22_crit_edge ], [ inttoptr (i32 -23 to ptr), %if.end19.if.then22_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then8.i96 ]
  %145 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %info12, align 4
  tail call void @put_unused_fd(i32 noundef %146) #10
  %147 = ptrtoint ptr %retval.0.i97116 to i32
  br label %cleanup32.thread

if.end25:                                         ; preds = %kcm_clone.exit
  %148 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #10
  %call.i.i74 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i74, label %if.end25.if.then28_crit_edge, label %if.end.i.i77

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end.i.i77:                                     ; preds = %if.end25
  %149 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %148, i32 4, i32 -1226833920) #13, !srcloc !118
  %asmresult.i.i75 = extractvalue { i32, i32 } %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i75)
  %cmp.i6.i76 = icmp eq i32 %asmresult.i.i75, 0
  br i1 %cmp.i6.i76, label %copy_to_user.exit, label %if.end.i.i77.if.then28_crit_edge

if.end.i.i77.if.then28_crit_edge:                 ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

copy_to_user.exit:                                ; preds = %if.end.i.i77
  %call.i.i.i78 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info12, i32 noundef 4) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %148, ptr noundef nonnull %info12, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool27.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool27.not, label %cleanup32, label %copy_to_user.exit.if.then28_crit_edge

copy_to_user.exit.if.then28_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %copy_to_user.exit.if.then28_crit_edge, %if.end.i.i77.if.then28_crit_edge, %if.end25.if.then28_crit_edge
  %150 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %info12, align 4
  call void @put_unused_fd(i32 noundef %151) #10
  call void @fput(ptr noundef %call15.i) #10
  br label %cleanup32.thread

cleanup32.thread:                                 ; preds = %if.then28, %if.then22, %sw.bb11.cleanup32.thread_crit_edge
  %retval.2.ph = phi i32 [ %call13, %sw.bb11.cleanup32.thread_crit_edge ], [ -14, %if.then28 ], [ %147, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info12) #10
  br label %cleanup35

cleanup32:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %info12, align 4
  call void @fd_install(i32 noundef %153, ptr noundef %call15.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info12) #10
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup32, %cleanup32.thread, %cleanup9.thread, %if.then11.i.i67, %cleanup.thread, %if.then11.i.i, %entry.cleanup35_crit_edge
  %retval.3 = phi i32 [ -14, %if.then11.i.i67 ], [ -14, %if.then11.i.i ], [ %retval.2.ph, %cleanup32.thread ], [ 0, %cleanup32 ], [ -515, %entry.cleanup35_crit_edge ], [ %retval.0.i, %cleanup.thread ], [ %retval.0.i91, %cleanup9.thread ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 281, i32 %level)
  %cmp.not = icmp eq i32 %level, 281
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp1 = icmp ult i32 %optlen, 4
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #10
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #13, !srcloc !111
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !105

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #10
  %5 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !112
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #10, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %3, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #10, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end6_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !105

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end6_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i3.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i3.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond16 = icmp eq i32 %optname, 1
  br i1 %cond16, label %sw.bb, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  br i1 %tobool7.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %sw.bb
  %mux1.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux1.i, align 8
  %rx_disabled.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %rx_disabled.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %rx_disabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.if.end11_crit_edge

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i:                                         ; preds = %if.then10
  %rx_lock.i = getelementptr inbounds %struct.kcm_mux, ptr %15, i32 0, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #10
  %17 = ptrtoint ptr %rx_disabled.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load3.i = load i8, ptr %rx_disabled.i, align 1
  %bf.set.i = or i8 %bf.load3.i, -128
  store i8 %bf.set.i, ptr %rx_disabled.i, align 1
  %rx_psock.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %rx_psock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_psock.i, align 8
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  %rx_wait.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %rx_wait.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_wait.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not.i = icmp eq i8 %21, 0
  br i1 %tobool6.not.i, label %if.then5.i.if.end9.i_crit_edge, label %if.then7.i

if.then5.i.if.end9.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.then5.i
  %wait_rx_list.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %wait_rx_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.list_del.exit.i_crit_edge

if.then7.i.list_del.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 15, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %wait_rx_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wait_rx_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then7.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %wait_rx_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %wait_rx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 15, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %rx_wait.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %rx_wait.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %list_del.exit.i, %if.then5.i.if.end9.i_crit_edge
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  call fastcc void @requeue_rx_msgs(ptr noundef %15, ptr noundef %sk_receive_queue.i) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end9.i, %if.end.i.if.end10.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #10
  br label %if.end11

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @kcm_recv_enable(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end10.i, %if.then10.if.end11_crit_edge
  call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.then11.i.i.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end11 ], [ -92, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 281, i32 %level)
  %cmp.not = icmp eq i32 %level, 281
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1311) #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !112
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #10, !srcloc !119
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  %6 = tail call i32 @llvm.umin.i32(i32 %asmresult2, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond29 = icmp eq i32 %optname, 1
  br i1 %cond29, label %sw.bb, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  %rx_disabled = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %rx_disabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %rx_disabled, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.cast, ptr %val, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1326) #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i36 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i36 to ptr
  %cpu_domain.i.i37 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i37) #5, !srcloc !112
  %and.i38 = and i32 %11, -13
  %or.i39 = or i32 %and.i38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i39) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %6, i32 -1226833921) #10, !srcloc !120
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %if.then.i.i.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.bb
  call void @__check_object_size(ptr noundef nonnull %val, i32 noundef %6, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %6, i32 -1226833920) #13, !srcloc !118
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef %6) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef %6) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %6, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %6, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool24.not = icmp eq i32 %n.addr.0.i, 0
  %. = select i1 %tobool24.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -92, %if.end5.cleanup_crit_edge ], [ -14, %sw.bb.cleanup_crit_edge ], [ %., %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #2 align 64 {
entry:
  %csum.i.i = alloca i32, align 4
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_flags, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %5, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  %6 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %timeo, align 4
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp = icmp eq i16 %8, 2
  %and5 = lshr i32 %3, 15
  %and5.lobit = and i32 %and5, 1
  %9 = xor i32 %and5.lobit, 1
  %and8 = lshr i32 %3, 7
  %and8.lobit = and i32 %and8, 1
  %cond = select i1 %cmp, i32 %9, i32 %and8.lobit
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge, label %if.end.i

sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge:   ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_clear_bit.exit

if.end.i:                                         ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %16, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #10
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i, %sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %17 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.end, label %sk_clear_bit.exit.out_error_crit_edge

sk_clear_bit.exit.out_error_crit_edge:            ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end:                                           ; preds = %sk_clear_bit.exit
  %seq_skb = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %seq_skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %seq_skb, align 8
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %last_skb = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 20
  %21 = ptrtoint ptr %last_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %last_skb, align 4
  br label %start

if.end19:                                         ; preds = %if.end
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 22
  %23 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %25 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not.i.i = icmp slt i32 %24, %26
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end19.if.then21_crit_edge

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.end.i.i:                                       ; preds = %if.end19
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_prot.i.i, align 8
  %stream_memory_free.i.i = getelementptr inbounds %struct.proto, ptr %28, i32 0, i32 28
  %29 = ptrtoint ptr %stream_memory_free.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream_memory_free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end26_crit_edge, label %sk_stream_memory_free.exit

if.end.i.i.if.end26_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

sk_stream_memory_free.exit:                       ; preds = %if.end.i.i
  %call.i.i = tail call zeroext i1 %30(ptr noundef %1, i32 noundef 0) #10
  br i1 %call.i.i, label %sk_stream_memory_free.exit.if.end26_crit_edge, label %sk_stream_memory_free.exit.if.then21_crit_edge

sk_stream_memory_free.exit.if.then21_crit_edge:   ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sk_stream_memory_free.exit.if.end26_crit_edge:    ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21:                                        ; preds = %sk_stream_memory_free.exit.if.then21_crit_edge, %if.end19.if.then21_crit_edge
  %tx_wait_more.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %tx_wait_more.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx_wait_more.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.then21.kcm_push.exit_crit_edge, label %if.then.i

if.then21.kcm_push.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_push.exit

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc i32 @kcm_write_msgs(ptr noundef %1) #10
  br label %kcm_push.exit

kcm_push.exit:                                    ; preds = %if.then.i, %if.then21.kcm_push.exit_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %33 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %34, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  %call22 = call i32 @sk_stream_wait_memory(ptr noundef %1, ptr noundef nonnull %timeo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %kcm_push.exit.if.end26_crit_edge, label %kcm_push.exit.out_error_crit_edge

kcm_push.exit.out_error_crit_edge:                ; preds = %kcm_push.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

kcm_push.exit.if.end26_crit_edge:                 ; preds = %kcm_push.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %kcm_push.exit.if.end26_crit_edge, %sk_stream_memory_free.exit.if.end26_crit_edge, %if.end.i.i.if.end26_crit_edge
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool28.not = icmp eq i32 %36, 0
  br i1 %tobool28.not, label %if.end26.start_crit_edge, label %if.then29

if.end26.start_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %start

if.then29:                                        ; preds = %if.end26
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %37 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_allocation, align 8
  %call.i312 = call ptr @__alloc_skb(i32 noundef 0, i32 noundef %38, i32 noundef 0, i32 noundef -1) #10
  %tobool31.not399 = icmp eq ptr %call.i312, null
  br i1 %tobool31.not399, label %while.body.lr.ph, label %if.then29.while.end_crit_edge

if.then29.while.end_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then29
  %tx_wait_more.i313 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.lr.ph
  %39 = ptrtoint ptr %tx_wait_more.i313 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_wait_more.i313, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i314 = icmp eq i8 %40, 0
  br i1 %tobool.not.i314, label %while.body.kcm_push.exit318_crit_edge, label %if.then.i316

while.body.kcm_push.exit318_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_push.exit318

if.then.i316:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i315 = call fastcc i32 @kcm_write_msgs(ptr noundef %1) #10
  br label %kcm_push.exit318

kcm_push.exit318:                                 ; preds = %if.then.i316, %while.body.kcm_push.exit318_crit_edge
  %call34 = call i32 @sk_stream_wait_memory(ptr noundef %1, ptr noundef nonnull %timeo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %kcm_push.exit318.out_error_crit_edge

kcm_push.exit318.out_error_crit_edge:             ; preds = %kcm_push.exit318
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end37:                                         ; preds = %kcm_push.exit318
  %41 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sk_allocation, align 8
  %call.i319 = call ptr @__alloc_skb(i32 noundef 0, i32 noundef %42, i32 noundef 0, i32 noundef -1) #10
  %tobool31.not = icmp eq ptr %call.i319, null
  br i1 %tobool31.not, label %if.end37.while.body_crit_edge, label %if.end37.while.end_crit_edge

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end37.while.end_crit_edge, %if.then29.while.end_crit_edge
  %head.0.lcssa = phi ptr [ %call.i312, %if.then29.while.end_crit_edge ], [ %call.i319, %if.end37.while.end_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %head.0.lcssa, i32 0, i32 15
  %43 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %start

start:                                            ; preds = %while.end, %if.end26.start_crit_edge, %if.then16
  %skb.0 = phi ptr [ %22, %if.then16 ], [ %head.0.lcssa, %while.end ], [ null, %if.end26.start_crit_edge ]
  %head.1 = phi ptr [ %20, %if.then16 ], [ %head.0.lcssa, %while.end ], [ null, %if.end26.start_crit_edge ]
  %count.i.i320 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %count.i.i320 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i.i320, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool43.not400 = icmp eq i32 %45, 0
  br i1 %tobool43.not400, label %start.while.end122_crit_edge, label %while.body44.lr.ph

start.while.end122_crit_edge:                     ; preds = %start
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end122

while.body44.lr.ph:                               ; preds = %start
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %sk_frag.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 37
  %skc_prot.i.i330 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 11
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %sk_route_caps.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 38
  %sk_wmem_queued.i.i338 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 22
  %len110 = getelementptr inbounds %struct.sk_buff, ptr %head.1, i32 0, i32 6
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %head.1, i32 0, i32 7
  %end.i328 = getelementptr inbounds %struct.sk_buff, ptr %head.1, i32 0, i32 17
  %tx_wait_more.i357 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  br label %while.body44

while.body44:                                     ; preds = %cleanup118.while.body44_crit_edge, %while.body44.lr.ph
  %copied.0404 = phi i32 [ 0, %while.body44.lr.ph ], [ %copied.1, %cleanup118.while.body44_crit_edge ]
  %skb.1401 = phi ptr [ %skb.0, %while.body44.lr.ph ], [ %skb.4, %cleanup118.while.body44_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1401, i32 0, i32 17
  %46 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nr_frags, align 2
  %conv46 = zext i8 %49 to i32
  %50 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_allocation.i, align 8
  %and.i = and i32 %51, 132224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1152
  br i1 %cmp.i, label %if.then.i321, label %while.body44.sk_page_frag.exit_crit_edge

while.body44.sk_page_frag.exit_crit_edge:         ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_page_frag.exit

if.then.i321:                                     ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i, align 8
  %task_frag.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 180
  br label %sk_page_frag.exit

sk_page_frag.exit:                                ; preds = %if.then.i321, %while.body44.sk_page_frag.exit_crit_edge
  %retval.0.i = phi ptr [ %task_frag.i, %if.then.i321 ], [ %sk_frag.i, %while.body44.sk_page_frag.exit_crit_edge ]
  %call48 = call zeroext i1 @sk_page_frag_refill(ptr noundef %1, ptr noundef %retval.0.i) #10
  br i1 %call48, label %if.end50, label %sk_page_frag.exit.wait_for_memory_crit_edge

sk_page_frag.exit.wait_for_memory_crit_edge:      ; preds = %sk_page_frag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end50:                                         ; preds = %sk_page_frag.exit
  %56 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %retval.0.i, align 4
  %offset = getelementptr inbounds %struct.page_frag, ptr %retval.0.i, i32 0, i32 1
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %offset, align 4
  %conv51 = zext i16 %59 to i32
  %tobool.not.i.i323 = icmp eq ptr %skb.1401, null
  br i1 %tobool.not.i.i323, label %if.end50.skb_zcopy.exit.i_crit_edge, label %land.rhs.i.i

if.end50.skb_zcopy.exit.i_crit_edge:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_zcopy.exit.i

land.rhs.i.i:                                     ; preds = %if.end50
  %60 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %end.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 8
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool1.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.skb_zcopy.exit.i_crit_edge, label %cond.true.i.i324

land.rhs.i.i.skb_zcopy.exit.i_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_zcopy.exit.i

cond.true.i.i324:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 11
  %65 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %destructor_arg.i.i, align 4
  %phi.cmp.i = icmp ne ptr %66, null
  br label %skb_zcopy.exit.i

skb_zcopy.exit.i:                                 ; preds = %cond.true.i.i324, %land.rhs.i.i.skb_zcopy.exit.i_crit_edge, %if.end50.skb_zcopy.exit.i_crit_edge
  %cond.i.i = phi i1 [ %phi.cmp.i, %cond.true.i.i324 ], [ false, %land.rhs.i.i.skb_zcopy.exit.i_crit_edge ], [ false, %if.end50.skb_zcopy.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool1.not.i = icmp eq i8 %49, 0
  %or.cond.i = or i1 %tobool1.not.i, %cond.i.i
  br i1 %or.cond.i, label %skb_zcopy.exit.i.skb_can_coalesce.exit_crit_edge, label %if.then2.i

skb_zcopy.exit.i.skb_can_coalesce.exit_crit_edge: ; preds = %skb_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_can_coalesce.exit

if.then2.i:                                       ; preds = %skb_zcopy.exit.i
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %sub.i = add nsw i32 %conv46, -1
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %68, i32 0, i32 12, i32 %sub.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i325 = icmp eq ptr %70, %57
  br i1 %cmp.i325, label %land.rhs.i, label %if.then2.i.skb_can_coalesce.exit_crit_edge

if.then2.i.skb_can_coalesce.exit_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_can_coalesce.exit

land.rhs.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %68, i32 0, i32 12, i32 %sub.i, i32 2
  %71 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %68, i32 0, i32 12, i32 %sub.i, i32 1
  %73 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bv_len.i.i, align 4
  %add.i = add i32 %74, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv51)
  %cmp7.i = icmp eq i32 %add.i, %conv51
  br label %skb_can_coalesce.exit

skb_can_coalesce.exit:                            ; preds = %land.rhs.i, %if.then2.i.skb_can_coalesce.exit_crit_edge, %skb_zcopy.exit.i.skb_can_coalesce.exit_crit_edge
  %retval.0.i326 = phi i1 [ false, %skb_zcopy.exit.i.skb_can_coalesce.exit_crit_edge ], [ false, %if.then2.i.skb_can_coalesce.exit_crit_edge ], [ %cmp7.i, %land.rhs.i ]
  %call52.not = xor i1 %retval.0.i326, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %49)
  %cmp54 = icmp eq i8 %49, 17
  %or.cond = select i1 %call52.not, i1 %cmp54, i1 false
  br i1 %or.cond, label %if.then56, label %if.end72

if.then56:                                        ; preds = %skb_can_coalesce.exit
  %75 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sk_allocation.i, align 8
  %call.i327 = call ptr @__alloc_skb(i32 noundef 0, i32 noundef %76, i32 noundef 0, i32 noundef -1) #10
  %tobool59.not = icmp eq ptr %call.i327, null
  br i1 %tobool59.not, label %if.then56.wait_for_memory_crit_edge, label %if.end61

if.then56.wait_for_memory_crit_edge:              ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end61:                                         ; preds = %if.then56
  %cmp62 = icmp eq ptr %head.1, %skb.1401
  br i1 %cmp62, label %if.then64, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %end.i328 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i328, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 6
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end61.cleanup_crit_edge
  %frag_list.sink = phi ptr [ %frag_list, %if.then64 ], [ %skb.1401, %if.end61.cleanup_crit_edge ]
  %79 = ptrtoint ptr %frag_list.sink to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i327, ptr %frag_list.sink, align 8
  %ip_summed67 = getelementptr inbounds %struct.sk_buff, ptr %call.i327, i32 0, i32 15
  %80 = ptrtoint ptr %ip_summed67 to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load68 = load i16, ptr %ip_summed67, align 8
  %bf.clear69 = and i16 %bf.load68, -1537
  %bf.set70 = or i16 %bf.clear69, 512
  store i16 %bf.set70, ptr %ip_summed67, align 8
  br label %cleanup118

if.end72:                                         ; preds = %skb_can_coalesce.exit
  %81 = ptrtoint ptr %count.i.i320 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count.i.i320, align 8
  %size = getelementptr inbounds %struct.page_frag, ptr %retval.0.i, i32 0, i32 2
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %size, align 2
  %conv74 = zext i16 %84 to i32
  %sub = sub nsw i32 %conv74, %conv51
  %85 = call i32 @llvm.smin.i32(i32 %82, i32 %sub)
  %86 = ptrtoint ptr %skc_prot.i.i330 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %skc_prot.i.i330, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %87, i32 0, i32 32
  %88 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i331 = icmp eq ptr %89, null
  br i1 %tobool.i.not.i331, label %if.end72.if.end85_crit_edge, label %if.end.i332

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.end.i332:                                      ; preds = %if.end72
  %90 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sk_forward_alloc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %85)
  %cmp.not.i = icmp slt i32 %91, %85
  br i1 %cmp.not.i, label %sk_wmem_schedule.exit, label %if.end.i332.if.end85_crit_edge

if.end.i332.if.end85_crit_edge:                   ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

sk_wmem_schedule.exit:                            ; preds = %if.end.i332
  %call1.i = call i32 @__sk_mem_schedule(ptr noundef %1, i32 noundef %85, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %sk_wmem_schedule.exit.wait_for_memory_crit_edge, label %sk_wmem_schedule.exit.if.end85_crit_edge

sk_wmem_schedule.exit.if.end85_crit_edge:         ; preds = %sk_wmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

sk_wmem_schedule.exit.wait_for_memory_crit_edge:  ; preds = %sk_wmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end85:                                         ; preds = %sk_wmem_schedule.exit.if.end85_crit_edge, %if.end.i332.if.end85_crit_edge, %if.end72.if.end85_crit_edge
  %92 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %retval.0.i, align 4
  %94 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %offset, align 4
  %conv88 = zext i16 %95 to i32
  %call.i334 = call ptr @page_address(ptr noundef %93) #10
  %add.ptr.i = getelementptr i8, ptr %call.i334, i32 %conv88
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1401, i32 0, i32 6
  %96 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1401, i32 0, i32 15
  %98 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %99 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp.i.i = icmp eq i16 %99, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csum.i.i) #10
  %100 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %csum.i.i, align 4
  %call.i.i.i = call i32 @csum_and_copy_from_iter(ptr noundef %add.ptr.i, i32 noundef %85, ptr noundef nonnull %csum.i.i, ptr noundef %msg_iter) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %85)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, %85
  br i1 %cmp.i.i.i, label %cleanup.thread.i.i, label %cleanup.i.i, !prof !105

cleanup.thread.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = getelementptr inbounds %struct.sk_buff, ptr %skb.1401, i32 0, i32 15, i32 0, i32 5
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 8
  %104 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %csum.i.i, align 4
  %and.i.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %or.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 24) #10
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %105, i32 %or.i.i.i.i.i
  %add.i.i.i.i = add i32 %retval.0.i.i.i.i, %103
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %retval.0.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %retval.0.i.i.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add1.i.i.i.i, ptr %101, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum.i.i) #10
  br label %if.end.i339

cleanup.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %call.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum.i.i) #10
  br label %out_error

if.else.i.i:                                      ; preds = %if.end85
  %107 = ptrtoint ptr %sk_route_caps.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %sk_route_caps.i.i, align 8
  %and.i.i335 = and i64 %108, 2199023255552
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i335)
  %tobool.not.i.i336 = icmp eq i64 %and.i.i335, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp9.i.i.i31.i.i = icmp slt i32 %85, 0
  br i1 %tobool.not.i.i336, label %if.end8.i.i.i32.i.i, label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.else.i.i
  br i1 %cmp9.i.i.i31.i.i, label %land.rhs16.i.i.i.i.i, label %if.then.i.i.i.i.i.i

land.rhs16.i.i.i.i.i:                             ; preds = %if.end8.i.i.i.i.i
  %.b71.i.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i.i, label %land.rhs16.i.i.i.i.i.copy_from_iter_nocache.exit.i.i.i_crit_edge, label %if.then27.i.i.i.i.i, !prof !105

land.rhs16.i.i.i.i.i.copy_from_iter_nocache.exit.i.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter_nocache.exit.i.i.i

if.then27.i.i.i.i.i:                              ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter_nocache.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %85, i1 noundef zeroext false) #10
  %call3.i.i.i.i = call i32 @_copy_from_iter_nocache(ptr noundef %add.ptr.i, i32 noundef %85, ptr noundef %msg_iter) #10
  br label %copy_from_iter_nocache.exit.i.i.i

copy_from_iter_nocache.exit.i.i.i:                ; preds = %if.then.i.i.i.i.i.i, %if.then27.i.i.i.i.i, %land.rhs16.i.i.i.i.i.copy_from_iter_nocache.exit.i.i.i_crit_edge
  %retval.0.i.i22.i.i = phi i32 [ %call3.i.i.i.i, %if.then.i.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.i.copy_from_iter_nocache.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i22.i.i, i32 %85)
  %cmp.i23.i.i = icmp eq i32 %retval.0.i.i22.i.i, %85
  br i1 %cmp.i23.i.i, label %copy_from_iter_nocache.exit.i.i.i.if.end.i339_crit_edge, label %copy_from_iter_full_nocache.exit.i.i, !prof !105

copy_from_iter_nocache.exit.i.i.i.if.end.i339_crit_edge: ; preds = %copy_from_iter_nocache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i339

copy_from_iter_full_nocache.exit.i.i:             ; preds = %copy_from_iter_nocache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i22.i.i) #10
  br label %out_error

if.end8.i.i.i32.i.i:                              ; preds = %if.else.i.i
  br i1 %cmp9.i.i.i31.i.i, label %land.rhs16.i.i.i34.i.i, label %if.then.i.i.i.i37.i.i

land.rhs16.i.i.i34.i.i:                           ; preds = %if.end8.i.i.i32.i.i
  %.b71.i.i.i33.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i33.i.i, label %land.rhs16.i.i.i34.i.i.copy_from_iter.exit.i.i.i_crit_edge, label %if.then27.i.i.i35.i.i, !prof !105

land.rhs16.i.i.i34.i.i.copy_from_iter.exit.i.i.i_crit_edge: ; preds = %land.rhs16.i.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter.exit.i.i.i

if.then27.i.i.i35.i.i:                            ; preds = %land.rhs16.i.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter.exit.i.i.i

if.then.i.i.i.i37.i.i:                            ; preds = %if.end8.i.i.i32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %85, i1 noundef zeroext false) #10
  %call3.i.i38.i.i = call i32 @_copy_from_iter(ptr noundef %add.ptr.i, i32 noundef %85, ptr noundef %msg_iter) #10
  br label %copy_from_iter.exit.i.i.i

copy_from_iter.exit.i.i.i:                        ; preds = %if.then.i.i.i.i37.i.i, %if.then27.i.i.i35.i.i, %land.rhs16.i.i.i34.i.i.copy_from_iter.exit.i.i.i_crit_edge
  %retval.0.i.i40.i.i = phi i32 [ %call3.i.i38.i.i, %if.then.i.i.i.i37.i.i ], [ 0, %if.then27.i.i.i35.i.i ], [ 0, %land.rhs16.i.i.i34.i.i.copy_from_iter.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i40.i.i, i32 %85)
  %cmp.i41.i.i = icmp eq i32 %retval.0.i.i40.i.i, %85
  br i1 %cmp.i41.i.i, label %copy_from_iter.exit.i.i.i.if.end.i339_crit_edge, label %copy_from_iter_full.exit.i.i, !prof !105

copy_from_iter.exit.i.i.i.if.end.i339_crit_edge:  ; preds = %copy_from_iter.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i339

copy_from_iter_full.exit.i.i:                     ; preds = %copy_from_iter.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i40.i.i) #10
  br label %out_error

if.end.i339:                                      ; preds = %copy_from_iter.exit.i.i.i.if.end.i339_crit_edge, %copy_from_iter_nocache.exit.i.i.i.if.end.i339_crit_edge, %cleanup.thread.i.i
  %109 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len.i, align 4
  %add.i337 = add i32 %110, %85
  store i32 %add.i337, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1401, i32 0, i32 7
  %111 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_len.i, align 8
  %add3.i = add i32 %112, %85
  store i32 %add3.i, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1401, i32 0, i32 20
  %113 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %truesize.i, align 8
  %add4.i = add i32 %114, %85
  store i32 %add4.i, ptr %truesize.i, align 8
  %115 = ptrtoint ptr %sk_wmem_queued.i.i338 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sk_wmem_queued.i.i338, align 8
  %add.i.i = add i32 %116, %85
  store volatile i32 %add.i.i, ptr %sk_wmem_queued.i.i338, align 8
  %117 = ptrtoint ptr %skc_prot.i.i330 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %skc_prot.i.i330, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %118, i32 0, i32 32
  %119 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %120, null
  br i1 %tobool.i.not.i.i, label %if.end.i339.if.end92_crit_edge, label %if.end.i.i340

if.end.i339.if.end92_crit_edge:                   ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.end.i.i340:                                    ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i.i = sub i32 %122, %85
  store i32 %sub.i.i, ptr %sk_forward_alloc.i, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.end.i.i340, %if.end.i339.if.end92_crit_edge
  br i1 %retval.0.i326, label %if.then94, label %if.else97

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %end.i, align 4
  %sub96 = add nsw i32 %conv46, -1
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %124, i32 0, i32 12, i32 %sub96, i32 1
  %125 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bv_len.i, align 4
  %add.i343 = add i32 %126, %85
  store i32 %add.i343, ptr %bv_len.i, align 4
  br label %if.end102

if.else97:                                        ; preds = %if.end92
  %127 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %retval.0.i, align 4
  %129 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %offset, align 4
  %conv100 = zext i16 %130 to i32
  %131 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %132, i32 0, i32 12, i32 %conv46
  %133 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %128, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i345 = getelementptr %struct.skb_shared_info, ptr %132, i32 0, i32 12, i32 %conv46, i32 2
  %134 = ptrtoint ptr %bv_offset.i.i345 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv100, ptr %bv_offset.i.i345, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %132, i32 0, i32 12, i32 %conv46, i32 1
  %135 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %85, ptr %bv_len.i.i.i, align 4
  %136 = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %136, align 4
  %and.i.i.i = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !105

if.then.i.i.i:                                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %138, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %139, %if.end.i.i.i ]
  %140 = inttoptr i32 %retval.0.i.i.i to ptr
  %141 = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 1
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %144 = ptrtoint ptr %143 to i32
  %and.i8.i.i = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i346 = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i346, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i348

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_fill_page_desc.exit

if.then.i.i348:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1401, i32 0, i32 12
  %145 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load.i.i347 = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i347, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i348, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %conv.i = add i8 %49, 1
  %146 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %149 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %retval.0.i, align 4
  %151 = getelementptr inbounds %struct.page, ptr %150, i32 0, i32 1
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %151, align 4
  %and.i.i349 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i349)
  %tobool.not.i.i350 = icmp eq i32 %and.i.i349, 0
  br i1 %tobool.not.i.i350, label %if.end.i.i353, label %if.then.i.i352, !prof !105

if.then.i.i352:                                   ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i351 = add i32 %153, -1
  br label %_compound_head.exit.i

if.end.i.i353:                                    ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %154 = ptrtoint ptr %150 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i353, %if.then.i.i352
  %retval.0.i.i354 = phi i32 [ %sub.i.i351, %if.then.i.i352 ], [ %154, %if.end.i.i353 ]
  %155 = inttoptr i32 %retval.0.i.i354 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %155, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %156 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i355 = add i32 %157, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i355)
  %cmp.i.i356 = icmp ult i32 %add.i.i355, 128
  br i1 %cmp.i.i356, label %if.then.i1.i, label %do.end5.i.i, !prof !116

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = inttoptr i32 %retval.0.i.i354 to ptr
  call void @dump_page(ptr noundef %158, ptr noundef nonnull @.str.22) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !121
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %159 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@kcm_sendmsg, %if.then.i.i.i.i)) #10
          to label %if.end102 [label %if.then.i.i.i.i], !srcloc !123

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__page_ref_mod(ptr noundef %155, i32 noundef 1) #10
  br label %if.end102

if.end102:                                        ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.then94
  %160 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %offset, align 4
  %162 = trunc i32 %85 to i16
  %conv105 = add i16 %161, %162
  store i16 %conv105, ptr %offset, align 4
  %add106 = add i32 %85, %copied.0404
  %cmp107.not = icmp eq ptr %head.1, %skb.1401
  br i1 %cmp107.not, label %if.end102.cleanup118_crit_edge, label %if.then109

if.end102.cleanup118_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup118

if.then109:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %len110 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len110, align 4
  %add111 = add i32 %164, %85
  store i32 %add111, ptr %len110, align 4
  %165 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data_len, align 8
  %add112 = add i32 %166, %85
  store i32 %add112, ptr %data_len, align 8
  br label %cleanup118

wait_for_memory:                                  ; preds = %sk_wmem_schedule.exit.wait_for_memory_crit_edge, %if.then56.wait_for_memory_crit_edge, %sk_page_frag.exit.wait_for_memory_crit_edge
  %167 = ptrtoint ptr %tx_wait_more.i357 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %tx_wait_more.i357, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i358 = icmp eq i8 %168, 0
  br i1 %tobool.not.i358, label %wait_for_memory.kcm_push.exit362_crit_edge, label %if.then.i360

wait_for_memory.kcm_push.exit362_crit_edge:       ; preds = %wait_for_memory
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_push.exit362

if.then.i360:                                     ; preds = %wait_for_memory
  call void @__sanitizer_cov_trace_pc() #12
  %call.i359 = call fastcc i32 @kcm_write_msgs(ptr noundef %1) #10
  br label %kcm_push.exit362

kcm_push.exit362:                                 ; preds = %if.then.i360, %wait_for_memory.kcm_push.exit362_crit_edge
  %call114 = call i32 @sk_stream_wait_memory(ptr noundef %1, ptr noundef nonnull %timeo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %kcm_push.exit362.cleanup118_crit_edge, label %kcm_push.exit362.out_error_crit_edge

kcm_push.exit362.out_error_crit_edge:             ; preds = %kcm_push.exit362
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

kcm_push.exit362.cleanup118_crit_edge:            ; preds = %kcm_push.exit362
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup118

cleanup118:                                       ; preds = %kcm_push.exit362.cleanup118_crit_edge, %if.then109, %if.end102.cleanup118_crit_edge, %cleanup
  %skb.4 = phi ptr [ %call.i327, %cleanup ], [ %skb.1401, %if.then109 ], [ %head.1, %if.end102.cleanup118_crit_edge ], [ %skb.1401, %kcm_push.exit362.cleanup118_crit_edge ]
  %copied.1 = phi i32 [ %copied.0404, %cleanup ], [ %add106, %if.then109 ], [ %add106, %if.end102.cleanup118_crit_edge ], [ %copied.0404, %kcm_push.exit362.cleanup118_crit_edge ]
  %169 = ptrtoint ptr %count.i.i320 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %count.i.i320, align 8
  %tobool43.not = icmp eq i32 %170, 0
  br i1 %tobool43.not, label %cleanup118.while.end122_crit_edge, label %cleanup118.while.body44_crit_edge

cleanup118.while.body44_crit_edge:                ; preds = %cleanup118
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body44

cleanup118.while.end122_crit_edge:                ; preds = %cleanup118
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end122

while.end122:                                     ; preds = %cleanup118.while.end122_crit_edge, %start.while.end122_crit_edge
  %skb.1.lcssa = phi ptr [ %skb.0, %start.while.end122_crit_edge ], [ %skb.4, %cleanup118.while.end122_crit_edge ]
  %copied.0.lcssa = phi i32 [ 0, %start.while.end122_crit_edge ], [ %copied.1, %cleanup118.while.end122_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool123.not = icmp eq i32 %cond, 0
  br i1 %tobool123.not, label %while.end122.partial_message_crit_edge, label %if.then124

while.end122.partial_message_crit_edge:           ; preds = %while.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %partial_message

if.then124:                                       ; preds = %while.end122
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26
  %171 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i363.not = icmp eq ptr %172, %sk_write_queue
  %tobool127.not = icmp eq ptr %head.1, null
  br i1 %tobool127.not, label %if.then124.if.end131_crit_edge, label %if.then128

if.then124.if.end131_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then128:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 1
  %173 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i.i, align 4
  %175 = ptrtoint ptr %head.1 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %sk_write_queue, ptr %head.1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.144, ptr %head.1, i32 0, i32 1
  %176 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %174, ptr %prev10.i.i.i, align 4
  store volatile ptr %head.1, ptr %prev.i.i, align 4
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %head.1, ptr %174, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 1
  %178 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %179, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %180 = ptrtoint ptr %seq_skb to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %seq_skb, align 8
  %tx_msgs = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 6, i32 2
  %181 = ptrtoint ptr %tx_msgs to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %tx_msgs, align 8
  %inc = add i64 %182, 1
  store i64 %inc, ptr %tx_msgs, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.then124.if.end131_crit_edge
  %183 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %msg_flags, align 4
  %and133 = and i32 %184, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  %tx_wait_more137 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  br i1 %tobool134.not, label %if.else136, label %if.then135

if.then135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %tx_wait_more137 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %tx_wait_more137, align 2
  br label %if.end161

if.else136:                                       ; preds = %if.end131
  %186 = ptrtoint ptr %tx_wait_more137 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %tx_wait_more137, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool138.not = icmp ne i8 %187, 0
  %brmerge = select i1 %tobool138.not, i1 true, i1 %cmp.i363.not
  br i1 %brmerge, label %if.then142, label %if.else136.if.end161_crit_edge

if.else136.if.end161_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then142:                                       ; preds = %if.else136
  %call143 = call fastcc i32 @kcm_write_msgs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %do.end, label %if.then142.if.end161_crit_edge

if.then142.if.end161_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

do.end:                                           ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  %188 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 32, ptr %sk_err, align 4
  call void @sk_error_report(ptr noundef %1) #10
  br label %if.end161

partial_message:                                  ; preds = %land.lhs.true.partial_message_crit_edge, %while.end122.partial_message_crit_edge
  %skb.5 = phi ptr [ %skb.6, %land.lhs.true.partial_message_crit_edge ], [ %skb.1.lcssa, %while.end122.partial_message_crit_edge ]
  %head.2 = phi ptr [ %head.3, %land.lhs.true.partial_message_crit_edge ], [ %head.1, %while.end122.partial_message_crit_edge ]
  %copied.2 = phi i32 [ %copied.4, %land.lhs.true.partial_message_crit_edge ], [ %copied.0.lcssa, %while.end122.partial_message_crit_edge ]
  %tobool155.not = icmp eq ptr %head.2, null
  br i1 %tobool155.not, label %partial_message.if.end161_crit_edge, label %if.then156

partial_message.if.end161_crit_edge:              ; preds = %partial_message
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then156:                                       ; preds = %partial_message
  call void @__sanitizer_cov_trace_pc() #12
  %seq_skb157 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 10
  %189 = ptrtoint ptr %seq_skb157 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %head.2, ptr %seq_skb157, align 8
  %last_skb159 = getelementptr inbounds %struct.sk_buff, ptr %head.2, i32 0, i32 3, i32 20
  %190 = ptrtoint ptr %last_skb159 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %skb.5, ptr %last_skb159, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then156, %partial_message.if.end161_crit_edge, %do.end, %if.then142.if.end161_crit_edge, %if.else136.if.end161_crit_edge, %if.then135
  %copied.3 = phi i32 [ %copied.2, %if.then156 ], [ %copied.2, %partial_message.if.end161_crit_edge ], [ %copied.0.lcssa, %if.else136.if.end161_crit_edge ], [ %copied.0.lcssa, %do.end ], [ %copied.0.lcssa, %if.then142.if.end161_crit_edge ], [ %copied.0.lcssa, %if.then135 ]
  %conv162 = zext i32 %copied.3 to i64
  %tx_bytes = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 6, i32 3
  %191 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %tx_bytes, align 8
  %add164 = add i64 %192, %conv162
  store i64 %add164, ptr %tx_bytes, align 8
  br label %cleanup192

out_error:                                        ; preds = %kcm_push.exit362.out_error_crit_edge, %copy_from_iter_full.exit.i.i, %copy_from_iter_full_nocache.exit.i.i, %cleanup.i.i, %kcm_push.exit318.out_error_crit_edge, %kcm_push.exit.out_error_crit_edge, %sk_clear_bit.exit.out_error_crit_edge
  %skb.6 = phi ptr [ null, %sk_clear_bit.exit.out_error_crit_edge ], [ null, %kcm_push.exit.out_error_crit_edge ], [ %skb.1401, %cleanup.i.i ], [ %skb.1401, %copy_from_iter_full_nocache.exit.i.i ], [ %skb.1401, %copy_from_iter_full.exit.i.i ], [ %skb.1401, %kcm_push.exit362.out_error_crit_edge ], [ null, %kcm_push.exit318.out_error_crit_edge ]
  %head.3 = phi ptr [ null, %sk_clear_bit.exit.out_error_crit_edge ], [ null, %kcm_push.exit.out_error_crit_edge ], [ %head.1, %cleanup.i.i ], [ %head.1, %copy_from_iter_full_nocache.exit.i.i ], [ %head.1, %copy_from_iter_full.exit.i.i ], [ %head.1, %kcm_push.exit362.out_error_crit_edge ], [ null, %kcm_push.exit318.out_error_crit_edge ]
  %copied.4 = phi i32 [ 0, %sk_clear_bit.exit.out_error_crit_edge ], [ 0, %kcm_push.exit.out_error_crit_edge ], [ %copied.0404, %cleanup.i.i ], [ %copied.0404, %copy_from_iter_full_nocache.exit.i.i ], [ %copied.0404, %copy_from_iter_full.exit.i.i ], [ %copied.0404, %kcm_push.exit362.out_error_crit_edge ], [ 0, %kcm_push.exit318.out_error_crit_edge ]
  %err.5 = phi i32 [ -32, %sk_clear_bit.exit.out_error_crit_edge ], [ %call22, %kcm_push.exit.out_error_crit_edge ], [ -14, %cleanup.i.i ], [ -14, %copy_from_iter_full_nocache.exit.i.i ], [ -14, %copy_from_iter_full.exit.i.i ], [ %call114, %kcm_push.exit362.out_error_crit_edge ], [ %call34, %kcm_push.exit318.out_error_crit_edge ]
  %tx_wait_more.i366 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  %193 = ptrtoint ptr %tx_wait_more.i366 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %tx_wait_more.i366, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i367 = icmp eq i8 %194, 0
  br i1 %tobool.not.i367, label %out_error.kcm_push.exit371_crit_edge, label %if.then.i369

out_error.kcm_push.exit371_crit_edge:             ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_push.exit371

if.then.i369:                                     ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #12
  %call.i368 = call fastcc i32 @kcm_write_msgs(ptr noundef %1) #10
  br label %kcm_push.exit371

kcm_push.exit371:                                 ; preds = %if.then.i369, %out_error.kcm_push.exit371_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.4)
  %tobool165.not = icmp eq i32 %copied.4, 0
  br i1 %tobool165.not, label %kcm_push.exit371.if.end171_crit_edge, label %land.lhs.true

kcm_push.exit371.if.end171_crit_edge:             ; preds = %kcm_push.exit371
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

land.lhs.true:                                    ; preds = %kcm_push.exit371
  %195 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %196)
  %cmp168 = icmp eq i16 %196, 5
  br i1 %cmp168, label %land.lhs.true.partial_message_crit_edge, label %land.lhs.true.if.end171_crit_edge

land.lhs.true.if.end171_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

land.lhs.true.partial_message_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %partial_message

if.end171:                                        ; preds = %land.lhs.true.if.end171_crit_edge, %kcm_push.exit371.if.end171_crit_edge
  %seq_skb172 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 10
  %197 = ptrtoint ptr %seq_skb172 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %seq_skb172, align 8
  %cmp173.not = icmp eq ptr %head.3, %198
  br i1 %cmp173.not, label %if.end171.if.end176_crit_edge, label %if.then175

if.end171.if.end176_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %head.3, i32 noundef 0) #10
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %if.end171.if.end176_crit_edge
  %199 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %msg_flags, align 4
  %call178 = call i32 @sk_stream_error(ptr noundef %1, i32 noundef %200, i32 noundef %err.5) #10
  %qlen.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 1
  %201 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp181 = icmp eq i32 %202, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call178)
  %cmp183 = icmp eq i32 %call178, -11
  %spec.select = select i1 %cmp181, i1 %cmp183, i1 false
  br i1 %spec.select, label %if.then190, label %if.end176.cleanup192_crit_edge, !prof !116

if.end176.cleanup192_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192

if.then190:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 78
  %203 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sk_write_space, align 4
  call void %204(ptr noundef %1) #10
  br label %cleanup192

cleanup192:                                       ; preds = %if.then190, %if.end176.cleanup192_crit_edge, %if.end161
  %retval.0 = phi i32 [ %copied.3, %if.end161 ], [ %call178, %if.then190 ], [ %call178, %if.end176.cleanup192_crit_edge ]
  call void @release_sock(ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %3 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %call3 = call fastcc ptr @kcm_wait_data(ptr noundef %1, i32 noundef %flags, i32 noundef %cond.i, ptr noundef nonnull %err)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %sock_rcvtimeo.exit.out.thread_crit_edge, label %if.end

sock_rcvtimeo.exit.out.thread_crit_edge:          ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end:                                           ; preds = %sock_rcvtimeo.exit
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 20
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %len)
  %offset = getelementptr %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = tail call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call3, i32 noundef %9, ptr noundef %msg_iter.i, i32 noundef %7) #10
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.end.out.thread_crit_edge, label %if.end12

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end12:                                         ; preds = %if.end
  %and13 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then18, label %if.end12.out_crit_edge, !prof !105

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then18:                                        ; preds = %if.end12
  %conv = sext i32 %7 to i64
  %stats = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 6
  %rx_bytes = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_bytes, align 8
  %add = add i64 %12, %conv
  store i64 %add, ptr %rx_bytes, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %7)
  %cmp20 = icmp sgt i32 %14, %7
  br i1 %cmp20, label %if.then22, label %if.then18.msg_finished_crit_edge

if.then18.msg_finished_crit_edge:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %msg_finished

if.then22:                                        ; preds = %if.then18
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %cmp24 = icmp eq i16 %16, 2
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %17 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_flags, align 4
  %or = or i32 %18, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %msg_finished

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add29 = add i32 %20, %7
  store i32 %add29, ptr %offset, align 4
  %sub = sub i32 %14, %7
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %add.ptr.i, align 4
  br label %out

msg_finished:                                     ; preds = %if.then26, %if.then18.msg_finished_crit_edge
  %msg_flags31 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %22 = ptrtoint ptr %msg_flags31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_flags31, align 4
  %or32 = or i32 %23, 128
  store i32 %or32, ptr %msg_flags31, align 4
  %24 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %stats, align 8
  %inc = add i64 %25, 1
  store i64 %inc, ptr %stats, align 8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  tail call void @skb_unlink(ptr noundef nonnull %call3, ptr noundef %sk_receive_queue) #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3, i32 noundef 0) #10
  br label %out

out.thread:                                       ; preds = %if.end.out.thread_crit_edge, %sock_rcvtimeo.exit.out.thread_crit_edge
  tail call void @release_sock(ptr noundef %1) #10
  br label %cond.false

out:                                              ; preds = %msg_finished, %if.end27, %if.end12.out_crit_edge
  tail call void @release_sock(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool36.not = icmp eq i32 %7, 0
  br i1 %tobool36.not, label %out.cond.false_crit_edge, label %out.cond.end_crit_edge

out.cond.end_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

out.cond.false_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.false:                                       ; preds = %out.cond.false_crit_edge, %out.thread
  %26 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %out.cond.end_crit_edge
  %cond = phi i32 [ %27, %cond.false ], [ %7, %out.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_sendpage(ptr nocapture noundef readonly %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  %4 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %timeo, align 4
  %and3 = lshr i32 %flags, 2
  %5 = and i32 %and3, 32768
  %6 = or i32 %5, %flags
  %and5 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %7 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge, label %if.end.i

sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge:   ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_clear_bit.exit

if.end.i:                                         ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %13, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #10
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i, %sock_sndtimeo.exit.sk_clear_bit.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %14 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.end9, label %sk_clear_bit.exit.out_error_crit_edge

sk_clear_bit.exit.out_error_crit_edge:            ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

if.end9:                                          ; preds = %sk_clear_bit.exit
  %seq_skb = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %seq_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %seq_skb, align 8
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %if.else39, label %if.then11

if.then11:                                        ; preds = %if.end9
  %last_skb = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 20
  %18 = ptrtoint ptr %last_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %last_skb, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %23 to i32
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then11.skb_zcopy.exit.i_crit_edge, label %land.rhs.i.i

if.then11.skb_zcopy.exit.i_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_zcopy.exit.i

land.rhs.i.i:                                     ; preds = %if.then11
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 8
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.skb_zcopy.exit.i_crit_edge, label %cond.true.i.i

land.rhs.i.i.skb_zcopy.exit.i_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_zcopy.exit.i

cond.true.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %destructor_arg.i.i, align 4
  %phi.cmp.i = icmp ne ptr %28, null
  br label %skb_zcopy.exit.i

skb_zcopy.exit.i:                                 ; preds = %cond.true.i.i, %land.rhs.i.i.skb_zcopy.exit.i_crit_edge, %if.then11.skb_zcopy.exit.i_crit_edge
  %cond.i.i = phi i1 [ %phi.cmp.i, %cond.true.i.i ], [ false, %land.rhs.i.i.skb_zcopy.exit.i_crit_edge ], [ false, %if.then11.skb_zcopy.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  %or.cond.i = or i1 %tobool1.not.i, %cond.i.i
  br i1 %or.cond.i, label %skb_zcopy.exit.i.if.end23_crit_edge, label %if.then2.i

skb_zcopy.exit.i.if.end23_crit_edge:              ; preds = %skb_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then2.i:                                       ; preds = %skb_zcopy.exit.i
  %sub.i = add nsw i32 %conv, -1
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %21, i32 0, i32 12, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %30, %page
  br i1 %cmp.i, label %skb_can_coalesce.exit, label %if.then2.i.if.end23_crit_edge

if.then2.i.if.end23_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

skb_can_coalesce.exit:                            ; preds = %if.then2.i
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %21, i32 0, i32 12, i32 %sub.i, i32 2
  %31 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %21, i32 0, i32 12, i32 %sub.i, i32 1
  %33 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bv_len.i.i, align 4
  %add.i = add i32 %34, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp7.i = icmp eq i32 %add.i, %offset
  br i1 %cmp7.i, label %if.then16, label %skb_can_coalesce.exit.if.end23_crit_edge

skb_can_coalesce.exit.if.end23_crit_edge:         ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then16:                                        ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bv_len.i.i, align 4
  %add.i227 = add i32 %36, %size
  store i32 %add.i227, ptr %bv_len.i.i, align 4
  br label %coalesced

if.end23:                                         ; preds = %skb_can_coalesce.exit.if.end23_crit_edge, %if.then2.i.if.end23_crit_edge, %skb_zcopy.exit.i.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %23)
  %cmp = icmp ugt i8 %23, 16
  br i1 %cmp, label %if.then25, label %if.end23.if.end59_crit_edge

if.end23.if.end59_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then25:                                        ; preds = %if.end23
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %37 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_allocation, align 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef %38, i32 noundef 0, i32 noundef -1) #10
  %tobool27.not = icmp eq ptr %call.i, null
  %tx_wait_more.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  br i1 %tobool27.not, label %if.then25.while.cond_crit_edge, label %while.end

if.then25.while.cond_crit_edge:                   ; preds = %if.then25
  br label %while.cond

while.cond:                                       ; preds = %kcm_push.exit.while.cond_crit_edge, %if.then25.while.cond_crit_edge
  %39 = ptrtoint ptr %tx_wait_more.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_wait_more.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %while.cond.kcm_push.exit_crit_edge, label %if.then.i

while.cond.kcm_push.exit_crit_edge:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_push.exit

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call.i229 = call fastcc i32 @kcm_write_msgs(ptr noundef %1) #10
  br label %kcm_push.exit

kcm_push.exit:                                    ; preds = %if.then.i, %while.cond.kcm_push.exit_crit_edge
  %call29 = call i32 @sk_stream_wait_memory(ptr noundef %1, ptr noundef nonnull %timeo) #10
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %kcm_push.exit.while.cond_crit_edge, label %kcm_push.exit.out_error_crit_edge

kcm_push.exit.out_error_crit_edge:                ; preds = %kcm_push.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

kcm_push.exit.while.cond_crit_edge:               ; preds = %kcm_push.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %if.then25
  %cmp33 = icmp eq ptr %17, %19
  br i1 %cmp33, label %if.then35, label %while.end.cleanup.thread_crit_edge

while.end.cleanup.thread_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then35:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %end.i231 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %41 = ptrtoint ptr %end.i231 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i231, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then35, %while.end.cleanup.thread_crit_edge
  %frag_list.sink = phi ptr [ %frag_list, %if.then35 ], [ %19, %while.end.cleanup.thread_crit_edge ]
  %43 = ptrtoint ptr %frag_list.sink to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %frag_list.sink, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %44 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end59

if.else39:                                        ; preds = %if.end9
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 22
  %45 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %47 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp.not.i.i = icmp slt i32 %46, %48
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.else39.if.then41_crit_edge

if.else39.if.then41_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.end.i.i:                                       ; preds = %if.else39
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skc_prot.i.i, align 8
  %stream_memory_free.i.i = getelementptr inbounds %struct.proto, ptr %50, i32 0, i32 28
  %51 = ptrtoint ptr %stream_memory_free.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stream_memory_free.i.i, align 4
  %tobool.not.i.i232 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i232, label %if.end.i.i.if.end47_crit_edge, label %sk_stream_memory_free.exit

if.end.i.i.if.end47_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

sk_stream_memory_free.exit:                       ; preds = %if.end.i.i
  %call.i.i = tail call zeroext i1 %52(ptr noundef %1, i32 noundef 0) #10
  br i1 %call.i.i, label %sk_stream_memory_free.exit.if.end47_crit_edge, label %sk_stream_memory_free.exit.if.then41_crit_edge

sk_stream_memory_free.exit.if.then41_crit_edge:   ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

sk_stream_memory_free.exit.if.end47_crit_edge:    ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41:                                        ; preds = %sk_stream_memory_free.exit.if.then41_crit_edge, %if.else39.if.then41_crit_edge
  %tx_wait_more.i234 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  %53 = ptrtoint ptr %tx_wait_more.i234 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tx_wait_more.i234, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i235 = icmp eq i8 %54, 0
  br i1 %tobool.not.i235, label %if.then41.kcm_push.exit239_crit_edge, label %if.then.i237

if.then41.kcm_push.exit239_crit_edge:             ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_push.exit239

if.then.i237:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %call.i236 = tail call fastcc i32 @kcm_write_msgs(ptr noundef %1) #10
  br label %kcm_push.exit239

kcm_push.exit239:                                 ; preds = %if.then.i237, %if.then41.kcm_push.exit239_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %55 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk_socket, align 8
  %flags42 = getelementptr inbounds %struct.socket, ptr %56, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags42) #10
  %call43 = call i32 @sk_stream_wait_memory(ptr noundef %1, ptr noundef nonnull %timeo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %kcm_push.exit239.if.end47_crit_edge, label %kcm_push.exit239.out_error_crit_edge

kcm_push.exit239.out_error_crit_edge:             ; preds = %kcm_push.exit239
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

kcm_push.exit239.if.end47_crit_edge:              ; preds = %kcm_push.exit239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end47:                                         ; preds = %kcm_push.exit239.if.end47_crit_edge, %sk_stream_memory_free.exit.if.end47_crit_edge, %if.end.i.i.if.end47_crit_edge
  %sk_allocation48 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %57 = ptrtoint ptr %sk_allocation48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sk_allocation48, align 8
  %call.i240 = call ptr @__alloc_skb(i32 noundef 0, i32 noundef %58, i32 noundef 0, i32 noundef -1) #10
  %tobool51.not = icmp eq ptr %call.i240, null
  %tx_wait_more.i241 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  br i1 %tobool51.not, label %if.end47.while.cond50_crit_edge, label %if.end47.if.end59_crit_edge

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.end47.while.cond50_crit_edge:                  ; preds = %if.end47
  br label %while.cond50

while.cond50:                                     ; preds = %kcm_push.exit246.while.cond50_crit_edge, %if.end47.while.cond50_crit_edge
  %59 = ptrtoint ptr %tx_wait_more.i241 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tx_wait_more.i241, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i242 = icmp eq i8 %60, 0
  br i1 %tobool.not.i242, label %while.cond50.kcm_push.exit246_crit_edge, label %if.then.i244

while.cond50.kcm_push.exit246_crit_edge:          ; preds = %while.cond50
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_push.exit246

if.then.i244:                                     ; preds = %while.cond50
  call void @__sanitizer_cov_trace_pc() #12
  %call.i243 = call fastcc i32 @kcm_write_msgs(ptr noundef %1) #10
  br label %kcm_push.exit246

kcm_push.exit246:                                 ; preds = %if.then.i244, %while.cond50.kcm_push.exit246_crit_edge
  %call54 = call i32 @sk_stream_wait_memory(ptr noundef %1, ptr noundef nonnull %timeo) #10
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %kcm_push.exit246.while.cond50_crit_edge, label %kcm_push.exit246.out_error_crit_edge

kcm_push.exit246.out_error_crit_edge:             ; preds = %kcm_push.exit246
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_error

kcm_push.exit246.while.cond50_crit_edge:          ; preds = %kcm_push.exit246
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond50

if.end59:                                         ; preds = %if.end47.if.end59_crit_edge, %cleanup.thread, %if.end23.if.end59_crit_edge
  %skb.1 = phi ptr [ %19, %if.end23.if.end59_crit_edge ], [ %call.i, %cleanup.thread ], [ %call.i240, %if.end47.if.end59_crit_edge ]
  %head.0 = phi ptr [ %17, %if.end23.if.end59_crit_edge ], [ %17, %cleanup.thread ], [ %call.i240, %if.end47.if.end59_crit_edge ]
  %i.1 = phi i32 [ %conv, %if.end23.if.end59_crit_edge ], [ 0, %cleanup.thread ], [ 0, %if.end47.if.end59_crit_edge ]
  %61 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %and.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i247 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i247, label %if.end.i.i248, label %if.then.i.i, !prof !105

if.then.i.i:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %63, -1
  br label %_compound_head.exit.i

if.end.i.i248:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i248, %if.then.i.i
  %retval.0.i.i249 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %64, %if.end.i.i248 ]
  %65 = inttoptr i32 %retval.0.i.i249 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %66 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %67, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !116

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %65, ptr noundef nonnull @.str.22) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !121
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@kcm_sendpage, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !123

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__page_ref_mod(ptr noundef %65, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %end.i.i.i250 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 17
  %69 = ptrtoint ptr %end.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i.i.i250, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %70, i32 0, i32 12, i32 %i.1
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %page, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i251 = getelementptr %struct.skb_shared_info, ptr %70, i32 0, i32 12, i32 %i.1, i32 2
  %72 = ptrtoint ptr %bv_offset.i.i251 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %offset, ptr %bv_offset.i.i251, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %70, i32 0, i32 12, i32 %i.1, i32 1
  %73 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %size, ptr %bv_len.i.i.i, align 4
  %74 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %61, align 4
  %and.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !105

if.then.i.i.i:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %75, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %76, %if.end.i.i.i ]
  %77 = inttoptr i32 %retval.0.i.i.i to ptr
  %78 = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %80 to i32
  %and.i8.i.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i252

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_fill_page_desc.exit

if.then.i.i252:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 12
  %82 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i252, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %83 = trunc i32 %i.1 to i8
  %conv.i = add i8 %83, 1
  %84 = ptrtoint ptr %end.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end.i.i.i250, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  br label %coalesced

coalesced:                                        ; preds = %skb_fill_page_desc.exit, %if.then16
  %end.i.i.i250.sink = phi ptr [ %end.i.i.i250, %skb_fill_page_desc.exit ], [ %end.i, %if.then16 ]
  %skb.2 = phi ptr [ %skb.1, %skb_fill_page_desc.exit ], [ %19, %if.then16 ]
  %head.1 = phi ptr [ %head.0, %skb_fill_page_desc.exit ], [ %17, %if.then16 ]
  %87 = ptrtoint ptr %end.i.i.i250.sink to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %end.i.i.i250.sink, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 8
  %91 = or i8 %90, 2
  store i8 %91, ptr %88, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %92 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len, align 4
  %add = add i32 %93, %size
  store i32 %add, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 7
  %94 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_len, align 8
  %add65 = add i32 %95, %size
  store i32 %add65, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 20
  %96 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %truesize, align 8
  %add66 = add i32 %97, %size
  store i32 %add66, ptr %truesize, align 8
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 22
  %98 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sk_wmem_queued, align 8
  %add67 = add i32 %99, %size
  store i32 %add67, ptr %sk_wmem_queued, align 8
  %skc_prot.i.i254 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %100 = ptrtoint ptr %skc_prot.i.i254 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %skc_prot.i.i254, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %101, i32 0, i32 32
  %102 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i255 = icmp eq ptr %103, null
  br i1 %tobool.i.not.i255, label %coalesced.sk_mem_charge.exit_crit_edge, label %if.end.i257

coalesced.sk_mem_charge.exit_crit_edge:           ; preds = %coalesced
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_mem_charge.exit

if.end.i257:                                      ; preds = %coalesced
  call void @__sanitizer_cov_trace_pc() #12
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 11
  %104 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i256 = sub i32 %105, %size
  store i32 %sub.i256, ptr %sk_forward_alloc.i, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i257, %coalesced.sk_mem_charge.exit_crit_edge
  %cmp68.not = icmp eq ptr %head.1, %skb.2
  br i1 %cmp68.not, label %sk_mem_charge.exit.if.end77_crit_edge, label %if.then70

sk_mem_charge.exit.if.end77_crit_edge:            ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then70:                                        ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #12
  %len71 = getelementptr inbounds %struct.sk_buff, ptr %head.1, i32 0, i32 6
  %106 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len71, align 4
  %add72 = add i32 %107, %size
  store i32 %add72, ptr %len71, align 4
  %data_len73 = getelementptr inbounds %struct.sk_buff, ptr %head.1, i32 0, i32 7
  %108 = ptrtoint ptr %data_len73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %data_len73, align 8
  %add74 = add i32 %109, %size
  store i32 %add74, ptr %data_len73, align 8
  %truesize75 = getelementptr inbounds %struct.sk_buff, ptr %head.1, i32 0, i32 20
  %110 = ptrtoint ptr %truesize75 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %truesize75, align 8
  %add76 = add i32 %111, %size
  store i32 %add76, ptr %truesize75, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then70, %sk_mem_charge.exit.if.end77_crit_edge
  br i1 %tobool6.not, label %if.then79, label %if.else105

if.then79:                                        ; preds = %if.end77
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26
  %112 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sk_write_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i, align 4
  %116 = ptrtoint ptr %head.1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %sk_write_queue, ptr %head.1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.144, ptr %head.1, i32 0, i32 1
  %117 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %prev10.i.i.i, align 4
  store volatile ptr %head.1, ptr %prev.i.i, align 4
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %head.1, ptr %115, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 1
  %119 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %120, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %121 = ptrtoint ptr %seq_skb to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %seq_skb, align 8
  %tx_msgs = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 6, i32 2
  %122 = ptrtoint ptr %tx_msgs to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %tx_msgs, align 8
  %inc = add i64 %123, 1
  store i64 %inc, ptr %tx_msgs, align 8
  %and85 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else88, label %if.then87

if.then87:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %tx_wait_more = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  %124 = ptrtoint ptr %tx_wait_more to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %tx_wait_more, align 2
  br label %if.end109

if.else88:                                        ; preds = %if.then79
  %cmp.i258.not = icmp eq ptr %113, %sk_write_queue
  %tx_wait_more89 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  %125 = ptrtoint ptr %tx_wait_more89 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %tx_wait_more89, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool90.not = icmp ne i8 %126, 0
  %brmerge = select i1 %tobool90.not, i1 true, i1 %cmp.i258.not
  br i1 %brmerge, label %if.then94, label %if.else88.if.end109_crit_edge

if.else88.if.end109_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then94:                                        ; preds = %if.else88
  %call95 = call fastcc i32 @kcm_write_msgs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.end, label %if.then94.if.end109_crit_edge

if.then94.if.end109_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

do.end:                                           ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  %127 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 32, ptr %sk_err, align 4
  call void @sk_error_report(ptr noundef %1) #10
  br label %if.end109

if.else105:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %seq_skb to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %head.1, ptr %seq_skb, align 8
  %last_skb108 = getelementptr inbounds %struct.sk_buff, ptr %head.1, i32 0, i32 3, i32 20
  %129 = ptrtoint ptr %last_skb108 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %skb.2, ptr %last_skb108, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.else105, %do.end, %if.then94.if.end109_crit_edge, %if.else88.if.end109_crit_edge, %if.then87
  %conv110 = zext i32 %size to i64
  %tx_bytes = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 6, i32 3
  %130 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %tx_bytes, align 8
  %add112 = add i64 %131, %conv110
  store i64 %add112, ptr %tx_bytes, align 8
  br label %cleanup125

out_error:                                        ; preds = %kcm_push.exit246.out_error_crit_edge, %kcm_push.exit239.out_error_crit_edge, %kcm_push.exit.out_error_crit_edge, %sk_clear_bit.exit.out_error_crit_edge
  %err.2 = phi i32 [ -32, %sk_clear_bit.exit.out_error_crit_edge ], [ %call43, %kcm_push.exit239.out_error_crit_edge ], [ %call54, %kcm_push.exit246.out_error_crit_edge ], [ %call29, %kcm_push.exit.out_error_crit_edge ]
  %tx_wait_more.i261 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 13
  %132 = ptrtoint ptr %tx_wait_more.i261 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %tx_wait_more.i261, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i262 = icmp eq i8 %133, 0
  br i1 %tobool.not.i262, label %out_error.kcm_push.exit266_crit_edge, label %if.then.i264

out_error.kcm_push.exit266_crit_edge:             ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcm_push.exit266

if.then.i264:                                     ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #12
  %call.i263 = call fastcc i32 @kcm_write_msgs(ptr noundef %1) #10
  br label %kcm_push.exit266

kcm_push.exit266:                                 ; preds = %if.then.i264, %out_error.kcm_push.exit266_crit_edge
  %call113 = call i32 @sk_stream_error(ptr noundef %1, i32 noundef %6, i32 noundef %err.2) #10
  %qlen.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 1
  %134 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp116 = icmp eq i32 %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call113)
  %cmp118 = icmp eq i32 %call113, -11
  %spec.select225 = select i1 %cmp116, i1 %cmp118, i1 false
  br i1 %spec.select225, label %if.then123, label %kcm_push.exit266.cleanup125_crit_edge, !prof !116

kcm_push.exit266.cleanup125_crit_edge:            ; preds = %kcm_push.exit266
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup125

if.then123:                                       ; preds = %kcm_push.exit266
  call void @__sanitizer_cov_trace_pc() #12
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 78
  %136 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sk_write_space, align 4
  call void %137(ptr noundef %1) #10
  br label %cleanup125

cleanup125:                                       ; preds = %if.then123, %kcm_push.exit266.cleanup125_crit_edge, %if.end109
  %retval.0 = phi i32 [ %size, %if.end109 ], [ %call113, %if.then123 ], [ %call113, %kcm_push.exit266.cleanup125_crit_edge ]
  call void @release_sock(ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kcm_abort_tx_psock(ptr noundef %psock, i1 noundef zeroext %wakeup_kcm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psock, align 8
  %mux1 = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 2
  %2 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux1, align 8
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %tx_stopped = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 4
  %4 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tx_stopped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, -128
  %5 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set, ptr %tx_stopped, align 8
  %tx_aborts = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 9, i32 4
  %6 = ptrtoint ptr %tx_aborts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_aborts, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_aborts, align 8
  %tx_kcm = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 16
  %8 = ptrtoint ptr %tx_kcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_kcm, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %psock_avail_list = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %psock_avail_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del.exit_crit_edge

if.then6.list_del.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %psock_avail_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psock_avail_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then6.list_del.exit_crit_edge
  %16 = ptrtoint ptr %psock_avail_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %psock_avail_list, align 4
  %prev.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end
  br i1 %wakeup_kcm, label %do.end, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !124
  %18 = load ptr, ptr @kcm_wq, align 4
  %19 = ptrtoint ptr %tx_kcm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_kcm, align 4
  %tx_work = getelementptr inbounds %struct.kcm_sock, ptr %20, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %tx_work) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.else.if.end14_crit_edge, %list_del.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %21 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unreserve_psock(ptr nocapture noundef %kcm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mux1 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 1
  %0 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux1, align 8
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %tx_psock = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 7
  %2 = ptrtoint ptr %tx_psock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_psock, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %do.end29, !prof !116

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 525, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

do.end29:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  %stats.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 9
  %tx_bytes.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_bytes.i, align 8
  %saved_tx_bytes.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %saved_tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %saved_tx_bytes.i, align 8
  %sub.i = sub i64 %5, %7
  %tx_bytes2.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %tx_bytes2.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_bytes2.i, align 8
  %add.i = add i64 %sub.i, %9
  store i64 %add.i, ptr %tx_bytes2.i, align 8
  %10 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stats.i, align 8
  %saved_tx_msgs.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %saved_tx_msgs.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %saved_tx_msgs.i, align 8
  %sub4.i = sub i64 %11, %13
  %tx_msgs6.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %tx_msgs6.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_msgs6.i, align 16
  %add7.i = add i64 %sub4.i, %15
  store i64 %add7.i, ptr %tx_msgs6.i, align 16
  %16 = load i64, ptr %stats.i, align 8
  store i64 %16, ptr %saved_tx_msgs.i, align 8
  %17 = load i64, ptr %tx_bytes.i, align 8
  store i64 %17, ptr %saved_tx_bytes.i, align 8
  %tx_wait = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 12
  %18 = ptrtoint ptr %tx_wait to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_wait, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool33.not = icmp eq i8 %19, 0
  br i1 %tobool33.not, label %do.end29.if.end55_crit_edge, label %do.end49, !prof !105

do.end29.if.end55_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end49:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 534, i32 noundef 9, ptr noundef null) #10
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %do.end29.if.end55_crit_edge
  %20 = ptrtoint ptr %tx_psock to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_psock, align 8
  %tx_kcm = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %tx_kcm to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %tx_kcm, align 4
  %unreserved = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %unreserved to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %unreserved, align 8
  %inc = add i64 %23, 1
  store i64 %inc, ptr %unreserved, align 8
  %tx_stopped = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %tx_stopped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool64.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool64.not, label %if.end80, label %if.then71, !prof !105

if.then71:                                        ; preds = %if.end55
  %25 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool75.not = icmp eq i8 %25, 0
  br i1 %tobool75.not, label %if.then71.cleanup_crit_edge, label %if.then76

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then76:                                        ; preds = %if.then71
  %psock_list = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %psock_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then76.list_del.exit_crit_edge

if.then76.list_del.exit_crit_edge:                ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %psock_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %psock_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then76.list_del.exit_crit_edge
  %32 = ptrtoint ptr %psock_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %psock_list, align 4
  %prev.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %psocks_cnt = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %psocks_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %psocks_cnt, align 8
  %dec = add i32 %35, -1
  store i32 %dec, ptr %psocks_cnt, align 8
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  tail call fastcc void @sock_put(ptr noundef %37)
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %sk_socket = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 71
  %40 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk_socket, align 8
  %file = getelementptr inbounds %struct.socket, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %43) #10
  %44 = load ptr, ptr @kcm_psockp, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %3) #10
  br label %cleanup

if.end80:                                         ; preds = %if.end55
  %mux1.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mux1.i, align 8
  %kcm_tx_waiters.i = getelementptr inbounds %struct.kcm_mux, ptr %46, i32 0, i32 18
  %47 = ptrtoint ptr %kcm_tx_waiters.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %kcm_tx_waiters.i, align 4
  %cmp.i.not.i = icmp eq ptr %48, %kcm_tx_waiters.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end80
  %psock_avail_list.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 17
  %psocks_avail.i = getelementptr inbounds %struct.kcm_mux, ptr %46, i32 0, i32 17
  %prev.i.i103 = getelementptr inbounds %struct.kcm_mux, ptr %46, i32 0, i32 17, i32 1
  %49 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i103, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %psock_avail_list.i, ptr noundef %50, ptr noundef %psocks_avail.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %psock_avail_list.i, ptr %prev.i.i103, align 4
  %52 = ptrtoint ptr %psock_avail_list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %psocks_avail.i, ptr %psock_avail_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 17, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %psock_avail_list.i, ptr %50, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end80
  %add.ptr.i = getelementptr i8, ptr %48, i32 -1104
  %call.i.i17.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %48) #10
  br i1 %call.i.i17.i, label %if.end.i.i18.i, label %if.else.i.list_del.exit.i_crit_edge

if.else.i.list_del.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i18.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i, align 4
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %48, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i18.i, %if.else.i.list_del.exit.i_crit_edge
  %61 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %48, align 4
  %prev.i19.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i19.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i19.i, align 4
  %tx_wait.i = getelementptr i8, ptr %48, i32 13
  %63 = ptrtoint ptr %tx_wait.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %tx_wait.i, align 1
  %64 = ptrtoint ptr %tx_kcm to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i, ptr %tx_kcm, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  %tx_psock.i = getelementptr i8, ptr %48, i32 -48
  %65 = ptrtoint ptr %tx_psock.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %3, ptr %tx_psock.i, align 8
  %reserved.i = getelementptr inbounds %struct.kcm_psock, ptr %3, i32 0, i32 9, i32 2
  %66 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %reserved.i, align 8
  %inc.i = add i64 %67, 1
  store i64 %inc.i, ptr %reserved.i, align 8
  %68 = load ptr, ptr @kcm_wq, align 4
  %tx_work.i = getelementptr i8, ptr %48, i32 -44
  %call.i.i104 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %tx_work.i) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i, %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %list_del.exit, %if.then71.cleanup_crit_edge, %do.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kcm_done(ptr noundef %kcm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mux1 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 1
  %0 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux1, align 8
  %rx_lock = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #10
  %rx_psock = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 14
  %2 = ptrtoint ptr %rx_psock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_psock, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end30, label %if.then

if.then:                                          ; preds = %entry
  %done = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 4
  %4 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %done, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end, !prof !105

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1788, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %rx_disabled = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 17
  %5 = ptrtoint ptr %rx_disabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load24 = load i8, ptr %rx_disabled, align 1
  %bf.set = or i8 %bf.load24, -128
  store i8 %bf.set, ptr %rx_disabled, align 1
  %6 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load26 = load i8, ptr %done, align 8
  %bf.set28 = or i8 %bf.load26, -128
  store i8 %bf.set28, ptr %done, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #10
  br label %cleanup

if.end30:                                         ; preds = %entry
  %rx_wait = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 16
  %7 = ptrtoint ptr %rx_wait to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_wait, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool31.not = icmp eq i8 %8, 0
  br i1 %tobool31.not, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  %wait_rx_list = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %wait_rx_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then32.list_del.exit_crit_edge

if.then32.list_del.exit_crit_edge:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %wait_rx_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wait_rx_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then32.list_del.exit_crit_edge
  %15 = ptrtoint ptr %wait_rx_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %wait_rx_list, align 4
  %prev.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %17 = ptrtoint ptr %rx_wait to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %rx_wait, align 4
  br label %if.end34

if.end34:                                         ; preds = %list_del.exit, %if.end30.if.end34_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 8
  tail call fastcc void @requeue_rx_msgs(ptr noundef %1, ptr noundef %sk_receive_queue)
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #10
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sk_backlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool37.not = icmp eq i32 %19, 0
  br i1 %tobool37.not, label %if.end69, label %do.end53, !prof !105

do.end53:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1804, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end69:                                         ; preds = %if.end34
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %kcm_sock_list = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 2
  %call.i.i133 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %kcm_sock_list) #10
  br i1 %call.i.i133, label %if.end.i.i136, label %if.end69.list_del.exit138_crit_edge

if.end69.list_del.exit138_crit_edge:              ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit138

if.end.i.i136:                                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i134 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i134 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i134, align 4
  %22 = ptrtoint ptr %kcm_sock_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kcm_sock_list, align 4
  %prev1.i.i.i135 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i135, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit138

list_del.exit138:                                 ; preds = %if.end.i.i136, %if.end69.list_del.exit138_crit_edge
  %26 = ptrtoint ptr %kcm_sock_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %kcm_sock_list, align 4
  %prev.i137 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev.i137 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i137, align 4
  %kcm_socks_cnt = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %kcm_socks_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %kcm_socks_cnt, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %kcm_socks_cnt, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool72.not = icmp eq i32 %dec, 0
  br i1 %tobool72.not, label %if.then73, label %list_del.exit138.if.end74_crit_edge

list_del.exit138.if.end74_crit_edge:              ; preds = %list_del.exit138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then73:                                        ; preds = %list_del.exit138
  %knet1.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %knet1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %knet1.i, align 16
  %psocks.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %psocks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %psocks.i, align 32
  %cmp.not113.i = icmp eq ptr %33, %psocks.i
  br i1 %cmp.not113.i, label %if.then73.for.end.i_crit_edge, label %if.then73.for.body.i_crit_edge

if.then73.for.body.i_crit_edge:                   ; preds = %if.then73
  br label %for.body.i

if.then73.for.end.i_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then73.for.body.i_crit_edge
  %.pn.in114.i = phi ptr [ %.pn116.i, %for.inc.i.for.body.i_crit_edge ], [ %33, %if.then73.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %.pn.in114.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn116.i = load ptr, ptr %.pn.in114.i, align 8
  %unattaching.i = getelementptr i8, ptr %.pn.in114.i, i32 -16
  %35 = ptrtoint ptr %unattaching.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %unattaching.i, align 8
  %36 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %if.then30.critedge.i, label %do.end.i, !prof !105

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1757, i32 noundef 9, ptr noundef null) #10
  br label %for.inc.i

if.then30.critedge.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %psock.0115.i = getelementptr i8, ptr %.pn.in114.i, i32 -264
  tail call fastcc void @kcm_unattach(ptr noundef %psock.0115.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.critedge.i, %do.end.i
  %cmp.not.i = icmp eq ptr %.pn116.i, %psocks.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then73.for.end.i_crit_edge
  %psocks_cnt.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %psocks_cnt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %psocks_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool38.not.i = icmp eq i32 %38, 0
  br i1 %tobool38.not.i, label %if.end70.i, label %do.end54.i, !prof !105

do.end54.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1761, i32 noundef 9, ptr noundef null) #10
  br label %if.end74

if.end70.i:                                       ; preds = %for.end.i
  %rx_hold_queue.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %rx_hold_queue.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_hold_queue.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %40, %rx_hold_queue.i
  %tobool.not.i13.i.i = icmp eq ptr %40, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.end70.i.__skb_queue_purge.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end70.i.__skb_queue_purge.exit.i_crit_edge:    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end70.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 14, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %41 = phi ptr [ %40, %while.body.lr.ph.i.i ], [ %51, %while.body.i.i.while.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.144, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %41, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.144, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %47, ptr %prev17.i.i.i.i, align 4
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %45, ptr %47, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %41, i32 noundef 0) #10
  %50 = ptrtoint ptr %rx_hold_queue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_hold_queue.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %51, %rx_hold_queue.i
  %tobool.not.i1.i.i = icmp eq ptr %51, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.__skb_queue_purge.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit.i

__skb_queue_purge.exit.i:                         ; preds = %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, %if.end70.i.__skb_queue_purge.exit.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %31, i32 noundef 0) #10
  %stats.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7
  %aggregate_mux_stats.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 2
  %52 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %stats.i, align 8
  %54 = ptrtoint ptr %aggregate_mux_stats.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %aggregate_mux_stats.i, align 8
  %add.i.i = add i64 %55, %53
  store i64 %add.i.i, ptr %aggregate_mux_stats.i, align 8
  %rx_bytes.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %rx_bytes.i.i, align 8
  %rx_bytes2.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %rx_bytes2.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rx_bytes2.i.i, align 8
  %add3.i.i = add i64 %59, %57
  store i64 %add3.i.i, ptr %rx_bytes2.i.i, align 8
  %tx_msgs.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 2
  %60 = ptrtoint ptr %tx_msgs.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tx_msgs.i.i, align 8
  %tx_msgs4.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 2, i32 2
  %62 = ptrtoint ptr %tx_msgs4.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tx_msgs4.i.i, align 8
  %add5.i.i = add i64 %63, %61
  store i64 %add5.i.i, ptr %tx_msgs4.i.i, align 8
  %tx_bytes.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 3
  %64 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tx_bytes.i.i, align 8
  %tx_bytes6.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %tx_bytes6.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %tx_bytes6.i.i, align 8
  %add7.i.i = add i64 %67, %65
  store i64 %add7.i.i, ptr %tx_bytes6.i.i, align 8
  %rx_ready_drops.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 4
  %68 = ptrtoint ptr %rx_ready_drops.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_ready_drops.i.i, align 8
  %rx_ready_drops8.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 2, i32 4
  %70 = ptrtoint ptr %rx_ready_drops8.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_ready_drops8.i.i, align 8
  %add9.i.i = add i32 %71, %69
  store i32 %add9.i.i, ptr %rx_ready_drops8.i.i, align 8
  %psock_attach.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 6
  %72 = ptrtoint ptr %psock_attach.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %psock_attach.i.i, align 8
  %psock_attach10.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 2, i32 6
  %74 = ptrtoint ptr %psock_attach10.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %psock_attach10.i.i, align 8
  %add11.i.i = add i32 %75, %73
  store i32 %add11.i.i, ptr %psock_attach10.i.i, align 8
  %psock_unattach_rsvd.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 7
  %76 = ptrtoint ptr %psock_unattach_rsvd.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %psock_unattach_rsvd.i.i, align 4
  %psock_unattach_rsvd12.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 2, i32 7
  %78 = ptrtoint ptr %psock_unattach_rsvd12.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %psock_unattach_rsvd12.i.i, align 4
  %add13.i.i = add i32 %79, %77
  store i32 %add13.i.i, ptr %psock_unattach_rsvd12.i.i, align 4
  %psock_unattach.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 8
  %80 = ptrtoint ptr %psock_unattach.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %psock_unattach.i.i, align 8
  %psock_unattach14.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 2, i32 8
  %82 = ptrtoint ptr %psock_unattach14.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %psock_unattach14.i.i, align 8
  %add15.i.i = add i32 %83, %81
  store i32 %add15.i.i, ptr %psock_unattach14.i.i, align 8
  %aggregate_psock_stats.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 8
  %aggregate_psock_stats71.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 1
  %84 = ptrtoint ptr %aggregate_psock_stats.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %aggregate_psock_stats.i, align 8
  %86 = ptrtoint ptr %aggregate_psock_stats71.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %aggregate_psock_stats71.i, align 8
  %add.i97.i = add i64 %87, %85
  store i64 %add.i97.i, ptr %aggregate_psock_stats71.i, align 8
  %tx_bytes.i98.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 8, i32 1
  %88 = ptrtoint ptr %tx_bytes.i98.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %tx_bytes.i98.i, align 8
  %tx_bytes2.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %tx_bytes2.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %tx_bytes2.i.i, align 8
  %add3.i99.i = add i64 %91, %89
  store i64 %add3.i99.i, ptr %tx_bytes2.i.i, align 8
  %reserved.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 8, i32 2
  %92 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %reserved.i.i, align 8
  %reserved4.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 1, i32 2
  %94 = ptrtoint ptr %reserved4.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %reserved4.i.i, align 8
  %add5.i100.i = add i64 %95, %93
  store i64 %add5.i100.i, ptr %reserved4.i.i, align 8
  %unreserved.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 8, i32 3
  %96 = ptrtoint ptr %unreserved.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %unreserved.i.i, align 8
  %unreserved6.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 1, i32 3
  %98 = ptrtoint ptr %unreserved6.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %unreserved6.i.i, align 8
  %add7.i101.i = add i64 %99, %97
  store i64 %add7.i101.i, ptr %unreserved6.i.i, align 8
  %tx_aborts.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 8, i32 4
  %100 = ptrtoint ptr %tx_aborts.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_aborts.i.i, align 8
  %tx_aborts8.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %tx_aborts8.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_aborts8.i.i, align 8
  %add9.i102.i = add i32 %103, %101
  store i32 %add9.i102.i, ptr %tx_aborts8.i.i, align 8
  %aggregate_strp_stats.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9
  %aggregate_strp_stats72.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3
  %104 = ptrtoint ptr %aggregate_strp_stats.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %aggregate_strp_stats.i, align 8
  %106 = ptrtoint ptr %aggregate_strp_stats72.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %aggregate_strp_stats72.i, align 8
  %add.i103.i = add i64 %107, %105
  store i64 %add.i103.i, ptr %aggregate_strp_stats72.i, align 8
  %bytes.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 1
  %108 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %bytes.i.i, align 8
  %bytes2.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 1
  %110 = ptrtoint ptr %bytes2.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %bytes2.i.i, align 8
  %add3.i104.i = add i64 %111, %109
  store i64 %add3.i104.i, ptr %bytes2.i.i, align 8
  %mem_fail.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 2
  %112 = ptrtoint ptr %mem_fail.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mem_fail.i.i, align 8
  %mem_fail4.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 2
  %114 = ptrtoint ptr %mem_fail4.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mem_fail4.i.i, align 8
  %add5.i105.i = add i32 %115, %113
  store i32 %add5.i105.i, ptr %mem_fail4.i.i, align 8
  %need_more_hdr.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 3
  %116 = ptrtoint ptr %need_more_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %need_more_hdr.i.i, align 4
  %need_more_hdr6.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 3
  %118 = ptrtoint ptr %need_more_hdr6.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %need_more_hdr6.i.i, align 4
  %add7.i106.i = add i32 %119, %117
  store i32 %add7.i106.i, ptr %need_more_hdr6.i.i, align 4
  %msg_too_big.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 4
  %120 = ptrtoint ptr %msg_too_big.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %msg_too_big.i.i, align 8
  %msg_too_big8.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 4
  %122 = ptrtoint ptr %msg_too_big8.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %msg_too_big8.i.i, align 8
  %add9.i107.i = add i32 %123, %121
  store i32 %add9.i107.i, ptr %msg_too_big8.i.i, align 8
  %msg_timeouts.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 5
  %124 = ptrtoint ptr %msg_timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msg_timeouts.i.i, align 4
  %msg_timeouts10.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 5
  %126 = ptrtoint ptr %msg_timeouts10.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_timeouts10.i.i, align 4
  %add11.i108.i = add i32 %127, %125
  store i32 %add11.i108.i, ptr %msg_timeouts10.i.i, align 4
  %bad_hdr_len.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 6
  %128 = ptrtoint ptr %bad_hdr_len.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bad_hdr_len.i.i, align 8
  %bad_hdr_len12.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 6
  %130 = ptrtoint ptr %bad_hdr_len12.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bad_hdr_len12.i.i, align 8
  %add13.i109.i = add i32 %131, %129
  store i32 %add13.i109.i, ptr %bad_hdr_len12.i.i, align 8
  %aborts.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 7
  %132 = ptrtoint ptr %aborts.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %aborts.i.i, align 4
  %aborts14.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 7
  %134 = ptrtoint ptr %aborts14.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %aborts14.i.i, align 4
  %add15.i110.i = add i32 %135, %133
  store i32 %add15.i110.i, ptr %aborts14.i.i, align 4
  %interrupted.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 8
  %136 = ptrtoint ptr %interrupted.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %interrupted.i.i, align 8
  %interrupted16.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 8
  %138 = ptrtoint ptr %interrupted16.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %interrupted16.i.i, align 8
  %add17.i.i = add i32 %139, %137
  store i32 %add17.i.i, ptr %interrupted16.i.i, align 8
  %unrecov_intr.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 9, i32 9
  %140 = ptrtoint ptr %unrecov_intr.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %unrecov_intr.i.i, align 4
  %unrecov_intr18.i.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 3, i32 9
  %142 = ptrtoint ptr %unrecov_intr18.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %unrecov_intr18.i.i, align 4
  %add19.i.i = add i32 %143, %141
  store i32 %add19.i.i, ptr %unrecov_intr18.i.i, align 4
  %call.i.i.i139 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i.i139, label %if.end.i.i.i, label %__skb_queue_purge.exit.i.list_del_rcu.exit.i_crit_edge

__skb_queue_purge.exit.i.list_del_rcu.exit.i_crit_edge: ; preds = %__skb_queue_purge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %__skb_queue_purge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i.i.i, align 4
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev1.i.i.i.i, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %147, ptr %145, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %__skb_queue_purge.exit.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i140 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %150 = ptrtoint ptr %prev.i.i140 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i140, align 4
  %count.i = getelementptr inbounds %struct.kcm_net, ptr %31, i32 0, i32 5
  %151 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %count.i, align 8
  %dec.i = add i32 %152, -1
  store i32 %dec.i, ptr %count.i, align 8
  tail call void @mutex_unlock(ptr noundef %31) #10
  %rcu.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @free_mux) #10
  br label %if.end74

if.end74:                                         ; preds = %list_del_rcu.exit.i, %do.end54.i, %list_del.exit138.if.end74_crit_edge
  %153 = ptrtoint ptr %rx_wait to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %rx_wait, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool77.not = icmp eq i8 %154, 0
  br i1 %tobool77.not, label %if.end74.if.end99_crit_edge, label %do.end93, !prof !105

if.end74.if.end99_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

do.end93:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1821, i32 noundef 9, ptr noundef null) #10
  br label %if.end99

if.end99:                                         ; preds = %do.end93, %if.end74.if.end99_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %kcm, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %155 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %155, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i141 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i141, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !105

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @sk_free(ptr noundef %kcm) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end53, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !105

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @sk_free(ptr noundef %sk) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @requeue_rx_msgs(ptr noundef %mux, ptr noundef %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.i.i22 = icmp eq ptr %1, %head
  %tobool.not.i2023 = icmp eq ptr %1, null
  %tobool.not.i24 = or i1 %cmp.i.i22, %tobool.not.i2023
  br i1 %tobool.not.i24, label %entry.while.end_crit_edge, label %skb_orphan.exit.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

skb_orphan.exit.lr.ph:                            ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %head, i32 0, i32 1
  %kcm_rx_waiters = getelementptr inbounds %struct.kcm_mux, ptr %mux, i32 0, i32 12
  %rx_hold_queue = getelementptr inbounds %struct.kcm_mux, ptr %mux, i32 0, i32 14
  br label %skb_orphan.exit

skb_orphan.exit:                                  ; preds = %while.cond.backedge.skb_orphan.exit_crit_edge, %skb_orphan.exit.lr.ph
  %2 = phi ptr [ %1, %skb_orphan.exit.lr.ph ], [ %18, %while.cond.backedge.skb_orphan.exit_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.144, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.144, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sock_rfree, ptr %destructor, align 4
  tail call void @sock_rfree(ptr noundef nonnull %2) #10
  %12 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %destructor, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %13, align 4
  %15 = ptrtoint ptr %kcm_rx_waiters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %kcm_rx_waiters, align 4
  %cmp.i.not21 = icmp eq ptr %16, %kcm_rx_waiters
  br i1 %cmp.i.not21, label %skb_orphan.exit.if.then_crit_edge, label %skb_orphan.exit.if.end_crit_edge

skb_orphan.exit.if.end_crit_edge:                 ; preds = %skb_orphan.exit
  br label %if.end

skb_orphan.exit.if.then_crit_edge:                ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %list_del.exit.if.then_crit_edge, %skb_orphan.exit.if.then_crit_edge
  tail call void @skb_queue_tail(ptr noundef %rx_hold_queue, ptr noundef nonnull %2) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %if.then
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head, align 4
  %cmp.i.i = icmp eq ptr %18, %head
  %tobool.not.i20 = icmp eq ptr %18, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i20
  br i1 %tobool.not.i, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.skb_orphan.exit_crit_edge

while.cond.backedge.skb_orphan.exit_crit_edge:    ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %list_del.exit.if.end_crit_edge, %skb_orphan.exit.if.end_crit_edge
  %19 = phi ptr [ %30, %list_del.exit.if.end_crit_edge ], [ %16, %skb_orphan.exit.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %19, i32 -1124
  %call4 = tail call fastcc i32 @kcm_queue_rcv_skb(ptr noundef %add.ptr, ptr noundef nonnull %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.while.cond.backedge_crit_edge, label %if.then6

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then6:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del.exit_crit_edge

if.then6.list_del.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then6.list_del.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rx_wait = getelementptr i8, ptr %19, i32 8
  %28 = ptrtoint ptr %rx_wait to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %rx_wait, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  %29 = ptrtoint ptr %kcm_rx_waiters to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %kcm_rx_waiters, align 4
  %cmp.i.not = icmp eq ptr %30, %kcm_rx_waiters
  br i1 %cmp.i.not, label %list_del.exit.if.then_crit_edge, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

list_del.exit.if.then_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kcm_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #10
  %0 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %2 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp slt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %4 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %truesize, align 8
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %6 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.i.not.i, label %if.end.if.end3_crit_edge, label %if.end.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %10 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_forward_alloc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp.not.i = icmp slt i32 %11, %5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call1.i = tail call i32 @__sk_mem_schedule(ptr noundef %sk, i32 noundef %5, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %sk_rmem_schedule.exit, label %lor.lhs.false.i.if.end3_crit_edge

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

sk_rmem_schedule.exit:                            ; preds = %lor.lhs.false.i
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %12 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %13 = and i8 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i6.i.not = icmp eq i8 %13, 0
  br i1 %tobool.i6.i.not, label %sk_rmem_schedule.exit.cleanup_crit_edge, label %sk_rmem_schedule.exit.if.end3_crit_edge

sk_rmem_schedule.exit.if.end3_crit_edge:          ; preds = %sk_rmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

sk_rmem_schedule.exit.cleanup_crit_edge:          ; preds = %sk_rmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %sk_rmem_schedule.exit.if.end3_crit_edge, %lor.lhs.false.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %14 = getelementptr inbounds %struct.anon.144, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %14, align 8
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i29 = icmp eq ptr %17, null
  br i1 %tobool.not.i29, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %17(ptr noundef %skb) #10
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end3
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool3.not.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !105

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !130
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sk, ptr %21, align 4
  %23 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @kcm_rfree, ptr %destructor.i, align 4
  %24 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %truesize, align 8
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %25, ptr elementtype(i32) %sk_backlog) #10, !srcloc !122
  %27 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i31 = getelementptr inbounds %struct.proto, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %memory_allocated.i.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %memory_allocated.i.i31, align 4
  %tobool.i.not.i32 = icmp eq ptr %30, null
  br i1 %tobool.i.not.i32, label %skb_orphan.exit.sk_mem_charge.exit_crit_edge, label %if.end.i34

skb_orphan.exit.sk_mem_charge.exit_crit_edge:     ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_mem_charge.exit

if.end.i34:                                       ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %truesize, align 8
  %sk_forward_alloc.i33 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %33 = ptrtoint ptr %sk_forward_alloc.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_forward_alloc.i33, align 8
  %sub.i = sub i32 %34, %32
  store i32 %sub.i, ptr %sk_forward_alloc.i33, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i34, %skb_orphan.exit.sk_mem_charge.exit_crit_edge
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef %skb) #10
  %35 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not = icmp eq i32 %38, 0
  br i1 %tobool.i.not, label %if.then9, label %sk_mem_charge.exit.cleanup_crit_edge

sk_mem_charge.exit.cleanup_crit_edge:             ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %39 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk_data_ready, align 8
  tail call void %40(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %sk_mem_charge.exit.cleanup_crit_edge, %sk_rmem_schedule.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -105, %sk_rmem_schedule.exit.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %sk_mem_charge.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcm_rfree(ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %mux1 = getelementptr inbounds %struct.kcm_sock, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mux1, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %5 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %truesize, align 8
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 8
  %7 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %8, i32 0, i32 32
  %9 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.i.not.i, label %entry.sk_mem_uncharge.exit_crit_edge, label %if.end.i

entry.sk_mem_uncharge.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_mem_uncharge.exit

if.end.i:                                         ; preds = %entry
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 11
  %11 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_forward_alloc.i, align 8
  %add.i = add i32 %12, %6
  store i32 %add.i, ptr %sk_forward_alloc.i, align 8
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 12
  %13 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i, !prof !105

if.end.i.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 22
  %15 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %19 = add i32 %16, %18
  %sub5.i.i = sub i32 %14, %19
  %20 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #10
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %20, %if.end.i.i ], [ 0, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i = sub i32 %add.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 2097151
  br i1 %cmp.i, label %if.then4.i, label %sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge, !prof !116

sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_mem_uncharge.exit

if.then4.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__sk_mem_reclaim(ptr noundef %2, i32 noundef 1048576) #10
  br label %sk_mem_uncharge.exit

sk_mem_uncharge.exit:                             ; preds = %if.then4.i, %sk_unused_reserved_mem.exit.i.sk_mem_uncharge.exit_crit_edge, %entry.sk_mem_uncharge.exit_crit_edge
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %6, ptr elementtype(i32) %sk_backlog) #10, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !132
  %rx_wait = getelementptr inbounds %struct.kcm_sock, ptr %2, i32 0, i32 16
  %22 = ptrtoint ptr %rx_wait to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rx_wait, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %land.lhs.true, label %sk_mem_uncharge.exit.if.end_crit_edge

sk_mem_uncharge.exit.if.end_crit_edge:            ; preds = %sk_mem_uncharge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sk_mem_uncharge.exit
  %rx_psock = getelementptr inbounds %struct.kcm_sock, ptr %2, i32 0, i32 14
  %24 = ptrtoint ptr %rx_psock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_psock, align 8
  %tobool5.not = icmp eq ptr %25, null
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #10
  %26 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvlowat = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 6
  %28 = ptrtoint ptr %sk_rcvlowat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_rcvlowat, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp = icmp slt i32 %27, %29
  br i1 %cmp, label %if.then, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %rx_lock = getelementptr inbounds %struct.kcm_mux, ptr %4, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #10
  tail call fastcc void @kcm_rcv_ready(ptr noundef %2)
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %sk_mem_uncharge.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_schedule(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kcm_rcv_ready(ptr noundef %kcm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mux1 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 1
  %0 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux1, align 8
  %rx_wait = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 16
  %2 = ptrtoint ptr %rx_wait to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_wait, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge, !prof !105

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_psock = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 14
  %4 = ptrtoint ptr %rx_psock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_psock, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.rhs, label %lor.lhs.false.cleanup_crit_edge, !prof !105

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  %rx_disabled = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 17
  %6 = ptrtoint ptr %rx_disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %rx_disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool3 = icmp slt i8 %bf.load, 0
  br i1 %tobool3, label %lor.rhs.cleanup_crit_edge, label %while.cond.preheader, !prof !116

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.rhs
  %rx_hold_queue = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 14
  %qlen.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 14, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %7 = ptrtoint ptr %rx_hold_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_hold_queue, align 4
  %cmp.i.i = icmp eq ptr %8, %rx_hold_queue
  %tobool.not.i135 = icmp eq ptr %8, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i135
  br i1 %tobool.not.i, label %while.cond48.preheader, label %while.body

while.cond48.preheader:                           ; preds = %while.cond
  %psocks_ready = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %psocks_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %psocks_ready, align 4
  %cmp.i.not138 = icmp eq ptr %10, %psocks_ready
  br i1 %cmp.i.not138, label %while.cond48.preheader.while.end104_crit_edge, label %while.cond48.preheader.while.body53_crit_edge

while.cond48.preheader.while.body53_crit_edge:    ; preds = %while.cond48.preheader
  br label %while.body53

while.cond48.preheader.while.end104_crit_edge:    ; preds = %while.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end104

while.body:                                       ; preds = %while.cond
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.144, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %8, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.144, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %prev17.i.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %16, align 8
  %call13 = tail call fastcc i32 @kcm_queue_rcv_skb(ptr noundef %kcm, ptr noundef nonnull %8)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %while.body.while.cond_crit_edge, label %if.then15

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then15:                                        ; preds = %while.body
  tail call void @skb_queue_head(ptr noundef %rx_hold_queue, ptr noundef nonnull %8) #10
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #10
  %19 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sk_backlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %do.end, label %if.then15.cleanup_crit_edge, !prof !116

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 135, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

while.body53:                                     ; preds = %list_del.exit.while.body53_crit_edge, %while.cond48.preheader.while.body53_crit_edge
  %21 = phi ptr [ %36, %list_del.exit.while.body53_crit_edge ], [ %10, %while.cond48.preheader.while.body53_crit_edge ]
  %ready_rx_msg = getelementptr i8, ptr %21, i32 32
  %22 = ptrtoint ptr %ready_rx_msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ready_rx_msg, align 8
  %call57 = tail call fastcc i32 @kcm_queue_rcv_skb(ptr noundef %kcm, ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end95, label %if.then59

if.then59:                                        ; preds = %while.body53
  %sk_backlog.i130 = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 9
  %call.i.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i130, i32 noundef 4) #10
  %24 = ptrtoint ptr %sk_backlog.i130 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_backlog.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool63.not = icmp eq i32 %25, 0
  br i1 %tobool63.not, label %do.end81, label %if.then59.cleanup_crit_edge, !prof !116

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end81:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 146, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end95:                                         ; preds = %while.body53
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end95.list_del.exit_crit_edge

if.end95.list_del.exit_crit_edge:                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end95.list_del.exit_crit_edge
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %34 = ptrtoint ptr %ready_rx_msg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ready_rx_msg, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  %strp = getelementptr i8, ptr %21, i32 -304
  tail call void @strp_unpause(ptr noundef %strp) #10
  tail call void @strp_check_rcv(ptr noundef %strp) #10
  %35 = ptrtoint ptr %psocks_ready to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %psocks_ready, align 4
  %cmp.i.not = icmp eq ptr %36, %psocks_ready
  br i1 %cmp.i.not, label %list_del.exit.while.end104_crit_edge, label %list_del.exit.while.body53_crit_edge

list_del.exit.while.body53_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body53

list_del.exit.while.end104_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end104

while.end104:                                     ; preds = %list_del.exit.while.end104_crit_edge, %while.cond48.preheader.while.end104_crit_edge
  %wait_rx_list = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 15
  %37 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mux1, align 8
  %kcm_rx_waiters = getelementptr inbounds %struct.kcm_mux, ptr %38, i32 0, i32 12
  %prev.i132 = getelementptr inbounds %struct.kcm_mux, ptr %38, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i132, align 4
  %call.i.i133 = tail call zeroext i1 @__list_add_valid(ptr noundef %wait_rx_list, ptr noundef %40, ptr noundef %kcm_rx_waiters) #10
  br i1 %call.i.i133, label %if.end.i.i134, label %while.end104.list_add_tail.exit_crit_edge

while.end104.list_add_tail.exit_crit_edge:        ; preds = %while.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i134:                                    ; preds = %while.end104
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %wait_rx_list, ptr %prev.i132, align 4
  %42 = ptrtoint ptr %wait_rx_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %kcm_rx_waiters, ptr %wait_rx_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 15, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %wait_rx_list, ptr %40, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i134, %while.end104.list_add_tail.exit_crit_edge
  %45 = ptrtoint ptr %rx_wait to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %rx_wait, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end81, %if.then59.cleanup_crit_edge, %do.end, %if.then15.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_unpause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_check_rcv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kcm_unattach(ptr noundef %psock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psock, align 8
  %mux1 = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 2
  %2 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux1, align 8
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sk_user_data, align 4
  %save_data_ready = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 6
  %5 = ptrtoint ptr %save_data_ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %save_data_ready, align 8
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 77
  %7 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sk_data_ready, align 8
  %save_write_space = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 7
  %8 = ptrtoint ptr %save_write_space to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %save_write_space, align 4
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 78
  %10 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sk_write_space, align 4
  %save_state_change = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 5
  %11 = ptrtoint ptr %save_state_change to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %save_state_change, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %13 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %sk_state_change, align 4
  %strp = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1
  tail call void @strp_stop(ptr noundef %strp) #10
  %rx_kcm = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 12
  %14 = ptrtoint ptr %rx_kcm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_kcm, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !105

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1521, i32 noundef 9, ptr noundef null) #10
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  %rx_lock = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #10
  %ready_rx_msg = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 15
  %16 = ptrtoint ptr %ready_rx_msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ready_rx_msg, align 8
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %if.end24.if.end29_crit_edge, label %if.then26

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  %psock_ready_list = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %psock_ready_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then26.list_del.exit_crit_edge

if.then26.list_del.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %psock_ready_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %psock_ready_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then26.list_del.exit_crit_edge
  %24 = ptrtoint ptr %psock_ready_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %psock_ready_list, align 4
  %prev.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %26 = ptrtoint ptr %ready_rx_msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ready_rx_msg, align 8
  tail call void @kfree_skb_reason(ptr noundef %27, i32 noundef 0) #10
  %28 = ptrtoint ptr %ready_rx_msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ready_rx_msg, align 8
  %rx_ready_drops = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 7, i32 4
  %29 = ptrtoint ptr %rx_ready_drops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_ready_drops, align 16
  %inc = add i32 %30, 1
  store i32 %inc, ptr %rx_ready_drops, align 16
  br label %if.end29

if.end29:                                         ; preds = %list_del.exit, %if.end24.if.end29_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #10
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  tail call void @release_sock(ptr noundef %1) #10
  tail call void @strp_done(ptr noundef %strp) #10
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %bpf_prog = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 11
  %31 = ptrtoint ptr %bpf_prog to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bpf_prog, align 8
  tail call void @bpf_prog_put(ptr noundef %32) #10
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %stats33 = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 9
  %aggregate_psock_stats = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %stats33 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %stats33, align 8
  %35 = ptrtoint ptr %aggregate_psock_stats to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %aggregate_psock_stats, align 8
  %add.i = add i64 %36, %34
  store i64 %add.i, ptr %aggregate_psock_stats, align 8
  %tx_bytes.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_bytes.i, align 8
  %tx_bytes2.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %tx_bytes2.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_bytes2.i, align 8
  %add3.i = add i64 %40, %38
  store i64 %add3.i, ptr %tx_bytes2.i, align 8
  %reserved.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 9, i32 2
  %41 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %reserved.i, align 8
  %reserved4.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 8, i32 2
  %43 = ptrtoint ptr %reserved4.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %reserved4.i, align 8
  %add5.i = add i64 %44, %42
  store i64 %add5.i, ptr %reserved4.i, align 8
  %unreserved.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 9, i32 3
  %45 = ptrtoint ptr %unreserved.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %unreserved.i, align 8
  %unreserved6.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 8, i32 3
  %47 = ptrtoint ptr %unreserved6.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %unreserved6.i, align 8
  %add7.i = add i64 %48, %46
  store i64 %add7.i, ptr %unreserved6.i, align 8
  %tx_aborts.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 9, i32 4
  %49 = ptrtoint ptr %tx_aborts.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_aborts.i, align 8
  %tx_aborts8.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 8, i32 4
  %51 = ptrtoint ptr %tx_aborts8.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_aborts8.i, align 8
  %add9.i = add i32 %52, %50
  store i32 %add9.i, ptr %tx_aborts8.i, align 8
  %aggregate_strp_stats = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9
  %stats.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1, i32 7
  %53 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %stats.i, align 8
  %55 = ptrtoint ptr %aggregate_strp_stats to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %aggregate_strp_stats, align 8
  %add.i111 = add i64 %56, %54
  store i64 %add.i111, ptr %aggregate_strp_stats, align 8
  %bytes.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1, i32 7, i32 1
  %57 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bytes.i, align 8
  %bytes3.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %bytes3.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bytes3.i, align 8
  %add4.i = add i64 %60, %58
  store i64 %add4.i, ptr %bytes3.i, align 8
  %mem_fail.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1, i32 7, i32 2
  %61 = ptrtoint ptr %mem_fail.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mem_fail.i, align 8
  %mem_fail6.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 2
  %63 = ptrtoint ptr %mem_fail6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mem_fail6.i, align 8
  %add7.i112 = add i32 %64, %62
  store i32 %add7.i112, ptr %mem_fail6.i, align 8
  %need_more_hdr.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1, i32 7, i32 3
  %65 = ptrtoint ptr %need_more_hdr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %need_more_hdr.i, align 4
  %need_more_hdr9.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 3
  %67 = ptrtoint ptr %need_more_hdr9.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %need_more_hdr9.i, align 4
  %add10.i = add i32 %68, %66
  store i32 %add10.i, ptr %need_more_hdr9.i, align 4
  %msg_too_big.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1, i32 7, i32 4
  %69 = ptrtoint ptr %msg_too_big.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_too_big.i, align 8
  %msg_too_big12.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 4
  %71 = ptrtoint ptr %msg_too_big12.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg_too_big12.i, align 8
  %add13.i = add i32 %72, %70
  store i32 %add13.i, ptr %msg_too_big12.i, align 8
  %msg_timeouts.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1, i32 7, i32 5
  %73 = ptrtoint ptr %msg_timeouts.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_timeouts.i, align 4
  %msg_timeouts15.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 5
  %75 = ptrtoint ptr %msg_timeouts15.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_timeouts15.i, align 4
  %add16.i = add i32 %76, %74
  store i32 %add16.i, ptr %msg_timeouts15.i, align 4
  %bad_hdr_len.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1, i32 7, i32 6
  %77 = ptrtoint ptr %bad_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bad_hdr_len.i, align 8
  %bad_hdr_len18.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 6
  %79 = ptrtoint ptr %bad_hdr_len18.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bad_hdr_len18.i, align 8
  %add19.i = add i32 %80, %78
  store i32 %add19.i, ptr %bad_hdr_len18.i, align 8
  %aborted.i = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i = load i8, ptr %aborted.i, align 4
  %82 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i, label %if.end29.if.end.i_crit_edge, label %if.then.i

if.end29.if.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %aborts.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 7
  %83 = ptrtoint ptr %aborts.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %aborts.i, align 4
  %inc.i = add i32 %84, 1
  store i32 %inc.i, ptr %aborts.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end29.if.end.i_crit_edge
  %85 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load20.i = load i8, ptr %aborted.i, align 4
  %86 = and i8 %bf.load20.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool24.not.i = icmp eq i8 %86, 0
  br i1 %tobool24.not.i, label %if.end.i.if.end28.i_crit_edge, label %if.then25.i

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %interrupted26.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 8
  %87 = ptrtoint ptr %interrupted26.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %interrupted26.i, align 8
  %inc27.i = add i32 %88, 1
  store i32 %inc27.i, ptr %interrupted26.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end.i.if.end28.i_crit_edge
  %89 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load29.i = load i8, ptr %aborted.i, align 4
  %90 = and i8 %bf.load29.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool33.not.i = icmp eq i8 %90, 0
  br i1 %tobool33.not.i, label %if.end28.i.save_strp_stats.exit_crit_edge, label %if.then34.i

if.end28.i.save_strp_stats.exit_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %save_strp_stats.exit

if.then34.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %unrecov_intr35.i = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 9, i32 9
  %91 = ptrtoint ptr %unrecov_intr35.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %unrecov_intr35.i, align 4
  %inc36.i = add i32 %92, 1
  store i32 %inc36.i, ptr %unrecov_intr35.i, align 4
  br label %save_strp_stats.exit

save_strp_stats.exit:                             ; preds = %if.then34.i, %if.end28.i.save_strp_stats.exit_crit_edge
  %psock_unattach = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 7, i32 8
  %93 = ptrtoint ptr %psock_unattach to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %psock_unattach, align 16
  %inc36 = add i32 %94, 1
  store i32 %inc36, ptr %psock_unattach, align 16
  %tx_kcm = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 16
  %95 = ptrtoint ptr %tx_kcm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_kcm, align 4
  %tobool37.not = icmp eq ptr %96, null
  br i1 %tobool37.not, label %save_strp_stats.exit.no_reserved_crit_edge, label %if.then38

save_strp_stats.exit.no_reserved_crit_edge:       ; preds = %save_strp_stats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_reserved

if.then38:                                        ; preds = %save_strp_stats.exit
  %psock_unattach_rsvd = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 7, i32 7
  %97 = ptrtoint ptr %psock_unattach_rsvd to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %psock_unattach_rsvd, align 4
  %inc40 = add i32 %98, 1
  store i32 %inc40, ptr %psock_unattach_rsvd, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call fastcc void @kcm_abort_tx_psock(ptr noundef %psock, i1 noundef zeroext false)
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %99 = ptrtoint ptr %tx_kcm to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_kcm, align 4
  %tobool44.not = icmp eq ptr %100, null
  br i1 %tobool44.not, label %if.then38.no_reserved_crit_edge, label %if.end46

if.then38.no_reserved_crit_edge:                  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_reserved

if.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %done = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 4
  %101 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load = load i8, ptr %done, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %done, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  %102 = load ptr, ptr @kcm_wq, align 4
  %103 = ptrtoint ptr %tx_kcm to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tx_kcm, align 4
  %tx_work = getelementptr inbounds %struct.kcm_sock, ptr %104, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %102, ptr noundef %tx_work) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

no_reserved:                                      ; preds = %if.then38.no_reserved_crit_edge, %save_strp_stats.exit.no_reserved_crit_edge
  %tx_stopped = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 4
  %105 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load55 = load i8, ptr %tx_stopped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load55)
  %tobool56.not = icmp sgt i8 %bf.load55, -1
  br i1 %tobool56.not, label %if.then57, label %no_reserved.if.end58_crit_edge

no_reserved.if.end58_crit_edge:                   ; preds = %no_reserved
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then57:                                        ; preds = %no_reserved
  %psock_avail_list = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 17
  %call.i.i113 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %psock_avail_list) #10
  br i1 %call.i.i113, label %if.end.i.i116, label %if.then57.list_del.exit118_crit_edge

if.then57.list_del.exit118_crit_edge:             ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit118

if.end.i.i116:                                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i114 = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 17, i32 1
  %106 = ptrtoint ptr %prev.i.i114 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i114, align 4
  %108 = ptrtoint ptr %psock_avail_list to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %psock_avail_list, align 4
  %prev1.i.i.i115 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i115, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del.exit118

list_del.exit118:                                 ; preds = %if.end.i.i116, %if.then57.list_del.exit118_crit_edge
  %112 = ptrtoint ptr %psock_avail_list to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 256 to ptr), ptr %psock_avail_list, align 4
  %prev.i117 = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 17, i32 1
  %113 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i117, align 4
  br label %if.end58

if.end58:                                         ; preds = %list_del.exit118, %no_reserved.if.end58_crit_edge
  %psock_list = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 8
  %call.i.i119 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %psock_list) #10
  br i1 %call.i.i119, label %if.end.i.i122, label %if.end58.list_del.exit124_crit_edge

if.end58.list_del.exit124_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit124

if.end.i.i122:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i120 = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 8, i32 1
  %114 = ptrtoint ptr %prev.i.i120 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i120, align 4
  %116 = ptrtoint ptr %psock_list to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %psock_list, align 4
  %prev1.i.i.i121 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev1.i.i.i121, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %117, ptr %115, align 4
  br label %list_del.exit124

list_del.exit124:                                 ; preds = %if.end.i.i122, %if.end58.list_del.exit124_crit_edge
  %120 = ptrtoint ptr %psock_list to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 256 to ptr), ptr %psock_list, align 4
  %prev.i123 = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 8, i32 1
  %121 = ptrtoint ptr %prev.i123 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i123, align 4
  %psocks_cnt = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 6
  %122 = ptrtoint ptr %psocks_cnt to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %psocks_cnt, align 8
  %dec = add i32 %123, -1
  store i32 %dec, ptr %psocks_cnt, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %124 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i125, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !105

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i125:                                     ; preds = %list_del.exit124
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @sk_free(ptr noundef %1) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i125, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %125 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sk_socket, align 8
  %file = getelementptr inbounds %struct.socket, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %128) #10
  %129 = load ptr, ptr @kcm_psockp, align 4
  tail call void @kmem_cache_free(ptr noundef %129, ptr noundef %psock) #10
  br label %cleanup

cleanup:                                          ; preds = %sock_put.exit, %if.end46, %do.end
  tail call void @release_sock(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_mux(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -8
  %0 = load ptr, ptr @kcm_muxp, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_parse_func_strparser(ptr nocapture noundef readonly %strp, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_prog = getelementptr i8, ptr %strp, i32 312
  %0 = ptrtoint ptr %bpf_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_prog, align 8
  %call = tail call fastcc i32 @bpf_prog_run_pin_on_cpu(ptr noundef %1, ptr noundef %skb)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcm_rcv_strparser(ptr noundef %strp, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %strp, i32 -8
  %mux1.i = getelementptr i8, ptr %strp, i32 232
  %ready_rx_msg.i = getelementptr i8, ptr %strp, i32 336
  %rx_kcm.i = getelementptr i8, ptr %strp, i32 316
  %stats.i.i = getelementptr i8, ptr %strp, i32 168
  %bytes.i.i = getelementptr i8, ptr %strp, i32 176
  %saved_rx_bytes.i.i = getelementptr i8, ptr %strp, i32 320
  %saved_rx_msgs.i.i = getelementptr i8, ptr %strp, i32 328
  br label %try_queue

try_queue:                                        ; preds = %if.then3, %entry
  %0 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux1.i, align 8
  %2 = ptrtoint ptr %ready_rx_msg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ready_rx_msg.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %try_queue.if.end.i_crit_edge, label %do.end.i, !prof !105

try_queue.if.end.i_crit_edge:                     ; preds = %try_queue
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %try_queue
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 257, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %try_queue.if.end.i_crit_edge
  %4 = ptrtoint ptr %rx_kcm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_kcm.i, align 4
  %tobool21.not.i = icmp eq ptr %5, null
  br i1 %tobool21.not.i, label %if.end24.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end24.i:                                       ; preds = %if.end.i
  %rx_lock.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #10
  %6 = ptrtoint ptr %rx_kcm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_kcm.i, align 4
  %tobool26.not.i = icmp eq ptr %7, null
  br i1 %tobool26.not.i, label %if.end30.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #10
  %8 = ptrtoint ptr %rx_kcm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_kcm.i, align 4
  br label %reserve_rx_kcm.exit

if.end30.i:                                       ; preds = %if.end24.i
  %10 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bytes.i.i, align 8
  %12 = ptrtoint ptr %saved_rx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %saved_rx_bytes.i.i, align 8
  %sub.i.i = sub i64 %11, %13
  %stats1.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7
  %rx_bytes.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_bytes.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %15
  store i64 %add.i.i, ptr %rx_bytes.i.i, align 8
  %16 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %stats.i.i, align 8
  %18 = ptrtoint ptr %saved_rx_msgs.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %saved_rx_msgs.i.i, align 8
  %sub4.i.i = sub i64 %17, %19
  %20 = ptrtoint ptr %stats1.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %stats1.i.i, align 16
  %add6.i.i = add i64 %sub4.i.i, %21
  store i64 %add6.i.i, ptr %stats1.i.i, align 16
  %22 = load i64, ptr %stats.i.i, align 8
  store i64 %22, ptr %saved_rx_msgs.i.i, align 8
  %23 = load i64, ptr %bytes.i.i, align 8
  store i64 %23, ptr %saved_rx_bytes.i.i, align 8
  %kcm_rx_waiters.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %kcm_rx_waiters.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %kcm_rx_waiters.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %kcm_rx_waiters.i
  br i1 %cmp.i.not.i, label %if.then32.i, label %if.end35.i

if.then32.i:                                      ; preds = %if.end30.i
  %26 = ptrtoint ptr %ready_rx_msg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %skb, ptr %ready_rx_msg.i, align 8
  %paused.i.i = getelementptr i8, ptr %strp, i32 4
  %27 = ptrtoint ptr %paused.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i = load i8, ptr %paused.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %paused.i.i, align 4
  %psock_ready_list.i = getelementptr i8, ptr %strp, i32 304
  %psocks_ready.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %psock_ready_list.i, ptr noundef %29, ptr noundef %psocks_ready.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then32.i.reserve_rx_kcm.exit.thread_crit_edge

if.then32.i.reserve_rx_kcm.exit.thread_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reserve_rx_kcm.exit.thread

if.end.i.i.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %psock_ready_list.i, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %psock_ready_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %psocks_ready.i, ptr %psock_ready_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %strp, i32 308
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %psock_ready_list.i, ptr %29, align 4
  br label %reserve_rx_kcm.exit.thread

reserve_rx_kcm.exit.thread:                       ; preds = %if.end.i.i.i, %if.then32.i.reserve_rx_kcm.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #10
  br label %cleanup

if.end35.i:                                       ; preds = %if.end30.i
  %add.ptr.i = getelementptr i8, ptr %25, i32 -1124
  %call.i.i64.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %25) #10
  br i1 %call.i.i64.i, label %if.end.i.i65.i, label %if.end35.i.list_del.exit.i_crit_edge

if.end35.i.list_del.exit.i_crit_edge:             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i65.i:                                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i65.i, %if.end35.i.list_del.exit.i_crit_edge
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  %prev.i66.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i66.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i66.i, align 4
  %rx_wait.i = getelementptr i8, ptr %25, i32 8
  %42 = ptrtoint ptr %rx_wait.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %rx_wait.i, align 4
  %43 = ptrtoint ptr %rx_kcm.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i, ptr %rx_kcm.i, align 4
  %rx_psock.i = getelementptr i8, ptr %25, i32 -4
  %44 = ptrtoint ptr %rx_psock.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr, ptr %rx_psock.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #10
  br label %reserve_rx_kcm.exit

reserve_rx_kcm.exit:                              ; preds = %list_del.exit.i, %if.then27.i
  %retval.0.i = phi ptr [ %9, %if.then27.i ], [ %add.ptr.i, %list_del.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %reserve_rx_kcm.exit.cleanup_crit_edge, label %reserve_rx_kcm.exit.if.end_crit_edge

reserve_rx_kcm.exit.if.end_crit_edge:             ; preds = %reserve_rx_kcm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

reserve_rx_kcm.exit.cleanup_crit_edge:            ; preds = %reserve_rx_kcm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %reserve_rx_kcm.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i14 = phi ptr [ %retval.0.i, %reserve_rx_kcm.exit.if.end_crit_edge ], [ %5, %if.end.i.if.end_crit_edge ]
  %call1 = tail call fastcc i32 @kcm_queue_rcv_skb(ptr noundef nonnull %retval.0.i14, ptr noundef %skb)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @unreserve_rx_kcm(ptr noundef %add.ptr, i1 noundef zeroext false)
  br label %try_queue

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %reserve_rx_kcm.exit.cleanup_crit_edge, %reserve_rx_kcm.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_read_sock_done(ptr nocapture noundef %strp, i32 noundef returned %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %strp, i32 -8
  tail call fastcc void @unreserve_rx_kcm(ptr noundef %add.ptr, i1 noundef zeroext true)
  ret i32 %err
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strp_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psock_data_ready(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !116

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %strp = getelementptr inbounds %struct.kcm_psock, ptr %1, i32 0, i32 1
  tail call void @strp_data_ready(ptr noundef %strp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psock_write_space(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !116

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %mux4 = getelementptr inbounds %struct.kcm_psock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mux4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux4, align 8
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %tx_kcm = getelementptr inbounds %struct.kcm_psock, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %tx_kcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_kcm, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %tx_stopped = getelementptr inbounds %struct.kcm_sock, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %tx_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.then13, label %land.lhs.true.if.end14_crit_edge, !prof !105

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load ptr, ptr @kcm_wq, align 4
  %tx_work = getelementptr inbounds %struct.kcm_sock, ptr %5, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %tx_work) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %out

out:                                              ; preds = %if.end14, %entry.out_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psock_state_change(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef %sk) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_prog_run_pin_on_cpu(ptr noundef %prog, ptr noundef %ctx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @migrate_disable() #10
  tail call void @__cant_migrate(ptr noundef nonnull @.str.17, i32 noundef 613) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_prog_run_pin_on_cpu, %if.then.i.i)) #10
          to label %if.else.i.i [label %if.then.i.i], !srcloc !123

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #10
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %0 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %1(ptr noundef %ctx, ptr noundef %insnsi.i.i) #10
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %2 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats9.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 3
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !135
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  %18 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, ptrtoint (ptr @lockdep_recursion to i32)
  %24 = inttoptr i32 %add.i.i.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %27 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i7.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not.i.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %31 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i9.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !138
  %39 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %42, ptrtoint (ptr @hardirqs_enabled to i32)
  %43 = inttoptr i32 %add47.i.i.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !139
  %46 = tail call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i.i.i12.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool54.not.i.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !105

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %50 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !140
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 3, i32 0, i32 1
  %52 = tail call ptr @llvm.returnaddress(i32 0) #10
  %53 = ptrtoint ptr %52 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %53) #10
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %11, align 8
  %inc.i.i.i = add i64 %55, 1
  store i64 %inc.i.i.i, ptr %11, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #10
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %56 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %57
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %53) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !141
  %58 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !142
  %and.i.i.i4.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !116

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #10, !srcloc !143
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %61 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %62(ptr noundef %ctx, ptr noundef %insnsi15.i.i) #10
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  tail call void @migrate_enable() #10
  ret i32 %ret.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unreserve_rx_kcm(ptr nocapture noundef %psock, i1 noundef zeroext %rcv_ready) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_kcm = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 12
  %0 = ptrtoint ptr %rx_kcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_kcm, align 4
  %mux1 = getelementptr inbounds %struct.kcm_psock, ptr %psock, i32 0, i32 2
  %2 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_lock = getelementptr inbounds %struct.kcm_mux, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #10
  %4 = ptrtoint ptr %rx_kcm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rx_kcm, align 4
  %rx_psock = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %rx_psock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_psock, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !144
  %done = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %done, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.end20, label %if.then9, !prof !105

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #10
  %done_work = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 5
  tail call void @__init_work(ptr noundef %done_work, i32 noundef 0) #10
  %7 = ptrtoint ptr %done_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %done_work, align 4
  %lockdep_map = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @unreserve_rx_kcm.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry15 = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 5, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kcm_done_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %done_work) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %rx_disabled = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %rx_disabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load21 = load i8, ptr %rx_disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load21)
  %tobool24.not = icmp sgt i8 %bf.load21, -1
  br i1 %tobool24.not, label %if.else, label %if.then31, !prof !105

if.then31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  tail call fastcc void @requeue_rx_msgs(ptr noundef %3, ptr noundef %sk_receive_queue)
  br label %if.end46

if.else:                                          ; preds = %if.end20
  br i1 %rcv_ready, label %if.else.if.then44_crit_edge, label %lor.lhs.false

if.else.if.then44_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.else
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_backlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool35.not = icmp eq i32 %14, 0
  br i1 %tobool35.not, label %lor.lhs.false.if.then44_crit_edge, label %lor.lhs.false.if.end46_crit_edge, !prof !116

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.else.if.then44_crit_edge
  tail call fastcc void @kcm_rcv_ready(ptr noundef nonnull %1)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %lor.lhs.false.if.end46_crit_edge, %if.then31
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcm_done_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -980
  tail call fastcc void @kcm_done(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @strp_data_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_file(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kcm_recv_enable(ptr noundef %kcm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_disabled = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 17
  %0 = ptrtoint ptr %rx_disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rx_disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mux1 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 1
  %1 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mux1, align 8
  %rx_lock = getelementptr inbounds %struct.kcm_mux, ptr %2, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #10
  %3 = ptrtoint ptr %rx_disabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load3 = load i8, ptr %rx_disabled, align 1
  %bf.clear = and i8 %bf.load3, 127
  store i8 %bf.clear, ptr %rx_disabled, align 1
  tail call fastcc void @kcm_rcv_ready(ptr noundef %kcm)
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_memory(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kcm_write_msgs(ptr noundef %kcm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_wait_more = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 13
  %0 = ptrtoint ptr %tx_wait_more to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_wait_more, align 2
  %tx_psock = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 7
  %1 = ptrtoint ptr %tx_psock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_psock, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.rhs

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.rhs:                                         ; preds = %entry
  %tx_stopped = getelementptr inbounds %struct.kcm_psock, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %tx_stopped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool2 = icmp slt i8 %bf.load, 0
  br i1 %tobool2, label %if.then, label %land.rhs.if.else_crit_edge, !prof !116

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.rhs
  tail call fastcc void @unreserve_psock(ptr noundef %kcm)
  tail call fastcc void @kcm_report_tx_retry(ptr noundef %kcm)
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 26
  %4 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i = icmp eq ptr %5, %sk_write_queue
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cb.i, align 4
  br label %if.end16

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %entry.if.else_crit_edge
  %sk_write_queue11 = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 26
  %7 = ptrtoint ptr %sk_write_queue11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_write_queue11, align 4
  %cmp.i331.not = icmp eq ptr %8, %sk_write_queue11
  br i1 %cmp.i331.not, label %if.else.cleanup_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.end
  %sk_write_queue17 = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 26
  %9 = ptrtoint ptr %sk_write_queue17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_write_queue17, align 4
  %cmp.i333 = icmp eq ptr %10, %sk_write_queue17
  %spec.store.select.i334 = select i1 %cmp.i333, ptr null, ptr %10
  %cb.i335 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i334, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i335 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb.i335, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %if.end16.try_again_crit_edge, label %if.then22

if.end16.try_again_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again

if.then22:                                        ; preds = %if.end16
  br i1 %tobool.not, label %do.end, label %if.end53, !prof !116

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 606, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end53:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %frag_offset55 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i334, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %frag_offset55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frag_offset55, align 4
  %fragidx56 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i334, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %fragidx56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fragidx56, align 4
  %conv57 = trunc i32 %16 to i16
  %frag_skb = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i334, i32 0, i32 3, i32 16
  %17 = ptrtoint ptr %frag_skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frag_skb, align 4
  br label %do_frag.preheader

try_again:                                        ; preds = %cond.end, %if.end16.try_again_crit_edge
  %head.0 = phi ptr [ %head.4.ph, %cond.end ], [ %spec.store.select.i334, %if.end16.try_again_crit_edge ]
  %total_sent.0 = phi i32 [ %total_sent.4.ph, %cond.end ], [ 0, %if.end16.try_again_crit_edge ]
  %mux1.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 1
  %19 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mux1.i, align 8
  %21 = ptrtoint ptr %tx_psock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_psock, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %try_again.if.end39.i_crit_edge, label %if.then.i

try_again.if.end39.i_crit_edge:                   ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then.i:                                        ; preds = %try_again
  %tx_wait.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 12
  %23 = ptrtoint ptr %tx_wait.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_wait.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not.i = icmp eq i8 %24, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end17.i, !prof !105

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end17.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 445, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end17.i, %if.then.i.if.end.i_crit_edge
  %tx_stopped.i = getelementptr inbounds %struct.kcm_psock, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %tx_stopped.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %tx_stopped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool29.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool29.not.i, label %if.else.i, label %if.then36.i, !prof !105

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @unreserve_psock(ptr noundef %kcm) #10
  br label %if.end39.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %tx_psock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_psock, align 8
  br label %reserve_psock.exit

if.end39.i:                                       ; preds = %if.then36.i, %try_again.if.end39.i_crit_edge
  %lock.i = getelementptr inbounds %struct.kcm_mux, ptr %20, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %28 = ptrtoint ptr %tx_psock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_psock, align 8
  %tobool41.not.i = icmp eq ptr %29, null
  br i1 %tobool41.not.i, label %if.end83.i, label %if.then48.i, !prof !105

if.then48.i:                                      ; preds = %if.end39.i
  %tx_wait50.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 12
  %30 = ptrtoint ptr %tx_wait50.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tx_wait50.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool51.not.i = icmp eq i8 %31, 0
  br i1 %tobool51.not.i, label %if.then48.i.if.end73.i_crit_edge, label %do.end67.i, !prof !105

if.then48.i.if.end73.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

do.end67.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 459, i32 noundef 9, ptr noundef null) #10
  br label %if.end73.i

if.end73.i:                                       ; preds = %do.end67.i, %if.then48.i.if.end73.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %32 = ptrtoint ptr %tx_psock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_psock, align 8
  br label %reserve_psock.exit

if.end83.i:                                       ; preds = %if.end39.i
  %psocks_avail.i = getelementptr inbounds %struct.kcm_mux, ptr %20, i32 0, i32 17
  %34 = ptrtoint ptr %psocks_avail.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %psocks_avail.i, align 4
  %cmp.i.not.i = icmp eq ptr %35, %psocks_avail.i
  br i1 %cmp.i.not.i, label %if.else94.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.end83.i
  %add.ptr.i = getelementptr i8, ptr %35, i32 -352
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then85.i.list_del.exit.i_crit_edge

if.then85.i.list_del.exit.i_crit_edge:            ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then85.i.list_del.exit.i_crit_edge
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tx_wait88.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 12
  %44 = ptrtoint ptr %tx_wait88.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_wait88.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool89.not.i = icmp eq i8 %45, 0
  br i1 %tobool89.not.i, label %list_del.exit.i.if.end92.i_crit_edge, label %if.then90.i

list_del.exit.i.if.end92.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.then90.i:                                      ; preds = %list_del.exit.i
  %wait_psock_list.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 9
  %call.i.i134.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %wait_psock_list.i) #10
  br i1 %call.i.i134.i, label %if.end.i.i137.i, label %if.then90.i.list_del.exit139.i_crit_edge

if.then90.i.list_del.exit139.i_crit_edge:         ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit139.i

if.end.i.i137.i:                                  ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i135.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %prev.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i135.i, align 4
  %48 = ptrtoint ptr %wait_psock_list.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wait_psock_list.i, align 4
  %prev1.i.i.i136.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i136.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit139.i

list_del.exit139.i:                               ; preds = %if.end.i.i137.i, %if.then90.i.list_del.exit139.i_crit_edge
  %52 = ptrtoint ptr %wait_psock_list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %wait_psock_list.i, align 4
  %prev.i138.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %prev.i138.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i138.i, align 4
  %54 = ptrtoint ptr %tx_wait88.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %tx_wait88.i, align 1
  br label %if.end92.i

if.end92.i:                                       ; preds = %list_del.exit139.i, %list_del.exit.i.if.end92.i_crit_edge
  %55 = ptrtoint ptr %tx_psock to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i, ptr %tx_psock, align 8
  %tx_kcm.i = getelementptr i8, ptr %35, i32 -4
  %56 = ptrtoint ptr %tx_kcm.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %kcm, ptr %tx_kcm.i, align 4
  %reserved.i = getelementptr i8, ptr %35, i32 -64
  %57 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %reserved.i, align 8
  %inc.i = add i64 %58, 1
  store i64 %inc.i, ptr %reserved.i, align 8
  br label %if.end101.i

if.else94.i:                                      ; preds = %if.end83.i
  %tx_wait95.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 12
  %59 = ptrtoint ptr %tx_wait95.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tx_wait95.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool96.not.i = icmp eq i8 %60, 0
  br i1 %tobool96.not.i, label %if.then97.i, label %if.else94.i.if.end101.i_crit_edge

if.else94.i.if.end101.i_crit_edge:                ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101.i

if.then97.i:                                      ; preds = %if.else94.i
  %wait_psock_list98.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 9
  %kcm_tx_waiters.i = getelementptr inbounds %struct.kcm_mux, ptr %20, i32 0, i32 18
  %prev.i140.i = getelementptr inbounds %struct.kcm_mux, ptr %20, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev.i140.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i140.i, align 4
  %call.i.i141.i = tail call zeroext i1 @__list_add_valid(ptr noundef %wait_psock_list98.i, ptr noundef %62, ptr noundef %kcm_tx_waiters.i) #10
  br i1 %call.i.i141.i, label %if.end.i.i142.i, label %if.then97.i.list_add_tail.exit.i_crit_edge

if.then97.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i142.i:                                  ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %prev.i140.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %wait_psock_list98.i, ptr %prev.i140.i, align 4
  %64 = ptrtoint ptr %wait_psock_list98.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %kcm_tx_waiters.i, ptr %wait_psock_list98.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %wait_psock_list98.i, ptr %62, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i142.i, %if.then97.i.list_add_tail.exit.i_crit_edge
  %67 = ptrtoint ptr %tx_wait95.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %tx_wait95.i, align 1
  br label %if.end101.i

if.end101.i:                                      ; preds = %list_add_tail.exit.i, %if.else94.i.if.end101.i_crit_edge, %if.end92.i
  %psock.0.i = phi ptr [ null, %if.else94.i.if.end101.i_crit_edge ], [ null, %list_add_tail.exit.i ], [ %add.ptr.i, %if.end92.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %reserve_psock.exit

reserve_psock.exit:                               ; preds = %if.end101.i, %if.end73.i, %if.else.i
  %retval.0.i = phi ptr [ %33, %if.end73.i ], [ %psock.0.i, %if.end101.i ], [ %27, %if.else.i ]
  %tobool60.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool60.not, label %reserve_psock.exit.out_crit_edge, label %reserve_psock.exit.do.body63_crit_edge

reserve_psock.exit.do.body63_crit_edge:           ; preds = %reserve_psock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

reserve_psock.exit.out_crit_edge:                 ; preds = %reserve_psock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body63:                                        ; preds = %if.end193.do.body63_crit_edge, %reserve_psock.exit.do.body63_crit_edge
  %head.1 = phi ptr [ %head.0, %reserve_psock.exit.do.body63_crit_edge ], [ %111, %if.end193.do.body63_crit_edge ]
  %total_sent.1 = phi i32 [ %total_sent.0, %reserve_psock.exit.do.body63_crit_edge ], [ %add197, %if.end193.do.body63_crit_edge ]
  %ret.1 = phi i32 [ 0, %reserve_psock.exit.do.body63_crit_edge ], [ %ret.3, %if.end193.do.body63_crit_edge ]
  %psock.0 = phi ptr [ %retval.0.i, %reserve_psock.exit.do.body63_crit_edge ], [ %psock.2, %if.end193.do.body63_crit_edge ]
  %cb.i336 = getelementptr inbounds %struct.sk_buff, ptr %head.1, i32 0, i32 3
  br label %do_frag_list

do_frag_list:                                     ; preds = %if.else188.do_frag_list_crit_edge, %if.then183.do_frag_list_crit_edge, %do.body63
  %head.2 = phi ptr [ %head.1, %do.body63 ], [ %head.3, %if.else188.do_frag_list_crit_edge ], [ %head.3, %if.then183.do_frag_list_crit_edge ]
  %txm.0 = phi ptr [ %cb.i336, %do.body63 ], [ %txm.1, %if.else188.do_frag_list_crit_edge ], [ %txm.1, %if.then183.do_frag_list_crit_edge ]
  %sent.0 = phi i32 [ 0, %do.body63 ], [ %sent.1, %if.else188.do_frag_list_crit_edge ], [ %sent.1, %if.then183.do_frag_list_crit_edge ]
  %total_sent.2 = phi i32 [ %total_sent.1, %do.body63 ], [ %total_sent.3, %if.else188.do_frag_list_crit_edge ], [ %total_sent.3, %if.then183.do_frag_list_crit_edge ]
  %ret.2 = phi i32 [ %ret.1, %do.body63 ], [ %ret.3, %if.else188.do_frag_list_crit_edge ], [ %ret.3, %if.then183.do_frag_list_crit_edge ]
  %skb.0 = phi ptr [ %head.1, %do.body63 ], [ %105, %if.else188.do_frag_list_crit_edge ], [ %103, %if.then183.do_frag_list_crit_edge ]
  %psock.1 = phi ptr [ %psock.0, %do.body63 ], [ %psock.2, %if.else188.do_frag_list_crit_edge ], [ %psock.2, %if.then183.do_frag_list_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool67.not = icmp eq i8 %71, 0
  br i1 %tobool67.not, label %do.end85, label %do_frag_list.for.cond_crit_edge, !prof !116

do_frag_list.for.cond_crit_edge:                  ; preds = %do_frag_list
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.end85:                                         ; preds = %do_frag_list
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 629, i32 noundef 9, ptr noundef null) #10
  br label %out

for.cond:                                         ; preds = %for.inc, %do_frag_list.for.cond_crit_edge
  %head.3 = phi ptr [ %head.4.ph, %for.inc ], [ %head.2, %do_frag_list.for.cond_crit_edge ]
  %txm.1 = phi ptr [ %txm.2.ph, %for.inc ], [ %txm.0, %do_frag_list.for.cond_crit_edge ]
  %fragidx.0 = phi i16 [ %inc, %for.inc ], [ 0, %do_frag_list.for.cond_crit_edge ]
  %sent.1 = phi i32 [ %add169, %for.inc ], [ %sent.0, %do_frag_list.for.cond_crit_edge ]
  %total_sent.3 = phi i32 [ %total_sent.4.ph, %for.inc ], [ %total_sent.2, %do_frag_list.for.cond_crit_edge ]
  %ret.3 = phi i32 [ %call151, %for.inc ], [ %ret.2, %do_frag_list.for.cond_crit_edge ]
  %skb.1 = phi ptr [ %skb.2.ph, %for.inc ], [ %skb.0, %do_frag_list.for.cond_crit_edge ]
  %psock.2 = phi ptr [ %psock.3.ph, %for.inc ], [ %psock.1, %do_frag_list.for.cond_crit_edge ]
  %end.i337 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 17
  %72 = ptrtoint ptr %end.i337 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i337, align 4
  %nr_frags104 = getelementptr inbounds %struct.skb_shared_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %nr_frags104 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nr_frags104, align 2
  %76 = zext i8 %75 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %fragidx.0, i16 %76)
  %cmp = icmp ult i16 %fragidx.0, %76
  br i1 %cmp, label %for.cond.do_frag.preheader_crit_edge, label %for.end

for.cond.do_frag.preheader_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_frag.preheader

do_frag.preheader:                                ; preds = %for.cond.do_frag.preheader_crit_edge, %if.end53
  %head.4.ph = phi ptr [ %head.3, %for.cond.do_frag.preheader_crit_edge ], [ %spec.store.select.i334, %if.end53 ]
  %txm.2.ph = phi ptr [ %txm.1, %for.cond.do_frag.preheader_crit_edge ], [ %cb.i335, %if.end53 ]
  %fragidx.1.ph = phi i16 [ %fragidx.0, %for.cond.do_frag.preheader_crit_edge ], [ %conv57, %if.end53 ]
  %frag_offset.0.ph = phi i32 [ 0, %for.cond.do_frag.preheader_crit_edge ], [ %14, %if.end53 ]
  %sent.2.ph = phi i32 [ %sent.1, %for.cond.do_frag.preheader_crit_edge ], [ %12, %if.end53 ]
  %total_sent.4.ph = phi i32 [ %total_sent.3, %for.cond.do_frag.preheader_crit_edge ], [ 0, %if.end53 ]
  %skb.2.ph = phi ptr [ %skb.1, %for.cond.do_frag.preheader_crit_edge ], [ %18, %if.end53 ]
  %psock.3.ph = phi ptr [ %psock.2, %for.cond.do_frag.preheader_crit_edge ], [ %2, %if.end53 ]
  %end.i338 = getelementptr inbounds %struct.sk_buff, ptr %skb.2.ph, i32 0, i32 17
  %idxprom = zext i16 %fragidx.1.ph to i32
  %tx_bytes = getelementptr inbounds %struct.kcm_psock, ptr %psock.3.ph, i32 0, i32 9, i32 1
  br label %do_frag

do_frag:                                          ; preds = %if.end168.do_frag_crit_edge, %do_frag.preheader
  %frag_offset.0 = phi i32 [ %add171, %if.end168.do_frag_crit_edge ], [ %frag_offset.0.ph, %do_frag.preheader ]
  %sent.2 = phi i32 [ %add169, %if.end168.do_frag_crit_edge ], [ %sent.2.ph, %do_frag.preheader ]
  %77 = ptrtoint ptr %end.i338 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i338, align 4
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %idxprom, i32 1
  %79 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool110.not = icmp eq i32 %80, 0
  br i1 %tobool110.not, label %do.end128, label %if.end144, !prof !116

do.end128:                                        ; preds = %do_frag
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 641, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end144:                                        ; preds = %do_frag
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %idxprom
  %81 = ptrtoint ptr %psock.3.ph to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %psock.3.ph, align 8
  %sk_socket = getelementptr inbounds %struct.sock, ptr %82, i32 0, i32 71
  %83 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sk_socket, align 8
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %idxprom, i32 2
  %87 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bv_offset.i, align 4
  %conv148 = and i32 %frag_offset.0, 65535
  %add = add i32 %88, %conv148
  %sub = sub i32 %80, %conv148
  %call151 = tail call i32 @kernel_sendpage(ptr noundef %84, ptr noundef %86, i32 noundef %add, i32 noundef %sub, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 1
  br i1 %cmp152, label %if.then154, label %if.end168

if.then154:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call151)
  %cond = icmp eq i32 %call151, -11
  br i1 %cond, label %if.then157, label %cond.end

if.then157:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %txm.2.ph to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sent.2, ptr %txm.2.ph, align 4
  %frag_offset160 = getelementptr inbounds %struct.kcm_tx_msg, ptr %txm.2.ph, i32 0, i32 2
  %90 = ptrtoint ptr %frag_offset160 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv148, ptr %frag_offset160, align 4
  %fragidx162 = getelementptr inbounds %struct.kcm_tx_msg, ptr %txm.2.ph, i32 0, i32 1
  %91 = ptrtoint ptr %fragidx162 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %idxprom, ptr %fragidx162, align 4
  %frag_skb163 = getelementptr inbounds %struct.kcm_tx_msg, ptr %txm.2.ph, i32 0, i32 4
  %92 = ptrtoint ptr %frag_skb163 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %skb.2.ph, ptr %frag_skb163, align 4
  br label %out

cond.end:                                         ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @kcm_abort_tx_psock(ptr noundef %psock.3.ph, i1 noundef zeroext true)
  tail call fastcc void @unreserve_psock(ptr noundef %kcm)
  %93 = ptrtoint ptr %txm.2.ph to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %txm.2.ph, align 4
  %mux1.i340 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 1
  %94 = ptrtoint ptr %mux1.i340 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mux1.i340, align 8
  %lock.i341 = getelementptr inbounds %struct.kcm_mux, ptr %95, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i341) #10
  %tx_retries.i = getelementptr inbounds %struct.kcm_mux, ptr %95, i32 0, i32 7, i32 5
  %96 = ptrtoint ptr %tx_retries.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_retries.i, align 4
  %inc.i342 = add i32 %97, 1
  store i32 %inc.i342, ptr %tx_retries.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i341) #10
  br label %try_again

if.end168:                                        ; preds = %if.end144
  %add169 = add i32 %call151, %sent.2
  %add171 = add nuw i32 %call151, %conv148
  %conv173358 = zext i32 %call151 to i64
  %98 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %tx_bytes, align 8
  %add174 = add i64 %99, %conv173358
  store i64 %add174, ptr %tx_bytes, align 8
  %conv175 = and i32 %add171, 65535
  %100 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bv_len.i, align 4
  %cmp177 = icmp ult i32 %conv175, %101
  br i1 %cmp177, label %if.end168.do_frag_crit_edge, label %for.inc

if.end168.do_frag_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_frag

for.inc:                                          ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i16 %fragidx.1.ph, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %cmp181 = icmp eq ptr %skb.1, %head.3
  br i1 %cmp181, label %if.then183, label %if.else188

if.then183:                                       ; preds = %for.end
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %73, i32 0, i32 6
  %102 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %frag_list.i, align 8
  %cmp.i344.not = icmp eq ptr %103, null
  br i1 %cmp.i344.not, label %if.then183.if.end193_crit_edge, label %if.then183.do_frag_list_crit_edge

if.then183.do_frag_list_crit_edge:                ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_frag_list

if.then183.if.end193_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.else188:                                       ; preds = %for.end
  %104 = ptrtoint ptr %skb.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %skb.1, align 8
  %tobool189.not = icmp eq ptr %105, null
  br i1 %tobool189.not, label %if.else188.if.end193_crit_edge, label %if.else188.do_frag_list_crit_edge

if.else188.do_frag_list_crit_edge:                ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_frag_list

if.else188.if.end193_crit_edge:                   ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.end193:                                        ; preds = %if.else188.if.end193_crit_edge, %if.then183.if.end193_crit_edge
  %call195 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue17) #10
  tail call void @kfree_skb_reason(ptr noundef %head.3, i32 noundef 0) #10
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 22
  %106 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sk_wmem_queued, align 8
  %sub196 = sub i32 %107, %sent.1
  store i32 %sub196, ptr %sk_wmem_queued, align 8
  %add197 = add i32 %total_sent.3, %sent.1
  %stats198 = getelementptr inbounds %struct.kcm_psock, ptr %psock.2, i32 0, i32 9
  %108 = ptrtoint ptr %stats198 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %stats198, align 8
  %inc199 = add i64 %109, 1
  store i64 %inc199, ptr %stats198, align 8
  %110 = ptrtoint ptr %sk_write_queue17 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sk_write_queue17, align 4
  %cmp.i346 = icmp eq ptr %111, %sk_write_queue17
  %tobool203.not359 = icmp eq ptr %111, null
  %tobool203.not = or i1 %cmp.i346, %tobool203.not359
  br i1 %tobool203.not, label %if.end193.if.then206_crit_edge, label %if.end193.do.body63_crit_edge

if.end193.do.body63_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.end193.if.then206_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then206

out:                                              ; preds = %if.then157, %do.end128, %do.end85, %reserve_psock.exit.out_crit_edge, %do.end
  %head.5 = phi ptr [ %spec.store.select.i334, %do.end ], [ %head.4.ph, %do.end128 ], [ %head.4.ph, %if.then157 ], [ %head.2, %do.end85 ], [ %head.0, %reserve_psock.exit.out_crit_edge ]
  %total_sent.5 = phi i32 [ 0, %do.end ], [ %total_sent.4.ph, %do.end128 ], [ %total_sent.4.ph, %if.then157 ], [ %total_sent.2, %do.end85 ], [ %total_sent.0, %reserve_psock.exit.out_crit_edge ]
  %ret.4 = phi i32 [ -22, %do.end ], [ -22, %do.end128 ], [ 0, %if.then157 ], [ -22, %do.end85 ], [ 0, %reserve_psock.exit.out_crit_edge ]
  %tobool205.not = icmp eq ptr %head.5, null
  br i1 %tobool205.not, label %out.if.then206_crit_edge, label %out.if.end242_crit_edge

out.if.end242_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end242

out.if.then206_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then206

if.then206:                                       ; preds = %out.if.then206_crit_edge, %if.end193.if.then206_crit_edge
  %ret.4357 = phi i32 [ %ret.4, %out.if.then206_crit_edge ], [ %ret.3, %if.end193.if.then206_crit_edge ]
  %total_sent.5355 = phi i32 [ %total_sent.5, %out.if.then206_crit_edge ], [ %add197, %if.end193.if.then206_crit_edge ]
  %112 = ptrtoint ptr %sk_write_queue17 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sk_write_queue17, align 4
  %cmp.i348.not = icmp eq ptr %113, %sk_write_queue17
  br i1 %cmp.i348.not, label %if.then206.if.end234_crit_edge, label %do.end228, !prof !105

if.then206.if.end234_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234

do.end228:                                        ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 710, i32 noundef 9, ptr noundef null) #10
  br label %if.end234

if.end234:                                        ; preds = %do.end228, %if.then206.if.end234_crit_edge
  tail call fastcc void @unreserve_psock(ptr noundef %kcm)
  br label %if.end242

if.end242:                                        ; preds = %if.end234, %out.if.end242_crit_edge
  %ret.4356 = phi i32 [ %ret.4357, %if.end234 ], [ %ret.4, %out.if.end242_crit_edge ]
  %total_sent.5354 = phi i32 [ %total_sent.5355, %if.end234 ], [ %total_sent.5, %out.if.end242_crit_edge ]
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %kcm, i32 0, i32 78
  %114 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sk_write_space, align 4
  tail call void %115(ptr noundef %kcm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_sent.5354)
  %tobool243.not = icmp eq i32 %total_sent.5354, 0
  %spec.select = select i1 %tobool243.not, i32 %ret.4356, i32 %total_sent.5354
  br label %cleanup

cleanup:                                          ; preds = %if.end242, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end242 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_from_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter_nocache(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kcm_report_tx_retry(ptr nocapture noundef readonly %kcm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mux1 = getelementptr inbounds %struct.kcm_sock, ptr %kcm, i32 0, i32 1
  %0 = ptrtoint ptr %mux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux1, align 8
  %lock = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %tx_retries = getelementptr inbounds %struct.kcm_mux, ptr %1, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %tx_retries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_retries, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_retries, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kcm_wait_data(ptr noundef %sk, i32 noundef %flags, i32 noundef %timeo, ptr nocapture noundef writeonly %err) unnamed_addr #2 align 64 {
entry:
  %timeo.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timeo.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeo, ptr %timeo.addr, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %1 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %3, %sk_receive_queue
  %tobool.not29 = icmp eq ptr %3, null
  %tobool.not = or i1 %cmp.i, %tobool.not29
  br i1 %tobool.not, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %sock_error.exit

sock_error.exit:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !146
  call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #10
  %6 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #10, !srcloc !147
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  %sub.i = sub i32 0, %asmresult.i.i
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %1, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end5
  %10 = ptrtoint ptr %timeo.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeo.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end9

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = call i32 @sk_wait_data(ptr noundef %sk, ptr noundef nonnull %timeo.addr, ptr noundef null) #10
  %12 = call i32 @llvm.read_register.i32(metadata !95) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i23 = icmp eq i32 %20, 0
  br i1 %tobool.not.i23, label %signal_pending.exit, label %if.end9.if.then14_crit_edge, !prof !105

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

signal_pending.exit:                              ; preds = %if.end9
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i = and i32 %22, 1
  %tobool13.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool13.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.if.then14_crit_edge

signal_pending.exit.if.then14_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then14:                                        ; preds = %signal_pending.exit.if.then14_crit_edge, %if.end9.if.then14_crit_edge
  %23 = ptrtoint ptr %timeo.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeo.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %24)
  %cmp.i26 = icmp eq i32 %24, 2147483647
  %cond.i = select i1 %cmp.i26, i32 -512, i32 -4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %sock_error.exit
  %cond.i.sink = phi i32 [ %cond.i, %if.then14 ], [ %sub.i, %sock_error.exit ], [ -11, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -11, %if.end5.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i.sink, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %cleanup.sink.split ], [ %3, %while.cond.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_wait_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcm_splice_read(ptr nocapture noundef readonly %sock, ptr nocapture noundef readnone %ppos, ptr noundef %pipe, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %3 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %call3 = call fastcc ptr @kcm_wait_data(ptr noundef %1, i32 noundef %flags, i32 noundef %cond.i, ptr noundef nonnull %err)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %sock_rcvtimeo.exit.err_out_crit_edge, label %if.end

sock_rcvtimeo.exit.err_out_crit_edge:             ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end:                                           ; preds = %sock_rcvtimeo.exit
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 20
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %len)
  %offset = getelementptr %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %call9 = tail call i32 @skb_splice_bits(ptr noundef nonnull %call3, ptr noundef %1, i32 noundef %9, ptr noundef %pipe, i32 noundef %7, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call9, ptr %err, align 4
  br label %err_out

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv42 = zext i32 %call9 to i64
  %rx_bytes = getelementptr inbounds %struct.kcm_sock, ptr %1, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_bytes, align 8
  %add = add i64 %12, %conv42
  store i64 %add, ptr %rx_bytes, align 8
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add14 = add i32 %14, %call9
  store i32 %add14, ptr %offset, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %sub = sub i32 %16, %call9
  store i32 %sub, ptr %add.ptr.i, align 4
  tail call void @release_sock(ptr noundef %1) #10
  br label %cleanup

err_out:                                          ; preds = %if.then11, %sock_rcvtimeo.exit.err_out_crit_edge
  tail call void @release_sock(ptr noundef %1) #10
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end12
  %retval.0 = phi i32 [ %18, %err_out ], [ %call9, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_splice_bits(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcm_tx_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -1060
  tail call void @lock_sock_nested(ptr noundef %add.ptr, i32 noundef 0) #10
  %call = tail call fastcc i32 @kcm_write_msgs(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call) #14
  %sk_err.i = getelementptr i8, ptr %w, i32 -368
  %0 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef %add.ptr) #10
  br label %out

if.end:                                           ; preds = %entry
  %sk_socket = getelementptr i8, ptr %w, i32 -180
  %1 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %land.lhs.true, !prof !116

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.socket, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %land.lhs.true.out_crit_edge, label %if.then10

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  %sk_write_space = getelementptr i8, ptr %w, i32 -144
  %6 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_write_space, align 4
  tail call void %7(ptr noundef %add.ptr) #10
  br label %out

out:                                              ; preds = %if.then10, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %do.end
  tail call void @release_sock(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48, !49, !51, !52, !54, !56, !57, !59, !61, !63, !65, !67, !68, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84, !86, !87, !89, !90, !92, !93, !94}
!llvm.named.register.sp = !{!95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_kcm__561_2102_kcm_init6, !1, !"__initcall__kmod_kcm__561_2102_kcm_init6", i1 false, i1 false}
!1 = !{!"../net/kcm/kcmsock.c", i32 2102, i32 1}
!2 = !{ptr @__exitcall_kcm_exit, !3, !"__exitcall_kcm_exit", i1 false, i1 false}
!3 = !{!"../net/kcm/kcmsock.c", i32 2103, i32 1}
!4 = !{ptr @__UNIQUE_ID_file562, !5, !"__UNIQUE_ID_file562", i1 false, i1 false}
!5 = !{!"../net/kcm/kcmsock.c", i32 2105, i32 1}
!6 = !{ptr @__UNIQUE_ID_license563, !5, !"__UNIQUE_ID_license563", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias564, !8, !"__UNIQUE_ID_alias564", i1 false, i1 false}
!8 = !{!"../net/kcm/kcmsock.c", i32 2106, i32 1}
!9 = !{ptr @kcm_net_id, !10, !"kcm_net_id", i1 false, i1 false}
!10 = !{!"../net/kcm/kcmsock.c", i32 32, i32 14}
!11 = !{ptr @kcm_psockp, !12, !"kcm_psockp", i1 false, i1 false}
!12 = !{!"../net/kcm/kcmsock.c", i32 34, i32 27}
!13 = !{ptr @kcm_muxp, !14, !"kcm_muxp", i1 false, i1 false}
!14 = !{!"../net/kcm/kcmsock.c", i32 35, i32 27}
!15 = !{ptr @kcm_wq, !16, !"kcm_wq", i1 false, i1 false}
!16 = !{!"../net/kcm/kcmsock.c", i32 36, i32 33}
!17 = !{ptr @kcm_net_ops, !18, !"kcm_net_ops", i1 false, i1 false}
!18 = !{!"../net/kcm/kcmsock.c", i32 2026, i32 33}
!19 = !{ptr @kcm_init_net.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../net/kcm/kcmsock.c", i32 2011, i32 2}
!21 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/kcm/kcmsock.c", i32 2023, i32 2}
!35 = !{ptr @kcm_proto, !36, !"kcm_proto", i1 false, i1 false}
!36 = !{!"../net/kcm/kcmsock.c", i32 1652, i32 21}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/kcm/kcmsock.c", i32 2037, i32 31}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/kcm/kcmsock.c", i32 2043, i32 33}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/kcm/kcmsock.c", i32 2049, i32 11}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @kcm_family_ops, !45, !"kcm_family_ops", i1 false, i1 false}
!45 = !{!"../net/kcm/kcmsock.c", i32 2000, i32 38}
!46 = !{ptr @kcm_create.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/kcm/kcmsock.c", i32 1973, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @kcm_create.__key.12, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/kcm/kcmsock.c", i32 1974, i32 2}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @kcm_dgram_ops, !53, !"kcm_dgram_ops", i1 false, i1 false}
!53 = !{!"../net/kcm/kcmsock.c", i32 1897, i32 31}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!56 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!61 = !{ptr @kcm_attach.cb, !62, !"cb", i1 false, i1 false}
!62 = !{!"../net/kcm/kcmsock.c", i32 1379, i32 37}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/filter.h", i32 613, i32 2}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @unreserve_rx_kcm.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../net/kcm/kcmsock.c", i32 326, i32 3}
!70 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/kcm/kcmsock.c", i32 1042, i32 5}
!73 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @kcm_sendmsg._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @kcm_sendmsg._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/kcm/kcmsock.c", i32 871, i32 5}
!80 = !{ptr @kcm_sendpage._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @kcm_sendpage._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @kcm_seqpacket_ops, !83, !"kcm_seqpacket_ops", i1 false, i1 false}
!83 = !{!"../net/kcm/kcmsock.c", i32 1918, i32 31}
!84 = !{ptr @skb_queue_head_init.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!86 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @init_kcm_sock.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../net/kcm/kcmsock.c", i32 1363, i32 2}
!89 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/kcm/kcmsock.c", i32 734, i32 3}
!92 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @kcm_tx_work._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @kcm_tx_work._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{!"sp"}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2149719657}
!107 = !{i64 2149719923}
!108 = !{i64 2152285354}
!109 = !{i8 0, i8 2}
!110 = !{!"auto-init"}
!111 = !{i64 2153359283, i64 2153359308}
!112 = !{i64 5854838}
!113 = !{i64 5855035}
!114 = !{i64 2153340268}
!115 = !{i64 2148729866, i64 2148729898, i64 2148729927, i64 2148729961, i64 2148729992, i64 2148730015}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{i64 2158821448}
!118 = !{i64 2153359964, i64 2153359989}
!119 = !{i64 2158843603, i64 2158843883, i64 2158844217, i64 2158844551}
!120 = !{i64 2158854958, i64 2158855238, i64 2158855572, i64 2158855906}
!121 = !{i64 2153733116, i64 2153733600, i64 2153733153, i64 2153733209, i64 2153733243, i64 2153733267, i64 2153733308, i64 2153733329, i64 2153733357, i64 2153733391}
!122 = !{i64 2148728336, i64 2148728362, i64 2148728391, i64 2148728425, i64 2148728456, i64 2148728479}
!123 = !{i64 2149289662, i64 2149289667, i64 2149289680, i64 2149289724, i64 2149289758, i64 2149289779}
!124 = !{i64 2158803307}
!125 = !{i64 2158822133}
!126 = !{i64 2148817891}
!127 = !{i64 2148732331, i64 2148732363, i64 2148732392, i64 2148732426, i64 2148732457, i64 2148732480}
!128 = !{i64 2150281207}
!129 = !{i64 2158808592}
!130 = !{i64 2155202804, i64 2155203292, i64 2155202841, i64 2155202897, i64 2155202931, i64 2155202955, i64 2155202996, i64 2155203017, i64 2155203045, i64 2155203079}
!131 = !{i64 2148730801, i64 2148730827, i64 2148730856, i64 2148730890, i64 2148730921, i64 2148730944}
!132 = !{i64 2158806708}
!133 = !{i64 2158806509}
!134 = !{i64 2158867152}
!135 = !{i64 1132036, i64 1132097}
!136 = !{i64 2150087834}
!137 = !{i64 2150092766}
!138 = !{i64 2150114478}
!139 = !{i64 2150119370}
!140 = !{i64 2150199888}
!141 = !{i64 2150200213}
!142 = !{i64 1134768}
!143 = !{i64 1135053}
!144 = !{i64 2158812091}
!145 = !{i64 2158816814}
!146 = !{i64 2157378744}
!147 = !{i64 1235104, i64 1235121, i64 1235145, i64 1235171, i64 1235189}
!148 = !{i64 2157379087}
