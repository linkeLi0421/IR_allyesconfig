; ModuleID = '/llk/IR_all_yes/net/nfc/llcp_sock.c_pt.bc'
source_filename = "../net/nfc/llcp_sock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
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
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }
%struct.nfc_protocol = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.nfc_llcp_sock = type { %struct.sock, ptr, ptr, i32, i32, i8, i8, ptr, i32, i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.list_head, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.140, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.141, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.142, ptr, %struct.address_space, %struct.list_head, %union.anon.143, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.140 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.141 = type { %struct.callback_head }
%union.anon.142 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.143 = type { ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nfc_llcp_local = type { %struct.list_head, ptr, %struct.kref, %struct.mutex, %struct.timer_list, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, ptr, %struct.work_struct, i32, i8, i8, i8, i8, i16, i32, i32, i32, [16 x %struct.atomic_t], [48 x i8], i8, [48 x i8], i8, i8, i16, i16, i8, i16, %struct.mutex, %struct.hlist_head, %struct.timer_list, %struct.work_struct, i8, %struct.llcp_sock_list, %struct.llcp_sock_list, %struct.llcp_sock_list }
%struct.llcp_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.sockaddr_nfc_llcp = type { i16, i32, i32, i32, i8, i8, [63 x i8], i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.113, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.111 }
%union.anon.4 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.113 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@nfc_llcp_accept_unlink.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfc_llcp_accept_unlink\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/nfc/llcp_sock.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"llcp: %s: state %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nfc_llcp_accept_dequeue.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfc_llcp_accept_dequeue\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Returning sk state %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"llcp: %s: Returning sk state %d\0A\00", [63 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@llcp_sock_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1128, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.114 zeroinitializer, ptr null, [32 x i8] c"NFC_LLCP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@llcp_nfc_proto = internal constant { %struct.nfc_protocol, [16 x i8] } { %struct.nfc_protocol { i32 1, ptr @llcp_sock_proto, ptr null, ptr @llcp_sock_create }, [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@llcp_sock_destruct.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"llcp_sock_destruct\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%p\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"llcp: %s: %p\0A\00", [18 x i8] zeroinitializer }, align 32
@llcp_sock_destruct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013llcp: %s: Freeing alive NFC LLCP socket %p\0A\00", [50 x i8] zeroinitializer }, align 32
@llcp_sock_destruct._entry_ptr = internal global ptr @llcp_sock_destruct._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@llcp_sock_create.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.10, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"llcp_sock_create\00", [47 x i8] zeroinitializer }, align 32
@llcp_rawsock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 39, ptr null, ptr @llcp_sock_release, ptr @llcp_raw_sock_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @llcp_sock_getname, ptr @llcp_sock_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @llcp_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@llcp_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 39, ptr null, ptr @llcp_sock_release, ptr @llcp_sock_bind, ptr @llcp_sock_connect, ptr @sock_no_socketpair, ptr @llcp_sock_accept, ptr @llcp_sock_getname, ptr @llcp_sock_poll, ptr @sock_no_ioctl, ptr null, ptr @llcp_sock_listen, ptr @sock_no_shutdown, ptr @nfc_llcp_setsockopt, ptr @nfc_llcp_getsockopt, ptr null, ptr @llcp_sock_sendmsg, ptr @llcp_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@llcp_sock_release.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.10, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llcp_sock_release\00", [46 x i8] zeroinitializer }, align 32
@llcp_raw_sock_bind.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"llcp_raw_sock_bind\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sk %p addr %p family %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"llcp: %s: sk %p addr %p family %d\0A\00", [61 x i8] zeroinitializer }, align 32
@llcp_sock_getname.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llcp_sock_getname\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%p %d %d %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"llcp: %s: %p %d %d %d\0A\00", [41 x i8] zeroinitializer }, align 32
@llcp_sock_poll.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.10, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"llcp_sock_poll\00", [17 x i8] zeroinitializer }, align 32
@llcp_sock_poll.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mask 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"llcp: %s: mask 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@llcp_sock_recvmsg.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llcp_sock_recvmsg\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%p %zu\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llcp: %s: %p %zu\0A\00", [46 x i8] zeroinitializer }, align 32
@llcp_sock_recvmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013llcp: %s: Recv datagram failed state %d %d %d\00", [48 x i8] zeroinitializer }, align 32
@llcp_sock_recvmsg._entry_ptr = internal global ptr @llcp_sock_recvmsg._entry, section ".printk_index", align 4
@llcp_sock_recvmsg.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.29, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Datagram socket %d %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"llcp: %s: Datagram socket %d %d\0A\00", [63 x i8] zeroinitializer }, align 32
@llcp_sock_bind.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.17, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"llcp_sock_bind\00", [17 x i8] zeroinitializer }, align 32
@llcp_sock_bind.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Socket bound to SAP %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"llcp: %s: Socket bound to SAP %d\0A\00", [62 x i8] zeroinitializer }, align 32
@llcp_sock_connect.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llcp_sock_connect\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sock %p sk %p flags 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"llcp: %s: sock %p sk %p flags 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@llcp_sock_connect.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"addr dev_idx=%u target_idx=%u protocol=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"llcp: %s: addr dev_idx=%u target_idx=%u protocol=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@sock_wait_state.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sock_wait_state\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sk %p\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"llcp: %s: sk %p\00", [16 x i8] zeroinitializer }, align 32
@llcp_sock_accept.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"llcp_sock_accept\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parent %p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"llcp: %s: parent %p\0A\00", [43 x i8] zeroinitializer }, align 32
@llcp_sock_accept.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.48, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"new socket %p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"llcp: %s: new socket %p\0A\00", [39 x i8] zeroinitializer }, align 32
@llcp_sock_listen.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"llcp_sock_listen\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sk %p backlog %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"llcp: %s: sk %p backlog %d\0A\00", [36 x i8] zeroinitializer }, align 32
@llcp_sock_listen.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Socket listening\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"llcp: %s: Socket listening\0A\00", [36 x i8] zeroinitializer }, align 32
@nfc_llcp_setsockopt.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfc_llcp_setsockopt\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%p optname %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"llcp: %s: %p optname %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nfc_llcp_setsockopt.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.58, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%p rw %d miux %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"llcp: %s: %p rw %d miux %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@nfc_llcp_getsockopt.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.56, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfc_llcp_getsockopt\00", [44 x i8] zeroinitializer }, align 32
@llcp_sock_sendmsg.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llcp_sock_sendmsg\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sock %p sk %p\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"llcp: %s: sock %p sk %p\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 380, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 431, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"llcp_sock_proto\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 53, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"llcp_nfc_proto\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1046, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2024, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 954, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 964, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1984, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1024, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"llcp_rawsock_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 932, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"llcp_sock_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 912, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 599, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 158, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 508, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 556, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 584, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 831, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 848, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 876, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 72, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 132, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 663, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 671, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 22, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 452, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 490, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 204, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 217, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 234, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 293, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 156, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 309, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [23 x i8] c"../net/nfc/llcp_sock.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 781, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @llcp_sock_destruct._entry, ptr @llcp_sock_destruct._entry_ptr, ptr @llcp_sock_recvmsg._entry, ptr @llcp_sock_recvmsg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @llcp_sock_proto, ptr @llcp_nfc_proto, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @skb_queue_head_init.__key, ptr @.str.13, ptr @.str.14, ptr @llcp_rawsock_ops, ptr @llcp_sock_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_sock_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_nfc_proto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_sock_destruct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_rawsock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_sock_recvmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_accept_unlink(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_accept_unlink.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_accept_unlink, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_accept_unlink.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %accept_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %accept_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %accept_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %accept_queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %accept_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %accept_queue, ptr %accept_queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %accept_queue, ptr %prev.i3.i, align 4
  %parent = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 22
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %13, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  store ptr null, ptr %parent, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !155
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !156

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @sk_free(ptr noundef %sk) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_accept_enqueue(ptr noundef %parent, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !158
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !159

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !156

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %accept_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 21
  %accept_queue1 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %parent, i32 0, i32 21
  %prev.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %parent, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %accept_queue, ptr noundef %3, ptr noundef %accept_queue1) #9
  br i1 %call.i.i, label %if.end.i.i, label %sock_hold.exit.list_add_tail.exit_crit_edge

sock_hold.exit.list_add_tail.exit_crit_edge:      ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %accept_queue, ptr %prev.i, align 4
  %5 = ptrtoint ptr %accept_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %accept_queue1, ptr %accept_queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %accept_queue, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sock_hold.exit.list_add_tail.exit_crit_edge
  %parent2 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 22
  %8 = ptrtoint ptr %parent2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent, ptr %parent2, align 4
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %parent, i32 0, i32 53
  %9 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_ack_backlog.i, align 4
  %add.i = add i32 %10, 1
  store volatile i32 %add.i, ptr %sk_ack_backlog.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_accept_dequeue(ptr noundef %parent, ptr noundef %newsock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %accept_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %parent, i32 0, i32 21
  %0 = ptrtoint ptr %accept_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %accept_queue, align 4
  %lsk.063 = getelementptr i8, ptr %1, i32 -1116
  %cmp.not65 = icmp eq ptr %lsk.063, %parent
  br i1 %cmp.not65, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %newsock, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lsk.067 = phi ptr [ %lsk.063, %for.body.lr.ph ], [ %lsk.0, %for.inc.for.body_crit_edge ]
  %.pn.in66 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn68, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn68 = load ptr, ptr %.pn.in66, align 4
  tail call void @lock_sock_nested(ptr noundef %lsk.067, i32 noundef 0) #9
  %skc_state = getelementptr i8, ptr %.pn.in66, i32 -1098
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp9 = icmp eq i8 %4, 4
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %lsk.067) #9
  tail call void @nfc_llcp_accept_unlink(ptr noundef %lsk.067)
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp14 = icmp eq i8 %6, 1
  %or.cond = or i1 %tobool.not, %cmp14
  br i1 %or.cond, label %if.then16, label %if.end31

if.then16:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in66) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then16.list_del_init.exit_crit_edge

if.then16.list_del_init.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in66, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in66, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then16.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in66, ptr %.pn.in66, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in66, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in66, ptr %prev.i3.i, align 4
  %skc_refcnt.i = getelementptr i8, ptr %.pn.in66, i32 -1016
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !155
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !156

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @sk_free(ptr noundef %lsk.067) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  br i1 %tobool.not, label %sock_put.exit.if.end20_crit_edge, label %if.then19

sock_put.exit.if.end20_crit_edge:                 ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %sock_put.exit
  %sk1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %16 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then19.sock_graft.exit_crit_edge, label %do.end.i, !prof !156

if.then19.sock_graft.exit_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_graft.exit

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2024, i32 noundef 9, ptr noundef null) #9
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %if.then19.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr i8, ptr %.pn.in66, i32 -468
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #9
  %wq.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  %18 = getelementptr i8, ptr %.pn.in66, i32 -700
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %wq.i, ptr %18, align 8
  %20 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lsk.067, ptr %sk1.i, align 16
  %sk_socket.i.i = getelementptr i8, ptr %.pn.in66, i32 -236
  %21 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %newsock, ptr %sk_socket.i.i, align 8
  %sk_uid.i = getelementptr i8, ptr %.pn.in66, i32 -408
  %i_uid.i = getelementptr inbounds %struct.socket_alloc, ptr %newsock, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_uid.i, align 4
  %24 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sk_uid.i, align 4
  tail call void @security_sock_graft(ptr noundef %lsk.067, ptr noundef nonnull %newsock) #9
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #9
  br label %if.end20

if.end20:                                         ; preds = %sock_graft.exit, %sock_put.exit.if.end20_crit_edge
  tail call void @release_sock(ptr noundef %lsk.067) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_accept_dequeue.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_accept_dequeue, %if.then26)) #9
          to label %do.end [label %if.then26], !srcloc !153

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state, align 2
  %conv29 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_accept_dequeue.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %conv29) #9
  br label %do.end

do.end:                                           ; preds = %if.then26, %if.end20
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %parent, i32 0, i32 53
  %27 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %28, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %lsk.067) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %if.then
  %lsk.0 = getelementptr i8, ptr %.pn68, i32 -1116
  %cmp.not = icmp eq ptr %lsk.0, %parent
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %lsk.067, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_sock_alloc(ptr noundef %sock, i32 noundef %type, i32 noundef %gfp, i32 noundef %kern) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 39, i32 noundef %gfp, ptr noundef nonnull @llcp_sock_proto, i32 noundef %kern) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 4, ptr %skc_state, align 2
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %1 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %sk_protocol, align 4
  %conv = trunc i32 %type to i16
  %sk_type = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %sk_type, align 2
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %3 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @llcp_sock_destruct, ptr %sk_destruct, align 4
  %ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ssap, align 8
  %dsap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %dsap to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %dsap, align 1
  %rw = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %rw to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %rw, align 4
  %miux = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %miux to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2048, ptr %miux, align 2
  %send_n = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 13
  %remote_ready = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %send_n to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %send_n, align 4
  %9 = ptrtoint ptr %remote_ready to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %remote_ready, align 8
  %reserved_ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 18
  %10 = ptrtoint ptr %reserved_ssap to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %reserved_ssap, align 1
  tail call void @nfc_llcp_socket_remote_param_init(ptr noundef nonnull %call) #9
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 19
  %lock.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 19, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %11 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tx_queue, ptr %tx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 19, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_pending_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 20
  %lock.i27 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 20, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i27, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %14 = ptrtoint ptr %tx_pending_queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tx_pending_queue, ptr %tx_pending_queue, align 4
  %prev.i.i28 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 20, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_pending_queue, ptr %prev.i.i28, align 4
  %qlen.i.i29 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %qlen.i.i29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qlen.i.i29, align 4
  %accept_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 21
  %17 = ptrtoint ptr %accept_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %accept_queue, ptr %accept_queue, align 4
  %prev.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call, i32 0, i32 21, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %accept_queue, ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %sock, null
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %sock, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llcp_sock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_destruct.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_destruct, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_destruct.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef %sk) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #9
  %service_name.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 7
  %4 = ptrtoint ptr %service_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %service_name.i, align 4
  tail call void @kfree(ptr noundef %5) #9
  %tx_queue.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i) #9
  %tx_pending_queue.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %tx_pending_queue.i) #9
  %accept_queue.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %accept_queue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end5.nfc_llcp_sock_free.exit_crit_edge

if.end5.nfc_llcp_sock_free.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfc_llcp_sock_free.exit

if.end.i.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %accept_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %accept_queue.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %nfc_llcp_sock_free.exit

nfc_llcp_sock_free.exit:                          ; preds = %if.end.i.i.i, %if.end5.nfc_llcp_sock_free.exit_crit_edge
  %12 = ptrtoint ptr %accept_queue.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %accept_queue.i, ptr %accept_queue.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 21, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %accept_queue.i, ptr %prev.i3.i.i, align 4
  %parent.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 22
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %parent.i, align 4
  %local.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk, i32 0, i32 2
  %15 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local.i, align 4
  %call.i = tail call i32 @nfc_llcp_local_put(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %do.end10, label %nfc_llcp_sock_free.exit.cleanup_crit_edge

nfc_llcp_sock_free.exit.cleanup_crit_edge:        ; preds = %nfc_llcp_sock_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end10:                                         ; preds = %nfc_llcp_sock_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef %sk) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %nfc_llcp_sock_free.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_socket_remote_param_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_sock_free(ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %service_name = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 7
  %0 = ptrtoint ptr %service_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %service_name, align 4
  tail call void @kfree(ptr noundef %1) #9
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %tx_queue) #9
  %tx_pending_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %tx_pending_queue) #9
  %accept_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %accept_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %accept_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %accept_queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %accept_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %accept_queue, ptr %accept_queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %accept_queue, ptr %prev.i3.i, align 4
  %parent = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 22
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %parent, align 4
  %local = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 2
  %11 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %local, align 4
  %call = tail call i32 @nfc_llcp_local_put(ptr noundef %12) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_local_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_sock_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfc_proto_register(ptr noundef nonnull @llcp_nfc_proto) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_proto_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_sock_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfc_proto_unregister(ptr noundef nonnull @llcp_nfc_proto) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_create(ptr nocapture noundef readnone %net, ptr noundef %sock, ptr nocapture noundef readnone %nfc_proto, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_create.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_create, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_create.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, ptr noundef %sock) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %.off = add i16 %1, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  br i1 %switch, label %if.end14, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp17 = icmp eq i16 %1, 3
  br i1 %cmp17, label %if.then19, label %if.end14.if.end24_crit_edge

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end14
  %call20 = tail call zeroext i1 @capable(i32 noundef 13) #9
  br i1 %call20, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %llcp_sock_ops.sink = phi ptr [ @llcp_rawsock_ops, %if.then19.if.end24_crit_edge ], [ @llcp_sock_ops, %if.end14.if.end24_crit_edge ]
  %ops23 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops23 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %llcp_sock_ops.sink, ptr %ops23, align 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 4
  %conv26 = sext i16 %4 to i32
  %call27 = tail call ptr @nfc_llcp_sock_alloc(ptr noundef %sock, i32 noundef %conv26, i32 noundef 2592, i32 noundef %kern)
  %cmp28 = icmp eq ptr %call27, null
  %. = select i1 %cmp28, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then19.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -94, %do.end.cleanup_crit_edge ], [ -1, %if.then19.cleanup_crit_edge ], [ %., %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_release(ptr nocapture noundef readonly %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_release.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_release, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !153

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_release.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15, ptr noundef nonnull %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %local7 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %local7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local7, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end9

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp10 = icmp eq i8 %5, 1
  br i1 %cmp10, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @nfc_llcp_send_disconnect(ptr noundef nonnull %1) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp18 = icmp eq i8 %7, 6
  br i1 %cmp18, label %if.then20, label %if.end14.if.end40_crit_edge

if.end14.if.end40_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then20:                                        ; preds = %if.end14
  %accept_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %accept_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %accept_queue, align 4
  %lsk.092 = getelementptr i8, ptr %9, i32 -1116
  %cmp29.not93 = icmp eq ptr %lsk.092, %1
  br i1 %cmp29.not93, label %if.then20.if.end40_crit_edge, label %if.then20.for.body_crit_edge

if.then20.for.body_crit_edge:                     ; preds = %if.then20
  br label %for.body

if.then20.if.end40_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then20.for.body_crit_edge
  %lsk.095 = phi ptr [ %lsk.0, %for.body.for.body_crit_edge ], [ %lsk.092, %if.then20.for.body_crit_edge ]
  %.pn.in94 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %9, %if.then20.for.body_crit_edge ]
  %10 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in94, align 4
  tail call void @lock_sock_nested(ptr noundef %lsk.095, i32 noundef 0) #9
  %call34 = tail call i32 @nfc_llcp_send_disconnect(ptr noundef %lsk.095) #9
  tail call void @nfc_llcp_accept_unlink(ptr noundef %lsk.095)
  tail call void @release_sock(ptr noundef %lsk.095) #9
  %lsk.0 = getelementptr i8, ptr %.pn, i32 -1116
  %cmp29.not = icmp eq ptr %lsk.0, %1
  br i1 %cmp29.not, label %for.body.if.end40_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end40:                                         ; preds = %for.body.if.end40_crit_edge, %if.then20.if.end40_crit_edge, %if.end14.if.end40_crit_edge
  %reserved_ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %reserved_ssap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reserved_ssap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp42.not = icmp eq i8 %12, -1
  br i1 %cmp42.not, label %if.end40.if.end46_crit_edge, label %if.then44

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %local7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local7, align 4
  %ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ssap, align 8
  tail call void @nfc_llcp_put_ssap(ptr noundef %14, i8 noundef zeroext %16) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end40.if.end46_crit_edge
  tail call void @release_sock(ptr noundef nonnull %1) #9
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp50 = icmp eq i8 %18, 3
  br i1 %cmp50, label %if.end46.cleanup_crit_edge, label %if.end53

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %20)
  %cmp55 = icmp eq i16 %20, 3
  %raw_sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 36
  %sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %3, i32 0, i32 34
  %raw_sockets.sink = select i1 %cmp55, ptr %raw_sockets, ptr %sockets
  tail call void @nfc_llcp_sock_unlink(ptr noundef %raw_sockets.sink, ptr noundef nonnull %1) #9
  br label %out

out:                                              ; preds = %if.end53, %do.end.out_crit_edge
  %err.0 = phi i32 [ -19, %do.end.out_crit_edge ], [ 0, %if.end53 ]
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #9
  %21 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %or.i.i.i = or i32 %23, 1
  store i32 %or.i.i.i, ptr %21, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %24 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sk_socket.i.i, align 8
  %25 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %25, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !155
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !156

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @sk_free(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_raw_sock_bind(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %alen) #0 align 64 {
entry:
  %llcp_addr = alloca %struct.sockaddr_nfc_llcp, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %llcp_addr)
  %2 = call ptr @memset(ptr %llcp_addr, i32 255, i32 88)
  %tobool.not = icmp eq ptr %addr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alen)
  %cmp = icmp ult i32 %alen, 2
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 39, i16 %4)
  %cmp3.not = icmp eq i16 %4, 39
  br i1 %cmp3.not, label %do.body, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_raw_sock_bind.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_raw_sock_bind, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !153

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %conv10 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_raw_sock_bind.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef %1, ptr noundef nonnull %addr, i32 noundef %conv10) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %7 = tail call i32 @llvm.umin.i32(i32 %alen, i32 88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %7)
  %8 = icmp ugt i32 %7, 87
  %9 = sub nuw nsw i32 88, %7
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %llcp_addr, i32 %7
  %12 = call ptr @memset(ptr %11, i32 0, i32 %10)
  %13 = call ptr @memcpy(ptr %llcp_addr, ptr %addr, i32 %7)
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp16.not = icmp eq i8 %15, 4
  br i1 %cmp16.not, label %if.end19, label %do.end.error_crit_edge

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end19:                                         ; preds = %do.end
  %llcp_addr.4.llcp_addr.4.llcp_addr.4.dev_idx.sroa_idx = getelementptr inbounds i8, ptr %llcp_addr, i32 4
  %16 = ptrtoint ptr %llcp_addr.4.llcp_addr.4.llcp_addr.4.dev_idx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %llcp_addr.4.llcp_addr.4.llcp_addr.4. = load i32, ptr %llcp_addr.4.llcp_addr.4.llcp_addr.4.dev_idx.sroa_idx, align 4
  %call20 = tail call ptr @nfc_get_device(i32 noundef %llcp_addr.4.llcp_addr.4.llcp_addr.4.) #9
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.end19.error_crit_edge, label %if.end24

if.end19.error_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end24:                                         ; preds = %if.end19
  %call25 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %call20) #9
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.end24.put_dev_crit_edge, label %if.end29

if.end24.put_dev_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20, ptr %dev30, align 8
  %call31 = tail call ptr @nfc_llcp_local_get(ptr noundef nonnull %call25) #9
  %local32 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %local32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call31, ptr %local32, align 4
  %llcp_addr.12.llcp_addr.12.llcp_addr.12.nfc_protocol.sroa_idx = getelementptr inbounds i8, ptr %llcp_addr, i32 12
  %19 = ptrtoint ptr %llcp_addr.12.llcp_addr.12.llcp_addr.12.nfc_protocol.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %llcp_addr.12.llcp_addr.12.llcp_addr.12. = load i32, ptr %llcp_addr.12.llcp_addr.12.llcp_addr.12.nfc_protocol.sroa_idx, align 4
  %nfc_protocol33 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %nfc_protocol33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %llcp_addr.12.llcp_addr.12.llcp_addr.12., ptr %nfc_protocol33, align 4
  %raw_sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %call25, i32 0, i32 36
  tail call void @nfc_llcp_sock_link(ptr noundef %raw_sockets, ptr noundef %1) #9
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %21)
  store volatile i8 5, ptr %skc_state, align 2
  br label %put_dev

put_dev:                                          ; preds = %if.end29, %if.end24.put_dev_crit_edge
  %ret.0 = phi i32 [ 0, %if.end29 ], [ -19, %if.end24.put_dev_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call20, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #9
  br label %error

error:                                            ; preds = %put_dev, %if.end19.error_crit_edge, %do.end.error_crit_edge
  %ret.1 = phi i32 [ %ret.0, %put_dev ], [ -77, %do.end.error_crit_edge ], [ -19, %if.end19.error_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %llcp_addr)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %do.body3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_getname.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_getname, %if.then7)) #9
          to label %do.end11 [label %if.then7], !srcloc !153

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %target_idx = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %target_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target_idx, align 8
  %dsap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dsap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dsap, align 1
  %conv = zext i8 %7 to i32
  %ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ssap, align 8
  %conv8 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_getname.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, ptr noundef nonnull %1, i32 noundef %5, i32 noundef %conv, i32 noundef %conv8) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3
  %10 = call ptr @memset(ptr %uaddr, i32 0, i32 88)
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #9
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %do.end11.cleanup.sink.split_crit_edge, label %if.end15

do.end11.cleanup.sink.split_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end15:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 39, ptr %uaddr, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %dev_idx = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %uaddr, i32 0, i32 1
  %18 = ptrtoint ptr %dev_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dev_idx, align 4
  %target_idx17 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %target_idx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target_idx17, align 8
  %target_idx18 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %uaddr, i32 0, i32 2
  %21 = ptrtoint ptr %target_idx18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %target_idx18, align 4
  %nfc_protocol = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %nfc_protocol to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nfc_protocol, align 4
  %nfc_protocol19 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %uaddr, i32 0, i32 3
  %24 = ptrtoint ptr %nfc_protocol19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nfc_protocol19, align 4
  %dsap20 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %dsap20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dsap20, align 1
  %dsap21 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %uaddr, i32 0, i32 4
  %27 = ptrtoint ptr %dsap21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %dsap21, align 4
  %ssap22 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %ssap22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ssap22, align 8
  %ssap23 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %uaddr, i32 0, i32 5
  %30 = ptrtoint ptr %ssap23 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ssap23, align 1
  %service_name_len = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %service_name_len, align 8
  %service_name_len24 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %uaddr, i32 0, i32 7
  %33 = ptrtoint ptr %service_name_len24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %service_name_len24, align 4
  %service_name = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %uaddr, i32 0, i32 6
  %service_name25 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %service_name25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %service_name25, align 4
  %36 = call ptr @memcpy(ptr %service_name, ptr %35, i32 %32)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %do.end11.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 88, %if.end15 ], [ -77, %do.end11.cleanup.sink.split_crit_edge ]
  tail call void @release_sock(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -77, %lor.lhs.false.cleanup_crit_edge ], [ -77, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_poll.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_poll, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_poll.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.22, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp.i.i = icmp eq ptr %wait, null
  br i1 %cmp.i.i, label %do.end.sock_poll_wait.exit_crit_edge, label %poll_does_not_wait.exit.i

do.end.sock_poll_wait.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_poll_wait.exit

poll_does_not_wait.exit.i:                        ; preds = %do.end
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %cmp1.i.i = icmp eq ptr %3, null
  br i1 %cmp1.i.i, label %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, label %poll_wait.exit.i

poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge: ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_poll_wait.exit

poll_wait.exit.i:                                 ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %wq.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 7
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wq.i, ptr noundef nonnull %wait) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  br label %sock_poll_wait.exit

sock_poll_wait.exit:                              ; preds = %poll_wait.exit.i, %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, %do.end.sock_poll_wait.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp = icmp eq i8 %5, 6
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %sock_poll_wait.exit
  %accept_queue.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 21
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then5
  %.pn.in.i = phi ptr [ %accept_queue.i, %if.then5 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %accept_queue.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %skc_state.i = getelementptr i8, ptr %.pn.i, i32 -1098
  %7 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state.i, align 2
  %cmp4.i = icmp eq i8 %8, 1
  br i1 %cmp4.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %sock_poll_wait.exit
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %9 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end7.if.then10_crit_edge

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end7
  %sk_error_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %sk_error_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %sk_error_queue, align 4
  %cmp.i = icmp eq ptr %12, %sk_error_queue
  br i1 %cmp.i, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  %or = select i1 %tobool.i.not, i32 8, i32 10
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %lor.lhs.false.if.end14_crit_edge
  %mask.0 = phi i32 [ %or, %if.then10 ], [ 0, %lor.lhs.false.if.end14_crit_edge ]
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i90 = icmp eq ptr %18, %sk_receive_queue
  %or17 = or i32 %mask.0, 65
  %spec.select = select i1 %cmp.i90, i32 %mask.0, i32 %or17
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp22 = icmp eq i8 %20, 4
  %or25 = or i32 %spec.select, 16
  %mask.2 = select i1 %cmp22, i32 %or25, i32 %spec.select
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %21 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sk_shutdown, align 2
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not = icmp eq i8 %23, 0
  %or30 = or i32 %mask.2, 8257
  %mask.3 = select i1 %tobool28.not, i32 %mask.2, i32 %or30
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp34 = icmp eq i8 %22, 3
  %or37 = or i32 %mask.3, 16
  %mask.4 = select i1 %cmp34, i32 %or37, i32 %mask.3
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i = ashr i32 %27, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %shr.i)
  %cmp.i91 = icmp ult i32 %25, %shr.i
  br i1 %cmp.i91, label %land.lhs.true, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end14
  %28 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp44 = icmp eq i8 %29, 1
  br i1 %cmp44, label %if.then46, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or47 = or i32 %mask.4, 772
  br label %do.body49

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end14.if.else_crit_edge
  %30 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i, label %if.else.do.body49_crit_edge, label %if.end.i

if.else.do.body49_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %34 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %36, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %do.body49

do.body49:                                        ; preds = %if.end.i, %if.else.do.body49_crit_edge, %if.then46
  %mask.5 = phi i32 [ %or47, %if.then46 ], [ %mask.4, %if.else.do.body49_crit_edge ], [ %mask.4, %if.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_poll.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_poll, %if.then61)) #9
          to label %cleanup [label %if.then61], !srcloc !153

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_poll.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %mask.5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask.5, %if.then61 ], [ %mask.5, %do.body49 ], [ 0, %for.cond.i.cleanup_crit_edge ], [ 65, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_recvmsg.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_recvmsg, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_recvmsg.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef %1, i32 noundef %len) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp = icmp eq i8 %4, 4
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %do.end
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %6, %sk_receive_queue
  br i1 %cmp.i.not, label %if.then7, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %do.end.if.end8_crit_edge
  tail call void @release_sock(ptr noundef %1) #9
  %and9 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %flags, i32 noundef %and, ptr noundef nonnull %err) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end30

do.end18:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  %conv22 = zext i8 %8 to i32
  %9 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err, align 4
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %11 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %do.end18.sock_error.exit_crit_edge, label %if.end.i, !prof !156

do.end18.sock_error.exit_crit_edge:               ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_error.exit

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !162
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #9
  %13 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #9, !srcloc !163
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !164
  %sub.i = sub i32 0, %asmresult.i.i
  br label %sock_error.exit

sock_error.exit:                                  ; preds = %if.end.i, %do.end18.sock_error.exit_crit_edge
  %retval.0.i170 = phi i32 [ %sub.i, %if.end.i ], [ 0, %do.end18.sock_error.exit_crit_edge ]
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef %conv22, i32 noundef %10, i32 noundef %retval.0.i170) #12
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sk_shutdown, align 2
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not = icmp eq i8 %16, 0
  br i1 %tobool27.not, label %if.end29, label %sock_error.exit.cleanup_crit_edge

sock_error.exit.cleanup_crit_edge:                ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end12
  %len31 = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 6
  %19 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len31, align 4
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 %len)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call13, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end43, label %if.then37

if.then37:                                        ; preds = %if.end30
  %and38 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %sk_receive_queue41 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  call void @skb_queue_head(ptr noundef %sk_receive_queue41, ptr noundef nonnull %call13) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end30
  %22 = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 17
  %25 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 7
  %27 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end43.if.then.i_crit_edge

if.end43.if.then.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end43
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %31 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sk_tsflags.i, align 8
  %conv.i171 = zext i16 %32 to i32
  %and.i = and i32 %conv.i171, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i172 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i172, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool3.not.i = icmp eq i64 %24, 0
  %and6.i = and i32 %conv.i171, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %lor.lhs.false8.i, label %lor.lhs.false2.i.if.then.i_crit_edge

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false2.i
  %33 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %hwtstamps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool9.not.i = icmp eq i64 %34, 0
  %35 = and i16 %32, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool14.not.i = icmp eq i16 %35, 0
  %or.cond36.i = select i1 %tobool9.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond36.i, label %if.else.i, label %lor.lhs.false8.i.if.then.i_crit_edge

lor.lhs.false8.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false8.i.if.then.i_crit_edge, %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end43.if.then.i_crit_edge
  call void @__sock_recv_timestamp(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call13) #9
  br label %if.end.i173

if.else.i:                                        ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_stamp_seq.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64
  %lock.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #9
  %36 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 0, i32 0, i32 1
  %38 = call ptr @llvm.returnaddress(i32 0) #9
  %39 = ptrtoint ptr %38 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %39) #9
  %sk_stamp.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  %40 = ptrtoint ptr %sk_stamp.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %24, ptr %sk_stamp.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %39) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !166
  %41 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #9
  br label %if.end.i173

if.end.i173:                                      ; preds = %if.else.i, %if.then.i
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %27, align 4
  %45 = and i32 %44, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i35.not.i = icmp eq i32 %45, 0
  br i1 %tobool.i35.not.i, label %if.end.i173.sock_recv_timestamp.exit_crit_edge, label %land.lhs.true17.i

if.end.i173.sock_recv_timestamp.exit_crit_edge:   ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_recv_timestamp.exit

land.lhs.true17.i:                                ; preds = %if.end.i173
  %wifi_acked_valid.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 15
  %46 = ptrtoint ptr %wifi_acked_valid.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load.i = load i16, ptr %wifi_acked_valid.i, align 8
  %47 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool19.not.i = icmp eq i16 %47, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, label %if.then20.i

land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_recv_timestamp.exit

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sock_recv_wifi_status(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call13) #9
  br label %sock_recv_timestamp.exit

sock_recv_timestamp.exit:                         ; preds = %if.then20.i, %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, %if.end.i173.sock_recv_timestamp.exit_crit_edge
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %48 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %49)
  %cmp45 = icmp eq i16 %49, 2
  br i1 %cmp45, label %land.lhs.true47, label %sock_recv_timestamp.exit.if.end77_crit_edge

sock_recv_timestamp.exit.if.end77_crit_edge:      ; preds = %sock_recv_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

land.lhs.true47:                                  ; preds = %sock_recv_timestamp.exit
  %50 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %msg, align 8
  %tobool48.not = icmp eq ptr %51, null
  br i1 %tobool48.not, label %land.lhs.true47.if.end77_crit_edge, label %if.then49

land.lhs.true47.if.end77_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then49:                                        ; preds = %land.lhs.true47
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %52 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 88, ptr %msg_namelen, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_recvmsg.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_recvmsg, %if.then67)) #9
          to label %do.end72 [label %if.then67], !srcloc !153

if.then67:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cb, align 1
  %conv68 = zext i8 %54 to i32
  %ssap = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ssap, align 1
  %conv69 = zext i8 %56 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_recvmsg.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %conv68, i32 noundef %conv69) #9
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.then49
  %57 = call ptr @memset(ptr %51, i32 0, i32 88)
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 39, ptr %51, align 4
  %nfc_protocol = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %51, i32 0, i32 3
  %59 = ptrtoint ptr %nfc_protocol to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %nfc_protocol, align 4
  %60 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cb, align 1
  %dsap74 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %51, i32 0, i32 4
  %62 = ptrtoint ptr %dsap74 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %dsap74, align 4
  %ssap75 = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %ssap75 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ssap75, align 1
  %ssap76 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %51, i32 0, i32 5
  %65 = ptrtoint ptr %ssap76 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %ssap76, align 1
  br label %if.end77

if.end77:                                         ; preds = %do.end72, %land.lhs.true47.if.end77_crit_edge, %sock_recv_timestamp.exit.if.end77_crit_edge
  %and78 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end77.done_crit_edge

if.end77.done_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then80:                                        ; preds = %if.end77
  %66 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %sk_type, align 2
  %.off = add i16 %67, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  br i1 %switch, label %if.then94, label %if.then80.if.end101_crit_edge

if.then80.if.end101_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then94:                                        ; preds = %if.then80
  %call95 = call ptr @skb_pull(ptr noundef nonnull %call13, i32 noundef %21) #9
  %68 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool97.not = icmp eq i32 %69, 0
  br i1 %tobool97.not, label %if.then94.if.end101_crit_edge, label %if.then98

if.then94.if.end101_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then98:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  %sk_receive_queue99 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  call void @skb_queue_head(ptr noundef %sk_receive_queue99, ptr noundef nonnull %call13) #9
  br label %done

if.end101:                                        ; preds = %if.then94.if.end101_crit_edge, %if.then80.if.end101_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call13, i32 noundef 0) #9
  br label %done

done:                                             ; preds = %if.end101, %if.then98, %if.end77.done_crit_edge
  %70 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %71)
  %cmp105 = icmp ne i16 %71, 5
  %and108 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  %or.cond = or i1 %tobool109.not, %cmp105
  %copied.0 = select i1 %or.cond, i32 %21, i32 %20
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then40, %if.then37.cleanup_crit_edge, %if.end29, %sock_error.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %copied.0, %done ], [ %18, %if.end29 ], [ -95, %if.end8.cleanup_crit_edge ], [ 0, %sock_error.exit.cleanup_crit_edge ], [ -14, %if.then40 ], [ -14, %if.then37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_put_ssap(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_find_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_local_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_bind(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %alen) #0 align 64 {
entry:
  %llcp_addr = alloca %struct.sockaddr_nfc_llcp, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %llcp_addr) #9
  %2 = call ptr @memset(ptr %llcp_addr, i32 255, i32 88)
  %tobool.not = icmp eq ptr %addr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alen)
  %cmp = icmp ult i32 %alen, 2
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 39, i16 %4)
  %cmp3.not = icmp eq i16 %4, 39
  br i1 %cmp3.not, label %do.body, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_bind.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_bind, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !153

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %conv10 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_bind.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.31, ptr noundef %1, ptr noundef nonnull %addr, i32 noundef %conv10) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %7 = tail call i32 @llvm.umin.i32(i32 %alen, i32 88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %7)
  %8 = icmp ugt i32 %7, 87
  %9 = sub nuw nsw i32 88, %7
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %llcp_addr, i32 %7
  %12 = call ptr @memset(ptr %11, i32 0, i32 %10)
  %13 = call ptr @memcpy(ptr %llcp_addr, ptr %addr, i32 %7)
  %dsap = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %llcp_addr, i32 0, i32 4
  %14 = ptrtoint ptr %dsap to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dsap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp16.not = icmp eq i8 %15, 0
  br i1 %cmp16.not, label %if.end19, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp21.not = icmp eq i8 %17, 4
  br i1 %cmp21.not, label %if.end24, label %if.end19.error_crit_edge

if.end19.error_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end24:                                         ; preds = %if.end19
  %dev_idx = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %llcp_addr, i32 0, i32 1
  %18 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_idx, align 4
  %call25 = tail call ptr @nfc_get_device(i32 noundef %19) #9
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.end24.error_crit_edge, label %if.end29

if.end24.error_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end29:                                         ; preds = %if.end24
  %call30 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %call25) #9
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.end29.put_dev_crit_edge, label %if.end34

if.end29.put_dev_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev

if.end34:                                         ; preds = %if.end29
  %dev35 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call25, ptr %dev35, align 8
  %call36 = tail call ptr @nfc_llcp_local_get(ptr noundef nonnull %call30) #9
  %local37 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %local37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call36, ptr %local37, align 4
  %nfc_protocol = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %llcp_addr, i32 0, i32 3
  %22 = ptrtoint ptr %nfc_protocol to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nfc_protocol, align 4
  %nfc_protocol38 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %nfc_protocol38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nfc_protocol38, align 4
  %service_name_len = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %llcp_addr, i32 0, i32 7
  %25 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %service_name_len, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 63)
  %service_name_len46 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %service_name_len46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %service_name_len46, align 8
  %service_name = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %llcp_addr, i32 0, i32 6
  %call48 = call ptr @kmemdup(ptr noundef %service_name, i32 noundef %27, i32 noundef 3264) #9
  %service_name49 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %service_name49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call48, ptr %service_name49, align 4
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %if.then52, label %if.end57

if.then52:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %local37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %local37, align 4
  %call54 = call i32 @nfc_llcp_local_put(ptr noundef %31) #9
  %32 = ptrtoint ptr %local37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %local37, align 4
  %33 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %dev35, align 8
  br label %put_dev

if.end57:                                         ; preds = %if.end34
  %call58 = call zeroext i8 @nfc_llcp_get_sdp_ssap(ptr noundef nonnull %call30, ptr noundef %1) #9
  %ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call58, ptr %ssap, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call58)
  %cmp61 = icmp eq i8 %call58, -1
  br i1 %cmp61, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %local37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %local37, align 4
  %call65 = call i32 @nfc_llcp_local_put(ptr noundef %36) #9
  %37 = ptrtoint ptr %local37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %local37, align 4
  %38 = ptrtoint ptr %service_name49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %service_name49, align 4
  call void @kfree(ptr noundef %39) #9
  %40 = ptrtoint ptr %service_name49 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %service_name49, align 4
  %41 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %dev35, align 8
  br label %put_dev

if.end70:                                         ; preds = %if.end57
  %reserved_ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 18
  %42 = ptrtoint ptr %reserved_ssap to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call58, ptr %reserved_ssap, align 1
  %sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %call30, i32 0, i32 34
  call void @nfc_llcp_sock_link(ptr noundef %sockets, ptr noundef %1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_bind.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_bind, %if.then84)) #9
          to label %do.end89 [label %if.then84], !srcloc !153

if.then84:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ssap, align 8
  %conv86 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_bind.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %conv86) #9
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %if.end70
  %45 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %45)
  store volatile i8 5, ptr %skc_state, align 2
  br label %put_dev

put_dev:                                          ; preds = %do.end89, %if.then63, %if.then52, %if.end29.put_dev_crit_edge
  %ret.0 = phi i32 [ -98, %if.then63 ], [ 0, %do.end89 ], [ -12, %if.then52 ], [ -19, %if.end29.put_dev_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call25, i32 0, i32 5
  call void @put_device(ptr noundef %dev1.i) #9
  br label %error

error:                                            ; preds = %put_dev, %if.end24.error_crit_edge, %if.end19.error_crit_edge
  %ret.1 = phi i32 [ %ret.0, %put_dev ], [ -77, %if.end19.error_crit_edge ], [ -19, %if.end24.error_crit_edge ]
  call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %llcp_addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_connect(ptr noundef %sock, ptr noundef %_addr, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_connect.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_connect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_connect.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef %sock, ptr noundef %1, i32 noundef %flags) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %_addr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %len)
  %cmp = icmp ult i32 %len, 88
  %or.cond = or i1 %tobool4.not, %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %lor.lhs.false5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false5:                                   ; preds = %do.end
  %2 = ptrtoint ptr %_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 39, i16 %3)
  %cmp6.not = icmp eq i16 %3, 39
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false5
  %service_name_len = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 7
  %4 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service_name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end9.do.body17_crit_edge

if.end9.do.body17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

land.lhs.true:                                    ; preds = %if.end9
  %dsap = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 4
  %6 = ptrtoint ptr %dsap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dsap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp13 = icmp eq i8 %7, 0
  br i1 %cmp13, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body17_crit_edge

land.lhs.true.do.body17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body17:                                        ; preds = %land.lhs.true.do.body17_crit_edge, %if.end9.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_connect.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_connect, %if.then29)) #9
          to label %do.end32 [label %if.then29], !srcloc !153

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %dev_idx = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 1
  %8 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_idx, align 4
  %target_idx = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 2
  %10 = ptrtoint ptr %target_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target_idx, align 4
  %nfc_protocol = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 3
  %12 = ptrtoint ptr %nfc_protocol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nfc_protocol, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_connect.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp34 = icmp eq i8 %15, 1
  br i1 %cmp34, label %do.end32.cleanup.sink.split_crit_edge, label %if.end37

do.end32.cleanup.sink.split_crit_edge:            ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end37:                                         ; preds = %do.end32
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp41 = icmp eq i8 %17, 2
  br i1 %cmp41, label %if.end37.cleanup.sink.split_crit_edge, label %if.end44

if.end37.cleanup.sink.split_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end44:                                         ; preds = %if.end37
  %dev_idx45 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 1
  %18 = ptrtoint ptr %dev_idx45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_idx45, align 4
  %call46 = tail call ptr @nfc_get_device(i32 noundef %19) #9
  %cmp47 = icmp eq ptr %call46, null
  br i1 %cmp47, label %if.end44.cleanup.sink.split_crit_edge, label %if.end50

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end50:                                         ; preds = %if.end44
  %call51 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %call46) #9
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.end50.put_dev_crit_edge, label %if.end55

if.end50.put_dev_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev

if.end55:                                         ; preds = %if.end50
  %mutex.i = getelementptr inbounds %struct.nfc_dev, ptr %call46, i32 0, i32 5, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %dep_link_up = getelementptr inbounds %struct.nfc_dev, ptr %call46, i32 0, i32 11
  %20 = ptrtoint ptr %dep_link_up to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dep_link_up, align 8, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp59 = icmp eq i8 %21, 0
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br i1 %cmp59, label %if.end55.put_dev_crit_edge, label %if.end63

if.end55.put_dev_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev

if.end63:                                         ; preds = %if.end55
  %rf_mode = getelementptr inbounds %struct.nfc_llcp_local, ptr %call51, i32 0, i32 11
  %22 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rf_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp66 = icmp eq i8 %23, 0
  br i1 %cmp66, label %land.lhs.true68, label %if.end63.if.end74_crit_edge

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.lhs.true68:                                  ; preds = %if.end63
  %target_idx69 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 2
  %24 = ptrtoint ptr %target_idx69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %target_idx69, align 4
  %target_idx70 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call51, i32 0, i32 10
  %26 = ptrtoint ptr %target_idx70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %target_idx70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp71.not = icmp eq i32 %25, %27
  br i1 %cmp71.not, label %land.lhs.true68.if.end74_crit_edge, label %land.lhs.true68.put_dev_crit_edge

land.lhs.true68.put_dev_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev

land.lhs.true68.if.end74_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true68.if.end74_crit_edge, %if.end63.if.end74_crit_edge
  %dev75 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev75 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call46, ptr %dev75, align 8
  %call76 = tail call ptr @nfc_llcp_local_get(ptr noundef nonnull %call51) #9
  %local77 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %local77 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call76, ptr %local77, align 4
  %call78 = tail call zeroext i8 @nfc_llcp_get_local_ssap(ptr noundef nonnull %call51) #9
  %ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call78, ptr %ssap, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call78)
  %cmp81 = icmp eq i8 %call78, -1
  br i1 %cmp81, label %if.end74.put_dev.sink.split_crit_edge, label %if.end87

if.end74.put_dev.sink.split_crit_edge:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev.sink.split

if.end87:                                         ; preds = %if.end74
  %reserved_ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %reserved_ssap to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call78, ptr %reserved_ssap, align 1
  %32 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %service_name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp90 = icmp eq i32 %33, 0
  br i1 %cmp90, label %if.then92, label %if.end87.if.end96_crit_edge

if.end87.if.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %dsap93 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 4
  %34 = ptrtoint ptr %dsap93 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dsap93, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.end87.if.end96_crit_edge
  %.sink = phi i8 [ %35, %if.then92 ], [ 1, %if.end87.if.end96_crit_edge ]
  %36 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink, ptr %36, align 1
  %nfc_protocol97 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 3
  %38 = ptrtoint ptr %nfc_protocol97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nfc_protocol97, align 4
  %nfc_protocol98 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %nfc_protocol98 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %nfc_protocol98, align 4
  %41 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %service_name_len, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 63)
  %service_name_len103 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %service_name_len103 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %service_name_len103, align 8
  %service_name = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %_addr, i32 0, i32 6
  %call105 = tail call ptr @kmemdup(ptr noundef %service_name, i32 noundef %43, i32 noundef 3264) #9
  %service_name106 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %service_name106 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call105, ptr %service_name106, align 4
  %tobool108.not = icmp eq ptr %call105, null
  br i1 %tobool108.not, label %if.end96.sock_llcp_release_crit_edge, label %if.end110

if.end96.sock_llcp_release_crit_edge:             ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_llcp_release

if.end110:                                        ; preds = %if.end96
  %connecting_sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %call51, i32 0, i32 35
  tail call void @nfc_llcp_sock_link(ptr noundef %connecting_sockets, ptr noundef %1) #9
  %call111 = tail call i32 @nfc_llcp_send_connect(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.sock_unlink_crit_edge

if.end110.sock_unlink_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_unlink

if.end114:                                        ; preds = %if.end110
  %46 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %46)
  store volatile i8 2, ptr %skc_state, align 2
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool117.not = icmp eq i32 %and, 0
  br i1 %tobool117.not, label %cond.false.i, label %if.end114.sock_sndtimeo.exit_crit_edge

if.end114.sock_sndtimeo.exit_crit_edge:           ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %47 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end114.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %48, %cond.false.i ], [ 0, %if.end114.sock_sndtimeo.exit_crit_edge ]
  %call119 = tail call fastcc i32 @sock_wait_state(ptr noundef %1, i32 noundef 1, i32 noundef %cond.i)
  %49 = zext i32 %call119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call119, label %sock_sndtimeo.exit.sock_unlink_crit_edge [
    i32 0, label %sock_sndtimeo.exit.cleanup.sink.split_crit_edge
    i32 -115, label %sock_sndtimeo.exit.cleanup.sink.split_crit_edge212
  ]

sock_sndtimeo.exit.cleanup.sink.split_crit_edge212: ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sock_sndtimeo.exit.cleanup.sink.split_crit_edge:  ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sock_sndtimeo.exit.sock_unlink_crit_edge:         ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_unlink

sock_unlink:                                      ; preds = %sock_sndtimeo.exit.sock_unlink_crit_edge, %if.end110.sock_unlink_crit_edge
  %ret.0 = phi i32 [ %call111, %if.end110.sock_unlink_crit_edge ], [ %call119, %sock_sndtimeo.exit.sock_unlink_crit_edge ]
  tail call void @nfc_llcp_sock_unlink(ptr noundef %connecting_sockets, ptr noundef %1) #9
  %50 = ptrtoint ptr %service_name106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %service_name106, align 4
  tail call void @kfree(ptr noundef %51) #9
  %52 = ptrtoint ptr %service_name106 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %service_name106, align 4
  br label %sock_llcp_release

sock_llcp_release:                                ; preds = %sock_unlink, %if.end96.sock_llcp_release_crit_edge
  %ret.1 = phi i32 [ %ret.0, %sock_unlink ], [ -12, %if.end96.sock_llcp_release_crit_edge ]
  %53 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ssap, align 8
  tail call void @nfc_llcp_put_ssap(ptr noundef nonnull %call51, i8 noundef zeroext %54) #9
  br label %put_dev.sink.split

put_dev.sink.split:                               ; preds = %sock_llcp_release, %if.end74.put_dev.sink.split_crit_edge
  %ret.2.ph = phi i32 [ %ret.1, %sock_llcp_release ], [ -12, %if.end74.put_dev.sink.split_crit_edge ]
  %55 = ptrtoint ptr %local77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %local77, align 4
  %call131 = tail call i32 @nfc_llcp_local_put(ptr noundef %56) #9
  %57 = ptrtoint ptr %local77 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %local77, align 4
  br label %put_dev

put_dev:                                          ; preds = %put_dev.sink.split, %land.lhs.true68.put_dev_crit_edge, %if.end55.put_dev_crit_edge, %if.end50.put_dev_crit_edge
  %ret.2 = phi i32 [ -19, %if.end50.put_dev_crit_edge ], [ -67, %land.lhs.true68.put_dev_crit_edge ], [ -67, %if.end55.put_dev_crit_edge ], [ %ret.2.ph, %put_dev.sink.split ]
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call46, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %put_dev, %sock_sndtimeo.exit.cleanup.sink.split_crit_edge, %sock_sndtimeo.exit.cleanup.sink.split_crit_edge212, %if.end44.cleanup.sink.split_crit_edge, %if.end37.cleanup.sink.split_crit_edge, %do.end32.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call119, %sock_sndtimeo.exit.cleanup.sink.split_crit_edge ], [ %call119, %sock_sndtimeo.exit.cleanup.sink.split_crit_edge212 ], [ %ret.2, %put_dev ], [ -106, %do.end32.cleanup.sink.split_crit_edge ], [ -115, %if.end37.cleanup.sink.split_crit_edge ], [ -19, %if.end44.cleanup.sink.split_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !143) #9
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %sk3 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk3, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_accept.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_accept, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_accept.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef %14) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %14, i32 noundef 1) #9
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp.not = icmp eq i8 %16, 6
  br i1 %cmp.not, label %if.end10, label %do.end.error_crit_edge

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end10:                                         ; preds = %do.end
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %cond.false.i, label %if.end10.sock_rcvtimeo.exit_crit_edge

if.end10.sock_rcvtimeo.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 62
  %17 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end10.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %18, %cond.false.i ], [ 0, %if.end10.sock_rcvtimeo.exit_crit_edge ]
  %19 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 8
  call void @add_wait_queue_exclusive(ptr noundef %21, ptr noundef nonnull %wait) #9
  %call14224 = call ptr @nfc_llcp_accept_dequeue(ptr noundef %14, ptr noundef %newsock)
  %tobool15.not225 = icmp eq ptr %call14224, null
  br i1 %tobool15.not225, label %sock_rcvtimeo.exit.__here_crit_edge, label %sock_rcvtimeo.exit.__here154_crit_edge

sock_rcvtimeo.exit.__here154_crit_edge:           ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here154

sock_rcvtimeo.exit.__here_crit_edge:              ; preds = %sock_rcvtimeo.exit
  br label %__here

__here:                                           ; preds = %if.end101.__here_crit_edge, %sock_rcvtimeo.exit.__here_crit_edge
  %timeo.0226 = phi i32 [ %call102, %if.end101.__here_crit_edge ], [ %cond.i, %sock_rcvtimeo.exit.__here_crit_edge ]
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@llcp_sock_accept, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %25, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0226)
  %tobool92.not = icmp eq i32 %timeo.0226, 0
  br i1 %tobool92.not, label %__here.__here154_crit_edge, label %if.end94

__here.__here154_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here154

if.end94:                                         ; preds = %__here
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stack.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end94.if.then99_crit_edge, !prof !156

if.end94.if.then99_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99

signal_pending.exit:                              ; preds = %if.end94
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %30, align 4
  %and1.i.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool98.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool98.not, label %if.end101, label %signal_pending.exit.if.then99_crit_edge

signal_pending.exit.if.then99_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99

if.then99:                                        ; preds = %signal_pending.exit.if.then99_crit_edge, %if.end94.if.then99_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.0226)
  %cmp.i = icmp eq i32 %timeo.0226, 2147483647
  %cond.i216 = select i1 %cmp.i, i32 -512, i32 -4
  br label %__here154

if.end101:                                        ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %14) #9
  %call102 = call i32 @schedule_timeout(i32 noundef %timeo.0226) #9
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 1) #9
  %call14 = call ptr @nfc_llcp_accept_dequeue(ptr noundef %14, ptr noundef %newsock)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end101.__here_crit_edge, label %if.end101.__here154_crit_edge

if.end101.__here154_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here154

if.end101.__here_crit_edge:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here154:                                        ; preds = %if.end101.__here154_crit_edge, %if.then99, %__here.__here154_crit_edge, %sock_rcvtimeo.exit.__here154_crit_edge
  %call14222 = phi ptr [ null, %if.then99 ], [ %call14224, %sock_rcvtimeo.exit.__here154_crit_edge ], [ null, %__here.__here154_crit_edge ], [ %call14, %if.end101.__here154_crit_edge ]
  %ret.0 = phi i32 [ %cond.i216, %if.then99 ], [ 0, %sock_rcvtimeo.exit.__here154_crit_edge ], [ -11, %__here.__here154_crit_edge ], [ 0, %if.end101.__here154_crit_edge ]
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %task_state_change158 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 212
  %38 = ptrtoint ptr %task_state_change158 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 ptrtoint (ptr blockaddress(@llcp_sock_accept, %__here154) to i32), ptr %task_state_change158, align 4
  %39 = load ptr, ptr %task, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %39, align 128
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %19, align 8
  call void @remove_wait_queue(ptr noundef %42, ptr noundef nonnull %wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool176.not = icmp eq i32 %ret.0, 0
  br i1 %tobool176.not, label %if.end178, label %__here154.error_crit_edge

__here154.error_crit_edge:                        ; preds = %__here154
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end178:                                        ; preds = %__here154
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %newsock, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_accept.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_accept, %if.then191)) #9
          to label %error [label %if.then191], !srcloc !153

if.then191:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_accept.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44, ptr noundef %call14222) #9
  br label %error

error:                                            ; preds = %if.then191, %if.end178, %__here154.error_crit_edge, %do.end.error_crit_edge
  %ret.1 = phi i32 [ %ret.0, %__here154.error_crit_edge ], [ 0, %if.then191 ], [ -77, %do.end.error_crit_edge ], [ 0, %if.end178 ]
  call void @release_sock(ptr noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_listen.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_listen, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_listen.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, ptr noundef %1, i32 noundef %backlog) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %3, label %do.end.error_crit_edge [
    i16 5, label %do.end.lor.lhs.false_crit_edge
    i16 1, label %do.end.lor.lhs.false_crit_edge46
  ]

do.end.lor.lhs.false_crit_edge46:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

do.end.lor.lhs.false_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false:                                    ; preds = %do.end.lor.lhs.false_crit_edge, %do.end.lor.lhs.false_crit_edge46
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp10.not = icmp eq i8 %6, 5
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end13:                                         ; preds = %lor.lhs.false
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %7 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %8 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sk_ack_backlog, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_listen.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_listen, %if.then26)) #9
          to label %do.end29 [label %if.then26], !srcloc !153

if.then26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_listen.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.50) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %if.end13
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 6, ptr %skc_state, align 2
  br label %error

error:                                            ; preds = %do.end29, %lor.lhs.false.error_crit_edge, %do.end.error_crit_edge
  %ret.0 = phi i32 [ 0, %do.end29 ], [ -77, %do.end.error_crit_edge ], [ -77, %lor.lhs.false.error_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_llcp_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
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
  store i32 -1, ptr %opt, align 4, !annotation !169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_setsockopt.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_setsockopt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_setsockopt.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, ptr noundef %1, i32 noundef %optname) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %level)
  %cmp.not = icmp eq i32 %level, 280
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %3 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %optname, label %if.end5.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp eq i8 %5, 1
  br i1 %cmp6, label %sw.bb.sw.epilog_crit_edge, label %lor.lhs.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp11 = icmp eq i8 %7, 5
  br i1 %cmp11, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false13

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp17 = icmp eq i8 %9, 6
  br i1 %cmp17, label %lor.lhs.false13.sw.epilog_crit_edge, label %if.end20

lor.lhs.false13.sw.epilog_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end20:                                         ; preds = %lor.lhs.false13
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %10 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end20
  tail call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 4, i32 -1226833920) #13, !srcloc !170
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !156

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #9
  %12 = call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !171
  %and.i.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %10, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end24thread-pre-split, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !156

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %10, align 1
  %18 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %opt, align 4
  br label %if.end24

if.end24thread-pre-split:                         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %opt, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24thread-pre-split, %if.end.i.i
  %20 = phi i32 [ %.pr, %if.end24thread-pre-split ], [ %17, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %20)
  %cmp25 = icmp ugt i32 %20, 15
  br i1 %cmp25, label %if.end24.sw.epilog_crit_edge, label %if.end28

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %conv29 = trunc i32 %20 to i8
  %rw = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %rw to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv29, ptr %rw, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end5
  %skc_state32 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state32 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state32, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp34 = icmp eq i8 %23, 1
  br i1 %cmp34, label %sw.bb30.sw.epilog_crit_edge, label %lor.lhs.false36

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false36:                                  ; preds = %sw.bb30
  %24 = ptrtoint ptr %skc_state32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state32, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %25)
  %cmp40 = icmp eq i8 %25, 5
  br i1 %cmp40, label %lor.lhs.false36.sw.epilog_crit_edge, label %lor.lhs.false42

lor.lhs.false36.sw.epilog_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false42:                                  ; preds = %lor.lhs.false36
  %26 = ptrtoint ptr %skc_state32 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %skc_state32, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp46 = icmp eq i8 %27, 6
  br i1 %cmp46, label %lor.lhs.false42.sw.epilog_crit_edge, label %if.end49

lor.lhs.false42.sw.epilog_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end49:                                         ; preds = %lor.lhs.false42
  %src.coerce.fca.0.extract.i.i108 = extractvalue [2 x i32] %optval.coerce, 0
  %28 = inttoptr i32 %src.coerce.fca.0.extract.i.i108 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i109 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i109)
  %bf.cast.i.i.i110 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i109, 0
  br i1 %bf.cast.i.i.i110, label %if.end.i.i131, label %if.then.i.i.i115

if.then.i.i.i115:                                 ; preds = %if.end49
  tail call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 156) #9
  %call.i.i.i.i114 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i114, label %if.then.i.i.i115.if.then11.i.i.i.i130_crit_edge, label %land.lhs.true.i.i.i.i118

if.then.i.i.i115.if.then11.i.i.i.i130_crit_edge:  ; preds = %if.then.i.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i130

land.lhs.true.i.i.i.i118:                         ; preds = %if.then.i.i.i115
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 4, i32 -1226833920) #13, !srcloc !170
  %asmresult.i.i.i.i116 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i116)
  %cmp.i.i.i.i117 = icmp eq i32 %asmresult.i.i.i.i116, 0
  br i1 %cmp.i.i.i.i117, label %if.end.i.i.i.i126, label %land.lhs.true.i.i.i.i118.if.then11.i.i.i.i130_crit_edge, !prof !156

land.lhs.true.i.i.i.i118.if.then11.i.i.i.i130_crit_edge: ; preds = %land.lhs.true.i.i.i.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i130

if.end.i.i.i.i126:                                ; preds = %land.lhs.true.i.i.i.i118
  %call.i.i.i.i.i119 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #9
  %30 = call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i.i.i.i.i.i120 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i.i120 to ptr
  %cpu_domain.i.i.i.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i121) #7, !srcloc !171
  %and.i.i.i.i.i.i122 = and i32 %32, -13
  %or.i.i.i.i.i.i123 = or i32 %and.i.i.i.i.i.i122, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i123) #9, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %call1.i.i.i.i.i124 = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %28, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #9, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i124)
  %tobool4.not.i.i.i.i125 = icmp eq i32 %call1.i.i.i.i.i124, 0
  br i1 %tobool4.not.i.i.i.i125, label %if.end53thread-pre-split, label %if.end.i.i.i.i126.if.then11.i.i.i.i130_crit_edge, !prof !156

if.end.i.i.i.i126.if.then11.i.i.i.i130_crit_edge: ; preds = %if.end.i.i.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i130

if.then11.i.i.i.i130:                             ; preds = %if.end.i.i.i.i126.if.then11.i.i.i.i130_crit_edge, %land.lhs.true.i.i.i.i118.if.then11.i.i.i.i130_crit_edge, %if.then.i.i.i115.if.then11.i.i.i.i130_crit_edge
  %res.03.i.i.i.i127 = phi i32 [ %call1.i.i.i.i.i124, %if.end.i.i.i.i126.if.then11.i.i.i.i130_crit_edge ], [ 4, %if.then.i.i.i115.if.then11.i.i.i.i130_crit_edge ], [ 4, %land.lhs.true.i.i.i.i118.if.then11.i.i.i.i130_crit_edge ]
  %sub.i.i.i.i128 = sub i32 4, %res.03.i.i.i.i127
  %add.ptr.i.i.i.i129 = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i128
  %33 = call ptr @memset(ptr %add.ptr.i.i.i.i129, i32 0, i32 %res.03.i.i.i.i127)
  br label %sw.epilog

if.end.i.i131:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %28, align 1
  %36 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %opt, align 4
  br label %if.end53

if.end53thread-pre-split:                         ; preds = %if.end.i.i.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr139 = load i32, ptr %opt, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53thread-pre-split, %if.end.i.i131
  %38 = phi i32 [ %.pr139, %if.end53thread-pre-split ], [ %35, %if.end.i.i131 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %38)
  %cmp54 = icmp ugt i32 %38, 2047
  br i1 %cmp54, label %if.end53.sw.epilog_crit_edge, label %if.end57

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end57:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %conv58 = trunc i32 %38 to i16
  %miux = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %miux to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv58, ptr %miux, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end57, %if.end53.sw.epilog_crit_edge, %if.then11.i.i.i.i130, %lor.lhs.false42.sw.epilog_crit_edge, %lor.lhs.false36.sw.epilog_crit_edge, %sw.bb30.sw.epilog_crit_edge, %if.end28, %if.end24.sw.epilog_crit_edge, %if.then11.i.i.i.i, %lor.lhs.false13.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %if.end57 ], [ 0, %if.end28 ], [ -22, %lor.lhs.false13.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %if.end24.sw.epilog_crit_edge ], [ -22, %lor.lhs.false42.sw.epilog_crit_edge ], [ -22, %lor.lhs.false36.sw.epilog_crit_edge ], [ -22, %sw.bb30.sw.epilog_crit_edge ], [ -22, %if.end53.sw.epilog_crit_edge ], [ -92, %if.end5.sw.epilog_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i.i130 ]
  call void @release_sock(ptr noundef %1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_setsockopt.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_setsockopt, %if.then71)) #9
          to label %cleanup [label %if.then71], !srcloc !153

if.then71:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %rw72 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %rw72 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rw72, align 4
  %conv73 = zext i8 %41 to i32
  %miux74 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %miux74 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %miux74, align 2
  %conv75 = zext i16 %43 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_setsockopt.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.55, ptr noundef %1, i32 noundef %conv73, i32 noundef %conv75) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %do.end.cleanup_crit_edge ], [ %err.0, %if.then71 ], [ %err.0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_llcp_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_getsockopt.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_getsockopt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_getsockopt.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.63, ptr noundef %1, i32 noundef %optname) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %level)
  %cmp.not = icmp eq i32 %level, 280
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 314) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !171
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #9, !srcloc !174
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult8 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool10.not = icmp eq i32 %asmresult, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %local13 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %local13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local13, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %8 = tail call i32 @llvm.umin.i32(i32 %asmresult8, i32 4)
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %9 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %optname, label %if.end16.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb47
    i32 2, label %sw.bb80
    i32 3, label %sw.bb113
    i32 4, label %sw.bb133
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  %rw19 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %rw19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rw19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %11)
  %cmp20 = icmp ugt i8 %11, 15
  br i1 %cmp20, label %cond.true22, label %sw.bb.cond.end28_crit_edge

sw.bb.cond.end28_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end28

cond.true22:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %rw23 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 14
  %12 = ptrtoint ptr %rw23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rw23, align 1
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true22, %sw.bb.cond.end28_crit_edge
  %cond29.in = phi i8 [ %13, %cond.true22 ], [ %11, %sw.bb.cond.end28_crit_edge ]
  %conv32 = zext i8 %cond29.in to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 328) #9
  %14 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i205 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i205 to ptr
  %cpu_domain.i.i206 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i206) #7, !srcloc !171
  %and.i207 = and i32 %16, -13
  %or.i208 = or i32 %and.i207, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i208) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %conv32, i32 -1226833921) #9, !srcloc !175
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool44.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool44.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end16
  %miux48 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %miux48 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %miux48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %19)
  %cmp50 = icmp ugt i16 %19, 2047
  br i1 %cmp50, label %cond.true52, label %sw.bb47.cond.end58_crit_edge

sw.bb47.cond.end58_crit_edge:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end58

cond.true52:                                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %miux53 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 15
  %20 = ptrtoint ptr %miux53 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %miux53, align 4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.true52, %sw.bb47.cond.end58_crit_edge
  %cond59.in = phi i16 [ %21, %cond.true52 ], [ %19, %sw.bb47.cond.end58_crit_edge ]
  %conv65 = zext i16 %cond59.in to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 337) #9
  %22 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i209 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i209 to ptr
  %cpu_domain.i.i210 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i210) #7, !srcloc !171
  %and.i211 = and i32 %24, -13
  %or.i212 = or i32 %and.i211, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i212) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %conv65, i32 -1226833921) #9, !srcloc !176
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool77.not = icmp eq i32 %25, 0
  %spec.select201 = select i1 %tobool77.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end16
  %remote_miu81 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %remote_miu81 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %remote_miu81, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2175, i16 %27)
  %cmp83 = icmp ugt i16 %27, 2175
  br i1 %cmp83, label %cond.true85, label %sw.bb80.cond.end91_crit_edge

sw.bb80.cond.end91_crit_edge:                     ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end91

cond.true85:                                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  %remote_miu86 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 25
  %28 = ptrtoint ptr %remote_miu86 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %remote_miu86, align 4
  br label %cond.end91

cond.end91:                                       ; preds = %cond.true85, %sw.bb80.cond.end91_crit_edge
  %cond92.in = phi i16 [ %29, %cond.true85 ], [ %27, %sw.bb80.cond.end91_crit_edge ]
  %conv98 = zext i16 %cond92.in to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 346) #9
  %30 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i213 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i213 to ptr
  %cpu_domain.i.i214 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i214) #7, !srcloc !171
  %and.i215 = and i32 %32, -13
  %or.i216 = or i32 %and.i215, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i216) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %conv98, i32 -1226833921) #9, !srcloc !177
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool110.not = icmp eq i32 %33, 0
  %spec.select202 = select i1 %tobool110.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %remote_lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 26
  %34 = ptrtoint ptr %remote_lto to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %remote_lto, align 2
  %36 = udiv i16 %35, 10
  %div = zext i16 %36 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 352) #9
  %37 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i217 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i217 to ptr
  %cpu_domain.i.i218 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i218) #7, !srcloc !171
  %and.i219 = and i32 %39, -13
  %or.i220 = or i32 %and.i219, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i220) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %40 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %div, i32 -1226833921) #9, !srcloc !178
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool130.not = icmp eq i32 %40, 0
  %spec.select203 = select i1 %tobool130.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %remote_rw = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 11
  %41 = ptrtoint ptr %remote_rw to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %remote_rw, align 8
  %conv138 = zext i8 %42 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 358) #9
  %43 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i221 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i221 to ptr
  %cpu_domain.i.i222 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 4
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i222) #7, !srcloc !171
  %and.i223 = and i32 %45, -13
  %or.i224 = or i32 %and.i223, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i224) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %46 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %conv138, i32 -1226833921) #9, !srcloc !179
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool150.not = icmp eq i32 %46, 0
  %spec.select204 = select i1 %tobool150.not, i32 0, i32 -14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb133, %sw.bb113, %cond.end91, %cond.end58, %cond.end28, %if.end16.sw.epilog_crit_edge
  %err.0 = phi i32 [ %spec.select, %cond.end28 ], [ %spec.select201, %cond.end58 ], [ %spec.select202, %cond.end91 ], [ %spec.select203, %sw.bb113 ], [ %spec.select204, %sw.bb133 ], [ -92, %if.end16.sw.epilog_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 370) #9
  %47 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i225 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i225 to ptr
  %cpu_domain.i.i226 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i226) #7, !srcloc !171
  %and.i227 = and i32 %49, -13
  %or.i228 = or i32 %and.i227, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i228) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %8, i32 -1226833921) #9, !srcloc !180
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool168.not = icmp eq i32 %50, 0
  %err.0. = select i1 %tobool168.not, i32 %err.0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %do.end.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -19, %if.end12.cleanup_crit_edge ], [ %err.0., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llcp_sock_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llcp_sock_sendmsg.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llcp_sock_sendmsg, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llcp_sock_sendmsg.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, ptr noundef %sock, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.end.if.end7_crit_edge, label %sock_error.exit, !prof !156

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

sock_error.exit:                                  ; preds = %do.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #9, !srcloc !163
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !164
  %sub.i = sub i32 0, %asmresult.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool5.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool5.not, label %sock_error.exit.if.end7_crit_edge, label %sock_error.exit.cleanup32_crit_edge

sock_error.exit.cleanup32_crit_edge:              ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

sock_error.exit.if.end7_crit_edge:                ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %sock_error.exit.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_flags, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup32_crit_edge

if.end7.cleanup32_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

if.end10:                                         ; preds = %if.end7
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %local = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %local, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup32

if.end13:                                         ; preds = %if.end10
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %9 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp = icmp eq i16 %10, 2
  br i1 %cmp, label %if.then15, label %if.end25

if.then15:                                        ; preds = %if.end13
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %12)
  %cmp20 = icmp ult i32 %12, 88
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %1) #9
  br label %cleanup32

if.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msg, align 8
  tail call void @release_sock(ptr noundef %1) #9
  %dsap = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %dsap to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dsap, align 4
  %ssap = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ssap, align 1
  %call24 = tail call i32 @nfc_llcp_send_ui_frame(ptr noundef %1, i8 noundef zeroext %16, i8 noundef zeroext %18, ptr noundef %msg, i32 noundef %len) #9
  br label %cleanup32

if.end25:                                         ; preds = %if.end13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp27.not = icmp eq i8 %20, 1
  tail call void @release_sock(ptr noundef %1) #9
  br i1 %cmp27.not, label %if.end30, label %if.end25.cleanup32_crit_edge

if.end25.cleanup32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 @nfc_llcp_send_i_frame(ptr noundef %1, ptr noundef %msg, i32 noundef %len) #9
  br label %cleanup32

cleanup32:                                        ; preds = %if.end30, %if.end25.cleanup32_crit_edge, %if.end23, %if.then22, %if.then12, %if.end7.cleanup32_crit_edge, %sock_error.exit.cleanup32_crit_edge
  %retval.1 = phi i32 [ %call31, %if.end30 ], [ -19, %if.then12 ], [ %sub.i, %sock_error.exit.cleanup32_crit_edge ], [ -95, %if.end7.cleanup32_crit_edge ], [ -22, %if.then22 ], [ %call24, %if.end23 ], [ -107, %if.end25.cleanup32_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nfc_llcp_get_sdp_ssap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nfc_llcp_get_local_ssap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_wait_state(ptr noundef %sk, i32 noundef %state, i32 noundef %timeo) #0 align 64 {
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !143) #9
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sock_wait_state.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sock_wait_state, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sock_wait_state.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, ptr noundef %sk) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  call void @add_wait_queue(ptr noundef %15, ptr noundef nonnull %wait) #9
  br label %__here

__here:                                           ; preds = %do.end
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 212
  %18 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 ptrtoint (ptr blockaddress(@sock_wait_state, %__here) to i32), ptr %task_state_change, align 4
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %19, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !181
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  br label %while.cond

while.cond:                                       ; preds = %sock_error.exit.while.cond_crit_edge, %__here
  %timeo.addr.0 = phi i32 [ %timeo, %__here ], [ %call90, %sock_error.exit.while.cond_crit_edge ]
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.not = icmp eq i8 %22, 1
  br i1 %cmp.not, label %while.cond.__here227_crit_edge, label %while.body

while.cond.__here227_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here227

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.addr.0)
  %tobool80.not = icmp eq i32 %timeo.addr.0, 0
  br i1 %tobool80.not, label %while.body.__here227_crit_edge, label %if.end82

while.body.__here227_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here227

if.end82:                                         ; preds = %while.body
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stack.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end82.if.then87_crit_edge, !prof !156

if.end82.if.then87_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

signal_pending.exit:                              ; preds = %if.end82
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool86.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool86.not, label %if.end89, label %signal_pending.exit.if.then87_crit_edge

signal_pending.exit.if.then87_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

if.then87:                                        ; preds = %signal_pending.exit.if.then87_crit_edge, %if.end82.if.then87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.addr.0)
  %cmp.i = icmp eq i32 %timeo.addr.0, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  br label %__here227

if.end89:                                         ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %sk) #9
  %call90 = call i32 @schedule_timeout(i32 noundef %timeo.addr.0) #9
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  br label %__here142

__here142:                                        ; preds = %if.end89
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %task_state_change146 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change146 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@sock_wait_state, %__here142) to i32), ptr %task_state_change146, align 4
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %35, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !182
  %37 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i265 = icmp eq i32 %38, 0
  br i1 %tobool.not.i265, label %__here142.sock_error.exit_crit_edge, label %if.end.i266, !prof !156

__here142.sock_error.exit_crit_edge:              ; preds = %__here142
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_error.exit

if.end.i266:                                      ; preds = %__here142
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !162
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #9
  %39 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #9, !srcloc !163
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !164
  %sub.i = sub i32 0, %asmresult.i.i
  br label %sock_error.exit

sock_error.exit:                                  ; preds = %if.end.i266, %__here142.sock_error.exit_crit_edge
  %retval.0.i267 = phi i32 [ %sub.i, %if.end.i266 ], [ 0, %__here142.sock_error.exit_crit_edge ]
  %tobool173.not = icmp eq i32 %retval.0.i267, 0
  br i1 %tobool173.not, label %sock_error.exit.while.cond_crit_edge, label %sock_error.exit.__here227_crit_edge

sock_error.exit.__here227_crit_edge:              ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here227

sock_error.exit.while.cond_crit_edge:             ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

__here227:                                        ; preds = %sock_error.exit.__here227_crit_edge, %if.then87, %while.body.__here227_crit_edge, %while.cond.__here227_crit_edge
  %err.1 = phi i32 [ %cond.i, %if.then87 ], [ -115, %while.body.__here227_crit_edge ], [ 0, %while.cond.__here227_crit_edge ], [ %retval.0.i267, %sock_error.exit.__here227_crit_edge ]
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %task_state_change231 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 212
  %42 = ptrtoint ptr %task_state_change231 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 ptrtoint (ptr blockaddress(@sock_wait_state, %__here227) to i32), ptr %task_state_change231, align 4
  %43 = load ptr, ptr %task, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %43, align 128
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %13, align 8
  call void @remove_wait_queue(ptr noundef %46, ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_ui_frame(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_i_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !133, !135, !137, !138, !140, !141, !142}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/llcp_sock.c", i32 380, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nfc_llcp_accept_unlink.__UNIQUE_ID_ddebug477, !1, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/nfc/llcp_sock.c", i32 431, i32 4}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nfc_llcp_accept_dequeue.__UNIQUE_ID_ddebug478, !8, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/net/sock.h", i32 2024, i32 2}
!14 = !{ptr @llcp_sock_proto, !15, !"llcp_sock_proto", i1 false, i1 false}
!15 = !{!"../net/nfc/llcp_sock.c", i32 53, i32 21}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/nfc/llcp_sock.c", i32 954, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @llcp_sock_destruct.__UNIQUE_ID_ddebug499, !17, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!20 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/nfc/llcp_sock.c", i32 964, i32 3}
!23 = !{ptr @llcp_sock_destruct._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @llcp_sock_destruct._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @skb_queue_head_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @llcp_nfc_proto, !29, !"llcp_nfc_proto", i1 false, i1 false}
!29 = !{!"../net/nfc/llcp_sock.c", i32 1046, i32 34}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/nfc/llcp_sock.c", i32 1024, i32 2}
!32 = !{ptr @llcp_sock_create.__UNIQUE_ID_ddebug500, !31, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!33 = !{ptr @llcp_rawsock_ops, !34, !"llcp_rawsock_ops", i1 false, i1 false}
!34 = !{!"../net/nfc/llcp_sock.c", i32 932, i32 31}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/nfc/llcp_sock.c", i32 599, i32 2}
!37 = !{ptr @llcp_sock_release.__UNIQUE_ID_ddebug487, !36, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/nfc/llcp_sock.c", i32 158, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @llcp_raw_sock_bind.__UNIQUE_ID_ddebug467, !39, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!42 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/nfc/llcp_sock.c", i32 508, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @llcp_sock_getname.__UNIQUE_ID_ddebug484, !44, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!47 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/nfc/llcp_sock.c", i32 556, i32 2}
!50 = !{ptr @llcp_sock_poll.__UNIQUE_ID_ddebug485, !49, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/nfc/llcp_sock.c", i32 584, i32 2}
!53 = !{ptr @llcp_sock_poll.__UNIQUE_ID_ddebug486, !52, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!54 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/nfc/llcp_sock.c", i32 831, i32 2}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @llcp_sock_recvmsg.__UNIQUE_ID_ddebug494, !56, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!59 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/nfc/llcp_sock.c", i32 848, i32 3}
!62 = !{ptr @llcp_sock_recvmsg._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @llcp_sock_recvmsg._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/nfc/llcp_sock.c", i32 876, i32 3}
!66 = !{ptr @llcp_sock_recvmsg.__UNIQUE_ID_ddebug498, !65, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!67 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @llcp_sock_ops, !69, !"llcp_sock_ops", i1 false, i1 false}
!69 = !{!"../net/nfc/llcp_sock.c", i32 912, i32 31}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/nfc/llcp_sock.c", i32 72, i32 2}
!72 = !{ptr @llcp_sock_bind.__UNIQUE_ID_ddebug461, !71, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/nfc/llcp_sock.c", i32 132, i32 2}
!75 = !{ptr @llcp_sock_bind.__UNIQUE_ID_ddebug466, !74, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!76 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/nfc/llcp_sock.c", i32 663, i32 2}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @llcp_sock_connect.__UNIQUE_ID_ddebug488, !78, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!81 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/nfc/llcp_sock.c", i32 671, i32 2}
!84 = !{ptr @llcp_sock_connect.__UNIQUE_ID_ddebug489, !83, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!85 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/nfc/llcp_sock.c", i32 22, i32 2}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sock_wait_state.__UNIQUE_ID_ddebug457, !87, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!90 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../net/nfc/llcp_sock.c", i32 25, i32 2}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../net/nfc/llcp_sock.c", i32 41, i32 3}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../net/nfc/llcp_sock.c", i32 48, i32 2}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/nfc/llcp_sock.c", i32 452, i32 2}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @llcp_sock_accept.__UNIQUE_ID_ddebug479, !98, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!101 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../net/nfc/llcp_sock.c", i32 466, i32 3}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../net/nfc/llcp_sock.c", i32 482, i32 2}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/nfc/llcp_sock.c", i32 490, i32 2}
!108 = !{ptr @llcp_sock_accept.__UNIQUE_ID_ddebug482, !107, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!109 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/nfc/llcp_sock.c", i32 204, i32 2}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @llcp_sock_listen.__UNIQUE_ID_ddebug470, !111, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!114 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/nfc/llcp_sock.c", i32 217, i32 2}
!117 = !{ptr @llcp_sock_listen.__UNIQUE_ID_ddebug471, !116, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!118 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/nfc/llcp_sock.c", i32 234, i32 2}
!121 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @nfc_llcp_setsockopt.__UNIQUE_ID_ddebug472, !120, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!123 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/nfc/llcp_sock.c", i32 293, i32 2}
!126 = !{ptr @nfc_llcp_setsockopt.__UNIQUE_ID_ddebug473, !125, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!127 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!130 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/nfc/llcp_sock.c", i32 309, i32 2}
!137 = !{ptr @nfc_llcp_getsockopt.__UNIQUE_ID_ddebug474, !136, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/nfc/llcp_sock.c", i32 781, i32 2}
!140 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @llcp_sock_sendmsg.__UNIQUE_ID_ddebug492, !139, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!142 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148712619, i64 2148712624, i64 2148712637, i64 2148712681, i64 2148712715, i64 2148712736}
!154 = !{i64 2148332819}
!155 = !{i64 2148247283, i64 2148247315, i64 2148247344, i64 2148247378, i64 2148247409, i64 2148247432}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i64 2149326783}
!158 = !{i64 2148244818, i64 2148244850, i64 2148244879, i64 2148244913, i64 2148244944, i64 2148244967}
!159 = !{!"branch_weights", i32 1, i32 2000}
!160 = !{i64 2156742138}
!161 = !{i64 2156788610}
!162 = !{i64 2156794860}
!163 = !{i64 750056, i64 750073, i64 750097, i64 750123, i64 750141}
!164 = !{i64 2156795203}
!165 = !{i64 2149993265}
!166 = !{i64 2149993590}
!167 = !{i8 0, i8 2}
!168 = !{i64 2156996651}
!169 = !{!"auto-init"}
!170 = !{i64 2152192405, i64 2152192430}
!171 = !{i64 4683899}
!172 = !{i64 4684096}
!173 = !{i64 2152169329}
!174 = !{i64 2156916703, i64 2156916983, i64 2156917317, i64 2156917651}
!175 = !{i64 2156927898, i64 2156928178, i64 2156928512, i64 2156928846}
!176 = !{i64 2156936941, i64 2156937221, i64 2156937555, i64 2156937889}
!177 = !{i64 2156945845, i64 2156946125, i64 2156946459, i64 2156946793}
!178 = !{i64 2156954745, i64 2156955025, i64 2156955359, i64 2156955693}
!179 = !{i64 2156963641, i64 2156963921, i64 2156964255, i64 2156964589}
!180 = !{i64 2156972429, i64 2156972709, i64 2156973043, i64 2156973377}
!181 = !{i64 2156873376}
!182 = !{i64 2156878169}
