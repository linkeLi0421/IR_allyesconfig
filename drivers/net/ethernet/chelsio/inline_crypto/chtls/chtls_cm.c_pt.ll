; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.162, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.162 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.78, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.78 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.167, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.168, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.169, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.163, [0 x i32], %union.anon.164, i16, i16, %union.anon.165, %struct.refcount_struct, [0 x i32], %union.anon.166 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.163 = type { i32 }
%union.anon.164 = type { %struct.hlist_node }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.167 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.chtls_sock = type { ptr, ptr, ptr, ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.chtls_hws, %struct.synq, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.chtls_hws = type { %struct.sk_buff_head, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, %struct.tls_scmd, %union.anon.202 }
%struct.tls_scmd = type { i32, i32 }
%union.anon.202 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.synq = type { ptr, ptr }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.206, %struct.anon.207, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.206 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.207 = type { i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.208, %struct.anon.209, %struct.anon.210, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.208 = type { i32, i32, i64 }
%struct.anon.209 = type { i32, i32, i64 }
%struct.anon.210 = type { i32, i32 }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.cpl_close_con_req = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%union.opcode_tid = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.133, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.133 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.214, i32 }
%union.anon.214 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.chtls_dev = type { %struct.tls_toe_device, %struct.list_head, ptr, ptr, [32 x ptr], %struct.spinlock, ptr, ptr, i32, ptr, %struct.idr, %struct.idr, %struct.spinlock, [8 x ptr], [32 x ptr], ptr, %struct.sk_buff_head, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.key_map, i32, [104 x i8] }
%struct.tls_toe_device = type { [32 x i8], %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref }
%struct.key_map = type { ptr, i32, i32, i32, %struct.spinlock }
%struct.listen_info = type { ptr, ptr, i32 }
%struct.listen_ctx = type { ptr, ptr, %struct.sk_buff_head, i32 }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.anon = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.201, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.201 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.173, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.195, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.173 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.195 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.serv_entry = type { ptr }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.cpl_rx_tls_cmp = type { %struct.rss_header, %union.opcode_tid, i32, i32, i32, i32, i32 }
%struct.rss_header = type { i8, i8, i16, i32 }
%struct.cpl_tls_data = type { %struct.rss_header, %union.opcode_tid, i32, i32, i32 }
%struct.cpl_abort_req = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cpl_abort_rpl = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.cpl_abort_req_rss = type { %union.opcode_tid, [3 x i8], i8 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.223 }
%union.anon.223 = type { %struct.anon.224 }
%struct.anon.224 = type { ptr, ptr }
%struct.anon.2 = type { i16, i16 }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.anon.40 = type { i16, i16 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.tcp6_sock = type { %struct.tcp_sock, %struct.ipv6_pinfo }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.203, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.203 = type { %struct.anon.204 }
%struct.anon.204 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%union.tls_crypto_context = type { %union.anon.190 }
%union.anon.190 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.cpl_t5_pass_accept_rpl = type { %struct.work_request_hdr, %union.opcode_tid, i32, i64, i32, [3 x i32] }
%struct.cpl_pass_accept_req = type { %union.opcode_tid, i16, i16, i32, i16, i16, i32, %struct.tcp_options }
%struct.tcp_options = type { i16, i8, i8 }
%struct.l2t_entry = type { i16, i16, [4 x i32], i32, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, i16, i16, i8, i8, [6 x i8] }
%struct.tlsrx_cmp_hdr = type <{ i8, i16, i16, i64, i16, i8 }>

@chtls_close.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@chtls_destroy_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_prot = external dso_local global %struct.proto, align 4
@tcpv6_prot = external dso_local global %struct.proto, align 4
@chtls_handlers = dso_local global { <{ [196 x ptr], [43 x ptr] }>, [228 x i8] } { <{ [196 x ptr], [43 x ptr] }> <{ [196 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chtls_close_listsrv_rpl, ptr null, ptr null, ptr null, ptr @chtls_pass_open_rpl, ptr null, ptr @chtls_conn_cpl, ptr null, ptr null, ptr null, ptr null, ptr @chtls_conn_cpl, ptr null, ptr @chtls_conn_cpl, ptr null, ptr null, ptr null, ptr null, ptr @chtls_conn_cpl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chtls_rx_data, ptr @chtls_set_tcb_rpl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chtls_pass_establish, ptr null, ptr null, ptr @chtls_pass_accept_req, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chtls_rx_cmp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chtls_rx_pdu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chtls_wr_ack], [43 x ptr] zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@chtls_purge_recv_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_send_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_send_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send tx flowc error\00", [44 x i8] zeroinitializer }, align 32
@chtls_send_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@send_or_defer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h\00", [39 x i8] zeroinitializer }, align 32
@new_state = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\07\84\02\84\04\05\07\07\89\09\07\0B\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@chtls_close_conn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@csk_flag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_purge_write_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wait_for_states.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&_sk_wq.wait\00", [19 x i8] zeroinitializer }, align 32
@wait_for_states.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@chtls_find_netdev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@cleanup_syn_rcv_conn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@reset_listen_child.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@chtls_rsk_ops = external dso_local global %struct.request_sock_ops, align 4
@chtls_rsk_opsv6 = external dso_local global %struct.request_sock_ops, align 4
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/request_sock.h\00", [37 x i8] zeroinitializer }, align 32
@chtls_close_listsrv_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016Unexpected CLOSE_LISTSRV_RPL status %u for STID %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"chtls_close_listsrv_rpl\00", [40 x i8] zeroinitializer }, align 32
@chtls_close_listsrv_rpl._entry_ptr = internal global ptr @chtls_close_listsrv_rpl._entry, section ".printk_index", align 4
@chtls_pass_open_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016Unexpected PASS_OPEN_RPL status %u for STID %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chtls_pass_open_rpl\00", [44 x i8] zeroinitializer }, align 32
@chtls_pass_open_rpl._entry_ptr = internal global ptr @chtls_pass_open_rpl._entry, section ".printk_index", align 4
@chtls_peer_close.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_peer_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 1901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016cpl_peer_close in bad state %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chtls_peer_close\00", [47 x i8] zeroinitializer }, align 32
@chtls_peer_close._entry_ptr = internal global ptr @chtls_peer_close._entry, section ".printk_index", align 4
@chtls_release_resources.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dequeue_wr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.h\00", [36 x i8] zeroinitializer }, align 32
@sk_wakeup_sleepers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sk_wake_async.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@chtls_close_con_rpl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_close_con_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 1958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016close_con_rpl in bad state %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chtls_close_con_rpl\00", [44 x i8] zeroinitializer }, align 32
@chtls_close_con_rpl._entry_ptr = internal global ptr @chtls_close_con_rpl._entry, section ".printk_index", align 4
@chtls_abort_req_rss.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_tx_flowc error\00", [44 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@bl_abort_syn_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@chtls_send_abort_rpl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_cpl_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"skb alloc error\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@chtls_abort_rpl_rss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_rx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 1735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013can't find conn. for hwtid %u.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chtls_rx_data\00", [18 x i8] zeroinitializer }, align 32
@chtls_rx_data._entry_ptr = internal global ptr @chtls_rx_data._entry, section ".printk_index", align 4
@chtls_recv_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@assign_rxopt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@reap_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@reap_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@reap_task = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @reap_task, i64 4), ptr getelementptr (i8, ptr @reap_task, i64 4) }, ptr @process_reap_list, %struct.lockdep_map { ptr @reap_task, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reap_list_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reap_task\00", [22 x i8] zeroinitializer }, align 32
@process_reap_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_pass_accept_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016passive open TID %u too large\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chtls_pass_accept_req\00", [42 x i8] zeroinitializer }, align 32
@chtls_pass_accept_req._entry_ptr = internal global ptr @chtls_pass_accept_req._entry, section ".printk_index", align 4
@chtls_pass_accept_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016tid (%d) already in use\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chtls_pass_accept_request\00", [38 x i8] zeroinitializer }, align 32
@chtls_pass_accept_request._entry_ptr = internal global ptr @chtls_pass_accept_request._entry, section ".printk_index", align 4
@chtls_pass_accept_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_pass_open_arp_failure.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_rx_cmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.34, ptr @.str, i32 1856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chtls_rx_cmp\00", [19 x i8] zeroinitializer }, align 32
@chtls_rx_cmp._entry_ptr = internal global ptr @chtls_rx_cmp._entry, section ".printk_index", align 4
@chtls_rx_hdr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_rx_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.35, ptr @.str, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chtls_rx_pdu\00", [19 x i8] zeroinitializer }, align 32
@chtls_rx_pdu._entry_ptr = internal global ptr @chtls_rx_pdu._entry, section ".printk_index", align 4
@chtls_recv_pdu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_wr_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.36, ptr @.str, i32 2291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chtls_wr_ack\00", [19 x i8] zeroinitializer }, align 32
@chtls_wr_ack._entry_ptr = internal global ptr @chtls_wr_ack._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 38, i64 43, i64 45, i64 50]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 9, i64 11]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 343, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"chtls_handlers\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2321, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 260, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 2789, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant [60 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 547, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"new_state\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 42, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 416, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 116, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 723, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1984, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [30 x i8] c"../include/net/request_sock.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 126, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 799, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 776, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1901, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [63 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 207, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 2444, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1958, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2127, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 316, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1968, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1735, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"reap_list_lock\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [10 x i8] c"reap_list\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1489, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant [10 x i8] c"reap_task\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1490, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1519, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1447, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1319, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1856, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1787, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [63 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 2291, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @chtls_close_con_rpl._entry, ptr @chtls_close_con_rpl._entry_ptr, ptr @chtls_close_listsrv_rpl._entry, ptr @chtls_close_listsrv_rpl._entry_ptr, ptr @chtls_pass_accept_req._entry, ptr @chtls_pass_accept_req._entry_ptr, ptr @chtls_pass_accept_request._entry, ptr @chtls_pass_accept_request._entry_ptr, ptr @chtls_pass_open_rpl._entry, ptr @chtls_pass_open_rpl._entry_ptr, ptr @chtls_peer_close._entry, ptr @chtls_peer_close._entry_ptr, ptr @chtls_rx_cmp._entry, ptr @chtls_rx_cmp._entry_ptr, ptr @chtls_rx_data._entry, ptr @chtls_rx_data._entry_ptr, ptr @chtls_rx_pdu._entry, ptr @chtls_rx_pdu._entry_ptr, ptr @chtls_wr_ack._entry, ptr @chtls_wr_ack._entry_ptr, ptr @.str, ptr @.str.1, ptr @chtls_handlers, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @new_state, ptr @wait_for_states.__key, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @skb_queue_head_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @reap_list_lock, ptr @reap_list, ptr @reap_task, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_handlers to i32), i32 956, i32 1184, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_states.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_close_listsrv_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_pass_open_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_peer_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_close_con_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_rx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reap_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reap_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reap_task to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_pass_accept_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_pass_accept_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_rx_cmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_rx_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_wr_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chtls_close(ptr noundef %sk, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b116 = load i1, ptr @chtls_close.__warned, align 1
  br i1 %.b116, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_close.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %4 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sk_shutdown, align 2
  %6 = or i8 %5, 3
  store i8 %6, ptr %sk_shutdown, align 2
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %qlen.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i, align 4
  %qlen.i117 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 0, i32 1
  %9 = ptrtoint ptr %qlen.i117 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i117, align 4
  tail call fastcc void @chtls_purge_recv_queue(ptr noundef %sk)
  %11 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.i3.i = icmp eq ptr %12, %sk_receive_queue
  %tobool.not.i24.i = icmp eq ptr %12, null
  %tobool.not.i5.i = or i1 %cmp.i.i3.i, %tobool.not.i24.i
  br i1 %tobool.not.i5.i, label %do.end7.chtls_purge_receive_queue.exit_crit_edge, label %do.end7.while.body.i_crit_edge

do.end7.while.body.i_crit_edge:                   ; preds = %do.end7
  br label %while.body.i

do.end7.chtls_purge_receive_queue.exit_crit_edge: ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_purge_receive_queue.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end7.while.body.i_crit_edge
  %13 = phi ptr [ %25, %while.body.i.while.body.i_crit_edge ], [ %12, %do.end7.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.46, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %13, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.46, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %prev17.i.i.i, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %19, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %22, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #10
  %24 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.i.i = icmp eq ptr %25, %sk_receive_queue
  %tobool.not.i2.i = icmp eq ptr %25, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i2.i
  br i1 %tobool.not.i.i, label %while.body.i.chtls_purge_receive_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.chtls_purge_receive_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_purge_receive_queue.exit

chtls_purge_receive_queue.exit:                   ; preds = %while.body.i.chtls_purge_receive_queue.exit_crit_edge, %do.end7.chtls_purge_receive_queue.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %26 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %27)
  %cmp = icmp eq i8 %27, 7
  br i1 %cmp, label %chtls_purge_receive_queue.exit.wait_crit_edge, label %if.else

chtls_purge_receive_queue.exit.wait_crit_edge:    ; preds = %chtls_purge_receive_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait

if.else:                                          ; preds = %chtls_purge_receive_queue.exit
  %or13 = or i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or13)
  %tobool17.not = icmp eq i32 %or13, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.else.if.then23_crit_edge

if.else.if.then23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.else
  %28 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp21 = icmp eq i8 %29, 2
  br i1 %cmp21, label %lor.lhs.false.if.then23_crit_edge, label %if.else24

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.else.if.then23_crit_edge
  tail call fastcc void @chtls_send_reset(ptr noundef %sk, ptr noundef null)
  %icsk_bind_hash.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 2
  %30 = ptrtoint ptr %icsk_bind_hash.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %icsk_bind_hash.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then23.unlock_crit_edge, label %if.then.i

if.then23.unlock_crit_edge:                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_put_port(ptr noundef %sk) #10
  br label %unlock

if.else24:                                        ; preds = %lor.lhs.false
  %32 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not = icmp eq i32 %35, 0
  br i1 %tobool.i.not, label %if.else24.if.else32_crit_edge, label %land.lhs.true27

if.else24.if.else32_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32

land.lhs.true27:                                  ; preds = %if.else24
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 48
  %36 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_lingertime, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool28.not = icmp eq i32 %37, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true27.if.else32_crit_edge

land.lhs.true27.if.else32_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %38 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skc_prot, align 8
  %disconnect = getelementptr inbounds %struct.proto, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disconnect, align 4
  %call31 = tail call i32 %41(ptr noundef %sk, i32 noundef 0) #10
  br label %wait

if.else32:                                        ; preds = %land.lhs.true27.if.else32_crit_edge, %if.else24.if.else32_crit_edge
  %42 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %skc_state, align 2
  %idxprom.i = zext i8 %43 to i32
  %arrayidx.i = getelementptr [16 x i8], ptr @new_state, i32 0, i32 %idxprom.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %45 to i32
  %and.i = and i32 %conv.i, 15
  tail call void @tcp_set_state(ptr noundef %sk, i32 noundef %and.i) #10
  %and1.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool34.not = icmp eq i32 %and1.i, 0
  br i1 %tobool34.not, label %if.else32.wait_crit_edge, label %if.then35

if.else32.wait_crit_edge:                         ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait

if.then35:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_close_conn(ptr noundef %sk)
  br label %wait

wait:                                             ; preds = %if.then35, %if.else32.wait_crit_edge, %if.then29, %chtls_purge_receive_queue.exit.wait_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool40.not = icmp eq i32 %timeout, 0
  br i1 %tobool40.not, label %wait.unlock_crit_edge, label %if.then41

wait.unlock_crit_edge:                            ; preds = %wait
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then41:                                        ; preds = %wait
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sk_stream_wait_close(ptr noundef %sk, i32 noundef %timeout) #10
  br label %unlock

unlock:                                           ; preds = %if.then41, %wait.unlock_crit_edge, %if.then.i, %if.then23.unlock_crit_edge
  %46 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load volatile i8, ptr %skc_state, align 2
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !170
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %unlock.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !171

unlock.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %unlock
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %49 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %unlock.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %unlock.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %50 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %or.i.i.i = or i32 %52, 1
  store i32 %or.i.i.i, ptr %50, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %53 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %sk_socket.i.i, align 8
  %54 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %54, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  tail call void @release_sock(ptr noundef %sk) #10
  tail call fastcc void @local_bh_disable()
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %47)
  %cmp46.not = icmp eq i8 %47, 7
  br i1 %cmp46.not, label %sock_hold.exit.if.end55_crit_edge, label %land.lhs.true48

sock_hold.exit.if.end55_crit_edge:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true48:                                  ; preds = %sock_hold.exit
  %56 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %57)
  %cmp52 = icmp eq i8 %57, 7
  br i1 %cmp52, label %land.lhs.true48.out_crit_edge, label %land.lhs.true48.if.end55_crit_edge

land.lhs.true48.if.end55_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true48.out_crit_edge:                    ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end55:                                         ; preds = %land.lhs.true48.if.end55_crit_edge, %sock_hold.exit.if.end55_crit_edge
  %58 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %59)
  %cmp59 = icmp eq i8 %59, 5
  br i1 %cmp59, label %land.lhs.true61, label %if.end55.if.end73_crit_edge

if.end55.if.end73_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true61:                                  ; preds = %if.end55
  %linger2 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 106
  %60 = ptrtoint ptr %linger2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %linger2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp63 = icmp slt i32 %61, 0
  br i1 %cmp63, label %land.lhs.true65, label %land.lhs.true61.if.end73_crit_edge

land.lhs.true61.if.end73_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %62 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i118 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i118, label %land.lhs.true.i, label %land.lhs.true65.do.end7.i_crit_edge

land.lhs.true65.do.end7.i_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %land.lhs.true65
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i119

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i119:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i119, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %land.lhs.true65.do.end7.i_crit_edge
  %64 = ptrtoint ptr %63 to i32
  %and.i120 = and i32 %64, -4
  %65 = inttoptr i32 %and.i120 to ptr
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags.i.i, align 4
  %68 = and i32 %67, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.not.i = icmp eq i32 %68, 0
  br i1 %tobool.i.not.i, label %do.end7.i.if.then68_crit_edge, label %csk_flag.exit

do.end7.i.if.then68_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

csk_flag.exit:                                    ; preds = %do.end7.i
  %69 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags.i.i, align 4
  %71 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool67.not = icmp eq i32 %71, 0
  br i1 %tobool67.not, label %csk_flag.exit.if.then68_crit_edge, label %csk_flag.exit.if.end73_crit_edge

csk_flag.exit.if.end73_crit_edge:                 ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

csk_flag.exit.if.then68_crit_edge:                ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.then68:                                        ; preds = %csk_flag.exit.if.then68_crit_edge, %do.end7.i.if.then68_crit_edge
  %call.i121 = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool70.not = icmp eq ptr %call.i121, null
  br i1 %tobool70.not, label %if.then68.if.end73_crit_edge, label %if.then71

if.then68.if.end73_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_send_reset(ptr noundef %sk, ptr noundef nonnull %call.i121)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.then68.if.end73_crit_edge, %csk_flag.exit.if.end73_crit_edge, %land.lhs.true61.if.end73_crit_edge, %if.end55.if.end73_crit_edge
  %72 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %73)
  %cmp77 = icmp eq i8 %73, 7
  br i1 %cmp77, label %if.then79, label %if.end73.out_crit_edge

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_csk_destroy_sock(ptr noundef %sk) #10
  br label %out

out:                                              ; preds = %if.then79, %if.end73.out_crit_edge, %land.lhs.true48.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #10
  tail call fastcc void @local_bh_enable()
  %call.i.i.i.i.i.i123 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i125, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i124 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i124, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i125:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %sk) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i125, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_purge_recv_queue(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b12 = load i1, ptr @chtls_purge_recv_queue.__warned, align 1
  br i1 %.b12, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_purge_recv_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %tlshws = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %tlshws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tlshws, align 4
  %cmp.i.i14 = icmp eq ptr %5, %tlshws
  %tobool.not.i1315 = icmp eq ptr %5, null
  %tobool.not.i16 = or i1 %cmp.i.i14, %tobool.not.i1315
  br i1 %tobool.not.i16, label %do.end7.while.end_crit_edge, label %while.body.lr.ph

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end7
  %qlen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %18, %while.body.while.body_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #10
  %17 = ptrtoint ptr %tlshws to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tlshws, align 4
  %cmp.i.i = icmp eq ptr %18, %tlshws
  %tobool.not.i13 = icmp eq ptr %18, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i13
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end7.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_send_reset(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @chtls_send_reset.__warned, align 1
  br i1 %.b2, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_send_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 247, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %lor.rhs, label %do.end7.if.then16_crit_edge, !prof !172

do.end7.if.then16_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

lor.rhs:                                          ; preds = %do.end7
  %cdev = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdev, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %lor.rhs.if.then16_crit_edge, label %if.end20, !prof !171

lor.rhs.if.then16_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %lor.rhs.if.then16_crit_edge, %do.end7.if.then16_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp = icmp eq i8 %10, 3
  br i1 %cmp, label %if.then18, label %if.then16.out_crit_edge

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i = or i32 %5, 1024
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.i, ptr %flags.i, align 4
  br label %out

if.end20:                                         ; preds = %lor.rhs
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end75_crit_edge

if.end20.if.end75_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then23:                                        ; preds = %if.end20
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %15 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %snd_nxt, align 4
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %17 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rcv_nxt, align 8
  %call25 = tail call i32 @send_tx_flowc_wr(ptr noundef %sk, i32 noundef 0, i32 noundef %16, i32 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %land.end, label %if.then23.if.end74_crit_edge

if.then23.if.end74_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

land.end:                                         ; preds = %if.then23
  %.b1001 = load i1, ptr @chtls_send_reset.__already_done, align 1
  br i1 %.b1001, label %land.end.if.end74_crit_edge, label %if.then40, !prof !172

land.end.if.end74_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then40:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_send_reset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 9, ptr noundef nonnull @.str.2) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then40, %land.end.if.end74_crit_edge, %if.then23.if.end74_crit_edge
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %or.i.i8 = or i32 %20, 128
  store i32 %or.i.i8, ptr %flags.i, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end20.if.end75_crit_edge
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %or.i.i10 = or i32 %22, 32
  store i32 %or.i.i10, ptr %flags.i, align 4
  tail call fastcc void @chtls_purge_write_queue(ptr noundef %sk)
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %or.i.i12 = or i32 %24, 16
  store i32 %or.i.i12, ptr %flags.i, align 4
  %skc_state77 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %25 = ptrtoint ptr %skc_state77 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state77, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp79.not = icmp eq i8 %26, 3
  br i1 %cmp79.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_send_abort(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @chtls_set_tcb_field_rpl_skb(ptr noundef %sk, i16 noundef zeroext 1, i64 noundef -1, i64 noundef 0, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %cleanup

out:                                              ; preds = %if.then18, %if.then16.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.else, %if.then81
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_close_conn(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @chtls_close_conn.__warned, align 1
  br i1 %.b33, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_close_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %tid11 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %tid11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid11, align 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 36032, i32 noundef 0, i32 noundef -1) #10
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !172

do.body3.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

__skb_put.exit:                                   ; preds = %do.end8
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 32
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %11, 32
  store i32 %add.i, ptr %len9.i, align 4
  %12 = getelementptr inbounds i8, ptr %9, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 24)
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 83886088, ptr %9, align 8
  %shl = shl i32 %5, 8
  %or = or i32 %shl, 2
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %wr_mid, align 4
  %or15 = or i32 %5, 134217728
  %ot = getelementptr inbounds %struct.cpl_close_con_req, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or15, ptr %ot, align 8
  %nonagle.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %17 = ptrtoint ptr %nonagle.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %nonagle.i, align 4
  %18 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %__skb_put.exit.tcp_uncork.exit_crit_edge, label %if.then.i

__skb_put.exit.tcp_uncork.exit_crit_edge:         ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcp_uncork.exit

if.then.i:                                        ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i = and i16 %bf.load.i, -33
  %19 = ptrtoint ptr %nonagle.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.set.i, ptr %nonagle.i, align 4
  tail call void @chtls_tcp_push(ptr noundef %sk, i32 noundef 0) #10
  br label %tcp_uncork.exit

tcp_uncork.exit:                                  ; preds = %if.then.i, %__skb_put.exit.tcp_uncork.exit_crit_edge
  tail call void @skb_entail(ptr noundef %sk, ptr noundef %call.i, i32 noundef 130) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %20 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.not = icmp eq i8 %21, 2
  br i1 %cmp.not, label %tcp_uncork.exit.if.end19_crit_edge, label %if.then17

tcp_uncork.exit.if.end19_crit_edge:               ; preds = %tcp_uncork.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %tcp_uncork.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 @chtls_push_frames(ptr noundef %3, i32 noundef 1) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %tcp_uncork.exit.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stream_wait_close(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csk_flag(ptr noundef %sk, i32 noundef %flag) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %do.end7.cleanup_crit_edge, label %if.end12

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %flag, 31
  %shr.i = lshr i32 %8, %and.i
  %and1.i = and i32 %shr.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %and1.i, %if.end12 ], [ 0, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_destroy_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_disconnect(ptr noundef %sk, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @chtls_purge_recv_queue(ptr noundef %sk)
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i3.i = icmp eq ptr %1, %sk_receive_queue.i
  %tobool.not.i24.i = icmp eq ptr %1, null
  %tobool.not.i5.i = or i1 %cmp.i.i3.i, %tobool.not.i24.i
  br i1 %tobool.not.i5.i, label %entry.chtls_purge_receive_queue.exit_crit_edge, label %while.body.lr.ph.i

entry.chtls_purge_receive_queue.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_purge_receive_queue.exit

while.body.lr.ph.i:                               ; preds = %entry
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %14, %while.body.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.46, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.46, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #10
  %13 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %14, %sk_receive_queue.i
  %tobool.not.i2.i = icmp eq ptr %14, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i2.i
  br i1 %tobool.not.i.i, label %while.body.i.chtls_purge_receive_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.chtls_purge_receive_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_purge_receive_queue.exit

chtls_purge_receive_queue.exit:                   ; preds = %while.body.i.chtls_purge_receive_queue.exit_crit_edge, %entry.chtls_purge_receive_queue.exit_crit_edge
  tail call fastcc void @chtls_purge_write_queue(ptr noundef %sk)
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp.not = icmp eq i8 %16, 7
  br i1 %cmp.not, label %chtls_purge_receive_queue.exit.if.end4_crit_edge, label %if.then

chtls_purge_receive_queue.exit.if.end4_crit_edge: ; preds = %chtls_purge_receive_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %chtls_purge_receive_queue.exit
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %17 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 104, ptr %sk_err, align 4
  tail call fastcc void @chtls_send_reset(ptr noundef %sk, ptr noundef null)
  %call2 = tail call fastcc i32 @wait_for_states(ptr noundef %sk, i32 noundef 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %chtls_purge_receive_queue.exit.if.end4_crit_edge
  tail call fastcc void @chtls_purge_recv_queue(ptr noundef %sk)
  %18 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i3.i21 = icmp eq ptr %19, %sk_receive_queue.i
  %tobool.not.i24.i22 = icmp eq ptr %19, null
  %tobool.not.i5.i23 = or i1 %cmp.i.i3.i21, %tobool.not.i24.i22
  br i1 %tobool.not.i5.i23, label %if.end4.chtls_purge_receive_queue.exit33_crit_edge, label %while.body.lr.ph.i25

if.end4.chtls_purge_receive_queue.exit33_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_purge_receive_queue.exit33

while.body.lr.ph.i25:                             ; preds = %if.end4
  %qlen.i.i.i24 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  br label %while.body.i32

while.body.i32:                                   ; preds = %while.body.i32.while.body.i32_crit_edge, %while.body.lr.ph.i25
  %20 = phi ptr [ %19, %while.body.lr.ph.i25 ], [ %32, %while.body.i32.while.body.i32_crit_edge ]
  %21 = ptrtoint ptr %qlen.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i.i.i24, align 4
  %sub.i.i.i26 = add i32 %22, -1
  store volatile i32 %sub.i.i.i26, ptr %qlen.i.i.i24, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 8
  %prev9.i.i.i27 = getelementptr inbounds %struct.anon.46, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev9.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev9.i.i.i27, align 4
  store ptr null, ptr %prev9.i.i.i27, align 4
  store ptr null, ptr %20, align 8
  %prev17.i.i.i28 = getelementptr inbounds %struct.anon.46, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %prev17.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %prev17.i.i.i28, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %24, ptr %26, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %20, i32 noundef 0) #10
  %31 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i.i29 = icmp eq ptr %32, %sk_receive_queue.i
  %tobool.not.i2.i30 = icmp eq ptr %32, null
  %tobool.not.i.i31 = or i1 %cmp.i.i.i29, %tobool.not.i2.i30
  br i1 %tobool.not.i.i31, label %while.body.i32.chtls_purge_receive_queue.exit33_crit_edge, label %while.body.i32.while.body.i32_crit_edge

while.body.i32.while.body.i32_crit_edge:          ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i32

while.body.i32.chtls_purge_receive_queue.exit33_crit_edge: ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_purge_receive_queue.exit33

chtls_purge_receive_queue.exit33:                 ; preds = %while.body.i32.chtls_purge_receive_queue.exit33_crit_edge, %if.end4.chtls_purge_receive_queue.exit33_crit_edge
  %snd_wscale = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 4
  %33 = ptrtoint ptr %snd_wscale to i32
  call void @__asan_loadN_noabort(i32 %33, i32 3)
  %bf.load = load i24, ptr %snd_wscale, align 4
  %34 = zext i24 %bf.load to i32
  %35 = lshr i32 %34, 12
  %conv5 = and i32 %35, 15
  %shl = shl nuw nsw i32 65535, %conv5
  %max_window = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 27
  %36 = ptrtoint ptr %max_window to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl, ptr %max_window, align 8
  %call6 = tail call i32 @tcp_disconnect(ptr noundef %sk, i32 noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %chtls_purge_receive_queue.exit33, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %chtls_purge_receive_queue.exit33 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_purge_write_queue(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @chtls_purge_write_queue.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_purge_write_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %txq = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq, align 4
  %cmp.i.i16 = icmp eq ptr %5, %txq
  %tobool.not.i1517 = icmp eq ptr %5, null
  %tobool.not.i18 = or i1 %cmp.i.i16, %tobool.not.i1517
  br i1 %tobool.not.i18, label %do.end7.while.end_crit_edge, label %while.body.lr.ph

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end7
  %qlen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 1
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %20, %while.body.while.body_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 20
  %15 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize, align 8
  %17 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_wmem_queued, align 8
  %sub = sub i32 %18, %16
  store i32 %sub, ptr %sk_wmem_queued, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %6) #10
  %19 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txq, align 4
  %cmp.i.i = icmp eq ptr %20, %txq
  %tobool.not.i15 = icmp eq ptr %20, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i15
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end7.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_states(ptr noundef %sk, i32 noundef %states) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %_sk_wq = alloca %struct.socket_wq, align 128
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !160) #10
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
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %_sk_wq) #10
  %13 = call ptr @memset(ptr %_sk_wq, i32 255, i32 128)
  %14 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__init_waitqueue_head(ptr noundef nonnull %_sk_wq, ptr noundef nonnull @.str.5, ptr noundef nonnull @wait_for_states.__key) #10
  %fasync_list = getelementptr inbounds %struct.socket_wq, ptr %_sk_wq, i32 0, i32 1
  %17 = ptrtoint ptr %fasync_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %fasync_list, align 4
  %rcu = getelementptr inbounds %struct.socket_wq, ptr %_sk_wq, i32 0, i32 3
  call void @init_rcu_head_on_stack(ptr noundef %rcu) #10
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %_sk_wq, ptr %14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %14, align 8
  call void @add_wait_queue(ptr noundef %20, ptr noundef nonnull %wait) #10
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %tobool17.not.not216 = icmp eq i8 %22, 7
  br i1 %tobool17.not.not216, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %__here151.while.body_crit_edge, %if.end.while.body_crit_edge
  %current_timeo.0217 = phi i32 [ %current_timeo.1, %__here151.while.body_crit_edge ], [ 200, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %current_timeo.0217)
  %tobool18.not = icmp eq i32 %current_timeo.0217, 0
  br i1 %tobool18.not, label %while.body.while.end_crit_edge, label %if.end20

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end20:                                         ; preds = %while.body
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
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end20.if.then25_crit_edge, !prof !172

if.end20.if.then25_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

signal_pending.exit:                              ; preds = %if.end20
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool24.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool24.not, label %__here, label %signal_pending.exit.if.then25_crit_edge

signal_pending.exit.if.then25_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.then25:                                        ; preds = %signal_pending.exit.if.then25_crit_edge, %if.end20.if.then25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %current_timeo.0217)
  %cmp.i = icmp eq i32 %current_timeo.0217, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  br label %while.end

__here:                                           ; preds = %signal_pending.exit
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@wait_for_states, %__here) to i32), ptr %task_state_change, align 4
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 2, ptr %34, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !177
  call void @release_sock(ptr noundef %sk) #10
  %36 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %37)
  %tobool97.not.not = icmp eq i8 %37, 7
  br i1 %tobool97.not.not, label %__here.__here151_crit_edge, label %if.then98

__here.__here151_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here151

if.then98:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %call99 = call i32 @schedule_timeout(i32 noundef %current_timeo.0217) #10
  br label %__here151

__here151:                                        ; preds = %if.then98, %__here.__here151_crit_edge
  %current_timeo.1 = phi i32 [ %current_timeo.0217, %__here.__here151_crit_edge ], [ %call99, %if.then98 ]
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %task_state_change155 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 212
  %40 = ptrtoint ptr %task_state_change155 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 ptrtoint (ptr blockaddress(@wait_for_states, %__here151) to i32), ptr %task_state_change155, align 4
  %41 = load ptr, ptr %task, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %41, align 128
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %43 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load volatile i8, ptr %skc_state.i, align 2
  %tobool17.not.not = icmp eq i8 %44, 7
  br i1 %tobool17.not.not, label %__here151.while.end_crit_edge, label %__here151.while.body_crit_edge

__here151.while.body_crit_edge:                   ; preds = %__here151
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

__here151.while.end_crit_edge:                    ; preds = %__here151
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %__here151.while.end_crit_edge, %if.then25, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %err.0 = phi i32 [ %cond.i, %if.then25 ], [ 0, %if.end.while.end_crit_edge ], [ 0, %__here151.while.end_crit_edge ], [ -16, %while.body.while.end_crit_edge ]
  %45 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %14, align 8
  call void @remove_wait_queue(ptr noundef %46, ptr noundef nonnull %wait) #10
  %47 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %14, align 8
  %call178 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %land.lhs.true, label %while.end.do.end187_crit_edge

while.end.do.end187_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end187

land.lhs.true:                                    ; preds = %while.end
  %call180 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %land.lhs.true.do.end187_crit_edge, label %land.lhs.true182

land.lhs.true.do.end187_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end187

land.lhs.true182:                                 ; preds = %land.lhs.true
  %.b207 = load i1, ptr @wait_for_states.__warned, align 1
  br i1 %.b207, label %land.lhs.true182.do.end187_crit_edge, label %if.then184

land.lhs.true182.do.end187_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end187

if.then184:                                       ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wait_for_states.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 441, ptr noundef nonnull @.str.1) #10
  br label %do.end187

do.end187:                                        ; preds = %if.then184, %land.lhs.true182.do.end187_crit_edge, %land.lhs.true.do.end187_crit_edge, %while.end.do.end187_crit_edge
  %cmp = icmp eq ptr %48, %_sk_wq
  br i1 %cmp, label %if.then189, label %do.end187.if.end190_crit_edge

do.end187.if.end190_crit_edge:                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.then189:                                       ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %14, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %do.end187.if.end190_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %_sk_wq) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chtls_shutdown(ptr noundef %sk, i32 noundef %how) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %how, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, 266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i, align 2
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [16 x i8], ptr @new_state, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i8 = zext i8 %5 to i32
  %and.i9 = and i32 %conv.i8, 15
  tail call void @tcp_set_state(ptr noundef %sk, i32 noundef %and.i9) #10
  %and1.i = and i32 %conv.i8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_close_conn(ptr noundef %sk)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chtls_destroy_sock(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @chtls_destroy_sock.__warned, align 1
  br i1 %.b28, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_destroy_sock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  tail call fastcc void @chtls_purge_recv_queue(ptr noundef %sk)
  %ulp_mode = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %ulp_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ulp_mode, align 4
  tail call fastcc void @chtls_purge_write_queue(ptr noundef %sk)
  tail call void @free_tls_keyid(ptr noundef %sk) #10
  %kref = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @kfree(ptr noundef %3) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %6 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp = icmp eq i16 %7, 2
  %spec.select = select i1 %cmp, ptr @tcp_prot, ptr @tcpv6_prot
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %8, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 7) to i32))
  %.val = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 7), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @tcpv6_prot, i32 0, i32 7) to i32))
  %.val29 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcpv6_prot, i32 0, i32 7), align 4
  %10 = select i1 %cmp, ptr %.val, ptr %.val29
  tail call void %10(ptr noundef %sk) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_tls_keyid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_listen_start(ptr noundef %cdev, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !178
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @chtls_find_netdev(ptr noundef %cdev, ptr noundef %sk)
  %call.i128 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i128, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i131

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i131:                               ; preds = %rcu_read_lock.exit
  %call1.i129 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129)
  %tobool.not.i130 = icmp eq i32 %call1.i129, 0
  br i1 %tobool.not.i130, label %land.lhs.true.i131.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i133

land.lhs.true.i131.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i133:                              ; preds = %land.lhs.true.i131
  %.b4.i132 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i132, label %land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge, label %if.then.i134

land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i134:                                     ; preds = %land.lhs.true2.i133
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i134, %land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i131.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !179
  %4 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i135 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i135 to ptr
  %preempt_count.i.i.i.i136 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i136, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i136, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_unlock.exit.cleanup75_crit_edge, label %if.end

rcu_read_unlock.exit.cleanup75_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup75

if.end:                                           ; preds = %rcu_read_unlock.exit
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %flags = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 32
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup75_crit_edge, label %if.end4

if.end.cleanup75_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup75

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %sk to i32
  %shr.i.i = lshr i32 %12, 10
  %and.i.i = and i32 %shr.i.i, 31
  %listen_lock.i = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %listen_lock.i) #10
  %arrayidx.i = getelementptr %struct.chtls_dev, ptr %cdev, i32 0, i32 4, i32 %and.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4
  %p.0.in.i = phi ptr [ %arrayidx.i, %if.end4 ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %tobool.not.i137 = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i137, label %listen_hash_find.exit.thread, label %for.body.i

listen_hash_find.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %listen_lock.i) #10
  br label %if.end7

for.body.i:                                       ; preds = %for.cond.i
  %sk1.i = getelementptr inbounds %struct.listen_info, ptr %p.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk1.i, align 4
  %cmp.i = icmp eq ptr %15, %sk
  br i1 %cmp.i, label %listen_hash_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

listen_hash_find.exit:                            ; preds = %for.body.i
  %stid2.i = getelementptr inbounds %struct.listen_info, ptr %p.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %stid2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stid2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %listen_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp = icmp sgt i32 %17, -1
  br i1 %cmp, label %listen_hash_find.exit.cleanup75_crit_edge, label %listen_hash_find.exit.if.end7_crit_edge

listen_hash_find.exit.if.end7_crit_edge:          ; preds = %listen_hash_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

listen_hash_find.exit.cleanup75_crit_edge:        ; preds = %listen_hash_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup75

if.end7:                                          ; preds = %listen_hash_find.exit.if.end7_crit_edge, %listen_hash_find.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 68) #13
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end7.cleanup75_crit_edge, label %if.end11

if.end7.cleanup75_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup75

if.end11:                                         ; preds = %if.end7
  tail call void @__module_get(ptr noundef null) #10
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sk, ptr %call7.i, align 8
  %cdev12 = getelementptr inbounds %struct.listen_ctx, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %cdev12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cdev, ptr %cdev12, align 4
  %state = getelementptr inbounds %struct.listen_ctx, ptr %call7.i, i32 0, i32 3
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state, align 8
  %synq = getelementptr inbounds %struct.listen_ctx, ptr %call7.i, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.listen_ctx, ptr %call7.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %22 = ptrtoint ptr %synq to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %synq, ptr %synq, align 8
  %prev.i.i = getelementptr inbounds %struct.listen_ctx, ptr %call7.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %synq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.listen_ctx, ptr %call7.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %qlen.i.i, align 8
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %25 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tids, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %27 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %skc_family, align 8
  %conv = zext i16 %28 to i32
  %call13 = tail call i32 @cxgb4_alloc_stid(ptr noundef %26, i32 noundef %conv, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.free_ctx_crit_edge, label %if.end17

if.end11.free_ctx_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ctx

if.end17:                                         ; preds = %if.end11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !170
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end17.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !171

if.end17.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end17
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 12) #13
  %tobool.not.i139 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i139, label %sock_hold.exit.free_stid_crit_edge, label %if.end21

sock_hold.exit.free_stid_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_stid

if.end21:                                         ; preds = %sock_hold.exit
  %sk2.i = getelementptr inbounds %struct.listen_info, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %sk2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %sk, ptr %sk2.i, align 4
  %stid3.i = getelementptr inbounds %struct.listen_info, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %stid3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call13, ptr %stid3.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %listen_lock.i) #10
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %call7.i.i, align 8
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %listen_lock.i) #10
  %37 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %38)
  %cmp25 = icmp eq i16 %38, 2
  br i1 %cmp25, label %if.end55.thread, label %if.else

if.else:                                          ; preds = %if.end21
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %call.i145 = tail call i32 @__ipv6_addr_type(ptr noundef %skc_v6_rcv_saddr) #10
  %and.i = and i32 %call.i145, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp36.not = icmp eq i32 %and.i, 0
  br i1 %cmp36.not, label %if.else.if.end55_crit_edge, label %if.then38

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then38:                                        ; preds = %if.else
  %call41 = tail call i32 @cxgb4_clip_get(ptr noundef nonnull %call, ptr noundef %skc_v6_rcv_saddr, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then38.if.end55_crit_edge, label %if.then38.if.end69_crit_edge

if.then38.if.end69_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then38.if.end55_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end55:                                         ; preds = %if.then38.if.end55_crit_edge, %if.else.if.end55_crit_edge
  %inet_sport49 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %39 = ptrtoint ptr %inet_sport49 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %inet_sport49, align 8
  %lldi50 = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 2
  %41 = ptrtoint ptr %lldi50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lldi50, align 4
  %rxq_ids51 = getelementptr inbounds %struct.cxgb4_lld_info, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %rxq_ids51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rxq_ids51, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 2
  %conv53 = zext i16 %46 to i32
  %call54 = tail call i32 @cxgb4_create_server6(ptr noundef nonnull %call, i32 noundef %call13, ptr noundef %skc_v6_rcv_saddr, i16 noundef zeroext %40, i32 noundef %conv53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp sgt i32 %call54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call54)
  %cmp59.not = icmp eq i32 %call54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool62.not170 = icmp eq i32 %call54, 0
  %tobool62.not = select i1 %cmp56, i1 %cmp59.not, i1 %tobool62.not170
  br i1 %tobool62.not, label %if.end55.cleanup75_crit_edge, label %del_hash

if.end55.cleanup75_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup75

if.end55.thread:                                  ; preds = %if.end21
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %47 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %skc_rcv_saddr, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %49 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %inet_sport, align 8
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 2
  %51 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lldi, align 4
  %rxq_ids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rxq_ids, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %54, align 2
  %conv32 = zext i16 %56 to i32
  %call33 = tail call i32 @cxgb4_create_server(ptr noundef nonnull %call, i32 noundef %call13, i32 noundef %48, i16 noundef zeroext %50, i16 noundef zeroext 0, i32 noundef %conv32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp56179 = icmp sgt i32 %call33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call33)
  %cmp59.not180 = icmp eq i32 %call33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool62.not170181 = icmp eq i32 %call33, 0
  %tobool62.not182 = select i1 %cmp56179, i1 %cmp59.not180, i1 %tobool62.not170181
  br i1 %tobool62.not182, label %if.end55.thread.cleanup75_crit_edge, label %if.end55.thread.if.end69_crit_edge

if.end55.thread.if.end69_crit_edge:               ; preds = %if.end55.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end55.thread.cleanup75_crit_edge:              ; preds = %if.end55.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup75

del_hash:                                         ; preds = %if.end55
  br i1 %cmp36.not, label %del_hash.if.end69_crit_edge, label %if.then66

del_hash.if.end69_crit_edge:                      ; preds = %del_hash
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then66:                                        ; preds = %del_hash
  call void @__sanitizer_cov_trace_pc() #12
  %skc_v6_rcv_saddr68 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  tail call void @cxgb4_clip_release(ptr noundef nonnull %call, ptr noundef %skc_v6_rcv_saddr68, i8 noundef zeroext 1) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %del_hash.if.end69_crit_edge, %if.end55.thread.if.end69_crit_edge, %if.then38.if.end69_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %listen_lock.i) #10
  br label %for.cond.i152

for.cond.i152:                                    ; preds = %for.body.i155.for.cond.i152_crit_edge, %if.end69
  %prev.0.i = phi ptr [ %arrayidx.i, %if.end69 ], [ %p.0.i150, %for.body.i155.for.cond.i152_crit_edge ]
  %57 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %p.0.i150 = load ptr, ptr %prev.0.i, align 4
  %tobool.not.i151 = icmp eq ptr %p.0.i150, null
  br i1 %tobool.not.i151, label %for.cond.i152.listen_hash_del.exit_crit_edge, label %for.body.i155

for.cond.i152.listen_hash_del.exit_crit_edge:     ; preds = %for.cond.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %listen_hash_del.exit

for.body.i155:                                    ; preds = %for.cond.i152
  %sk1.i153 = getelementptr inbounds %struct.listen_info, ptr %p.0.i150, i32 0, i32 1
  %58 = ptrtoint ptr %sk1.i153 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk1.i153, align 4
  %cmp.i154 = icmp eq ptr %59, %sk
  br i1 %cmp.i154, label %if.then.i157, label %for.body.i155.for.cond.i152_crit_edge

for.body.i155.for.cond.i152_crit_edge:            ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i152

if.then.i157:                                     ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %p.0.i150 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p.0.i150, align 4
  %62 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %prev.0.i, align 4
  tail call void @kfree(ptr noundef nonnull %p.0.i150) #10
  br label %listen_hash_del.exit

listen_hash_del.exit:                             ; preds = %if.then.i157, %for.cond.i152.listen_hash_del.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %listen_lock.i) #10
  br label %free_stid

free_stid:                                        ; preds = %listen_hash_del.exit, %sock_hold.exit.free_stid_crit_edge
  %63 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tids, align 4
  %65 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %skc_family, align 8
  %conv74 = zext i16 %66 to i32
  tail call void @cxgb4_free_stid(ptr noundef %64, i32 noundef %call13, i32 noundef %conv74) #10
  %call.i.i.i.i.i.i160 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i162, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %free_stid
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i161 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i161, label %if.end5.i.i.i.i.free_ctx_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.free_ctx_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ctx

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %free_ctx

if.then.i162:                                     ; preds = %free_stid
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %sk) #10
  br label %free_ctx

free_ctx:                                         ; preds = %if.then.i162, %if.then10.i.i.i.i, %if.end5.i.i.i.i.free_ctx_crit_edge, %if.end11.free_ctx_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  tail call void @module_put(ptr noundef null) #10
  br label %cleanup75

cleanup75:                                        ; preds = %free_ctx, %if.end55.thread.cleanup75_crit_edge, %if.end55.cleanup75_crit_edge, %if.end7.cleanup75_crit_edge, %listen_hash_find.exit.cleanup75_crit_edge, %if.end.cleanup75_crit_edge, %rcu_read_unlock.exit.cleanup75_crit_edge
  %retval.0 = phi i32 [ -9, %free_ctx ], [ -9, %rcu_read_unlock.exit.cleanup75_crit_edge ], [ -9, %if.end.cleanup75_crit_edge ], [ -98, %listen_hash_find.exit.cleanup75_crit_edge ], [ -12, %if.end7.cleanup75_crit_edge ], [ 0, %if.end55.cleanup75_crit_edge ], [ 0, %if.end55.thread.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @chtls_find_netdev(ptr nocapture noundef readonly %cdev, ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ports = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 6
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %8 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %skc_family, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %entry.cleanup_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %11 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %skc_rcv_saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end, !prof !172

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %12, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %skc_v6_rcv_saddr) #10
  %and.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %do.body, !prof !172

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %sw.bb12
  %call24 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true, label %do.body.for.cond.preheader_crit_edge

do.body.for.cond.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %do.body
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true28

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

land.lhs.true28:                                  ; preds = %land.lhs.true
  %.b93 = load i1, ptr @chtls_find_netdev.__warned, align 1
  br i1 %.b93, label %land.lhs.true28.for.cond.preheader_crit_edge, label %if.then30

land.lhs.true28.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_find_netdev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @.str.9) #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then30, %land.lhs.true28.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %do.body.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), %for.cond.preheader ]
  %13 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp36.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp36.not, label %for.cond.sw.epilog_crit_edge, label %for.body

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body:                                         ; preds = %for.cond
  %temp.0 = getelementptr i8, ptr %.pn, i32 -40
  %call40 = tail call i32 @ipv6_chk_addr(ptr noundef nonnull @init_net, ptr noundef %skc_v6_rcv_saddr, ptr noundef %temp.0, i32 noundef 1) #10
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.body.for.cond_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %for.cond.sw.epilog_crit_edge, %if.end
  %ndev.0 = phi ptr [ %call11, %if.end ], [ %temp.0, %for.body.sw.epilog_crit_edge ], [ %7, %for.cond.sw.epilog_crit_edge ]
  %tobool52.not = icmp eq ptr %ndev.0, null
  br i1 %tobool52.not, label %sw.epilog.cleanup_crit_edge, label %if.end54

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %sw.epilog
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 15
  %14 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %priv_flags.i, align 16
  %and.i94 = and i64 %15, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i94)
  %tobool.i.not = icmp eq i64 %and.i94, 0
  br i1 %tobool.i.not, label %if.end54.if.end58_crit_edge, label %if.then56

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call ptr @vlan_dev_real_dev(ptr noundef nonnull %ndev.0) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54.if.end58_crit_edge
  %ndev.1 = phi ptr [ %call57, %if.then56 ], [ %ndev.0, %if.end54.if.end58_crit_edge ]
  %nports = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 15, i32 20
  %16 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nports, align 4
  %conv60 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp6195.not = icmp eq i8 %17, 0
  br i1 %cmp6195.not, label %if.end58.cleanup_crit_edge, label %for.body63.lr.ph

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body63.lr.ph:                                 ; preds = %if.end58
  %18 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ports, align 8
  br label %for.body63

for.cond59:                                       ; preds = %for.body63
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %conv60
  br i1 %exitcond.not, label %for.cond59.cleanup_crit_edge, label %for.cond59.for.body63_crit_edge

for.cond59.for.body63_crit_edge:                  ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

for.cond59.cleanup_crit_edge:                     ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body63:                                       ; preds = %for.cond59.for.body63_crit_edge, %for.body63.lr.ph
  %i.096 = phi i32 [ 0, %for.body63.lr.ph ], [ %inc, %for.cond59.for.body63_crit_edge ]
  %arrayidx65 = getelementptr ptr, ptr %19, i32 %i.096
  %20 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx65, align 4
  %cmp66 = icmp eq ptr %21, %ndev.1
  br i1 %cmp66, label %for.body63.cleanup_crit_edge, label %for.cond59

for.body63.cleanup_crit_edge:                     ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body63.cleanup_crit_edge, %for.cond59.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %sw.bb.cleanup_crit_edge ], [ %7, %sw.bb12.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ], [ null, %if.end58.cleanup_crit_edge ], [ %ndev.1, %for.body63.cleanup_crit_edge ], [ null, %for.cond59.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_alloc_stid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_create_server(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_clip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_create_server6(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_clip_release(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_free_stid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chtls_listen_stop(ptr noundef %cdev, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sk to i32
  %shr.i.i = lshr i32 %0, 10
  %and.i.i = and i32 %shr.i.i, 31
  %arrayidx.i = getelementptr %struct.chtls_dev, ptr %cdev, i32 0, i32 4, i32 %and.i.i
  %listen_lock.i = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %listen_lock.i) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %prev.0.i = phi ptr [ %arrayidx.i, %entry ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.0.i = load ptr, ptr %prev.0.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %listen_hash_del.exit.thread, label %for.body.i

listen_hash_del.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %listen_lock.i) #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %sk1.i = getelementptr inbounds %struct.listen_info, ptr %p.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1.i, align 4
  %cmp.i = icmp eq ptr %3, %sk
  br i1 %cmp.i, label %listen_hash_del.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

listen_hash_del.exit:                             ; preds = %for.body.i
  %stid2.i = getelementptr inbounds %struct.listen_info, ptr %p.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %stid2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stid2.i, align 4
  %6 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.0.i, align 4
  %8 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %prev.0.i, align 4
  tail call void @kfree(ptr noundef nonnull %p.0.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %listen_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %listen_hash_del.exit.cleanup_crit_edge, label %if.end

listen_hash_del.exit.cleanup_crit_edge:           ; preds = %listen_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %listen_hash_del.exit
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %9 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tids, align 4
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i37 = icmp eq i32 %12, 0
  br i1 %tobool.not.i37, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %14)
  %cmp.not.i = icmp ult i32 %5, %14
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i38

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i38:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %5, %14
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i, %16
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %5, %18
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i38
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i38 ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %10, i32 0, i32 5
  %19 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %20, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %cond.true.i, label %if.end.i.lookup_stid.exit_crit_edge

if.end.i.lookup_stid.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_stid.exit

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %10, i32 0, i32 3
  %21 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i39 = getelementptr %struct.serv_entry, ptr %22, i32 %stid.addr.0.i
  %23 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i39, align 4
  br label %lookup_stid.exit

lookup_stid.exit:                                 ; preds = %cond.true.i, %if.end.i.lookup_stid.exit_crit_edge
  %cond.i = phi ptr [ %24, %cond.true.i ], [ null, %if.end.i.lookup_stid.exit_crit_edge ]
  %25 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cond.i, align 4
  %synq.i = getelementptr inbounds %struct.listen_ctx, ptr %cond.i, i32 0, i32 2
  %27 = ptrtoint ptr %synq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %synq.i, align 4
  %cmp.i18.i = icmp eq ptr %28, %synq.i
  br i1 %cmp.i18.i, label %lookup_stid.exit.chtls_reset_synq.exit_crit_edge, label %lookup_stid.exit.while.body.i_crit_edge

lookup_stid.exit.while.body.i_crit_edge:          ; preds = %lookup_stid.exit
  br label %while.body.i

lookup_stid.exit.chtls_reset_synq.exit_crit_edge: ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_reset_synq.exit

while.body.i:                                     ; preds = %sock_put.exit.i.while.body.i_crit_edge, %lookup_stid.exit.while.body.i_crit_edge
  %29 = phi ptr [ %38, %sock_put.exit.i.while.body.i_crit_edge ], [ %28, %lookup_stid.exit.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %29, i32 -368
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  tail call fastcc void @cleanup_syn_rcv_conn(ptr noundef %31, ptr noundef %26) #10
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %while.body.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !171

while.body.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %while.body.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %while.body.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %while.body.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  tail call fastcc void @local_bh_disable() #10
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %icsk_bind_hash.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %icsk_bind_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %icsk_bind_hash.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %sock_hold.exit.i.release_tcp_port.exit.i_crit_edge, label %if.then.i.i

sock_hold.exit.i.release_tcp_port.exit.i_crit_edge: ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tcp_port.exit.i

if.then.i.i:                                      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_put_port(ptr noundef %31) #10
  br label %release_tcp_port.exit.i

release_tcp_port.exit.i:                          ; preds = %if.then.i.i, %sock_hold.exit.i.release_tcp_port.exit.i_crit_edge
  tail call fastcc void @reset_listen_child(ptr noundef %31) #10
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  tail call fastcc void @local_bh_enable() #10
  %call.i.i.i.i.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i17.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %release_tcp_port.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i16.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i16.i, label %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !172

if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %sock_put.exit.i

if.then.i17.i:                                    ; preds = %release_tcp_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %31) #10
  br label %sock_put.exit.i

sock_put.exit.i:                                  ; preds = %if.then.i17.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sock_put.exit.i_crit_edge
  %37 = ptrtoint ptr %synq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %synq.i, align 4
  %cmp.i.i = icmp eq ptr %38, %synq.i
  br i1 %cmp.i.i, label %sock_put.exit.i.chtls_reset_synq.exit_crit_edge, label %sock_put.exit.i.while.body.i_crit_edge

sock_put.exit.i.while.body.i_crit_edge:           ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

sock_put.exit.i.chtls_reset_synq.exit_crit_edge:  ; preds = %sock_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_reset_synq.exit

chtls_reset_synq.exit:                            ; preds = %sock_put.exit.i.chtls_reset_synq.exit_crit_edge, %lookup_stid.exit.chtls_reset_synq.exit_crit_edge
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 2
  %39 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lldi, align 4
  %ports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ports, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %rxq_ids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %40, i32 0, i32 6
  %45 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rxq_ids, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  %conv = zext i16 %48 to i32
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %49 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %50)
  %cmp5 = icmp eq i16 %50, 10
  %call7 = tail call i32 @cxgb4_remove_server(ptr noundef %44, i32 noundef %5, i32 noundef %conv, i1 noundef zeroext %cmp5) #10
  %51 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %52)
  %cmp11 = icmp eq i16 %52, 10
  br i1 %cmp11, label %if.then13, label %chtls_reset_synq.exit.if.end23_crit_edge

chtls_reset_synq.exit.if.end23_crit_edge:         ; preds = %chtls_reset_synq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then13:                                        ; preds = %chtls_reset_synq.exit
  %call14 = tail call fastcc ptr @chtls_find_netdev(ptr noundef %cdev, ptr noundef %sk)
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %skc_v6_rcv_saddr) #10
  %and.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp17.not = icmp eq i32 %and.i, 0
  br i1 %cmp17.not, label %if.then13.if.end23_crit_edge, label %if.then19

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb4_clip_release(ptr noundef %call14, ptr noundef %skc_v6_rcv_saddr, i8 noundef zeroext 1) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then13.if.end23_crit_edge, %chtls_reset_synq.exit.if.end23_crit_edge
  %rskq_accept_head.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 5
  %53 = ptrtoint ptr %rskq_accept_head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rskq_accept_head.i, align 4
  %tobool.not32.i = icmp eq ptr %54, null
  br i1 %tobool.not32.i, label %if.end23.cleanup_crit_edge, label %while.body.lr.ph.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end23
  %sk_ack_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  br label %while.body.i41

while.body.i41:                                   ; preds = %if.end.i64.while.body.i41_crit_edge, %while.body.lr.ph.i
  %55 = phi ptr [ %54, %while.body.lr.ph.i ], [ %88, %if.end.i64.while.body.i41_crit_edge ]
  %pprev.033.i = phi ptr [ %rskq_accept_head.i, %while.body.lr.ph.i ], [ %pprev.1.i, %if.end.i64.while.body.i41_crit_edge ]
  %rsk_ops.i = getelementptr inbounds %struct.request_sock, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rsk_ops.i, align 4
  %cmp.i40 = icmp eq ptr %57, @chtls_rsk_ops
  %cmp2.i = icmp eq ptr %57, @chtls_rsk_opsv6
  %or.cond.i = or i1 %cmp.i40, %cmp2.i
  br i1 %or.cond.i, label %if.then.i44, label %if.else.i62

if.then.i44:                                      ; preds = %while.body.i41
  %sk.i = getelementptr inbounds %struct.request_sock, ptr %55, i32 0, i32 8
  %58 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk.i, align 8
  %dl_next.i = getelementptr inbounds %struct.request_sock, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %dl_next.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dl_next.i, align 8
  %62 = ptrtoint ptr %pprev.033.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %pprev.033.i, align 4
  %63 = ptrtoint ptr %sk_ack_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sk_ack_backlog.i.i, align 4
  %sub.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i, ptr %sk_ack_backlog.i.i, align 4
  %skc_refcnt.i20.i = getelementptr inbounds %struct.sock_common, ptr %55, i32 0, i32 19
  %call.i.i.i.i.i.i21.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i20.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i20.i, i32 1, i32 3, i32 1) #10
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i20.i, ptr %skc_refcnt.i20.i, i32 1, ptr elementtype(i32) %skc_refcnt.i20.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i42, 1
  br i1 %cmp.i.i.i.i.i43, label %if.then.i.i47, label %if.end5.i.i.i.i.i45

if.end5.i.i.i.i.i45:                              ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %.not.i.i.i.i22.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i42, 0
  br i1 %.not.i.i.i.i22.i, label %if.end5.i.i.i.i.i45.reqsk_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i46, !prof !172

if.end5.i.i.i.i.i45.reqsk_put.exit.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %reqsk_put.exit.i

if.then10.i.i.i.i.i46:                            ; preds = %if.end5.i.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i20.i, i32 noundef 3) #10
  br label %reqsk_put.exit.i

if.then.i.i47:                                    ; preds = %if.then.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i20.i, i32 noundef 4) #10
  %66 = ptrtoint ptr %skc_refcnt.i20.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %skc_refcnt.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.not.i.i.i = icmp eq i32 %67, 0
  br i1 %cmp.not.i.i.i, label %if.then.i.i47.if.end27.i.i.i_crit_edge, label %land.rhs.i.i.i

if.then.i.i47.if.end27.i.i.i_crit_edge:           ; preds = %if.then.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i47
  %.b38.i.i.i = load i1, ptr @reqsk_free.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.rhs.i.i.i.if.end27.i.i.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 126, i32 noundef 9, ptr noundef null) #10
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.end27.i.i.i_crit_edge, %if.then.i.i47.if.end27.i.i.i_crit_edge
  %68 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rsk_ops.i, align 4
  %destructor.i.i.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %destructor.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %destructor.i.i.i.i, align 4
  tail call void %71(ptr noundef nonnull %55) #10
  %72 = getelementptr inbounds %struct.sock_common, ptr %55, i32 0, i32 13
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i.i, label %if.end27.i.i.i.reqsk_free.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.end27.i.i.i.reqsk_free.exit.i.i_crit_edge:     ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reqsk_free.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end27.i.i.i
  %skc_refcnt.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %74, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i.i, ptr %skc_refcnt.i.i.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.reqsk_free.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !172

if.end5.i.i.i.i.i.i.i.i.reqsk_free.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reqsk_free.exit.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i.i, i32 noundef 3) #10
  br label %reqsk_free.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef nonnull %74) #10
  br label %reqsk_free.exit.i.i

reqsk_free.exit.i.i:                              ; preds = %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.reqsk_free.exit.i.i_crit_edge, %if.end27.i.i.i.reqsk_free.exit.i.i_crit_edge
  %saved_syn.i.i.i.i = getelementptr inbounds %struct.request_sock, ptr %55, i32 0, i32 9
  %76 = ptrtoint ptr %saved_syn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %saved_syn.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %77) #10
  %78 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rsk_ops.i, align 4
  %slab.i.i.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %slab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %slab.i.i.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %81, ptr noundef nonnull %55) #10
  br label %reqsk_put.exit.i

reqsk_put.exit.i:                                 ; preds = %reqsk_free.exit.i.i, %if.then10.i.i.i.i.i46, %if.end5.i.i.i.i.i45.reqsk_put.exit.i_crit_edge
  %skc_refcnt.i.i48 = getelementptr inbounds %struct.sock_common, ptr %59, i32 0, i32 19
  %call.i.i.i.i.i.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i48, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i48, i32 1, i32 3, i32 1) #10
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i48, ptr %skc_refcnt.i.i48, i32 1, ptr elementtype(i32) %skc_refcnt.i.i48) #10, !srcloc !170
  %asmresult.i.i.i.i.i.i.i50 = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i50)
  %tobool1.not.i.i.i.i.i51 = icmp eq i32 %asmresult.i.i.i.i.i.i.i50, 0
  br i1 %tobool1.not.i.i.i.i.i51, label %reqsk_put.exit.i.if.end15.sink.split.i.i.i.i.i56_crit_edge, label %if.else.i.i.i.i.i54, !prof !171

reqsk_put.exit.i.if.end15.sink.split.i.i.i.i.i56_crit_edge: ; preds = %reqsk_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i56

if.else.i.i.i.i.i54:                              ; preds = %reqsk_put.exit.i
  %add.i.i.i.i.i52 = add i32 %asmresult.i.i.i.i.i.i.i50, 1
  %83 = or i32 %add.i.i.i.i.i52, %asmresult.i.i.i.i.i.i.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %.not.i.i.i.i.i53 = icmp sgt i32 %83, -1
  br i1 %.not.i.i.i.i.i53, label %if.else.i.i.i.i.i54.sock_hold.exit.i60_crit_edge, label %if.else.i.i.i.i.i54.if.end15.sink.split.i.i.i.i.i56_crit_edge, !prof !172

if.else.i.i.i.i.i54.if.end15.sink.split.i.i.i.i.i56_crit_edge: ; preds = %if.else.i.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i56

if.else.i.i.i.i.i54.sock_hold.exit.i60_crit_edge: ; preds = %if.else.i.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit.i60

if.end15.sink.split.i.i.i.i.i56:                  ; preds = %if.else.i.i.i.i.i54.if.end15.sink.split.i.i.i.i.i56_crit_edge, %reqsk_put.exit.i.if.end15.sink.split.i.i.i.i.i56_crit_edge
  %.sink.i.i.i.i.i55 = phi i32 [ 2, %reqsk_put.exit.i.if.end15.sink.split.i.i.i.i.i56_crit_edge ], [ 1, %if.else.i.i.i.i.i54.if.end15.sink.split.i.i.i.i.i56_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i48, i32 noundef %.sink.i.i.i.i.i55) #10
  br label %sock_hold.exit.i60

sock_hold.exit.i60:                               ; preds = %if.end15.sink.split.i.i.i.i.i56, %if.else.i.i.i.i.i54.sock_hold.exit.i60_crit_edge
  tail call fastcc void @local_bh_disable() #10
  %sk_lock.i57 = getelementptr inbounds %struct.sock, ptr %59, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i57) #10
  %icsk_bind_hash.i.i58 = getelementptr inbounds %struct.inet_connection_sock, ptr %59, i32 0, i32 2
  %84 = ptrtoint ptr %icsk_bind_hash.i.i58 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %icsk_bind_hash.i.i58, align 4
  %tobool.not.i.i59 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i59, label %sock_hold.exit.i60.release_tcp_port.exit.i61_crit_edge, label %if.then.i23.i

sock_hold.exit.i60.release_tcp_port.exit.i61_crit_edge: ; preds = %sock_hold.exit.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tcp_port.exit.i61

if.then.i23.i:                                    ; preds = %sock_hold.exit.i60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_put_port(ptr noundef %59) #10
  br label %release_tcp_port.exit.i61

release_tcp_port.exit.i61:                        ; preds = %if.then.i23.i, %sock_hold.exit.i60.release_tcp_port.exit.i61_crit_edge
  tail call fastcc void @reset_listen_child(ptr noundef %59) #10
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i57) #10
  tail call fastcc void @local_bh_enable() #10
  %call.i.i.i.i.i.i25.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i48, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i48, i32 1, i32 3, i32 1) #10
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i48, ptr %skc_refcnt.i.i48, i32 1, ptr elementtype(i32) %skc_refcnt.i.i48) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i26.i = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i26.i)
  %cmp.i.i.i.i27.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i26.i, 1
  br i1 %cmp.i.i.i.i27.i, label %if.then.i31.i, label %if.end5.i.i.i.i29.i

if.end5.i.i.i.i29.i:                              ; preds = %release_tcp_port.exit.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i26.i)
  %.not.i.i.i.i28.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i26.i, 0
  br i1 %.not.i.i.i.i28.i, label %if.end5.i.i.i.i29.i.if.end.i64_crit_edge, label %if.then10.i.i.i.i30.i, !prof !172

if.end5.i.i.i.i29.i.if.end.i64_crit_edge:         ; preds = %if.end5.i.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i64

if.then10.i.i.i.i30.i:                            ; preds = %if.end5.i.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i48, i32 noundef 3) #10
  br label %if.end.i64

if.then.i31.i:                                    ; preds = %release_tcp_port.exit.i61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %59) #10
  br label %if.end.i64

if.else.i62:                                      ; preds = %while.body.i41
  call void @__sanitizer_cov_trace_pc() #12
  %dl_next5.i = getelementptr inbounds %struct.request_sock, ptr %55, i32 0, i32 1
  br label %if.end.i64

if.end.i64:                                       ; preds = %if.else.i62, %if.then.i31.i, %if.then10.i.i.i.i30.i, %if.end5.i.i.i.i29.i.if.end.i64_crit_edge
  %pprev.1.i = phi ptr [ %dl_next5.i, %if.else.i62 ], [ %pprev.033.i, %if.end5.i.i.i.i29.i.if.end.i64_crit_edge ], [ %pprev.033.i, %if.then10.i.i.i.i30.i ], [ %pprev.033.i, %if.then.i31.i ]
  %87 = ptrtoint ptr %pprev.1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pprev.1.i, align 4
  %tobool.not.i63 = icmp eq ptr %88, null
  br i1 %tobool.not.i63, label %if.end.i64.cleanup_crit_edge, label %if.end.i64.while.body.i41_crit_edge

if.end.i64.while.body.i41_crit_edge:              ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i41

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i64.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %listen_hash_del.exit.cleanup_crit_edge, %listen_hash_del.exit.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @lookup_stid(ptr nocapture noundef readonly %t, i32 noundef %stid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %nsftids = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 23
  %0 = ptrtoint ptr %nsftids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nsftids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %sftid_base = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 22
  %2 = ptrtoint ptr %sftid_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sftid_base, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %stid)
  %cmp.not = icmp ugt i32 %3, %stid
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %stid, %3
  %nstids = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 5
  %4 = ptrtoint ptr %nstids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nstids, align 4
  %add = add i32 %sub, %5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %stid_base = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 6
  %6 = ptrtoint ptr %stid_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stid_base, align 8
  %sub2 = sub i32 %stid, %7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %stid.addr.0 = phi i32 [ %add, %if.then ], [ %sub2, %if.else ]
  %nstids3 = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 5
  %8 = ptrtoint ptr %nstids3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nstids3, align 4
  %add5 = add i32 %9, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0, i32 %add5)
  %cmp6 = icmp ult i32 %stid.addr.0, %add5
  br i1 %cmp6, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stid_tab = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 3
  %10 = ptrtoint ptr %stid_tab to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stid_tab, align 4
  %arrayidx = getelementptr %struct.serv_entry, ptr %11, i32 %stid.addr.0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_remove_server(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_close_listsrv_rpl(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp.not.i = icmp ult i32 %and, %9
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %and, %9
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i, %11
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %and, %13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %15, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %cond.true.i, label %if.end.i.lookup_stid.exit_crit_edge

if.end.i.lookup_stid.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_stid.exit

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.serv_entry, ptr %17, i32 %stid.addr.0.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %lookup_stid.exit

lookup_stid.exit:                                 ; preds = %cond.true.i, %if.end.i.lookup_stid.exit_crit_edge
  %cond.i = phi ptr [ %19, %cond.true.i ], [ null, %if.end.i.lookup_stid.exit_crit_edge ]
  %status = getelementptr i8, ptr %1, i32 15
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not = icmp eq i8 %21, 0
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %21 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %and) #14
  br label %if.end

if.else:                                          ; preds = %lookup_stid.exit
  %22 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cond.i, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %skc_family, align 8
  %conv7 = zext i16 %25 to i32
  tail call void @cxgb4_free_stid(ptr noundef %5, i32 noundef %and, i32 noundef %conv7) #10
  %26 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cond.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i16, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %27) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i16, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  tail call void @kfree(ptr noundef %cond.i) #10
  tail call void @module_put(ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %sock_put.exit, %do.end
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_pass_open_rpl(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp.not.i = icmp ult i32 %and, %9
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %and, %9
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i, %11
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %and, %13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %15, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %lookup_stid.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lookup_stid.exit:                                 ; preds = %if.end.i
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.serv_entry, ptr %17, i32 %stid.addr.0.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %lookup_stid.exit.cleanup_crit_edge, label %if.end

lookup_stid.exit.cleanup_crit_edge:               ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lookup_stid.exit
  %state = getelementptr inbounds %struct.listen_ctx, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %status = getelementptr i8, ptr %1, i32 15
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp5.not = icmp eq i8 %24, 0
  br i1 %cmp5.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %24 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %and) #14
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %skc_family, align 8
  %conv12 = zext i16 %28 to i32
  tail call void @cxgb4_free_stid(ptr noundef %5, i32 noundef %and, i32 noundef %conv12) #10
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %19, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %30, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i27, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i27:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %30) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i27, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %19) #10
  tail call void @module_put(ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %sock_put.exit, %do.end, %if.then2, %lookup_stid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_conn_cpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16777215
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.rel_skb_crit_edge

entry.rel_skb_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.rel_skb_crit_edge, label %if.end

lookup_tid.exit.rel_skb_crit_edge:                ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.end:                                           ; preds = %lookup_tid.exit
  %16 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %5, label %if.end.rel_skb_crit_edge [
    i8 38, label %if.end.sw.epilog_crit_edge
    i8 50, label %sw.bb4
    i8 43, label %sw.bb5
    i8 45, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.rel_skb_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 72
  %17 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_user_data, align 4
  %cdev6 = getelementptr inbounds %struct.chtls_sock, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cdev6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdev6, align 4
  %cdev7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %cdev7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %cdev7, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb4, %if.end.sw.epilog_crit_edge
  %fn.0 = phi ptr [ @chtls_abort_rpl_rss, %sw.bb8 ], [ @chtls_abort_req_rss, %sw.bb5 ], [ @chtls_close_con_rpl, %sw.bb4 ], [ @chtls_peer_close, %if.end.sw.epilog_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %24 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %26 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %sw.epilog.sock_owned_by_user.exit.i_crit_edge

sw.epilog.sock_owned_by_user.exit.i_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %sw.epilog
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %27 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %sw.epilog.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fn.0, ptr %cb.i, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef nonnull %15, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

if.else.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %fn.0(ptr noundef nonnull %15, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

process_cpl_msg.exit:                             ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  br label %cleanup

rel_skb:                                          ; preds = %if.end.rel_skb_crit_edge, %lookup_tid.exit.rel_skb_crit_edge, %entry.rel_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %rel_skb, %process_cpl_msg.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_rx_data(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %if.end, !prof !171

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %and) #14
  br label %cleanup

if.end:                                           ; preds = %lookup_tid.exit
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %18 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %20 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.end.sock_owned_by_user.exit.i_crit_edge

if.end.sock_owned_by_user.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.end
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %if.end.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @chtls_recv_data, ptr %cb.i, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef nonnull %13, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

if.else.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @chtls_recv_data(ptr noundef nonnull %13, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

process_cpl_msg.exit:                             ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %process_cpl_msg.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %process_cpl_msg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_set_tcb_rpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 8
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lookup_tid.exit:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lookup_tid.exit.cleanup_crit_edge, label %if.end

lookup_tid.exit.cleanup_crit_edge:                ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lookup_tid.exit
  %cookie = getelementptr i8, ptr %1, i32 14
  %14 = ptrtoint ptr %cookie to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cookie, align 2
  %.mask = and i8 %15, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp = icmp eq i8 %.mask, 32
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_send_abort(ptr noundef nonnull %13, ptr noundef null)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lookup_tid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %lookup_tid.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_pass_establish(ptr noundef %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.cleanup57_crit_edge

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

lookup_tid.exit:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lookup_tid.exit.cleanup57_crit_edge, label %if.end

lookup_tid.exit.cleanup57_crit_edge:              ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end:                                           ; preds = %lookup_tid.exit
  %sk_lock = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #10
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end.sock_owned_by_user.exit_crit_edge

if.end.sock_owned_by_user.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !172

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.end.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.else, label %if.then5, !prof !172

if.then5:                                         ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %unlock

if.else:                                          ; preds = %sock_owned_by_user.exit
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 72
  %17 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_user_data, align 4
  %wr_max_credits = getelementptr inbounds %struct.chtls_sock, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %wr_max_credits to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %wr_max_credits, align 4
  %wr_credits = getelementptr inbounds %struct.chtls_sock, ptr %18, i32 0, i32 12
  %20 = ptrtoint ptr %wr_credits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %wr_credits, align 4
  %wr_unacked = getelementptr inbounds %struct.chtls_sock, ptr %18, i32 0, i32 13
  %21 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %wr_unacked, align 8
  %snd_isn = getelementptr i8, ptr %1, i32 24
  %22 = ptrtoint ptr %snd_isn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %snd_isn, align 4
  %tcp_opt = getelementptr i8, ptr %1, i32 22
  %24 = ptrtoint ptr %tcp_opt to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tcp_opt, align 2
  %pushed_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 82
  %26 = ptrtoint ptr %pushed_seq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %pushed_seq.i, align 4
  %write_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 80
  %27 = ptrtoint ptr %write_seq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %write_seq.i, align 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 10
  %28 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %snd_nxt.i, align 4
  %snd_una.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 16
  %29 = ptrtoint ptr %snd_una.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %23, ptr %snd_una.i, align 4
  %call1.i = tail call i32 @prandom_u32() #10
  %conv.i = trunc i32 %call1.i to i16
  %inet_id.i = getelementptr inbounds %struct.inet_sock, ptr %13, i32 0, i32 7
  %30 = ptrtoint ptr %inet_id.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %inet_id.i, align 2
  %31 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i96 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i96, label %land.lhs.true.i.i, label %if.else.do.end7.i.i_crit_edge

if.else.do.end7.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b110.i.i = load i1, ptr @assign_rxopt.__warned, align 1
  br i1 %.b110.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i97

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i97:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @assign_rxopt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i97, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %if.else.do.end7.i.i_crit_edge
  %33 = ptrtoint ptr %32 to i32
  %and.i.i = and i32 %33, -4
  %34 = inttoptr i32 %and.i.i to ptr
  %cdev11.i.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %cdev11.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cdev11.i.i, align 4
  %tcp_header_len.i.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 1
  %37 = ptrtoint ptr %tcp_header_len.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 20, ptr %tcp_header_len.i.i, align 8
  %mtus.i.i = getelementptr inbounds %struct.chtls_dev, ptr %36, i32 0, i32 9
  %38 = ptrtoint ptr %mtus.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mtus.i.i, align 4
  %40 = lshr i16 %25, 12
  %shr.i.i = zext i16 %40 to i32
  %arrayidx.i.i = getelementptr i16, ptr %39, i32 %shr.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i, align 2
  %sub.i.i = add i16 %42, -40
  %mss_clamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 61, i32 7
  %43 = ptrtoint ptr %mss_clamp.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %sub.i.i, ptr %mss_clamp.i.i, align 2
  %conv16.i.i = zext i16 %sub.i.i to i32
  %mss_cache.i.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 28
  %44 = ptrtoint ptr %mss_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv16.i.i, ptr %mss_cache.i.i, align 4
  %45 = lshr i16 %25, 7
  %tstamp_ok.i.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 61, i32 4
  %46 = ptrtoint ptr %tstamp_ok.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 3)
  %bf.load.i.i = load i24, ptr %tstamp_ok.i.i, align 4
  %47 = and i16 %45, 1
  %bf.value.i.i = zext i16 %47 to i24
  %bf.shl.i.i = shl nuw nsw i24 %bf.value.i.i, 22
  %bf.clear.i.i = and i24 %bf.load.i.i, -5304321
  %bf.set.i.i = or i24 %bf.clear.i.i, %bf.shl.i.i
  %48 = lshr i16 %25, 5
  %49 = and i16 %48, 1
  %bf.value36.i.i = zext i16 %49 to i24
  %bf.shl37.i.i = shl nuw nsw i24 %bf.value36.i.i, 20
  %bf.set39.i.i = or i24 %bf.set.i.i, %bf.shl37.i.i
  %50 = shl i16 %25, 4
  %51 = and i16 %50, -4096
  %bf.shl48.i.i = zext i16 %51 to i24
  %bf.set50.i.i = or i24 %bf.set39.i.i, %bf.shl48.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool56.not.i.i = icmp eq i16 %49, 0
  %bf.clear60.i.i = and i24 %bf.set50.i.i, -3841
  %spec.select.i.i = select i1 %tobool56.not.i.i, i24 %bf.clear60.i.i, i24 %bf.set50.i.i
  %52 = ptrtoint ptr %tstamp_ok.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 3)
  store i24 %spec.select.i.i, ptr %tstamp_ok.i.i, align 4
  %53 = and i24 %spec.select.i.i, 4194304
  %tobool69.not.i.i = icmp eq i24 %53, 0
  br i1 %tobool69.not.i.i, label %if.else.i.i, label %if.then70.i.i

if.then70.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %tcp_header_len.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 32, ptr %tcp_header_len.i.i, align 8
  %sub77.i.i = add i16 %42, -52
  %55 = ptrtoint ptr %mss_clamp.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %sub77.i.i, ptr %mss_clamp.i.i, align 2
  br label %assign_rxopt.exit.i

if.else.i.i:                                      ; preds = %do.end7.i.i
  %opt2.i.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 11
  %56 = ptrtoint ptr %opt2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %opt2.i.i, align 8
  %and79.i.i = and i32 %57, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.else.i.i.assign_rxopt.exit.i_crit_edge, label %if.then81.i.i

if.else.i.i.assign_rxopt.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %assign_rxopt.exit.i

if.then81.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and83.i.i = and i32 %57, -536870913
  %58 = ptrtoint ptr %opt2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and83.i.i, ptr %opt2.i.i, align 8
  %mtu_idx.i.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 27
  %59 = ptrtoint ptr %mtu_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shr.i.i, ptr %mtu_idx.i.i, align 8
  br label %assign_rxopt.exit.i

assign_rxopt.exit.i:                              ; preds = %if.then81.i.i, %if.else.i.i.assign_rxopt.exit.i_crit_edge, %if.then70.i.i
  %rcv_wnd.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 79
  %60 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rcv_wnd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1047552, i32 %61)
  %cmp.i98 = icmp ugt i32 %61, 1047552
  br i1 %cmp.i98, label %if.then.i, label %assign_rxopt.exit.i.make_established.exit_crit_edge

assign_rxopt.exit.i.make_established.exit_crit_edge: ; preds = %assign_rxopt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %make_established.exit

if.then.i:                                        ; preds = %assign_rxopt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %rcv_wup.i = getelementptr inbounds %struct.tcp_sock, ptr %13, i32 0, i32 9
  %62 = ptrtoint ptr %rcv_wup.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rcv_wup.i, align 8
  %sub.neg.i = sub i32 1047552, %61
  %sub5.i = add i32 %sub.neg.i, %63
  store i32 %sub5.i, ptr %rcv_wup.i, align 8
  br label %make_established.exit

make_established.exit:                            ; preds = %if.then.i, %assign_rxopt.exit.i.make_established.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @tcp_set_state(ptr noundef nonnull %13, i32 noundef 1) #10
  %tos_stid = getelementptr i8, ptr %1, i32 16
  %64 = ptrtoint ptr %tos_stid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tos_stid, align 4
  %and6 = and i32 %65, 16777215
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 76
  %66 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk_state_change, align 4
  tail call void %67(ptr noundef nonnull %13) #10
  %sk_socket = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 71
  %68 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sk_socket, align 8
  %tobool7.not = icmp eq ptr %69, null
  br i1 %tobool7.not, label %make_established.exit.if.end15_crit_edge, label %if.then14, !prof !172

make_established.exit.if.end15_crit_edge:         ; preds = %make_established.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %make_established.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sk_wake_async(ptr noundef nonnull %13, i32 noundef 0, i32 noundef 2)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %make_established.exit.if.end15_crit_edge
  %70 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tids, align 4
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %71, i32 0, i32 23
  %72 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i, label %if.end15.if.else.i_crit_edge, label %land.lhs.true.i

if.end15.if.else.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end15
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %71, i32 0, i32 22
  %74 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %75)
  %cmp.not.i = icmp ult i32 %and6, %75
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i100

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i100:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i99 = sub i32 %and6, %75
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %71, i32 0, i32 5
  %76 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i99, %77
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end15.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %71, i32 0, i32 6
  %78 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %and6, %79
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i100
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i100 ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %71, i32 0, i32 5
  %80 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %81, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %lookup_stid.exit, label %if.end.i.if.then19_crit_edge

if.end.i.if.then19_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lookup_stid.exit:                                 ; preds = %if.end.i
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %71, i32 0, i32 3
  %82 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i101 = getelementptr %struct.serv_entry, ptr %83, i32 %stid.addr.0.i
  %84 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i101, align 4
  %tobool18.not = icmp eq ptr %85, null
  br i1 %tobool18.not, label %lookup_stid.exit.if.then19_crit_edge, label %if.end20

lookup_stid.exit.if.then19_crit_edge:             ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %lookup_stid.exit.if.then19_crit_edge, %if.end.i.if.then19_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %unlock

if.end20:                                         ; preds = %lookup_stid.exit
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %sk_lock22 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock22) #10
  %listen_ctx = getelementptr inbounds %struct.chtls_sock, ptr %18, i32 0, i32 39
  %88 = ptrtoint ptr %listen_ctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %listen_ctx, align 8
  %synq = getelementptr inbounds %struct.listen_ctx, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %synq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %synq, align 4
  %cmp.i104.not = icmp eq ptr %91, %synq
  br i1 %cmp.i104.not, label %if.then32, label %if.end35, !prof !171

if.then32:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock22) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %unlock

if.end35:                                         ; preds = %if.end20
  %dep_map.i.i.i106 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 4, i32 3
  %call.i.i.i.i107 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i106, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i107)
  %tobool.not.i.i.i108 = icmp eq i32 %call.i.i.i.i107, 0
  br i1 %tobool.not.i.i.i108, label %lockdep_sock_is_held.exit.i.i112, label %if.end35.sock_owned_by_user.exit120_crit_edge

if.end35.sock_owned_by_user.exit120_crit_edge:    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit120

lockdep_sock_is_held.exit.i.i112:                 ; preds = %if.end35
  %dep_map2.i.i.i109 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i110 = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i109, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i110)
  %tobool4.i.not.i.i111 = icmp eq i32 %call.i6.i.i.i110, 0
  br i1 %tobool4.i.not.i.i111, label %land.rhs.i.i114, label %lockdep_sock_is_held.exit.i.i112.sock_owned_by_user.exit120_crit_edge

lockdep_sock_is_held.exit.i.i112.sock_owned_by_user.exit120_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit120

land.rhs.i.i114:                                  ; preds = %lockdep_sock_is_held.exit.i.i112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %92 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i113 = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i113, label %land.rhs.i.i114.sock_owned_by_user.exit120_crit_edge, label %land.rhs3.i.i116

land.rhs.i.i114.sock_owned_by_user.exit120_crit_edge: ; preds = %land.rhs.i.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit120

land.rhs3.i.i116:                                 ; preds = %land.rhs.i.i114
  %.b40.i.i115 = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i115, label %land.rhs3.i.i116.sock_owned_by_user.exit120_crit_edge, label %if.then.i.i117, !prof !172

land.rhs3.i.i116.sock_owned_by_user.exit120_crit_edge: ; preds = %land.rhs3.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit120

if.then.i.i117:                                   ; preds = %land.rhs3.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit120

sock_owned_by_user.exit120:                       ; preds = %if.then.i.i117, %land.rhs3.i.i116.sock_owned_by_user.exit120_crit_edge, %land.rhs.i.i114.sock_owned_by_user.exit120_crit_edge, %lockdep_sock_is_held.exit.i.i112.sock_owned_by_user.exit120_crit_edge, %if.end35.sock_owned_by_user.exit120_crit_edge
  %owned.i118 = getelementptr inbounds %struct.sock, ptr %87, i32 0, i32 4, i32 1
  %93 = ptrtoint ptr %owned.i118 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %owned.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i119.not = icmp eq i32 %94, 0
  br i1 %tobool.i119.not, label %if.then45, label %if.else46, !prof !172

if.then45:                                        ; preds = %sock_owned_by_user.exit120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  tail call fastcc void @add_pass_open_to_parent(ptr noundef nonnull %13, ptr noundef %87)
  br label %if.end50

if.else46:                                        ; preds = %sock_owned_by_user.exit120
  call void @__sanitizer_cov_trace_pc() #12
  %95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %13, ptr %95, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cdev47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %97 = ptrtoint ptr %cdev47 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %cdev, ptr %cdev47, align 4
  %98 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @bl_add_pass_open_to_parent, ptr %cb, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef %87, ptr noundef %skb)
  br label %if.end50

if.end50:                                         ; preds = %if.else46, %if.then45
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock22) #10
  br label %unlock

unlock:                                           ; preds = %if.end50, %if.then32, %if.then19, %if.then5
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #10
  br label %cleanup57

cleanup57:                                        ; preds = %unlock, %lookup_tid.exit.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi i32 [ 0, %unlock ], [ 5, %lookup_tid.exit.cleanup57_crit_edge ], [ 5, %entry.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_pass_accept_req(ptr noundef %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %tos_stid = getelementptr i8, ptr %1, i32 24
  %2 = ptrtoint ptr %tos_stid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tos_stid, align 4
  %and = and i32 %3, 16777215
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and1 = and i32 %5, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 22
  %10 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp.not.i = icmp ult i32 %and, %11
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %and, %11
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i, %13
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %and, %15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %17, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %lookup_stid.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lookup_stid.exit:                                 ; preds = %if.end.i
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.serv_entry, ptr %19, i32 %stid.addr.0.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %lookup_stid.exit.cleanup_crit_edge, label %if.end

lookup_stid.exit.cleanup_crit_edge:               ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lookup_stid.exit
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tid_base.i, align 4
  %sub.i24 = sub i32 %and1, %25
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i24, i32 %27)
  %cmp.i.not = icmp ult i32 %sub.i24, %27
  br i1 %cmp.i.not, label %if.end10, label %do.end, !prof !172

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %and1) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %cdev11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %cdev11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cdev, ptr %cdev11, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.end10.sock_owned_by_user.exit.i_crit_edge

if.end10.sock_owned_by_user.exit.i_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.end10
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %34 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %if.end10.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i, label %if.else.i26, label %if.then.i25, !prof !172

if.then.i25:                                      ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %37 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @chtls_pass_accept_request, ptr %cb.i, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef %23, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

if.else.i26:                                      ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @chtls_pass_accept_request(ptr noundef %23, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

process_cpl_msg.exit:                             ; preds = %if.else.i26, %if.then.i25
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %process_cpl_msg.exit, %do.end, %lookup_stid.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %process_cpl_msg.exit ], [ 1, %lookup_stid.exit.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_rx_cmp(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %ot = getelementptr inbounds %struct.cpl_rx_tls_cmp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ot, align 4
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %if.end, !prof !171

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %and) #14
  br label %cleanup

if.end:                                           ; preds = %lookup_tid.exit
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %18 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %20 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.end.sock_owned_by_user.exit.i_crit_edge

if.end.sock_owned_by_user.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.end
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %if.end.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @chtls_rx_hdr, ptr %cb.i, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef nonnull %13, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

if.else.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @chtls_rx_hdr(ptr noundef nonnull %13, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

process_cpl_msg.exit:                             ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %process_cpl_msg.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %process_cpl_msg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_rx_pdu(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %ot = getelementptr inbounds %struct.cpl_tls_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ot, align 4
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %if.end, !prof !171

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %and) #14
  br label %cleanup

if.end:                                           ; preds = %lookup_tid.exit
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %18 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %20 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.end.sock_owned_by_user.exit.i_crit_edge

if.end.sock_owned_by_user.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.end
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %if.end.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @chtls_recv_pdu, ptr %cb.i, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef nonnull %13, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

if.else.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @chtls_recv_pdu(ptr noundef nonnull %13, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

process_cpl_msg.exit:                             ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %process_cpl_msg.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %process_cpl_msg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_wr_ack(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 8
  %and = and i32 %3, 16777215
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 7
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %if.end, !prof !171

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %and) #14
  br label %cleanup

if.end:                                           ; preds = %lookup_tid.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.end.sock_owned_by_user.exit.i_crit_edge

if.end.sock_owned_by_user.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.end
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %if.end.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @chtls_rx_ack, ptr %cb.i, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef nonnull %13, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

if.else.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @chtls_rx_ack(ptr noundef nonnull %13, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

process_cpl_msg.exit:                             ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %process_cpl_msg.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %process_cpl_msg.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_tx_flowc_wr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_send_abort(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @chtls_send_abort.__warned, align 1
  br i1 %.b1, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_send_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %tobool11.not = icmp eq ptr %skb, null
  br i1 %tobool11.not, label %if.then12, label %do.end7.if.end14_crit_edge

do.end7.if.end14_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %txdata_skb_cache = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %txdata_skb_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txdata_skb_cache, align 4
  %call13 = tail call fastcc ptr @alloc_ctrl_skb(ptr noundef %5)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end7.if.end14_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %do.end7.if.end14_crit_edge ], [ %call13, %if.then12 ]
  %call15 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 32) #10
  %6 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 83886096, ptr %call15, align 8
  %tid = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tid, align 8
  %shl = shl i32 %8, 8
  %or = or i32 %shl, 2
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %call15, i32 0, i32 1
  %9 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %call15, i32 0, i32 2
  %10 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %wr_lo, align 8
  %11 = load i32, ptr %tid, align 8
  %or23 = or i32 %11, 167772160
  %ot = getelementptr inbounds %struct.cpl_abort_req, ptr %call15, i32 0, i32 1
  %12 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or23, ptr %ot, align 8
  %txq_idx = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txq_idx, align 8
  %.tr = trunc i32 %14 to i16
  %conv = shl i16 %.tr, 1
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 10
  %15 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %queue_mapping1.i, align 8
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %16 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %snd_nxt, align 4
  %rsvd0 = getelementptr inbounds %struct.cpl_abort_req, ptr %call15, i32 0, i32 2
  %18 = ptrtoint ptr %rsvd0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rsvd0, align 4
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = trunc i32 %20 to i8
  %22 = xor i8 %21, -1
  %23 = lshr i8 %22, 7
  %rsvd1 = getelementptr inbounds %struct.cpl_abort_req, ptr %call15, i32 0, i32 3
  %24 = ptrtoint ptr %rsvd1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %rsvd1, align 8
  %cmd = getelementptr inbounds %struct.cpl_abort_req, ptr %call15, i32 0, i32 4
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %cmd, align 1
  %cdev = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cdev, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %cb.i, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @abort_arp_failure, ptr %arp_err_handler.i, align 4
  %30 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end14.send_or_defer.exit_crit_edge

if.end14.send_or_defer.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_or_defer.exit

land.lhs.true.i:                                  ; preds = %if.end14
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.send_or_defer.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.send_or_defer.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_or_defer.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @send_or_defer.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.send_or_defer.exit_crit_edge, label %if.then.i

land.lhs.true4.i.send_or_defer.exit_crit_edge:    ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_or_defer.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @send_or_defer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 547, ptr noundef nonnull @.str.1) #10
  br label %send_or_defer.exit

send_or_defer.exit:                               ; preds = %if.then.i, %land.lhs.true4.i.send_or_defer.exit_crit_edge, %land.lhs.true.i.send_or_defer.exit_crit_edge, %if.end14.send_or_defer.exit_crit_edge
  %32 = ptrtoint ptr %31 to i32
  %and.i = and i32 %32, -4
  %33 = inttoptr i32 %and.i to ptr
  %egress_dev.i = getelementptr inbounds %struct.chtls_sock, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %egress_dev.i, align 4
  %l2t_entry.i = getelementptr inbounds %struct.chtls_sock, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %l2t_entry.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %l2t_entry.i, align 8
  %call12.i = tail call i32 @cxgb4_l2t_send(ptr noundef %35, ptr noundef %skb.addr.0, ptr noundef %37) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chtls_set_tcb_field_rpl_skb(ptr noundef, i16 noundef zeroext, i64 noundef, i64 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_ctrl_skb(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true, !prof !171

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #10
  %0 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %land.rhs, label %land.lhs.true.if.else_crit_edge, !prof !172

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.rhs:                                         ; preds = %land.lhs.true
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %2 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.rhs.if.then_crit_edge, label %skb_cloned.exit

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

skb_cloned.exit:                                  ; preds = %land.rhs
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i2.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i2.not, label %skb_cloned.exit.if.then_crit_edge, label %skb_cloned.exit.if.else_crit_edge, !prof !172

skb_cloned.exit.if.else_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

skb_cloned.exit.if.then_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %skb_cloned.exit.if.then_crit_edge, %land.rhs.if.then_crit_edge
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !172

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2789, i32 noundef 9, ptr noundef null) #10
  br label %__skb_trim.exit

if.end21.critedge.i.i:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %len22.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len22.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %len22.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %tail.i.i.i, align 8
  br label %__skb_trim.exit

__skb_trim.exit:                                  ; preds = %if.end21.critedge.i.i, %do.end.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !170
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %__skb_trim.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !171

__skb_trim.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %__skb_trim.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %__skb_trim.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !172

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %__skb_trim.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %__skb_trim.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i) #10
  br label %if.end

if.else:                                          ; preds = %skb_cloned.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 36032, i32 noundef 0, i32 noundef -1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge
  %skb.addr.0 = phi ptr [ %call.i, %if.else ], [ %skb, %if.else.i.i.i.if.end_crit_edge ], [ %skb, %if.end15.sink.split.i.i.i ]
  ret ptr %skb.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abort_arp_failure(ptr nocapture noundef readonly %handle, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmd = getelementptr inbounds %struct.cpl_abort_req, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmd, align 1
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %handle, i32 0, i32 2
  %3 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lldi, align 4
  %ports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call1 = tail call i32 @cxgb4_ofld_send(ptr noundef %8, ptr noundef %skb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_l2t_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_put_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_entail(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_push_frames(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chtls_tcp_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rcu_head_on_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_syn_rcv_conn(ptr noundef %child, ptr noundef %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @cleanup_syn_rcv_conn.__warned, align 1
  br i1 %.b17, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cleanup_syn_rcv_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 612, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %passive_reap_next = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %passive_reap_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %passive_reap_next, align 4
  %num_timeout.i = getelementptr inbounds %struct.request_sock, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %num_timeout.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %num_timeout.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.end7.reqsk_queue_removed.exit_crit_edge

do.end7.reqsk_queue_removed.exit_crit_edge:       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %reqsk_queue_removed.exit

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %young.i = getelementptr inbounds %struct.inet_connection_sock, ptr %parent, i32 0, i32 1, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %young.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %young.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %young.i, ptr %young.i, i32 1, ptr elementtype(i32) %young.i) #10, !srcloc !181
  br label %reqsk_queue_removed.exit

reqsk_queue_removed.exit:                         ; preds = %if.then.i, %do.end7.reqsk_queue_removed.exit_crit_edge
  %qlen.i = getelementptr inbounds %struct.inet_connection_sock, ptr %parent, i32 0, i32 1, i32 3
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qlen.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %qlen.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qlen.i, ptr %qlen.i, i32 1, ptr elementtype(i32) %qlen.i) #10, !srcloc !181
  %synq = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 38
  %listen_ctx = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 39
  %9 = ptrtoint ptr %listen_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %listen_ctx, align 8
  %qlen.i18 = getelementptr inbounds %struct.listen_ctx, ptr %10, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %qlen.i18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i18, align 4
  %sub.i = add i32 %12, -1
  store volatile i32 %sub.i, ptr %qlen.i18, align 4
  %13 = ptrtoint ptr %synq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %synq, align 8
  %prev9.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 38, i32 1
  %15 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %synq, align 8
  %prev17.i = getelementptr inbounds %struct.anon.46, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %prev17.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %16, align 8
  %19 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %reqsk_queue_removed.exit.chtls_reqsk_free.exit_crit_edge, label %if.then.i19

reqsk_queue_removed.exit.chtls_reqsk_free.exit_crit_edge: ; preds = %reqsk_queue_removed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_reqsk_free.exit

if.then.i19:                                      ; preds = %reqsk_queue_removed.exit
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.chtls_reqsk_free.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !172

if.end5.i.i.i.i.i.chtls_reqsk_free.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_reqsk_free.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %chtls_reqsk_free.exit

if.then.i.i:                                      ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef nonnull %21) #10
  br label %chtls_reqsk_free.exit

chtls_reqsk_free.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.chtls_reqsk_free.exit_crit_edge, %reqsk_queue_removed.exit.chtls_reqsk_free.exit_crit_edge
  %rsk_ops.i = getelementptr inbounds %struct.request_sock, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rsk_ops.i, align 4
  %slab.i = getelementptr inbounds %struct.request_sock_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %slab.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %5) #10
  %27 = ptrtoint ptr %passive_reap_next to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %passive_reap_next, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_listen_child(ptr noundef %child) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @reset_listen_child.__warned, align 1
  br i1 %.b65, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @reset_listen_child.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 500, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %txdata_skb_cache = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %txdata_skb_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txdata_skb_cache, align 4
  %call10 = tail call fastcc ptr @alloc_ctrl_skb(ptr noundef %5)
  tail call fastcc void @chtls_send_reset(ptr noundef %child, ptr noundef %call10)
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %6 = getelementptr inbounds %struct.sock_common, ptr %child, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %or.i.i.i = or i32 %8, 1
  store i32 %or.i.i.i, ptr %6, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 71
  %9 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sk_socket.i.i, align 8
  %10 = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %10, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !182
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %child, i32 0, i32 8
  %13 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_prot, align 8
  %orphan_count = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %orphan_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %orphan_count, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add = add i32 %23, %17
  %24 = inttoptr i32 %add to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add29 = add i32 %26, 1
  store i32 %add29, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !183
  %and.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool40.not, label %if.then44, label %do.end7.do.end47_crit_edge, !prof !171

do.end7.do.end47_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then44:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.end7.do.end47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #10, !srcloc !184
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %child, i32 0, i32 4
  %28 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp56 = icmp eq i8 %29, 7
  br i1 %cmp56, label %if.then58, label %do.end47.if.end59_crit_edge

do.end47.if.end59_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then58:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_csk_destroy_sock(ptr noundef %child) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %do.end47.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_peer_close(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @chtls_peer_close.__warned, align 1
  br i1 %.b61, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_peer_close.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.end13, label %do.end7.out_crit_edge

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %do.end7
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %7 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sk_shutdown, align 2
  %9 = or i8 %8, 1
  store i8 %9, ptr %sk_shutdown, align 2
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %or.i.i = or i32 %12, 2
  store i32 %or.i.i, ptr %10, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %14, label %do.end24 [
    i8 3, label %if.end13.sw.bb_crit_edge
    i8 1, label %if.end13.sw.bb_crit_edge65
    i8 4, label %sw.bb16
    i8 5, label %sw.bb17
  ]

if.end13.sw.bb_crit_edge65:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end13.sw.bb_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end13.sw.bb_crit_edge, %if.end13.sw.bb_crit_edge65
  tail call void @tcp_set_state(ptr noundef %sk, i32 noundef 8) #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tcp_set_state(ptr noundef %sk, i32 noundef 11) #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end13
  tail call fastcc void @chtls_release_resources(ptr noundef %sk)
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_conn_done(ptr noundef %sk)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %rcv_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %19 = ptrtoint ptr %rcv_nxt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rcv_nxt.i, align 8
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %rcv_nxt.i, align 8
  %call1.i = tail call i64 @ktime_get_seconds() #10
  %conv.i = trunc i64 %call1.i to i32
  %rx_opt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61
  %21 = ptrtoint ptr %rx_opt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %rx_opt.i, align 4
  %srtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %22 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %srtt_us.i, align 8
  tail call void @tcp_time_wait(ptr noundef %sk, i32 noundef 6, i32 noundef 0) #10
  br label %sw.epilog

do.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state, align 2
  %conv28 = zext i8 %24 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv28) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end24, %if.else, %if.then20, %sw.bb16, %sw.bb
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %10, align 4
  %27 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not = icmp eq i32 %27, 0
  br i1 %tobool.i.not, label %if.then31, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then31:                                        ; preds = %sw.epilog
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %28 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_state_change, align 4
  tail call void %29(ptr noundef %sk) #10
  %30 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sk_shutdown, align 2
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool35.not = icmp eq i8 %32, 0
  br i1 %tobool35.not, label %lor.lhs.false, label %if.then31.out.sink.split_crit_edge

if.then31.out.sink.split_crit_edge:               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

lor.lhs.false:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp = icmp eq i8 %34, 7
  %spec.select = select i1 %cmp, i32 6, i32 1
  br label %out.sink.split

out.sink.split:                                   ; preds = %lor.lhs.false, %if.then31.out.sink.split_crit_edge
  %.sink = phi i32 [ 6, %if.then31.out.sink.split_crit_edge ], [ %spec.select, %lor.lhs.false ]
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 1, i32 noundef %.sink)
  br label %out

out:                                              ; preds = %out.sink.split, %sw.epilog.out_crit_edge, %do.end7.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_close_con_rpl(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sk_user_data, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b69 = load i1, ptr @chtls_close_con_rpl.__warned, align 1
  br i1 %.b69, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_close_con_rpl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1924, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end14, label %do.end8.out_crit_edge

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %do.end8
  %snd_nxt = getelementptr i8, ptr %1, i32 16
  %9 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snd_nxt, align 4
  %sub = add i32 %10, -1
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %11 = ptrtoint ptr %snd_una to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %snd_una, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %13, label %do.end42 [
    i8 11, label %sw.bb
    i8 9, label %sw.bb20
    i8 4, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end14
  tail call fastcc void @chtls_release_resources(ptr noundef %sk)
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_conn_done(ptr noundef %sk)
  br label %out

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %rcv_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %18 = ptrtoint ptr %rcv_nxt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rcv_nxt.i, align 8
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %rcv_nxt.i, align 8
  %call1.i = tail call i64 @ktime_get_seconds() #10
  %conv.i = trunc i64 %call1.i to i32
  %rx_opt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61
  %20 = ptrtoint ptr %rx_opt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %rx_opt.i, align 4
  %srtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %21 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %srtt_us.i, align 8
  tail call void @tcp_time_wait(ptr noundef %sk, i32 noundef 6, i32 noundef 0) #10
  br label %out

sw.bb20:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_release_resources(ptr noundef %sk)
  tail call fastcc void @chtls_conn_done(ptr noundef %sk)
  br label %out

sw.bb21:                                          ; preds = %if.end14
  tail call void @tcp_set_state(ptr noundef %sk, i32 noundef 5) #10
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %22 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sk_shutdown, align 2
  %24 = or i8 %23, 2
  store i8 %24, ptr %sk_shutdown, align 2
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.then25, label %if.else26

if.then25:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %29 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk_state_change, align 4
  tail call void %30(ptr noundef %sk) #10
  br label %out

if.else26:                                        ; preds = %sw.bb21
  %linger2 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 106
  %31 = ptrtoint ptr %linger2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %linger2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp = icmp slt i32 %32, 0
  br i1 %cmp, label %land.lhs.true29, label %if.else26.if.else33_crit_edge

if.else26.if.else33_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else33

land.lhs.true29:                                  ; preds = %if.else26
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %35 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool31.not = icmp eq i32 %35, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true29.if.else33_crit_edge

land.lhs.true29.if.else33_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else33

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_abort_conn(ptr noundef %sk)
  br label %out

if.else33:                                        ; preds = %land.lhs.true29.if.else33_crit_edge, %if.else26.if.else33_crit_edge
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i, align 4
  %38 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool35.not = icmp eq i32 %38, 0
  br i1 %tobool35.not, label %if.else33.out_crit_edge, label %if.then36

if.else33.out_crit_edge:                          ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then36:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @chtls_set_quiesce_ctrl(ptr noundef %sk, i32 noundef 0) #10
  br label %out

do.end42:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state, align 2
  %conv46 = zext i8 %40 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv46) #14
  br label %out

out:                                              ; preds = %do.end42, %if.then36, %if.else33.out_crit_edge, %if.then32, %if.then25, %sw.bb20, %if.else, %if.then18, %do.end8.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_abort_req_rss(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_user_data, align 4
  %txq_idx = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txq_idx, align 8
  %status = getelementptr i8, ptr %1, i32 15
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  %.off = add i8 %7, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %9, -3
  store i32 %and.i.i, ptr %flags.i, align 4
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then6:                                         ; preds = %land.lhs.true
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %15 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %snd_nxt, align 4
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %17 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rcv_nxt, align 8
  %call8 = tail call i32 @send_tx_flowc_wr(ptr noundef %sk, i32 noundef 0, i32 noundef %16, i32 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %land.end, label %if.then6.if.end47_crit_edge

if.then6.if.end47_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.end:                                         ; preds = %if.then6
  %.b90 = load i1, ptr @chtls_abort_req_rss.__already_done, align 1
  br i1 %.b90, label %land.end.if.end47_crit_edge, label %if.then17, !prof !172

land.end.if.end47_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_abort_req_rss.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2127, i32 noundef 9, ptr noundef nonnull @.str.23) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then17, %land.end.if.end47_crit_edge, %if.then6.if.end47_crit_edge
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %20, 128
  store i32 %or.i.i, ptr %flags.i, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %or.i.i97 = or i32 %22, 16
  store i32 %or.i.i97, ptr %flags.i, align 4
  %23 = load volatile i32, ptr %flags.i, align 4
  %24 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool50.not = icmp eq i32 %24, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.if.end63_crit_edge

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then51:                                        ; preds = %if.end48
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %25 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 110, ptr %sk_err, align 4
  %26 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.not, label %if.then53, label %if.then51.if.end54_crit_edge

if.then51.if.end54_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then53:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sk_error_report(ptr noundef %sk) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.then51.if.end54_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp56 = icmp eq i8 %31, 3
  br i1 %cmp56, label %land.lhs.true58, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true58:                                  ; preds = %if.end54
  %32 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk_user_data, align 4
  %passive_reap_next.i = getelementptr inbounds %struct.chtls_sock, ptr %33, i32 0, i32 36
  %34 = ptrtoint ptr %passive_reap_next.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %passive_reap_next.i, align 4
  %cdev1.i = getelementptr inbounds %struct.chtls_sock, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %cdev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cdev1.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %land.lhs.true58.if.end63_crit_edge, label %if.end.i

land.lhs.true58.if.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.end.i:                                         ; preds = %land.lhs.true58
  %tids.i = getelementptr inbounds %struct.chtls_dev, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %tids.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tids.i, align 4
  %ts_recent.i = getelementptr inbounds %struct.request_sock, ptr %35, i32 0, i32 5
  %40 = ptrtoint ptr %ts_recent.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ts_recent.i, align 8
  %nsftids.i.i = getelementptr inbounds %struct.tid_info, ptr %39, i32 0, i32 23
  %42 = ptrtoint ptr %nsftids.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nsftids.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.else.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %sftid_base.i.i = getelementptr inbounds %struct.tid_info, ptr %39, i32 0, i32 22
  %44 = ptrtoint ptr %sftid_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sftid_base.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp.not.i.i = icmp ult i32 %41, %45
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %41, %45
  %nstids.i.i = getelementptr inbounds %struct.tid_info, ptr %39, i32 0, i32 5
  %46 = ptrtoint ptr %nstids.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nstids.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %47
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end.i.if.else.i.i_crit_edge
  %stid_base.i.i = getelementptr inbounds %struct.tid_info, ptr %39, i32 0, i32 6
  %48 = ptrtoint ptr %stid_base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stid_base.i.i, align 8
  %sub2.i.i = sub i32 %41, %49
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %stid.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub2.i.i, %if.else.i.i ]
  %nstids3.i.i = getelementptr inbounds %struct.tid_info, ptr %39, i32 0, i32 5
  %50 = ptrtoint ptr %nstids3.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nstids3.i.i, align 4
  %add5.i.i = add i32 %51, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i.i, i32 %add5.i.i)
  %cmp6.i.i = icmp ult i32 %stid.addr.0.i.i, %add5.i.i
  br i1 %cmp6.i.i, label %lookup_stid.exit.i, label %if.end.i.i.if.end63_crit_edge

if.end.i.i.if.end63_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

lookup_stid.exit.i:                               ; preds = %if.end.i.i
  %stid_tab.i.i = getelementptr inbounds %struct.tid_info, ptr %39, i32 0, i32 3
  %52 = ptrtoint ptr %stid_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stid_tab.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.serv_entry, ptr %53, i32 %stid.addr.0.i.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i = icmp eq ptr %55, null
  br i1 %tobool2.not.i, label %lookup_stid.exit.i.if.end63_crit_edge, label %if.end4.i

lookup_stid.exit.i.if.end63_crit_edge:            ; preds = %lookup_stid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.end4.i:                                        ; preds = %lookup_stid.exit.i
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.end4.i.sock_owned_by_user.exit.i_crit_edge

if.end4.i.sock_owned_by_user.exit.i_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.end4.i
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %58 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %if.end4.i.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i.not.i = icmp eq i32 %60, 0
  br i1 %tobool.i.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %txq_idx.i = getelementptr inbounds %struct.chtls_sock, ptr %33, i32 0, i32 17
  %61 = ptrtoint ptr %txq_idx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %txq_idx.i, align 8
  tail call fastcc void @chtls_send_abort_rpl(ptr noundef %sk, ptr noundef %skb, ptr noundef %37, i32 noundef %62) #10
  tail call fastcc void @do_abort_syn_rcv(ptr noundef %sk, ptr noundef %57) #10
  br label %abort_syn_rcv.exit

if.else.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %sk, ptr %63, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %65 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @bl_abort_syn_rcv, ptr %cb.i, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef %57, ptr noundef %skb) #10
  br label %abort_syn_rcv.exit

abort_syn_rcv.exit:                               ; preds = %if.else.i, %if.then6.i
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  br label %cleanup

if.end63:                                         ; preds = %lookup_stid.exit.i.if.end63_crit_edge, %if.end.i.i.if.end63_crit_edge, %land.lhs.true58.if.end63_crit_edge, %if.end54.if.end63_crit_edge, %if.end48.if.end63_crit_edge
  %cdev = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %66 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cdev, align 4
  tail call fastcc void @chtls_send_abort_rpl(ptr noundef %sk, ptr noundef %skb, ptr noundef %67, i32 noundef %5)
  tail call fastcc void @chtls_release_resources(ptr noundef %sk)
  tail call fastcc void @chtls_conn_done(ptr noundef %sk)
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %abort_syn_rcv.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_abort_rpl_rss(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sk_user_data, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @chtls_abort_rpl_rss.__warned, align 1
  br i1 %.b36, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_abort_rpl_rss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2156, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %cdev11 = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cdev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev11, align 4
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %do.end8.if.end25_crit_edge, label %if.then14

do.end8.if.end25_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then14:                                        ; preds = %do.end8
  %and.i.i = and i32 %9, -33
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i.i, ptr %flags.i, align 4
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %if.then17, label %if.then14.if.end25_crit_edge

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then17:                                        ; preds = %if.then14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp = icmp eq i8 %15, 2
  br i1 %cmp, label %if.then19, label %if.then17.if.end23_crit_edge

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19:                                        ; preds = %if.then17
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %7, i32 0, i32 7
  %16 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tids, align 4
  %port_id = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 29
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_id, align 8
  %conv20 = zext i8 %19 to i32
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %and21 = and i32 %21, 16777215
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %22 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %skc_family, align 8
  tail call void @cxgb4_remove_tid(ptr noundef %17, i32 noundef %conv20, i32 noundef %and21, i16 noundef zeroext %23) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.if.end23_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %if.end23

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %sk) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end23_crit_edge, %if.then17.if.end23_crit_edge
  tail call fastcc void @chtls_release_resources(ptr noundef %sk)
  tail call fastcc void @chtls_conn_done(ptr noundef %sk)
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.then14.if.end25_crit_edge, %do.end8.if.end25_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_release_resources(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @chtls_release_resources.__warned, align 1
  br i1 %.b49, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_release_resources.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 820, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %cdev10 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cdev10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev10, align 4
  %tid11 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %tid11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid11, align 8
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %do.end7.cleanup_crit_edge, label %if.end14

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %tids15 = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %tids15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tids15, align 4
  %txdata_skb_cache = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %txdata_skb_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txdata_skb_cache, align 4
  tail call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #10
  %12 = ptrtoint ptr %txdata_skb_cache to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %txdata_skb_cache, align 4
  %wr_credits = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wr_credits, align 4
  %wr_max_credits = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %wr_max_credits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wr_max_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end14.if.end18_crit_edge, label %if.end14.while.cond.i_crit_edge

if.end14.while.cond.i_crit_edge:                  ; preds = %if.end14
  br label %while.cond.i

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

while.cond.i:                                     ; preds = %while.body.i, %if.end14.while.cond.i_crit_edge
  %17 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %while.cond.i.do.end7.i.i_crit_edge

while.cond.i.do.end7.i.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %while.cond.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b23.i.i = load i1, ptr @dequeue_wr.__warned, align 1
  br i1 %.b23.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dequeue_wr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 207, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %while.cond.i.do.end7.i.i_crit_edge
  %19 = ptrtoint ptr %18 to i32
  %and.i.i = and i32 %19, -4
  %20 = inttoptr i32 %and.i.i to ptr
  %wr_skb_head.i.i = getelementptr inbounds %struct.chtls_sock, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %wr_skb_head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr_skb_head.i.i, align 8
  %tobool10.not.i.i = icmp eq ptr %22, null
  br i1 %tobool10.not.i.i, label %chtls_purge_wr_queue.exit, label %while.body.i, !prof !171

while.body.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %next_wr.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %next_wr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_wr.i.i, align 8
  %25 = ptrtoint ptr %wr_skb_head.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %wr_skb_head.i.i, align 8
  store ptr null, ptr %next_wr.i.i, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %22, i32 noundef 0) #10
  br label %while.cond.i

chtls_purge_wr_queue.exit:                        ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wr_skb_head.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %wr_skb_head.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %wr_skb_head.i, align 8
  %wr_skb_tail.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %wr_skb_tail.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %wr_skb_tail.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %chtls_purge_wr_queue.exit, %if.end14.if.end18_crit_edge
  %l2t_entry = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %l2t_entry to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %l2t_entry, align 8
  %tobool19.not = icmp eq ptr %29, null
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb4_l2t_release(ptr noundef nonnull %29) #10
  %30 = ptrtoint ptr %l2t_entry to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %l2t_entry, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp24.not = icmp eq i8 %32, 2
  br i1 %cmp24.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  %port_id = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 29
  %33 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port_id, align 8
  %conv27 = zext i8 %34 to i32
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %35 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %skc_family, align 8
  tail call void @cxgb4_remove_tid(ptr noundef %9, i32 noundef %conv27, i32 noundef %7, i16 noundef zeroext %36) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_conn_done(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %4 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i3.i = icmp eq ptr %5, %sk_receive_queue.i
  %tobool.not.i24.i = icmp eq ptr %5, null
  %tobool.not.i5.i = or i1 %cmp.i.i3.i, %tobool.not.i24.i
  br i1 %tobool.not.i5.i, label %if.then.if.end_crit_edge, label %while.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = phi ptr [ %5, %while.body.lr.ph.i ], [ %18, %while.body.i.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.46, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.46, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #10
  %17 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %18, %sk_receive_queue.i
  %tobool.not.i2.i = icmp eq ptr %18, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i2.i
  br i1 %tobool.not.i.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %19 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !178
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i4 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i4, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %23 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %23, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @sk_wakeup_sleepers.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sk_wakeup_sleepers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 148, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool.not.i2.i5 = icmp eq ptr %25, null
  br i1 %tobool.not.i2.i5, label %do.end7.i.if.end16.i_crit_edge, label %skwq_has_sleeper.exit.i

do.end7.i.if.end16.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

skwq_has_sleeper.exit.i:                          ; preds = %do.end7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !185
  %head.i.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %head.i.i.i.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq ptr %27, %head.i.i.i.i
  br i1 %cmp.i.i.i.i.not.i, label %skwq_has_sleeper.exit.i.if.end16.i_crit_edge, label %if.else.i

skwq_has_sleeper.exit.i.if.end16.i_crit_edge:     ; preds = %skwq_has_sleeper.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.else.i:                                        ; preds = %skwq_has_sleeper.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %23, align 8
  tail call void @__wake_up(ptr noundef %29, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %skwq_has_sleeper.exit.i.if.end16.i_crit_edge, %do.end7.i.if.end16.i_crit_edge
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i3.i, label %if.end16.i.sk_wakeup_sleepers.exit_crit_edge, label %land.lhs.true.i6.i

if.end16.i.sk_wakeup_sleepers.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_wakeup_sleepers.exit

land.lhs.true.i6.i:                               ; preds = %if.end16.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i6 = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i6, label %land.lhs.true.i6.i.sk_wakeup_sleepers.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.sk_wakeup_sleepers.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_wakeup_sleepers.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.sk_wakeup_sleepers.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.sk_wakeup_sleepers.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_wakeup_sleepers.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %sk_wakeup_sleepers.exit

sk_wakeup_sleepers.exit:                          ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.sk_wakeup_sleepers.exit_crit_edge, %land.lhs.true.i6.i.sk_wakeup_sleepers.exit_crit_edge, %if.end16.i.sk_wakeup_sleepers.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !179
  %30 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i10.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @tcp_done(ptr noundef %sk) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef %how, i32 noundef %band) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !178
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %8 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @sk_wake_async.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sk_wake_async.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 2444, ptr noundef nonnull @.str.1) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %call11 = tail call i32 @sock_wake_async(ptr noundef %10, i32 noundef %how, i32 noundef %band) #10
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i15, label %do.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

do.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %do.end9
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %do.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !179
  %11 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i22 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end12

if.end12:                                         ; preds = %rcu_read_unlock.exit, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_l2t_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_remove_tid(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_time_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_abort_conn(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_send_reset(ptr noundef %sk, ptr noundef nonnull %call.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chtls_set_quiesce_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_send_abort_rpl(ptr noundef %sk, ptr noundef %skb, ptr noundef %cdev, i32 noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sk_user_data, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @chtls_send_abort_rpl.__warned, align 1
  br i1 %.b1, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_send_abort_rpl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2026, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %11, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %land.rhs.i, label %do.end8.if.else.i_crit_edge, !prof !172

do.end8.if.else.i_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.rhs.i:                                       ; preds = %do.end8
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %14 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %land.rhs.i.if.then.i_crit_edge, label %skb_cloned.exit.i

land.rhs.i.if.then.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.then.i_crit_edge, label %skb_cloned.exit.i.if.else.i_crit_edge, !prof !172

skb_cloned.exit.i.if.else.i_crit_edge:            ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

skb_cloned.exit.i.if.then.i_crit_edge:            ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %skb_cloned.exit.i.if.then.i_crit_edge, %land.rhs.i.if.then.i_crit_edge
  %len5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp.i = icmp ult i32 %20, 32
  br i1 %cmp.i, label %land.rhs11.i, label %if.then.i.if.end43.i_crit_edge

if.then.i.if.end43.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

land.rhs11.i:                                     ; preds = %if.then.i
  %.b1.i = load i1, ptr @get_cpl_skb.__already_done, align 1
  br i1 %.b1.i, label %land.rhs11.i.if.end43.i_crit_edge, label %if.then22.i, !prof !172

land.rhs11.i.if.end43.i_crit_edge:                ; preds = %land.rhs11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then22.i:                                      ; preds = %land.rhs11.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @get_cpl_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1968, i32 noundef 9, ptr noundef nonnull @.str.25) #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then22.i, %land.rhs11.i.if.end43.i_crit_edge, %if.then.i.if.end43.i_crit_edge
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i.i, label %if.end21.critedge.i.i.i, label %do.end.i.i.i, !prof !172

do.end.i.i.i:                                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2789, i32 noundef 9, ptr noundef null) #10
  br label %__skb_trim.exit.i

if.end21.critedge.i.i.i:                          ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %len5.i, align 4
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 32
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %__skb_trim.exit.i

__skb_trim.exit.i:                                ; preds = %if.end21.critedge.i.i.i, %do.end.i.i.i
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !170
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %__skb_trim.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !171

__skb_trim.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %__skb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %__skb_trim.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_cpl_skb.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_cpl_skb.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_cpl_skb.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %__skb_trim.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %__skb_trim.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %get_cpl_skb.exit

if.else.i:                                        ; preds = %skb_cloned.exit.i.if.else.i_crit_edge, %do.end8.if.else.i_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef %cond.i, i32 noundef 0, i32 noundef -1) #10
  %tobool53.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool53.not.i, label %if.else.i.if.then15_crit_edge, label %if.then54.i

if.else.i.if.then15_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then54.i:                                      ; preds = %if.else.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i.i, label %get_cpl_skb.exit.thread7, label %do.body3.i.i, !prof !172

do.body3.i.i:                                     ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

get_cpl_skb.exit.thread7:                         ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 32
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %34, 32
  store i32 %add.i.i, ptr %len9.i.i, align 4
  br label %if.end17

get_cpl_skb.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_cpl_skb.exit_crit_edge
  %tobool14.not = icmp eq ptr %skb, null
  br i1 %tobool14.not, label %get_cpl_skb.exit.if.then15_crit_edge, label %get_cpl_skb.exit.if.end17_crit_edge

get_cpl_skb.exit.if.end17_crit_edge:              ; preds = %get_cpl_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

get_cpl_skb.exit.if.then15_crit_edge:             ; preds = %get_cpl_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %get_cpl_skb.exit.if.then15_crit_edge, %if.else.i.if.then15_crit_edge
  %queue.tr = trunc i32 %queue to i8
  %35 = shl i8 %queue.tr, 1
  %conv = or i8 %35, 1
  %status16 = getelementptr i8, ptr %1, i32 15
  %36 = ptrtoint ptr %status16 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %status16, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %37 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @send_defer_abort_rpl, ptr %cb.i, align 8
  %deferq.i = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 16
  %lock.i = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 16, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %prev.i.i.i = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 16, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %deferq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %41 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %skb, ptr %39, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 16, i32 1
  %43 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i2 = icmp eq i32 %44, 0
  br i1 %cmp.i2, label %if.then.i3, label %if.then15.t4_defer_reply.exit_crit_edge

if.then15.t4_defer_reply.exit_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %t4_defer_reply.exit

if.then.i3:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %deferq_task.i = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %45 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %deferq_task.i) #10
  br label %t4_defer_reply.exit

t4_defer_reply.exit:                              ; preds = %if.then.i3, %if.then15.t4_defer_reply.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %cleanup29

if.end17:                                         ; preds = %get_cpl_skb.exit.if.end17_crit_edge, %get_cpl_skb.exit.thread7
  %skb.addr.0.i10 = phi ptr [ %call.i.i, %get_cpl_skb.exit.thread7 ], [ %skb, %get_cpl_skb.exit.if.end17_crit_edge ]
  %and11 = and i32 %7, 16777215
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i10, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 83886096, ptr %47, align 8
  %shl.i = shl nuw i32 %and11, 8
  %or.i = or i32 %shl.i, 2
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %wr_lo.i, align 8
  %or4.i = or i32 %and11, 184549376
  %ot.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or4.i, ptr %ot.i, align 8
  %cmd7.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %47, i32 0, i32 4
  %52 = ptrtoint ptr %cmd7.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %cmd7.i, align 1
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %queue.tr11 = trunc i32 %queue to i16
  %conv.i = shl i16 %queue.tr11, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i10, i32 0, i32 10
  %53 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 10
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i, align 4
  %56 = and i32 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not = icmp eq i32 %56, 0
  br i1 %tobool.i.not, label %if.end17.if.end27_crit_edge, label %if.then19

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then19:                                        ; preds = %if.end17
  %l2t_entry = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 2
  %57 = ptrtoint ptr %l2t_entry to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %l2t_entry, align 8
  %tobool20.not = icmp eq ptr %58, null
  br i1 %tobool20.not, label %if.then19.if.end27_crit_edge, label %land.lhs.true21

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true21:                                  ; preds = %if.then19
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %59 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp.not = icmp eq i8 %60, 3
  br i1 %cmp.not, label %land.lhs.true21.if.end27_crit_edge, label %if.then24

land.lhs.true21.if.end27_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  %egress_dev = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 3
  %61 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %egress_dev, align 4
  %call25 = tail call i32 @cxgb4_l2t_send(ptr noundef %62, ptr noundef nonnull %skb.addr.0.i10, ptr noundef nonnull %58) #10
  br label %cleanup29

if.end27:                                         ; preds = %land.lhs.true21.if.end27_crit_edge, %if.then19.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 2
  %63 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lldi, align 4
  %ports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ports, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call28 = tail call i32 @cxgb4_ofld_send(ptr noundef %68, ptr noundef nonnull %skb.addr.0.i10) #10
  br label %cleanup29

cleanup29:                                        ; preds = %if.end27, %if.then24, %t4_defer_reply.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_abort_syn_rcv(ptr noundef %child, ptr noundef %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %parent, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp eq i8 %1, 10
  br i1 %cmp, label %if.then, label %if.else, !prof !172

if.then:                                          ; preds = %entry
  tail call fastcc void @cleanup_syn_rcv_conn(ptr noundef %child, ptr noundef %parent)
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %2 = getelementptr inbounds %struct.sock_common, ptr %child, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %4, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 71
  %5 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk_socket.i.i, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !182
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %child, i32 0, i32 8
  %9 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_prot, align 8
  %orphan_count = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %orphan_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %orphan_count, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add18 = add i32 %22, 1
  store i32 %add18, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !183
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool29.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool29.not, label %if.then38, label %if.then.do.end40_crit_edge, !prof !171

if.then.do.end40_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.then38:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end40

do.end40:                                         ; preds = %if.then38, %if.then.do.end40_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #10, !srcloc !184
  br label %if.end51.sink.split

if.else:                                          ; preds = %entry
  %call47 = tail call fastcc i32 @csk_flag(ptr noundef %child, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.else.if.end51_crit_edge, label %if.else.if.end51.sink.split_crit_edge

if.else.if.end51.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.sink.split

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end51.sink.split:                              ; preds = %if.else.if.end51.sink.split_crit_edge, %do.end40
  tail call fastcc void @chtls_release_resources(ptr noundef %child)
  tail call fastcc void @chtls_conn_done(ptr noundef %child)
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.else.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_abort_syn_rcv(ptr noundef %lsk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 72
  %3 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @bl_abort_syn_rcv.__warned, align 1
  br i1 %.b15, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bl_abort_syn_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2061, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %5 = ptrtoint ptr %4 to i32
  %and = and i32 %5, -4
  %6 = inttoptr i32 %and to ptr
  %txq_idx = getelementptr inbounds %struct.chtls_sock, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txq_idx, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %0, align 4
  %cdev = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cdev, align 4
  tail call fastcc void @chtls_send_abort_rpl(ptr noundef %2, ptr noundef %skb, ptr noundef %11, i32 noundef %8)
  tail call fastcc void @do_abort_syn_rcv(ptr noundef %2, ptr noundef %lsk)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sk_add_backlog(ptr noundef %sk, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst_force.exit_crit_edge, label %land.lhs.true.i.i.i

entry.skb_dst_force.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_force.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge

land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_is_noref.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge, !prof !171

land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_is_noref.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst_is_noref.exit.i

skb_dst_is_noref.exit.i:                          ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %tobool1.i.i = icmp ugt i32 %4, 1
  br i1 %tobool1.i.i, label %if.then.i, label %skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge

skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge: ; preds = %skb_dst_is_noref.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_force.exit

if.then.i:                                        ; preds = %skb_dst_is_noref.exit.i
  %and.i2.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.skb_dst.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !171

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.i.skb_dst.exit.i_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i.i to ptr
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %skb_dst.exit.i.if.end.i_crit_edge, !prof !171

skb_dst.exit.i.if.end.i_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 316, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %skb_dst.exit.i.if.end.i_crit_edge
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #10, !srcloc !187
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.end.i.dst_hold_safe.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.end.i.dst_hold_safe.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_hold_safe.exit.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !188
  br label %dst_hold_safe.exit.i

dst_hold_safe.exit.i:                             ; preds = %do.end11.i.i.i.i.i.i, %if.end.i.dst_hold_safe.exit.i_crit_edge
  %spec.select.i = phi ptr [ null, %if.end.i.dst_hold_safe.exit.i_crit_edge ], [ %7, %do.end11.i.i.i.i.i.i ]
  %9 = ptrtoint ptr %spec.select.i to i32
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %0, align 8
  %tobool27.not.i = icmp eq ptr %spec.select.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool27.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear34.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear34.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  br label %skb_dst_force.exit

skb_dst_force.exit:                               ; preds = %dst_hold_safe.exit.i, %skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge, %entry.skb_dst_force.exit_crit_edge
  %tail = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.body2, label %if.else

do.body2:                                         ; preds = %skb_dst_force.exit
  call void @__sanitizer_cov_trace_pc() #12
  %head = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %skb, ptr %head, align 4
  br label %do.body11

if.else:                                          ; preds = %skb_dst_force.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %skb, ptr %13, align 8
  br label %do.body11

do.body11:                                        ; preds = %if.else, %do.body2
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %skb, ptr %tail, align 4
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_defer_abort_rpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 36032, i32 noundef 0, i32 noundef -1) #10
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !172

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

__skb_put.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %7, 32
  store i32 %add.i, ptr %len9.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %and = and i32 %9, 16777215
  %status = getelementptr inbounds %struct.cpl_abort_req_rss, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 1
  %12 = and i8 %11, 1
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 83886096, ptr %14, align 8
  %shl.i = shl nuw i32 %and, 8
  %or.i = or i32 %shl.i, 2
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %wr_lo.i, align 8
  %or4.i = or i32 %and, 184549376
  %ot.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or4.i, ptr %ot.i, align 8
  %cmd7.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %cmd7.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %12, ptr %cmd7.i, align 1
  %20 = load i8, ptr %status, align 1
  %21 = and i8 %20, -2
  %conv.i = zext i8 %21 to i16
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 2
  %23 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lldi, align 4
  %ports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ports, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call6 = tail call i32 @cxgb4_ofld_send(ptr noundef %28, ptr noundef %call.i) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_recv_data(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sk_user_data, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b129 = load i1, ptr @chtls_recv_data.__warned, align 1
  br i1 %.b129, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_recv_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1687, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sk_shutdown, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.end17, label %if.then16, !prof !172

if.then16:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @handle_excess_rx(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

if.end17:                                         ; preds = %do.end8
  %seq = getelementptr i8, ptr %1, i32 16
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seq, align 4
  %seq18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %seq18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %seq18, align 8
  %psh = getelementptr i8, ptr %1, i32 22
  %12 = ptrtoint ptr %psh to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %psh, align 2
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %psh21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %13 = ptrtoint ptr %psh21 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear, ptr %psh21, align 2
  %ulp_mode = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %14 = ptrtoint ptr %ulp_mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ulp_mode, align 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %19 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %21, -24
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %23)
  %cmp.i = icmp ult i32 %sub.i, %23
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !171

do.body4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !189
  unreachable

__skb_pull.exit:                                  ; preds = %if.end17
  %add.ptr.i = getelementptr i8, ptr %16, i32 24
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool25.not = icmp eq i32 %23, 0
  br i1 %tobool25.not, label %__skb_trim.exit, label %__skb_pull.exit.if.end28_crit_edge

__skb_pull.exit.if.end28_crit_edge:               ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

__skb_trim.exit:                                  ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr i8, ptr %1, i32 14
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len, align 2
  %conv27 = zext i16 %26 to i32
  %27 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv27, ptr %len1.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv27
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end28

if.end28:                                         ; preds = %__skb_trim.exit, %__skb_pull.exit.if.end28_crit_edge
  %urg = getelementptr i8, ptr %1, i32 20
  %29 = ptrtoint ptr %urg to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %urg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool29.not = icmp eq i16 %30, 0
  br i1 %tobool29.not, label %if.end28.if.end39_crit_edge, label %if.then36, !prof !172

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %31 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rcv_nxt, align 8
  %conv38 = zext i16 %30 to i32
  %add = add i32 %32, %conv38
  tail call fastcc void @handle_urg_ptr(ptr noundef %sk, i32 noundef %add)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end28.if.end39_crit_edge
  %urg_data = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 55
  %33 = ptrtoint ptr %urg_data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %urg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %34)
  %cmp = icmp eq i16 %34, 512
  br i1 %cmp, label %land.rhs, label %if.end39.if.end60_crit_edge

if.end39.if.end60_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

land.rhs:                                         ; preds = %if.end39
  %urg_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %35 = ptrtoint ptr %urg_seq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %urg_seq, align 4
  %rcv_nxt42 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %37 = ptrtoint ptr %rcv_nxt42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rcv_nxt42, align 8
  %sub = sub i32 %36, %38
  %39 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %40)
  %cmp44 = icmp ult i32 %sub, %40
  br i1 %cmp44, label %if.then52, label %land.rhs.if.end60_crit_edge, !prof !171

land.rhs.if.end60_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then52:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %arrayidx56 = getelementptr i8, ptr %42, i32 %sub
  %43 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %44 to i16
  %or = or i16 %conv57, 256
  %45 = ptrtoint ptr %urg_data to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %or, ptr %urg_data, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %land.rhs.if.end60_crit_edge, %if.end39.if.end60_crit_edge
  %46 = ptrtoint ptr %psh to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load61 = load i8, ptr %psh, align 2
  %bf.clear62 = and i8 %bf.load61, 3
  %conv63 = zext i8 %bf.clear62 to i32
  %delack_mode = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 32
  %47 = ptrtoint ptr %delack_mode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delack_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv63)
  %cmp64.not = icmp eq i32 %48, %conv63
  br i1 %cmp64.not, label %if.end60.if.end79_crit_edge, label %if.then72, !prof !172

if.end60.if.end79_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then72:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %delack_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv63, ptr %delack_mode, align 4
  %rcv_nxt78 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %50 = ptrtoint ptr %rcv_nxt78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rcv_nxt78, align 8
  %delack_seq = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 33
  %52 = ptrtoint ptr %delack_seq to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %delack_seq, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %if.end60.if.end79_crit_edge
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i, align 8
  %55 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %transport_header.i, align 2
  %conv.i.i = zext i16 %56 to i32
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 %conv.i.i
  %fin = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %fin to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load81 = load i16, ptr %fin, align 4
  %bf.clear82 = and i16 %bf.load81, -2
  store i16 %bf.clear82, ptr %fin, align 4
  %58 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len1.i, align 4
  %rcv_nxt84 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %60 = ptrtoint ptr %rcv_nxt84 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rcv_nxt84, align 8
  %add85 = add i32 %61, %59
  store i32 %add85, ptr %rcv_nxt84, align 8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %sk_receive_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %65 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %skb, ptr %63, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %68, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %69 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %72 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not = icmp eq i32 %72, 0
  br i1 %tobool.i.not, label %if.then87, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then87:                                        ; preds = %if.end79
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %5, align 8
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %74, i32 0, i32 72
  %75 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sk_user_data.i, align 4
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %if.then87.check_sk_callbacks.exit_crit_edge, label %land.rhs.i

if.then87.check_sk_callbacks.exit_crit_edge:      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sk_callbacks.exit

land.rhs.i:                                       ; preds = %if.then87
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 10
  %77 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.rhs.i.check_sk_callbacks.exit_crit_edge, !prof !171

land.rhs.i.check_sk_callbacks.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sk_callbacks.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i.i = or i32 %78, 1
  %79 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.i.i.i, ptr %flags.i.i, align 4
  br label %check_sk_callbacks.exit

check_sk_callbacks.exit:                          ; preds = %if.then.i, %land.rhs.i.check_sk_callbacks.exit_crit_edge, %if.then87.check_sk_callbacks.exit_crit_edge
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %80 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sk_data_ready, align 8
  tail call void %81(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %check_sk_callbacks.exit, %if.end79.cleanup_crit_edge, %if.then16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_excess_rx(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end7.i_crit_edge

entry.do.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %entry.do.end7.i_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -4
  %3 = inttoptr i32 %and.i to ptr
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %do.end7.i.if.then_crit_edge, label %csk_flag.exit

do.end7.i.if.then_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

csk_flag.exit:                                    ; preds = %do.end7.i
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %csk_flag.exit.if.then_crit_edge, label %csk_flag.exit.if.end_crit_edge

csk_flag.exit.if.end_crit_edge:                   ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

csk_flag.exit.if.then_crit_edge:                  ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %csk_flag.exit.if.then_crit_edge, %do.end7.i.if.then_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i3 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i3, label %if.then.if.end_crit_edge, label %if.then.i4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i4:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_send_reset(ptr noundef %sk, ptr noundef nonnull %call.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i4, %if.then.if.end_crit_edge, %csk_flag.exit.if.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_urg_ptr(ptr noundef %sk, i32 noundef %urg_seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dec = add i32 %urg_seq, -1
  %urg_data = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 55
  %0 = ptrtoint ptr %urg_data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %urg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %urg_seq1 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %2 = ptrtoint ptr %urg_seq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %urg_seq1, align 4
  %sub.i = sub i32 %3, %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @sk_send_sigurg(ptr noundef %sk) #10
  %urg_seq3 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %4 = ptrtoint ptr %urg_seq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %urg_seq3, align 4
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %6 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %copied_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true5, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true5:                                   ; preds = %if.end
  %8 = ptrtoint ptr %urg_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %urg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool8.not = icmp eq i16 %9, 0
  br i1 %tobool8.not, label %land.lhs.true5.if.end25_crit_edge, label %land.lhs.true9

land.lhs.true5.if.end25_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %land.lhs.true11, label %land.lhs.true9.if.end25_crit_edge

land.lhs.true9.if.end25_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %14 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rcv_nxt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %15)
  %cmp13.not = icmp eq i32 %5, %15
  br i1 %cmp13.not, label %land.lhs.true11.if.end25_crit_edge, label %if.then15

land.lhs.true11.if.end25_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then15:                                        ; preds = %land.lhs.true11
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %16 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i47 = icmp eq ptr %17, %sk_receive_queue
  %inc = add i32 %5, 1
  %18 = ptrtoint ptr %copied_seq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc, ptr %copied_seq, align 4
  %tobool18.not48 = icmp eq ptr %17, null
  %tobool18.not = or i1 %cmp.i47, %tobool18.not48
  br i1 %tobool18.not, label %if.then15.if.end25_crit_edge, label %land.lhs.true19

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.then15
  %seq = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 16
  %19 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq, align 8
  %sub = sub i32 %inc, %20
  %len = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %22)
  %cmp21.not = icmp ult i32 %sub, %22
  br i1 %cmp21.not, label %land.lhs.true19.if.end25_crit_edge, label %if.then23

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_free_skb(ptr noundef %sk, ptr noundef nonnull %17)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true19.if.end25_crit_edge, %if.then15.if.end25_crit_edge, %land.lhs.true11.if.end25_crit_edge, %land.lhs.true9.if.end25_crit_edge, %land.lhs.true5.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %23 = ptrtoint ptr %urg_data to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 512, ptr %urg_data, align 4
  %24 = ptrtoint ptr %urg_seq3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %dec, ptr %urg_seq3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_send_sigurg(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_free_skb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 8
  %qlen.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %3, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 8
  %prev9.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb, align 8
  %prev17.i = getelementptr inbounds %struct.anon.46, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_pass_open_to_parent(ptr noundef %child, ptr noundef %lsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %lsk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp.not = icmp eq i8 %1, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_user_data, align 4
  %passive_reap_next = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %passive_reap_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %passive_reap_next, align 4
  store ptr null, ptr %passive_reap_next, align 4
  %num_timeout.i = getelementptr inbounds %struct.request_sock, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %num_timeout.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %num_timeout.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.reqsk_queue_removed.exit_crit_edge

if.end.reqsk_queue_removed.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %reqsk_queue_removed.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %young.i = getelementptr inbounds %struct.inet_connection_sock, ptr %lsk, i32 0, i32 1, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %young.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %young.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %young.i, ptr %young.i, i32 1, ptr elementtype(i32) %young.i) #10, !srcloc !181
  br label %reqsk_queue_removed.exit

reqsk_queue_removed.exit:                         ; preds = %if.then.i, %if.end.reqsk_queue_removed.exit_crit_edge
  %qlen.i = getelementptr inbounds %struct.inet_connection_sock, ptr %lsk, i32 0, i32 1, i32 3
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qlen.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %qlen.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qlen.i, ptr %qlen.i, i32 1, ptr elementtype(i32) %qlen.i) #10, !srcloc !181
  %synq = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 38
  %listen_ctx = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 39
  %9 = ptrtoint ptr %listen_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %listen_ctx, align 8
  %qlen.i1 = getelementptr inbounds %struct.listen_ctx, ptr %10, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %qlen.i1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i1, align 4
  %sub.i = add i32 %12, -1
  store volatile i32 %sub.i, ptr %qlen.i1, align 4
  %13 = ptrtoint ptr %synq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %synq, align 8
  %prev9.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 38, i32 1
  %15 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %synq, align 8
  %prev17.i = getelementptr inbounds %struct.anon.46, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %prev17.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %16, align 8
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %lsk, i32 0, i32 53
  %19 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %lsk, i32 0, i32 54
  %21 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.i2 = icmp ugt i32 %20, %22
  br i1 %cmp.i2, label %if.then5, label %if.else

if.then5:                                         ; preds = %reqsk_queue_removed.exit
  %23 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then5.chtls_reqsk_free.exit_crit_edge, label %if.then.i3

if.then5.chtls_reqsk_free.exit_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_reqsk_free.exit

if.then.i3:                                       ; preds = %if.then5
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.chtls_reqsk_free.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !172

if.end5.i.i.i.i.i.chtls_reqsk_free.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_reqsk_free.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %chtls_reqsk_free.exit

if.then.i.i:                                      ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef nonnull %25) #10
  br label %chtls_reqsk_free.exit

chtls_reqsk_free.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.chtls_reqsk_free.exit_crit_edge, %if.then5.chtls_reqsk_free.exit_crit_edge
  %rsk_ops.i = getelementptr inbounds %struct.request_sock, ptr %5, i32 0, i32 7
  %27 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rsk_ops.i, align 4
  %slab.i = getelementptr inbounds %struct.request_sock_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %slab.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef %5) #10
  %31 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk_user_data, align 4
  tail call fastcc void @local_bh_disable() #10
  %icsk_bind_hash.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %child, i32 0, i32 2
  %33 = ptrtoint ptr %icsk_bind_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %icsk_bind_hash.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %chtls_reqsk_free.exit.release_tcp_port.exit.i_crit_edge, label %if.then.i.i4

chtls_reqsk_free.exit.release_tcp_port.exit.i_crit_edge: ; preds = %chtls_reqsk_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tcp_port.exit.i

if.then.i.i4:                                     ; preds = %chtls_reqsk_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_put_port(ptr noundef %child) #10
  br label %release_tcp_port.exit.i

release_tcp_port.exit.i:                          ; preds = %if.then.i.i4, %chtls_reqsk_free.exit.release_tcp_port.exit.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @reap_list_lock) #10
  %35 = load ptr, ptr @reap_list, align 4
  %passive_reap_next.i = getelementptr inbounds %struct.chtls_sock, ptr %32, i32 0, i32 36
  %36 = ptrtoint ptr %passive_reap_next.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %passive_reap_next.i, align 4
  store ptr %child, ptr @reap_list, align 4
  %tobool.not.i5 = icmp eq ptr %35, null
  br i1 %tobool.not.i5, label %if.then.i7, label %release_tcp_port.exit.i.add_to_reap_list.exit_crit_edge

release_tcp_port.exit.i.add_to_reap_list.exit_crit_edge: ; preds = %release_tcp_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_to_reap_list.exit

if.then.i7:                                       ; preds = %release_tcp_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i.i6 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef nonnull @reap_task) #10
  br label %add_to_reap_list.exit

add_to_reap_list.exit:                            ; preds = %if.then.i7, %release_tcp_port.exit.i.add_to_reap_list.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @reap_list_lock) #10
  tail call fastcc void @local_bh_enable() #10
  br label %cleanup

if.else:                                          ; preds = %reqsk_queue_removed.exit
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  %call.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %38 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 1, ptr %skc_refcnt, align 4
  %call6 = tail call ptr @inet_csk_reqsk_queue_add(ptr noundef %lsk, ptr noundef %5, ptr noundef %child) #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %lsk, i32 0, i32 77
  %39 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk_data_ready, align 8
  tail call void %40(ptr noundef %lsk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %add_to_reap_list.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_add_pass_open_to_parent(ptr noundef %lsk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  store ptr null, ptr %0, align 4
  tail call fastcc void @add_pass_open_to_parent(ptr noundef %2, ptr noundef %lsk)
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_reqsk_queue_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_reap_list(ptr nocapture noundef readnone %task_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reap_list_lock) #10
  %0 = load ptr, ptr @reap_list, align 4
  %tobool.not31 = icmp eq ptr %0, null
  br i1 %tobool.not31, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %sock_put.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %19, %sock_put.exit.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %while.body.do.end8_crit_edge

while.body.do.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %while.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b26 = load i1, ptr @process_reap_list.__warned, align 1
  br i1 %.b26, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @process_reap_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1500, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %while.body.do.end8_crit_edge
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %passive_reap_next = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %passive_reap_next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %passive_reap_next, align 4
  store ptr %7, ptr @reap_list, align 4
  store ptr null, ptr %passive_reap_next, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @reap_list_lock) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !170
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !171

do.end8.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #10
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sock_hold.exit.chtls_abort_conn.exit_crit_edge, label %if.then.i

sock_hold.exit.chtls_abort_conn.exit_crit_edge:   ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_abort_conn.exit

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_send_reset(ptr noundef nonnull %1, ptr noundef nonnull %call.i.i) #10
  br label %chtls_abort_conn.exit

chtls_abort_conn.exit:                            ; preds = %if.then.i, %sock_hold.exit.chtls_abort_conn.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %or.i.i.i = or i32 %12, 1
  store i32 %or.i.i.i, ptr %10, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %13 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sk_socket.i.i, align 8
  %14 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %14, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp = icmp eq i8 %17, 7
  br i1 %cmp, label %if.then13, label %chtls_abort_conn.exit.if.end14_crit_edge

chtls_abort_conn.exit.if.end14_crit_edge:         ; preds = %chtls_abort_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %chtls_abort_conn.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_csk_destroy_sock(ptr noundef nonnull %1) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %chtls_abort_conn.exit.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #10
  %call.i.i.i.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i30, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i29 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i29, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i30:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef nonnull %1) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i30, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @reap_list_lock) #10
  %19 = load ptr, ptr @reap_list, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %sock_put.exit.while.end_crit_edge, label %sock_put.exit.while.body_crit_edge

sock_put.exit.while.body_crit_edge:               ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

sock_put.exit.while.end_crit_edge:                ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %sock_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reap_list_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_pass_accept_request(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  %fl6.i = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16777215
  %cdev1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.if.end_crit_edge, label %do.end

lookup_tid.exit.if.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %and) #14
  br label %cleanup

if.end:                                           ; preds = %lookup_tid.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %and3320.in.in = getelementptr i8, ptr %1, i32 24
  %16 = ptrtoint ptr %and3320.in.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %and3320.in = load i32, ptr %and3320.in.in, align 4
  %and3320 = and i32 %and3320.in, 16777215
  %call.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tids, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %19 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %skc_family, align 8
  tail call void @cxgb4_remove_tid(ptr noundef %18, i32 noundef 0, i32 noundef %and, i16 noundef zeroext %20) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %22)
  %cmp.not = icmp eq i8 %22, 10
  br i1 %cmp.not, label %if.end14, label %if.end10.reject_crit_edge

if.end10.reject_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject

if.end14:                                         ; preds = %if.end10
  %qlen.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %qlen.i.i.i, i32 noundef 4) #10
  %23 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %qlen.i.i.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %25 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i279.not = icmp ult i32 %24, %26
  br i1 %cmp.i279.not, label %if.end18, label %if.end14.reject_crit_edge

if.end14.reject_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject

if.end18:                                         ; preds = %if.end14
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %27 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %29 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i281 = icmp ugt i32 %28, %30
  br i1 %cmp.i281, label %if.end18.reject_crit_edge, label %if.end21

if.end18.reject_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject

if.end21:                                         ; preds = %if.end18
  %hdr_len = getelementptr i8, ptr %1, i32 16
  %31 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hdr_len, align 4
  %shr22.mask = and i32 %32, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %shr22.mask)
  %cmp26 = icmp eq i32 %shr22.mask, 234881024
  %network_hdr.0.v = select i1 %cmp26, i32 46, i32 50
  %network_hdr.0 = getelementptr i8, ptr %1, i32 %network_hdr.0.v
  %33 = ptrtoint ptr %network_hdr.0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %network_hdr.0, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp39 = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp39, label %if.then41, label %if.else44

if.then41:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr42 = getelementptr %struct.iphdr, ptr %network_hdr.0, i32 1
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = trunc i32 %network_hdr.0.v to i16
  %39 = add nsw i16 %38, -8
  %conv1.i = add i16 %39, %conv.i.i
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %call43 = tail call ptr @inet_reqsk_alloc(ptr noundef nonnull @chtls_rsk_ops, ptr noundef %sk, i1 noundef zeroext true) #10
  br label %if.end50

if.else44:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr45 = getelementptr %struct.ipv6hdr, ptr %network_hdr.0, i32 1
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %head.i.i283 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %43 = ptrtoint ptr %head.i.i283 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i283, align 8
  %sub.ptr.lhs.cast.i.i284 = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i285 = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i286 = sub i32 %sub.ptr.lhs.cast.i.i284, %sub.ptr.rhs.cast.i.i285
  %conv.i.i287 = trunc i32 %sub.ptr.sub.i.i286 to i16
  %network_header.i.i288 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %45 = trunc i32 %network_hdr.0.v to i16
  %46 = add nsw i16 %45, -8
  %conv1.i289 = add i16 %46, %conv.i.i287
  %47 = ptrtoint ptr %network_header.i.i288 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv1.i289, ptr %network_header.i.i288, align 4
  %call49 = tail call ptr @inet_reqsk_alloc(ptr noundef nonnull @chtls_rsk_opsv6, ptr noundef %sk, i1 noundef zeroext false) #10
  br label %if.end50

if.end50:                                         ; preds = %if.else44, %if.then41
  %tcph.0 = phi ptr [ %add.ptr42, %if.then41 ], [ %add.ptr45, %if.else44 ]
  %oreq.0 = phi ptr [ %call43, %if.then41 ], [ %call49, %if.else44 ]
  %tobool51.not = icmp eq ptr %oreq.0, null
  br i1 %tobool51.not, label %if.end50.reject_crit_edge, label %if.end53

if.end50.reject_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject

if.end53:                                         ; preds = %if.end50
  %48 = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 18
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %48, align 8
  %50 = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 21
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %50, align 8
  %syncookie = getelementptr inbounds %struct.request_sock, ptr %oreq.0, i32 0, i32 4
  %52 = ptrtoint ptr %syncookie to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load55 = load i8, ptr %syncookie, align 1
  %bf.clear = and i8 %bf.load55, 127
  store i8 %bf.clear, ptr %syncookie, align 1
  %mss = getelementptr inbounds %struct.request_sock, ptr %oreq.0, i32 0, i32 2
  %53 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %mss, align 4
  %ts_recent = getelementptr inbounds %struct.request_sock, ptr %oreq.0, i32 0, i32 5
  %54 = ptrtoint ptr %ts_recent to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %ts_recent, align 8
  %tfo_listener = getelementptr inbounds %struct.tcp_request_sock, ptr %oreq.0, i32 0, i32 3
  %55 = ptrtoint ptr %tfo_listener to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %tfo_listener, align 8
  %seq = getelementptr inbounds %struct.tcphdr, ptr %tcph.0, i32 0, i32 2
  %56 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %seq, align 4
  %rcv_isn = getelementptr inbounds %struct.tcp_request_sock, ptr %oreq.0, i32 0, i32 7
  %58 = ptrtoint ptr %rcv_isn to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %rcv_isn, align 8
  %59 = ptrtoint ptr %tcph.0 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tcph.0, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %tcph.0, i32 0, i32 1
  %61 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %dest, align 2
  %63 = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 2
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %60, ptr %63, align 4
  %skc_num.i = getelementptr inbounds %struct.anon.2, ptr %63, i32 0, i32 1
  %65 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %62, ptr %skc_num.i, align 2
  %66 = ptrtoint ptr %network_hdr.0 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load58 = load i8, ptr %network_hdr.0, align 4
  %bf.lshr59.mask = and i8 %bf.load58, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr59.mask)
  %cmp61 = icmp eq i8 %bf.lshr59.mask, 64
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %daddr = getelementptr inbounds %struct.iphdr, ptr %network_hdr.0, i32 0, i32 9
  %67 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %network_hdr.0, i32 0, i32 8
  %69 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %saddr, align 4
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %oreq.0, i32 0, i32 1
  %71 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %skc_rcv_saddr.i, align 4
  %72 = ptrtoint ptr %oreq.0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %70, ptr %oreq.0, align 8
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %network_hdr.0, i32 0, i32 1
  %73 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tos.i, align 1
  br label %if.end78

if.else65:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 10
  %head.i.i290 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %75 = ptrtoint ptr %head.i.i290 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i290, align 8
  %network_header.i.i291 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %77 = ptrtoint ptr %network_header.i.i291 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %network_header.i.i291, align 4
  %conv.i.i292 = zext i16 %78 to i32
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 %conv.i.i292
  %saddr70 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %79 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %saddr70, i32 16)
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 11
  %80 = load ptr, ptr %head.i.i290, align 8
  %81 = load i16, ptr %network_header.i.i291, align 4
  %conv.i.i295 = zext i16 %81 to i32
  %add.ptr.i.i296 = getelementptr i8, ptr %80, i32 %conv.i.i295
  %daddr75 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i296, i32 0, i32 6
  %82 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %daddr75, i32 16)
  %83 = load ptr, ptr %head.i.i290, align 8
  %84 = load i16, ptr %network_header.i.i291, align 4
  %conv.i.i299 = zext i16 %84 to i32
  %add.ptr.i.i300 = getelementptr i8, ptr %83, i32 %conv.i.i299
  %85 = ptrtoint ptr %add.ptr.i.i300 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i.i300, align 2
  %87 = lshr i16 %86, 4
  %conv1.i301 = trunc i16 %87 to i8
  br label %if.end78

if.end78:                                         ; preds = %if.else65, %if.then63
  %ip_dsfield.0 = phi i8 [ %74, %if.then63 ], [ %conv1.i301, %if.else65 ]
  %wsf = getelementptr i8, ptr %1, i32 30
  %88 = ptrtoint ptr %wsf to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %wsf, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %89)
  %cmp80 = icmp ult i8 %89, 15
  br i1 %cmp80, label %land.lhs.true, label %if.end78.if.end97_crit_edge

if.end78.if.end97_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

land.lhs.true:                                    ; preds = %if.end78
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %90 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_window_scaling = getelementptr inbounds %struct.net, ptr %91, i32 0, i32 35, i32 73
  %92 = ptrtoint ptr %sysctl_tcp_window_scaling to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %sysctl_tcp_window_scaling, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool84.not = icmp eq i8 %93, 0
  br i1 %tobool84.not, label %land.lhs.true.if.end97_crit_edge, label %if.then85

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then85:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %wscale_ok = getelementptr inbounds %struct.inet_request_sock, ptr %oreq.0, i32 0, i32 1
  %94 = ptrtoint ptr %wscale_ok to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load87 = load i16, ptr %wscale_ok, align 8
  %bf.set89 = or i16 %bf.load87, 32
  store i16 %bf.set89, ptr %wscale_ok, align 8
  %95 = ptrtoint ptr %wsf to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %wsf, align 2
  %bf.value = zext i8 %96 to i16
  %bf.shl = shl i16 %bf.value, 12
  %bf.clear95 = and i16 %bf.set89, 4095
  %bf.set96 = or i16 %bf.shl, %bf.clear95
  store i16 %bf.set96, ptr %wscale_ok, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then85, %land.lhs.true.if.end97_crit_edge, %if.end78.if.end97_crit_edge
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %97 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %skc_bound_dev_if, align 4
  %skc_bound_dev_if102 = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 6
  %99 = ptrtoint ptr %skc_bound_dev_if102 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %skc_bound_dev_if102, align 4
  %ece = getelementptr inbounds %struct.tcphdr, ptr %tcph.0, i32 0, i32 4
  %100 = ptrtoint ptr %ece to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load103 = load i16, ptr %ece, align 4
  %101 = and i16 %bf.load103, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %101)
  %102 = icmp eq i16 %101, 192
  br i1 %102, label %if.then114, label %if.end97.if.end135_crit_edge

if.end97.if.end135_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then114:                                       ; preds = %if.end97
  %103 = and i8 %ip_dsfield.0, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp.i302.not = icmp eq i8 %103, 0
  br i1 %cmp.i302.not, label %land.lhs.true123, label %if.then114.lor.lhs.false_crit_edge

if.then114.lor.lhs.false_crit_edge:               ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true123:                                 ; preds = %if.then114
  %skc_net.i304 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %104 = ptrtoint ptr %skc_net.i304 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %skc_net.i304, align 4
  %sysctl_tcp_ecn = getelementptr inbounds %struct.net, ptr %105, i32 0, i32 35, i32 35
  %106 = ptrtoint ptr %sysctl_tcp_ecn to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %sysctl_tcp_ecn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool120.not = icmp eq i8 %107, 0
  br i1 %tobool120.not, label %land.lhs.true123.lor.lhs.false_crit_edge, label %land.lhs.true123.if.then128_crit_edge

land.lhs.true123.if.then128_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then128

land.lhs.true123.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true123.lor.lhs.false_crit_edge, %if.then114.lor.lhs.false_crit_edge
  %icsk_ca_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 10
  %108 = ptrtoint ptr %icsk_ca_ops.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %icsk_ca_ops.i, align 4
  %flags.i = getelementptr inbounds %struct.tcp_congestion_ops, ptr %109, i32 0, i32 15
  %110 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.end135_crit_edge, label %lor.lhs.false.if.then128_crit_edge

lor.lhs.false.if.then128_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then128

lor.lhs.false.if.end135_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then128:                                       ; preds = %lor.lhs.false.if.then128_crit_edge, %land.lhs.true123.if.then128_crit_edge
  %ecn_ok130 = getelementptr inbounds %struct.inet_request_sock, ptr %oreq.0, i32 0, i32 1
  %112 = ptrtoint ptr %ecn_ok130 to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load131 = load i16, ptr %ecn_ok130, align 8
  %bf.set133 = or i16 %bf.load131, 16
  store i16 %bf.set133, ptr %ecn_ok130, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then128, %lor.lhs.false.if.end135_crit_edge, %if.end97.if.end135_crit_edge
  %pdev.i = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 3
  %113 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44, i32 8
  %115 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %driver_data.i.i.i, align 4
  %askb.i = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 15
  %117 = ptrtoint ptr %askb.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %askb.i, align 4
  %call1.i = tail call ptr @tcp_create_openreq_child(ptr noundef %sk, ptr noundef nonnull %oreq.0, ptr noundef %118) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end135.free_oreq.i_crit_edge, label %if.end.i

if.end135.free_oreq.i_crit_edge:                  ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_oreq.i

if.end.i:                                         ; preds = %if.end135
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %119 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %120)
  %cmp.i305 = icmp eq i16 %120, 2
  br i1 %cmp.i305, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call ptr @inet_csk_route_child_sock(ptr noundef %sk, ptr noundef nonnull %call1.i, ptr noundef nonnull %oreq.0) #10
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then3.i.free_sk.i_crit_edge, label %if.end7.i

if.then3.i.free_sk.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sk.i

if.end7.i:                                        ; preds = %if.then3.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %network_hdr.0, i32 0, i32 8
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %call4.i, i32 0, i32 1
  %121 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i.i, align 4
  %neigh_lookup.i.i = getelementptr inbounds %struct.dst_ops, ptr %122, i32 0, i32 14
  %123 = ptrtoint ptr %neigh_lookup.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %neigh_lookup.i.i, align 8
  %call.i.i = tail call ptr %124(ptr noundef nonnull %call4.i, ptr noundef null, ptr noundef %saddr.i) #10
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end7.i.if.end136.i_crit_edge, label %if.end7.i.if.end27.i_crit_edge

if.end7.i.if.end27.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.end7.i.if.end136.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #10
  %125 = call ptr @memset(ptr %fl6.i, i32 0, i32 88)
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 5
  %126 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 6, ptr %flowic_proto.i, align 2
  %saddr9.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %network_hdr.0, i32 0, i32 6
  %127 = call ptr @memcpy(ptr %saddr9.i, ptr %daddr.i, i32 16)
  %daddr10.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  %saddr11.i = getelementptr inbounds %struct.ipv6hdr, ptr %network_hdr.0, i32 0, i32 5
  %128 = call ptr @memcpy(ptr %daddr10.i, ptr %saddr11.i, i32 16)
  %129 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %63, align 4
  %uli.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 4
  %131 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %uli.i, align 4
  %132 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %skc_num.i, align 2
  %sport.i = getelementptr inbounds %struct.anon.40, ptr %uli.i, i32 0, i32 1
  %134 = ptrtoint ptr %sport.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %sport.i, align 2
  call void @security_req_classify_flow(ptr noundef nonnull %oreq.0, ptr noundef nonnull %fl6.i) #10
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %135 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %skc_net.i.i, align 4
  %call20.i = call ptr @ip6_dst_lookup_flow(ptr noundef %136, ptr noundef %sk, ptr noundef nonnull %fl6.i, ptr noundef null) #10
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.else.i
  %ops.i269.i = getelementptr inbounds %struct.dst_entry, ptr %call20.i, i32 0, i32 1
  %137 = ptrtoint ptr %ops.i269.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i269.i, align 4
  %neigh_lookup.i270.i = getelementptr inbounds %struct.dst_ops, ptr %138, i32 0, i32 14
  %139 = ptrtoint ptr %neigh_lookup.i270.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %neigh_lookup.i270.i, align 8
  %call.i271.i = call ptr %140(ptr noundef %call20.i, ptr noundef null, ptr noundef %saddr11.i) #10
  %cmp.i.i272.i = icmp ugt ptr %call.i271.i, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #10
  br i1 %cmp.i.i272.i, label %cleanup.thread.i.if.end136.i_crit_edge, label %cleanup.thread.i.if.end27.i_crit_edge

cleanup.thread.i.if.end27.i_crit_edge:            ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

cleanup.thread.i.if.end136.i_crit_edge:           ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136.i

cleanup.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #10
  br label %free_sk.i

if.end27.i:                                       ; preds = %cleanup.thread.i.if.end27.i_crit_edge, %if.end7.i.if.end27.i_crit_edge
  %dst.0.i = phi ptr [ %call4.i, %if.end7.i.if.end27.i_crit_edge ], [ %call20.i, %cleanup.thread.i.if.end27.i_crit_edge ]
  %n.1.i = phi ptr [ %call.i.i, %if.end7.i.if.end27.i_crit_edge ], [ %call.i271.i, %cleanup.thread.i.if.end27.i_crit_edge ]
  %tobool28.not.i = icmp eq ptr %n.1.i, null
  br i1 %tobool28.not.i, label %if.end27.i.if.end136.i_crit_edge, label %lor.lhs.false.i

if.end27.i.if.end136.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136.i

lor.lhs.false.i:                                  ; preds = %if.end27.i
  %dev.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i, i32 0, i32 25
  %141 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i, align 4
  %tobool29.not.i = icmp eq ptr %142, null
  br i1 %tobool29.not.i, label %lor.lhs.false.i.if.then135.i_crit_edge, label %if.end31.i

lor.lhs.false.i.if.then135.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135.i

if.end31.i:                                       ; preds = %lor.lhs.false.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 15
  %143 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %144, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end31.i.if.end36.i_crit_edge, label %if.then34.i

if.end31.i.if.end36.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %call35.i = call ptr @vlan_dev_real_dev(ptr noundef nonnull %142) #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end36.i_crit_edge
  %ndev.0.i = phi ptr [ %call35.i, %if.then34.i ], [ %142, %if.end31.i.if.end36.i_crit_edge ]
  %nports.i = getelementptr inbounds %struct.adapter, ptr %116, i32 0, i32 15, i32 20
  %145 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nports.i, align 4
  %conv37.i = zext i8 %146 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp38332.not.i = icmp eq i8 %146, 0
  br i1 %cmp38332.not.i, label %if.end36.i.if.then135.i_crit_edge, label %for.body.lr.ph.i

if.end36.i.if.then135.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135.i

for.body.lr.ph.i:                                 ; preds = %if.end36.i
  %ports.i = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 6
  %147 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ports.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0334.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %found.0.off0333.i = phi i1 [ false, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i307 = getelementptr ptr, ptr %148, i32 %i.0334.i
  %149 = ptrtoint ptr %arrayidx.i307 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i307, align 4
  %cmp40.i = icmp eq ptr %150, %ndev.0.i
  %spec.select.i = select i1 %cmp40.i, i1 true, i1 %found.0.off0333.i
  %inc.i = add nuw nsw i32 %i.0334.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv37.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %spec.select.i, label %if.end46.i, label %for.end.i.if.then135.i_crit_edge

for.end.i.if.then135.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135.i

if.end46.i:                                       ; preds = %for.end.i
  %call47.i = call i32 @cxgb4_port_idx(ptr noundef %ndev.0.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %151 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %151, i32 noundef 2848, i32 noundef 384) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end46.i.if.then135.i_crit_edge, label %if.end.i.i

if.end46.i.if.then135.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135.i

if.end.i.i:                                       ; preds = %if.end46.i
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 128, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %txdata_skb_cache.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 8
  %152 = ptrtoint ptr %txdata_skb_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call.i.i.i, ptr %txdata_skb_cache.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.then135.sink.split.i_crit_edge, label %if.end52.i

if.end.i.i.if.then135.sink.split.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135.sink.split.i

if.end52.i:                                       ; preds = %if.end.i.i
  %kref.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 9
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  %153 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 1, ptr %kref.i.i, align 8
  %cdev6.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %cdev6.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %5, ptr %cdev6.i.i, align 4
  %txq.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 4
  %lock.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 4, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %155 = ptrtoint ptr %txq.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %txq.i.i, ptr %txq.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %156 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %txq.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  %157 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %qlen.i.i.i.i, align 8
  %wr_skb_head.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 5
  %158 = ptrtoint ptr %wr_skb_head.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %wr_skb_head.i.i, align 8
  %wr_skb_tail.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 6
  %159 = ptrtoint ptr %wr_skb_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %wr_skb_tail.i.i, align 4
  %mss.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 21
  %160 = ptrtoint ptr %mss.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 65536, ptr %mss.i.i, align 8
  %tlshws.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 37
  %ofld.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 37, i32 2
  %161 = ptrtoint ptr %ofld.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %ofld.i.i, align 1
  %txkey.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 37, i32 16
  %162 = ptrtoint ptr %txkey.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %txkey.i.i, align 8
  %rxkey.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 37, i32 17
  %163 = ptrtoint ptr %rxkey.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %rxkey.i.i, align 4
  %mfs.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 37, i32 15
  %164 = ptrtoint ptr %mfs.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 16384, ptr %mfs.i.i, align 4
  %lock.i26.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 37, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i26.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %165 = ptrtoint ptr %tlshws.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %tlshws.i.i, ptr %tlshws.i.i, align 8
  %prev.i.i27.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 37, i32 0, i32 0, i32 0, i32 1
  %166 = ptrtoint ptr %prev.i.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %tlshws.i.i, ptr %prev.i.i27.i.i, align 4
  %qlen.i.i28.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 37, i32 0, i32 1
  %167 = ptrtoint ptr %qlen.i.i28.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %qlen.i.i28.i.i, align 8
  %lldi.i = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 2
  %168 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %lldi.i, align 4
  %l2t.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %l2t.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %l2t.i, align 4
  %call53.i = call ptr @cxgb4_l2t_get(ptr noundef %171, ptr noundef nonnull %n.1.i, ptr noundef %ndev.0.i, i32 noundef 0) #10
  %l2t_entry.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 2
  %172 = ptrtoint ptr %l2t_entry.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call53.i, ptr %l2t_entry.i, align 8
  %tobool55.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool55.not.i, label %if.end52.i.if.then135.sink.split.i_crit_edge, label %if.end57.i

if.end52.i.if.then135.sink.split.i_crit_edge:     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135.sink.split.i

if.end57.i:                                       ; preds = %if.end52.i
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 72
  %173 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call7.i.i.i.i, ptr %sk_user_data.i, align 4
  %sk_backlog_rcv.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 80
  %174 = ptrtoint ptr %sk_backlog_rcv.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @chtls_backlog_rcv, ptr %sk_backlog_rcv.i, align 4
  %175 = ptrtoint ptr %network_hdr.0 to i32
  call void @__asan_load1_noabort(i32 %175)
  %bf.load.i = load i8, ptr %network_hdr.0, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp61.i = icmp eq i8 %bf.lshr.mask.i, 64
  br i1 %cmp61.i, label %if.then63.i, label %if.else70.i

if.then63.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %saddr64.i = getelementptr inbounds %struct.iphdr, ptr %network_hdr.0, i32 0, i32 8
  %176 = ptrtoint ptr %saddr64.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %saddr64.i, align 4
  %178 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %call1.i, align 8
  %daddr66.i = getelementptr inbounds %struct.iphdr, ptr %network_hdr.0, i32 0, i32 9
  %179 = ptrtoint ptr %daddr66.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %daddr66.i, align 4
  %skc_rcv_saddr.i308 = getelementptr inbounds %struct.anon, ptr %call1.i, i32 0, i32 1
  %181 = ptrtoint ptr %skc_rcv_saddr.i308 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %skc_rcv_saddr.i308, align 4
  %182 = load i32, ptr %daddr66.i, align 4
  br label %if.end96.i

if.else70.i:                                      ; preds = %if.end57.i
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 4
  %183 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %184 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else70.i.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.else70.i.inet6_sk.exit.i_crit_edge:            ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %call1.i, i32 0, i32 1
  %185 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.else70.i.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %186, %cond.true.i.i ], [ null, %if.else70.i.inet6_sk.exit.i_crit_edge ]
  %187 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load volatile i8, ptr %skc_state, align 2
  %conv.i.i275.i = zext i8 %188 to i32
  %shl.i.i276.i = shl nuw i32 1, %conv.i.i275.i
  %and.i.i277.i = and i32 %shl.i.i276.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i277.i)
  %tobool.i.not.i278.i = icmp eq i32 %and.i.i277.i, 0
  br i1 %tobool.i.not.i278.i, label %inet6_sk.exit.i.inet6_sk.exit282.i_crit_edge, label %cond.true.i280.i

inet6_sk.exit.i.inet6_sk.exit282.i_crit_edge:     ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit282.i

cond.true.i280.i:                                 ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i279.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %189 = ptrtoint ptr %pinet6.i279.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pinet6.i279.i, align 8
  br label %inet6_sk.exit282.i

inet6_sk.exit282.i:                               ; preds = %cond.true.i280.i, %inet6_sk.exit.i.inet6_sk.exit282.i_crit_edge
  %cond.i281.i = phi ptr [ %190, %cond.true.i280.i ], [ null, %inet6_sk.exit.i.inet6_sk.exit282.i_crit_edge ]
  %inet6.i = getelementptr inbounds %struct.tcp6_sock, ptr %call1.i, i32 0, i32 1
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %call1.i, i32 0, i32 1
  %191 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %inet6.i, ptr %pinet6.i, align 8
  %192 = call ptr @memcpy(ptr %cond.i.i, ptr %cond.i281.i, i32 112)
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 10
  %skc_v6_daddr78.i = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 10
  %193 = call ptr @memcpy(ptr %skc_v6_daddr.i, ptr %skc_v6_daddr78.i, i32 16)
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 11
  %skc_v6_rcv_saddr82.i = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 11
  %194 = call ptr @memcpy(ptr %skc_v6_rcv_saddr.i, ptr %skc_v6_rcv_saddr82.i, i32 16)
  %195 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i284.i = zext i8 %196 to i32
  %shl.i.i285.i = shl nuw i32 1, %conv.i.i284.i
  %and.i.i286.i = and i32 %shl.i.i285.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i286.i)
  %tobool.i.not.i287.i = icmp eq i32 %and.i.i286.i, 0
  br i1 %tobool.i.not.i287.i, label %inet6_sk.exit282.i.inet6_sk.exit291.i_crit_edge, label %cond.true.i289.i

inet6_sk.exit282.i.inet6_sk.exit291.i_crit_edge:  ; preds = %inet6_sk.exit282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit291.i

cond.true.i289.i:                                 ; preds = %inet6_sk.exit282.i
  call void @__sanitizer_cov_trace_pc() #12
  %197 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit291.i

inet6_sk.exit291.i:                               ; preds = %cond.true.i289.i, %inet6_sk.exit282.i.inet6_sk.exit291.i_crit_edge
  %cond.i290.i = phi ptr [ %198, %cond.true.i289.i ], [ null, %inet6_sk.exit282.i.inet6_sk.exit291.i_crit_edge ]
  %199 = call ptr @memcpy(ptr %cond.i290.i, ptr %skc_v6_rcv_saddr82.i, i32 16)
  %ipv6_fl_list.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 17
  %200 = ptrtoint ptr %ipv6_fl_list.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %ipv6_fl_list.i, align 4
  %pktoptions.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 19
  %201 = ptrtoint ptr %pktoptions.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %pktoptions.i, align 4
  %202 = ptrtoint ptr %skc_bound_dev_if102 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %skc_bound_dev_if102, align 4
  %skc_bound_dev_if91.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 6
  %204 = ptrtoint ptr %skc_bound_dev_if91.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %skc_bound_dev_if91.i, align 4
  %inet_opt.i = getelementptr inbounds %struct.inet_sock, ptr %call1.i, i32 0, i32 5
  %205 = ptrtoint ptr %inet_opt.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %inet_opt.i, align 4
  %206 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 2130706438, ptr %call1.i, align 8
  br label %if.end96.i

if.end96.i:                                       ; preds = %inet6_sk.exit291.i, %if.then63.i
  %.sink.i = phi i32 [ 2130706438, %inet6_sk.exit291.i ], [ %182, %if.then63.i ]
  %inet_saddr95.i = getelementptr inbounds %struct.inet_sock, ptr %call1.i, i32 0, i32 2
  %207 = ptrtoint ptr %inet_saddr95.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %.sink.i, ptr %inet_saddr95.i, align 4
  %208 = ptrtoint ptr %and3320.in.in to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %and3320.in.in, align 4
  %and.i309 = and i32 %209, 16777215
  %210 = ptrtoint ptr %ts_recent to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %and.i309, ptr %ts_recent, align 8
  call void @sk_setup_caps(ptr noundef %call1.i, ptr noundef %dst.0.i) #10
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %211 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %sk_destruct.i = getelementptr inbounds %struct.tls_context, ptr %212, i32 0, i32 17
  %213 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sk_destruct.i, align 4
  %sk_destruct98.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 82
  %215 = ptrtoint ptr %sk_destruct98.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %214, ptr %sk_destruct98.i, align 4
  %sk_prot_creator.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 49
  %216 = ptrtoint ptr %sk_prot_creator.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %sk_prot_creator.i, align 4
  %sk_prot_creator99.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 49
  %218 = ptrtoint ptr %sk_prot_creator99.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %217, ptr %sk_prot_creator99.i, align 4
  %219 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call1.i, ptr %call7.i.i.i.i, align 8
  %passive_reap_next.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 36
  %220 = ptrtoint ptr %passive_reap_next.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %oreq.0, ptr %passive_reap_next.i, align 4
  %call101.i = call i32 @cxgb4_port_chan(ptr noundef %ndev.0.i) #10
  %tx_chan.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 23
  %221 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %call101.i, ptr %tx_chan.i, align 8
  %conv102.i = trunc i32 %call47.i to i8
  %port_id103.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 29
  %222 = ptrtoint ptr %port_id103.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv102.i, ptr %port_id103.i, align 8
  %egress_dev.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 3
  %223 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %ndev.0.i, ptr %egress_dev.i, align 4
  %224 = ptrtoint ptr %and3320.in.in to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %and3320.in.in, align 4
  %shr105.i = lshr i32 %225, 24
  %conv107.i = trunc i32 %shr105.i to i8
  %tos.i310 = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 30
  %226 = ptrtoint ptr %tos.i310 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv107.i, ptr %tos.i310, align 1
  %speed.i.i = getelementptr i8, ptr %ndev.0.i, i32 2352
  %227 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %speed.i.i, align 4
  %div.i.i = udiv i32 %228, 10000
  %conv.i.i311 = trunc i32 %div.i.i to i8
  %rcv_win.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i311)
  %tobool.not.i292.i = icmp eq i8 %conv.i.i311, 0
  %conv1.i.i = shl i32 %div.i.i, 18
  %mul.i.i = and i32 %conv1.i.i, 66846720
  %storemerge16.i.i = select i1 %tobool.not.i292.i, i32 262144, i32 %mul.i.i
  %229 = ptrtoint ptr %rcv_win.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %storemerge16.i.i, ptr %rcv_win.i.i, align 8
  %snd_win.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 34
  %230 = ptrtoint ptr %snd_win.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %storemerge16.i.i, ptr %snd_win.i.i, align 4
  %rcv_wnd.i = getelementptr inbounds %struct.tcp_sock, ptr %call1.i, i32 0, i32 79
  %231 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %storemerge16.i.i, ptr %rcv_wnd.i, align 8
  %232 = load i32, ptr %snd_win.i.i, align 4
  %sndbuf.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 25
  %233 = ptrtoint ptr %sndbuf.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %sndbuf.i, align 8
  %ulp_mode.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 22
  %234 = ptrtoint ptr %ulp_mode.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 8, ptr %ulp_mode.i, align 4
  %235 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %lldi.i, align 4
  %nrxq.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %236, i32 0, i32 8
  %237 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %nrxq.i, align 4
  %nchan.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %236, i32 0, i32 11
  %239 = ptrtoint ptr %nchan.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load111.i = load i8, ptr %nchan.i, align 2
  %bf.lshr112.i = lshr i8 %bf.load111.i, 4
  %div.rhs.trunc.i = zext i8 %bf.lshr112.i to i16
  %div331.i = udiv i16 %238, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div331.i to i32
  %conv114.i = and i32 %call47.i, 65535
  %mul.i = mul nuw i32 %conv114.i, %div.zext.i
  %round_robin_cnt.i = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 23
  %240 = ptrtoint ptr %round_robin_cnt.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %round_robin_cnt.i, align 4
  %inc115.i = add i32 %241, 1
  store i32 %inc115.i, ptr %round_robin_cnt.i, align 4
  %rem.i = urem i32 %241, %div.zext.i
  %add.i = add nuw i32 %rem.i, %mul.i
  %rxq_ids.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %236, i32 0, i32 6
  %242 = ptrtoint ptr %rxq_ids.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rxq_ids.i, align 4
  %arrayidx117.i = getelementptr i16, ptr %243, i32 %add.i
  %244 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %arrayidx117.i, align 2
  %conv118.i = zext i16 %245 to i32
  %rss_qid.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 18
  %246 = ptrtoint ptr %rss_qid.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv118.i, ptr %rss_qid.i, align 4
  %ntxq.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %236, i32 0, i32 9
  %247 = ptrtoint ptr %ntxq.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %ntxq.i, align 2
  %conv120.i = zext i16 %248 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv120.i)
  %cmp121.i = icmp slt i32 %add.i, %conv120.i
  %add.mul.i = select i1 %cmp121.i, i32 %add.i, i32 %mul.i
  %txq_idx.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 17
  %249 = ptrtoint ptr %txq_idx.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %add.mul.i, ptr %txq_idx.i, align 8
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 21
  %250 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %sk_sndbuf.i, align 4
  %252 = ptrtoint ptr %sndbuf.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %sndbuf.i, align 8
  %smt_idx.i = getelementptr i8, ptr %ndev.0.i, i32 2966
  %253 = ptrtoint ptr %smt_idx.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %smt_idx.i, align 2
  %conv127.i = zext i8 %254 to i32
  %smac_idx.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 28
  %255 = ptrtoint ptr %smac_idx.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %conv127.i, ptr %smac_idx.i, align 4
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 15
  %256 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load volatile i32, ptr %sk_rcvbuf.i.i, align 8
  %skc_net.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 9
  %258 = ptrtoint ptr %skc_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %skc_net.i.i.i.i, align 4
  %sysctl_tcp_adv_win_scale.i.i.i = getelementptr inbounds %struct.net, ptr %259, i32 0, i32 35, i32 85
  %260 = ptrtoint ptr %sysctl_tcp_adv_win_scale.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %sysctl_tcp_adv_win_scale.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %261)
  %cmp.i.i293.i = icmp slt i32 %261, 1
  %sub.i.i.i = sub i32 0, %261
  %shr.i.i.i = ashr i32 %257, %sub.i.i.i
  %shr1.i.i.i = ashr i32 %257, %261
  %sub2.i.i.i = sub i32 %257, %shr1.i.i.i
  %cond.i.i.i = select i1 %cmp.i.i293.i, i32 %shr.i.i.i, i32 %sub2.i.i.i
  %sysctl_tcp_window_scaling.i = getelementptr inbounds %struct.net, ptr %259, i32 0, i32 35, i32 73
  %262 = ptrtoint ptr %sysctl_tcp_window_scaling.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %sysctl_tcp_window_scaling.i, align 1
  %window_clamp.i = getelementptr inbounds %struct.tcp_sock, ptr %call1.i, i32 0, i32 29
  %264 = ptrtoint ptr %window_clamp.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %window_clamp.i, align 8
  %266 = call i32 @llvm.umin.i32(i32 %cond.i.i.i, i32 134217727) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool.not.i295.i = icmp ne i32 %265, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %265)
  %cmp1.i.i = icmp sgt i32 %266, %265
  %or.cond.i.i = select i1 %tobool.not.i295.i, i1 %cmp1.i.i, i1 false
  %space.addr.0.i.i = select i1 %or.cond.i.i, i32 %265, i32 %266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool4.not.i.i = icmp eq i8 %263, 0
  br i1 %tobool4.not.i.i, label %if.end96.i.select_rcv_wscale.exit.i_crit_edge, label %if.end96.i.while.cond.i.i_crit_edge

if.end96.i.while.cond.i.i_crit_edge:              ; preds = %if.end96.i
  br label %while.cond.i.i

if.end96.i.select_rcv_wscale.exit.i_crit_edge:    ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %select_rcv_wscale.exit.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end96.i.while.cond.i.i_crit_edge
  %wscale.0.i.i = phi i32 [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ 0, %if.end96.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %wscale.0.i.i)
  %cmp6.i.i = icmp ult i32 %wscale.0.i.i, 14
  %shl.i.i = shl nuw nsw i32 65535, %wscale.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %space.addr.0.i.i)
  %cmp7.i.i = icmp slt i32 %shl.i.i, %space.addr.0.i.i
  %or.cond16.i.i = select i1 %cmp6.i.i, i1 %cmp7.i.i, i1 false
  %inc.i.i = add nuw nsw i32 %wscale.0.i.i, 1
  br i1 %or.cond16.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.cond.i.i.select_rcv_wscale.exit.i_crit_edge

while.cond.i.i.select_rcv_wscale.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %select_rcv_wscale.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

select_rcv_wscale.exit.i:                         ; preds = %while.cond.i.i.select_rcv_wscale.exit.i_crit_edge, %if.end96.i.select_rcv_wscale.exit.i_crit_edge
  %wscale.1.i.i = phi i32 [ 0, %if.end96.i.select_rcv_wscale.exit.i_crit_edge ], [ %wscale.0.i.i, %while.cond.i.i.select_rcv_wscale.exit.i_crit_edge ]
  %rcv_wscale.i = getelementptr inbounds %struct.tcp_sock, ptr %call1.i, i32 0, i32 61, i32 4
  %267 = trunc i32 %wscale.1.i.i to i24
  %268 = ptrtoint ptr %rcv_wscale.i to i32
  call void @__asan_loadN_noabort(i32 %268, i32 3)
  %bf.load133.i = load i24, ptr %rcv_wscale.i, align 4
  %bf.value.i = shl nuw nsw i24 %267, 8
  %bf.shl.i = and i24 %bf.value.i, 3840
  %bf.clear.i = and i24 %bf.load133.i, -3841
  %bf.set.i = or i24 %bf.shl.i, %bf.clear.i
  store i24 %bf.set.i, ptr %rcv_wscale.i, align 4
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #10
  %269 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %269, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %select_rcv_wscale.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end139_crit_edge, label %if.then10.i.i.i.i.i, !prof !172

if.end5.i.i.i.i.i.if.end139_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #10
  br label %if.end139

if.then.i.i:                                      ; preds = %select_rcv_wscale.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  call void @neigh_destroy(ptr noundef nonnull %n.1.i) #10
  br label %if.end139

if.then135.sink.split.i:                          ; preds = %if.end52.i.if.then135.sink.split.i_crit_edge, %if.end.i.i.if.then135.sink.split.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %if.then135.i

if.then135.i:                                     ; preds = %if.then135.sink.split.i, %if.end46.i.if.then135.i_crit_edge, %for.end.i.if.then135.i_crit_edge, %if.end36.i.if.then135.i_crit_edge, %lor.lhs.false.i.if.then135.i_crit_edge
  %refcnt.i299.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i, i32 0, i32 6
  %call.i.i.i.i.i.i300.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i299.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  call void @llvm.prefetch.p0(ptr %refcnt.i299.i, i32 1, i32 3, i32 1) #10
  %270 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i299.i, ptr %refcnt.i299.i, i32 1, ptr elementtype(i32) %refcnt.i299.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i301.i = extractvalue { i32, i32, i32 } %270, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i301.i)
  %cmp.i.i.i.i302.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i301.i, 1
  br i1 %cmp.i.i.i.i302.i, label %if.then.i306.i, label %if.end5.i.i.i.i304.i

if.end5.i.i.i.i304.i:                             ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i301.i)
  %.not.i.i.i.i303.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i301.i, 0
  br i1 %.not.i.i.i.i303.i, label %if.end5.i.i.i.i304.i.if.end136.i_crit_edge, label %if.then10.i.i.i.i305.i, !prof !172

if.end5.i.i.i.i304.i.if.end136.i_crit_edge:       ; preds = %if.end5.i.i.i.i304.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136.i

if.then10.i.i.i.i305.i:                           ; preds = %if.end5.i.i.i.i304.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i299.i, i32 noundef 3) #10
  br label %if.end136.i

if.then.i306.i:                                   ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  call void @neigh_destroy(ptr noundef nonnull %n.1.i) #10
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then.i306.i, %if.then10.i.i.i.i305.i, %if.end5.i.i.i.i304.i.if.end136.i_crit_edge, %if.end27.i.if.end136.i_crit_edge, %cleanup.thread.i.if.end136.i_crit_edge, %if.end7.i.if.end136.i_crit_edge
  %dst.0317.i = phi ptr [ %dst.0.i, %if.end27.i.if.end136.i_crit_edge ], [ %dst.0.i, %if.end5.i.i.i.i304.i.if.end136.i_crit_edge ], [ %dst.0.i, %if.then10.i.i.i.i305.i ], [ %dst.0.i, %if.then.i306.i ], [ %call4.i, %if.end7.i.if.end136.i_crit_edge ], [ %call20.i, %cleanup.thread.i.if.end136.i_crit_edge ]
  call void @dst_release(ptr noundef %dst.0317.i) #10
  br label %free_sk.i

free_sk.i:                                        ; preds = %if.end136.i, %cleanup.i, %if.then3.i.free_sk.i_crit_edge
  call void @inet_csk_prepare_forced_close(ptr noundef %call1.i) #10
  call void @tcp_done(ptr noundef %call1.i) #10
  br label %free_oreq.i

free_oreq.i:                                      ; preds = %free_sk.i, %if.end135.free_oreq.i_crit_edge
  %271 = getelementptr inbounds %struct.sock_common, ptr %oreq.0, i32 0, i32 13
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %271, align 8
  %tobool.not.i309.i = icmp eq ptr %273, null
  br i1 %tobool.not.i309.i, label %free_oreq.i.chtls_recv_sock.exit.thread_crit_edge, label %if.then.i310.i

free_oreq.i.chtls_recv_sock.exit.thread_crit_edge: ; preds = %free_oreq.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_recv_sock.exit.thread

if.then.i310.i:                                   ; preds = %free_oreq.i
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %273, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #10
  %274 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %274, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i310.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.chtls_recv_sock.exit.thread_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !172

if.end5.i.i.i.i.i.i.chtls_recv_sock.exit.thread_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_recv_sock.exit.thread

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef 3) #10
  br label %chtls_recv_sock.exit.thread

if.then.i.i.i:                                    ; preds = %if.then.i310.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  call void @sk_free(ptr noundef nonnull %273) #10
  br label %chtls_recv_sock.exit.thread

chtls_recv_sock.exit.thread:                      ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.chtls_recv_sock.exit.thread_crit_edge, %free_oreq.i.chtls_recv_sock.exit.thread_crit_edge
  %rsk_ops.i.i = getelementptr inbounds %struct.request_sock, ptr %oreq.0, i32 0, i32 7
  %275 = ptrtoint ptr %rsk_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rsk_ops.i.i, align 4
  %slab.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %276, i32 0, i32 2
  %277 = ptrtoint ptr %slab.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %slab.i.i, align 4
  call void @kmem_cache_free(ptr noundef %278, ptr noundef %oreq.0) #10
  br label %reject

if.end139:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end139_crit_edge
  call fastcc void @local_bh_disable() #10
  %call.i297.i = call i32 @__inet_inherit_port(ptr noundef %sk, ptr noundef %call1.i) #10
  call fastcc void @local_bh_enable() #10
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %call7.i.i.i.i, i32 0, i32 10
  %279 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %flags.i.i, align 4
  %or.i.i.i = or i32 %280, 4096
  store i32 %or.i.i.i, ptr %flags.i.i, align 4
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  %icsk_ulp_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %call1.i, i32 0, i32 12
  %281 = ptrtoint ptr %icsk_ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %icsk_ulp_ops.i, align 4
  %owner.i = getelementptr inbounds %struct.tcp_ulp_ops, ptr %282, i32 0, i32 8
  %283 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %owner.i, align 4
  %call1.i312 = call zeroext i1 @try_module_get(ptr noundef %284) #10
  br i1 %call1.i312, label %if.end143, label %if.end139.reject_crit_edge

if.end139.reject_crit_edge:                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %reject

if.end143:                                        ; preds = %if.end139
  call fastcc void @inet_csk_reqsk_queue_added(ptr noundef %sk)
  %285 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %call1.i, ptr %285, align 4
  call void @chtls_install_cpl_ops(ptr noundef nonnull %call1.i) #10
  %287 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %tids, align 4
  %skc_family146 = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 3
  %289 = ptrtoint ptr %skc_family146 to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %skc_family146, align 8
  call fastcc void @cxgb4_insert_tid(ptr noundef %288, ptr noundef nonnull %call1.i, i32 noundef %and, i16 noundef zeroext %290)
  %291 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call152 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %land.lhs.true154, label %if.end143.do.end162_crit_edge

if.end143.do.end162_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end162

land.lhs.true154:                                 ; preds = %if.end143
  %call155 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %land.lhs.true154.do.end162_crit_edge, label %land.lhs.true157

land.lhs.true154.do.end162_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end162

land.lhs.true157:                                 ; preds = %land.lhs.true154
  %.b278 = load i1, ptr @chtls_pass_accept_request.__warned, align 1
  br i1 %.b278, label %land.lhs.true157.do.end162_crit_edge, label %if.then159

land.lhs.true157.do.end162_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end162

if.then159:                                       ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_pass_accept_request.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1410, ptr noundef nonnull @.str.1) #10
  br label %do.end162

do.end162:                                        ; preds = %if.then159, %land.lhs.true157.do.end162_crit_edge, %land.lhs.true154.do.end162_crit_edge, %if.end143.do.end162_crit_edge
  %293 = ptrtoint ptr %292 to i32
  %and165 = and i32 %293, -4
  %294 = inttoptr i32 %and165 to ptr
  %295 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %tids, align 4
  %call167 = call fastcc ptr @lookup_stid(ptr noundef %296, i32 noundef %and3320)
  %listen_ctx168 = getelementptr inbounds %struct.chtls_sock, ptr %294, i32 0, i32 39
  %297 = ptrtoint ptr %listen_ctx168 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call167, ptr %listen_ctx168, align 8
  %synq = getelementptr inbounds %struct.listen_ctx, ptr %call167, i32 0, i32 2
  %synq169 = getelementptr inbounds %struct.chtls_sock, ptr %294, i32 0, i32 38
  %prev.i.i = getelementptr inbounds %struct.listen_ctx, ptr %call167, i32 0, i32 2, i32 0, i32 0, i32 1
  %298 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %prev.i.i, align 4
  %300 = ptrtoint ptr %synq169 to i32
  call void @__asan_store4_noabort(i32 %300)
  store volatile ptr %synq, ptr %synq169, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %294, i32 0, i32 38, i32 1
  %301 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile ptr %299, ptr %prev10.i.i.i, align 4
  store volatile ptr %synq169, ptr %prev.i.i, align 4
  %302 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %302)
  store volatile ptr %synq169, ptr %299, align 4
  %qlen.i.i.i313 = getelementptr inbounds %struct.listen_ctx, ptr %call167, i32 0, i32 2, i32 1
  %303 = ptrtoint ptr %qlen.i.i.i313 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %qlen.i.i.i313, align 4
  %add.i.i.i = add i32 %304, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i313, align 4
  call fastcc void @chtls_pass_accept_rpl(ptr noundef nonnull %call.i, ptr noundef %add.ptr, i32 noundef %and)
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

reject:                                           ; preds = %if.end139.reject_crit_edge, %chtls_recv_sock.exit.thread, %if.end50.reject_crit_edge, %if.end18.reject_crit_edge, %if.end14.reject_crit_edge, %if.end10.reject_crit_edge
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %305 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool.i.not.i.i314 = icmp eq i32 %306, 0
  br i1 %tobool.i.not.i.i314, label %mk_tid_release.exit, label %do.body3.i.i, !prof !172

do.body3.i.i:                                     ; preds = %reject
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

mk_tid_release.exit:                              ; preds = %reject
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %307 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i315 = getelementptr i8, ptr %308, i32 32
  store ptr %add.ptr.i.i315, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %309 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %310, 32
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %311 = getelementptr inbounds i8, ptr %308, i32 16
  %312 = call ptr @memset(ptr %311, i32 0, i32 16)
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %313 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 1, ptr %queue_mapping1.i.i.i, align 8
  %314 = ptrtoint ptr %308 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 83886088, ptr %308, align 8
  %shl.i = shl i32 %3, 8
  %or.i = or i32 %shl.i, 2
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %308, i32 0, i32 1
  %315 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %308, i32 0, i32 2
  %316 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 0, ptr %wr_lo.i, align 8
  %or4.i = or i32 %and, 436207616
  %317 = ptrtoint ptr %311 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %or4.i, ptr %311, align 8
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 2
  %318 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %lldi, align 4
  %ports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %319, i32 0, i32 3
  %320 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ports, align 4
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %321, align 4
  %call170 = call i32 @cxgb4_ofld_send(ptr noundef %323, ptr noundef nonnull %call.i) #10
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %mk_tid_release.exit, %do.end162, %if.then8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_reqsk_alloc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inet_csk_reqsk_queue_added(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %young.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %young.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %young.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %young.i, ptr %young.i, i32 1, ptr elementtype(i32) %young.i) #10, !srcloc !190
  %qlen.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 3
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qlen.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %qlen.i, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qlen.i, ptr %qlen.i, i32 1, ptr elementtype(i32) %qlen.i) #10, !srcloc !190
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chtls_install_cpl_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_insert_tid(ptr noundef %t, ptr noundef %data, i32 noundef %tid, i16 noundef zeroext %family) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 128
  %tid_base = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %tid_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tid_base, align 4
  %sub = sub i32 %tid, %3
  %arrayidx = getelementptr ptr, ptr %1, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %arrayidx, align 4
  %hash_base = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 8
  %5 = ptrtoint ptr %hash_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash_base, align 32
  %7 = add i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %tid)
  %.not = icmp ult i32 %7, %tid
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %family)
  %cmp2 = icmp eq i16 %family, 10
  br i1 %.not, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %hash_tids_in_use = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hash_tids_in_use, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hash_tids_in_use, i32 1, i32 3, i32 1) #10
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use, ptr %hash_tids_in_use, i32 2, ptr elementtype(i32) %hash_tids_in_use) #10, !srcloc !190
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use, ptr %hash_tids_in_use, i32 1, ptr elementtype(i32) %hash_tids_in_use) #10, !srcloc !190
  br label %if.end14

if.else6:                                         ; preds = %entry
  %tids_in_use = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 36
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tids_in_use, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tids_in_use, i32 1, i32 3, i32 1) #10
  br i1 %cmp2, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use, ptr %tids_in_use, i32 2, ptr elementtype(i32) %tids_in_use) #10, !srcloc !190
  br label %if.end14

if.else11:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use, ptr %tids_in_use, i32 1, ptr elementtype(i32) %tids_in_use) #10, !srcloc !190
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then10, %if.else, %if.then4
  %conns_in_use = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 38
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %conns_in_use, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %conns_in_use, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conns_in_use, ptr %conns_in_use, i32 1, ptr elementtype(i32) %conns_in_use) #10, !srcloc !190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_pass_accept_rpl(ptr noundef %skb, ptr nocapture noundef readonly %req, i32 noundef %tid) unnamed_addr #0 align 64 {
entry:
  %mtu_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 72
  %3 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_user_data, align 4
  %tid1 = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %tid1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tid, ptr %tid1, align 8
  %cdev = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  %lldi2 = getelementptr inbounds %struct.chtls_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %lldi2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldi2, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !172

do.body3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

__skb_put_zero.exit:                              ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 48
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %15, 48
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %16 = getelementptr inbounds i8, ptr %13, i32 16
  %17 = call ptr @memset(ptr %16, i32 0, i32 32)
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 83886112, ptr %13, align 8
  %shl = shl i32 %tid, 8
  %or = or i32 %shl, 3
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %wr_lo, align 8
  %21 = ptrtoint ptr %tid1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tid1, align 8
  %or7 = or i32 %22, 33554432
  %ot = getelementptr inbounds %struct.cpl_t5_pass_accept_rpl, ptr %13, i32 0, i32 1
  %23 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or7, ptr %ot, align 8
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 19
  %24 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %__skb_put_zero.exit.__sk_dst_get.exit_crit_edge

__skb_put_zero.exit.__sk_dst_get.exit_crit_edge:  ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %__skb_put_zero.exit
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__sk_dst_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 2068, ptr noundef nonnull @.str.1) #10
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %__skb_put_zero.exit.__sk_dst_get.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mtu.i, align 4
  %call.i = tail call i32 %29(ptr noundef %25) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtu_idx.i) #10
  %30 = ptrtoint ptr %mtu_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %mtu_idx.i, align 4, !annotation !191
  %tcpopt.i = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %req, i32 0, i32 7
  %31 = ptrtoint ptr %tcpopt.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tcpopt.i, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 8
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %sk_dst_cache.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %__sk_dst_get.exit.__sk_dst_get.exit.i_crit_edge

__sk_dst_get.exit.__sk_dst_get.exit.i_crit_edge:  ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %__sk_dst_get.exit
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %lor.lhs.false.i.i, label %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit.i

lor.lhs.false.i.i:                                ; preds = %lockdep_sock_is_held.exit.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i151 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i151, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge

lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__sk_dst_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 2068, ptr noundef nonnull @.str.1) #10
  br label %__sk_dst_get.exit.i

__sk_dst_get.exit.i:                              ; preds = %if.then.i.i, %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge, %__sk_dst_get.exit.__sk_dst_get.exit.i_crit_edge
  %37 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cdev, align 4
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %34, i32 0, i32 3
  %39 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %skc_family.i, align 8
  %tstamp.i = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %req, i32 0, i32 7, i32 2
  %41 = ptrtoint ptr %tstamp.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %tstamp.i, align 1
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %36, i32 0, i32 2
  %42 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %43, -4
  %44 = inttoptr i32 %and.i.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %44, i32 7
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i85.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i85.i, label %if.then.i86.i, label %__sk_dst_get.exit.i.dst_metric_advmss.exit.i_crit_edge

__sk_dst_get.exit.i.dst_metric_advmss.exit.i_crit_edge: ; preds = %__sk_dst_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_metric_advmss.exit.i

if.then.i86.i:                                    ; preds = %__sk_dst_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %36, i32 0, i32 1
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %default_advmss.i.i = getelementptr inbounds %struct.dst_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %default_advmss.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %default_advmss.i.i, align 16
  %call1.i.i = tail call i32 %50(ptr noundef %36) #10
  br label %dst_metric_advmss.exit.i

dst_metric_advmss.exit.i:                         ; preds = %if.then.i86.i, %__sk_dst_get.exit.i.dst_metric_advmss.exit.i_crit_edge
  %advmss.0.i.i = phi i32 [ %46, %__sk_dst_get.exit.i.dst_metric_advmss.exit.i_crit_edge ], [ %call1.i.i, %if.then.i86.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %40)
  %cmp.i = icmp eq i16 %40, 10
  %..i = select i1 %cmp.i, i32 60, i32 40
  %conv11.i = trunc i32 %advmss.0.i.i to i16
  %advmss.i = getelementptr inbounds %struct.tcp_sock, ptr %34, i32 0, i32 32
  %user_mss.i = getelementptr inbounds %struct.tcp_sock, ptr %34, i32 0, i32 61, i32 6
  %51 = ptrtoint ptr %user_mss.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %user_mss.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool13.not.i = icmp ne i16 %52, 0
  %conv12.i = zext i16 %52 to i32
  %conv15.i = and i32 %advmss.0.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i, i32 %conv12.i)
  %cmp19.i = icmp ugt i32 %conv15.i, %conv12.i
  %or.cond.i = select i1 %tobool13.not.i, i1 %cmp19.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i, i16 %52, i16 %conv11.i
  %conv27.i = zext i16 %spec.store.select.i to i32
  %sub.i = sub i32 %call.i, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv27.i)
  %cmp28.i = icmp ult i32 %sub.i, %conv27.i
  %conv32.i = trunc i32 %sub.i to i16
  %spec.select.i = select i1 %cmp28.i, i16 %conv32.i, i16 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool35.not.i = icmp ne i16 %32, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select.i, i16 %32)
  %cmp39.i = icmp ugt i16 %spec.select.i, %32
  %or.cond155 = select i1 %tobool35.not.i, i1 %cmp39.i, i1 false
  %spec.store.select = select i1 %or.cond155, i16 %32, i16 %spec.select.i
  %53 = ptrtoint ptr %advmss.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %spec.store.select, ptr %advmss.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i152 = icmp sgt i8 %bf.load.i, -1
  %tcpoptsz.0.i = select i1 %tobool.not.i152, i32 0, i32 12
  %lldi.i = getelementptr inbounds %struct.chtls_dev, ptr %38, i32 0, i32 2
  %54 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lldi.i, align 4
  %mtus.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %mtus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mtus.i, align 4
  %add45.i = add nuw nsw i32 %tcpoptsz.0.i, %..i
  %conv46.i = trunc i32 %add45.i to i16
  %58 = trunc i32 %tcpoptsz.0.i to i16
  %conv50.i = sub i16 %spec.store.select, %58
  %call51.i = call i32 @cxgb4_best_aligned_mtu(ptr noundef %57, i16 noundef zeroext %conv46.i, i16 noundef zeroext %conv50.i, i16 noundef zeroext 8, ptr noundef nonnull %mtu_idx.i) #10
  %sub56.i = sub i32 %call51.i, %..i
  %conv57.i = trunc i32 %sub56.i to i16
  %59 = ptrtoint ptr %advmss.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv57.i, ptr %advmss.i, align 8
  %icsk_pmtu_cookie.i = getelementptr inbounds %struct.inet_connection_sock, ptr %34, i32 0, i32 9
  %60 = ptrtoint ptr %icsk_pmtu_cookie.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call.i, ptr %icsk_pmtu_cookie.i, align 8
  %61 = ptrtoint ptr %mtu_idx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mtu_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtu_idx.i) #10
  %mtu_idx = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 27
  %63 = ptrtoint ptr %mtu_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %mtu_idx, align 8
  %rcv_wscale = getelementptr inbounds %struct.tcp_sock, ptr %2, i32 0, i32 61, i32 4
  %64 = ptrtoint ptr %rcv_wscale to i32
  call void @__asan_loadN_noabort(i32 %64, i32 3)
  %bf.load = load i24, ptr %rcv_wscale, align 4
  %l2t_entry = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 2
  %65 = ptrtoint ptr %l2t_entry to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %l2t_entry, align 8
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %idx, align 2
  %nonagle = getelementptr inbounds %struct.tcp_sock, ptr %2, i32 0, i32 37
  %69 = ptrtoint ptr %nonagle to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load20 = load i16, ptr %nonagle, align 4
  %tx_chan = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 23
  %70 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_chan, align 8
  %smac_idx = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 28
  %72 = ptrtoint ptr %smac_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %smac_idx, align 4
  %tos = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 30
  %74 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tos, align 1
  %rcv_wnd = getelementptr inbounds %struct.tcp_sock, ptr %2, i32 0, i32 79
  %76 = ptrtoint ptr %rcv_wnd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rcv_wnd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1047552, i32 %77)
  %cmp = icmp ult i32 %77, 1047552
  %78 = shl i32 %77, 2
  %phi.bo = and i32 %78, -4096
  %cond = select i1 %cmp, i32 %phi.bo, i32 4190208
  %rss_qid = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 18
  %79 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rss_qid, align 4
  %adapter_type = getelementptr inbounds %struct.cxgb4_lld_info, ptr %9, i32 0, i32 13
  %81 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %adapter_type, align 4
  %83 = and i8 %82, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %83)
  %cmp.i153.not = icmp eq i8 %83, 80
  %opt2.0.v = select i1 %cmp.i153.not, i32 1024, i32 1049600
  %opt2.0 = or i32 %opt2.0.v, %80
  %84 = ptrtoint ptr %tstamp.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load51 = load i8, ptr %tstamp.i, align 1
  %or55 = or i32 %opt2.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load51)
  %tobool53.not156 = icmp slt i8 %bf.load51, 0
  %opt2.1 = select i1 %tobool53.not156, i32 %or55, i32 %opt2.0
  %85 = and i8 %bf.load51, 64
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 24
  %88 = or i32 %opt2.1, %87
  %hdr_len = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %req, i32 0, i32 3
  %89 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hdr_len, align 4
  %add.ptr = getelementptr %struct.cpl_pass_accept_req, ptr %req, i32 1
  %shr65 = lshr i32 %90, 24
  %add.ptr67 = getelementptr i8, ptr %add.ptr, i32 %shr65
  %shr68 = lshr i32 %90, 14
  %and69 = and i32 %shr68, 1023
  %add.ptr70 = getelementptr i8, ptr %add.ptr67, i32 %and69
  %ece = getelementptr inbounds %struct.tcphdr, ptr %add.ptr70, i32 0, i32 4
  %91 = ptrtoint ptr %ece to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load71 = load i16, ptr %ece, align 4
  %92 = and i16 %bf.load71, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %92)
  %.not = icmp eq i16 %92, 192
  %or82 = or i32 %88, 134217728
  %opt2.3 = select i1 %.not, i32 %or82, i32 %88
  %conv43 = zext i32 %cond to i64
  %93 = trunc i24 %bf.load to i16
  %94 = lshr i16 %93, 8
  %bf.cast = and i16 %94, 15
  %conv = zext i16 %bf.cast to i64
  %shl11 = shl nuw nsw i64 %conv, 50
  %conv14 = zext i32 %62 to i64
  %shl15 = shl i64 %conv14, 60
  %or12 = or i64 %shl11, %shl15
  %conv17 = zext i16 %68 to i64
  %shl18 = shl nuw nsw i64 %conv17, 36
  %95 = lshr i16 %bf.load20, 4
  %.lobit = and i16 %95, 1
  %96 = xor i16 %.lobit, 1
  %97 = zext i16 %96 to i64
  %shl26 = shl nuw nsw i64 %97, 49
  %shl28 = shl i32 %71, 2
  %conv29 = zext i32 %shl28 to i64
  %conv31 = zext i32 %73 to i64
  %shl32 = shl nuw nsw i64 %conv31, 28
  %98 = lshr i8 %75, 2
  %99 = zext i8 %98 to i32
  %shl35 = shl nuw nsw i32 %99, 22
  %100 = zext i32 %shl35 to i64
  %or16 = or i64 %shl18, %or12
  %or19 = or i64 %or16, %conv29
  %or27 = or i64 %or19, %shl32
  %or30 = or i64 %or27, %shl26
  %or33 = or i64 %or30, %100
  %or38 = or i64 %or33, %conv43
  %or44 = or i64 %or38, 281474976712704
  %bf.lshr89 = lshr i24 %bf.load, 20
  %101 = and i24 %bf.lshr89, 1
  %bf.cast91 = zext i24 %101 to i32
  %shl93 = shl nuw nsw i32 %bf.cast91, 28
  %or86 = or i32 %shl93, %opt2.3
  %or94 = or i32 %or86, -2147188736
  %opt095 = getelementptr inbounds %struct.cpl_t5_pass_accept_rpl, ptr %13, i32 0, i32 3
  %102 = ptrtoint ptr %opt095 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %or44, ptr %opt095, align 8
  %opt296 = getelementptr inbounds %struct.cpl_t5_pass_accept_rpl, ptr %13, i32 0, i32 2
  %103 = ptrtoint ptr %opt296 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or94, ptr %opt296, align 4
  %call97 = call i32 @prandom_u32() #10
  %and98 = and i32 %call97, -8
  %sub99 = add i32 %and98, -1
  %iss = getelementptr inbounds %struct.cpl_t5_pass_accept_rpl, ptr %13, i32 0, i32 4
  %104 = ptrtoint ptr %iss to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub99, ptr %iss, align 8
  %port_id = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 29
  %105 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %port_id, align 8
  %conv100 = zext i8 %106 to i16
  %shl.i = shl nuw nsw i16 %conv100, 1
  %or.i = or i16 %shl.i, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %107 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %108 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %2, ptr %cb.i, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %109 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @chtls_accept_rpl_arp_failure, ptr %arp_err_handler.i, align 4
  %egress_dev = getelementptr inbounds %struct.chtls_sock, ptr %4, i32 0, i32 3
  %110 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %egress_dev, align 4
  %112 = ptrtoint ptr %l2t_entry to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %l2t_entry, align 8
  %call102 = call i32 @cxgb4_l2t_send(ptr noundef %111, ptr noundef %skb, ptr noundef %113) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_create_openreq_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_route_child_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_req_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_l2t_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_backlog_rcv(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb, align 8
  tail call void %3(ptr noundef %sk, ptr noundef %skb) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_chan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_prepare_forced_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_inherit_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_accept_rpl_arp_failure(ptr noundef %handle, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %handle, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !170
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !171

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %handle, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #10
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %handle, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %sock_hold.exit.sock_owned_by_user.exit.i_crit_edge

sock_hold.exit.sock_owned_by_user.exit.i_crit_edge: ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %sock_hold.exit
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %handle, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %sock_hold.exit.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %handle, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @chtls_pass_open_arp_failure, ptr %cb.i, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef %handle, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

if.else.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @chtls_pass_open_arp_failure(ptr noundef %handle, ptr noundef %skb) #10
  br label %process_cpl_msg.exit

process_cpl_msg.exit:                             ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #10
  %call.i.i.i.i.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i6, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %process_cpl_msg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i5 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i5, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i6:                                       ; preds = %process_cpl_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @sk_free(ptr noundef %handle) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i6, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_best_aligned_mtu(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_pass_open_arp_failure(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @chtls_pass_open_arp_failure.__warned, align 1
  br i1 %.b35, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_pass_open_arp_failure.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 905, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %cdev10 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cdev10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev10, align 4
  %6 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end7.do.end7.i_crit_edge

do.end7.do.end7.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %do.end7
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %do.end7.do.end7.i_crit_edge
  %8 = ptrtoint ptr %7 to i32
  %and.i = and i32 %8, -4
  %9 = inttoptr i32 %and.i to ptr
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i.i, align 4
  %12 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %do.end7.i.if.end14_crit_edge, label %csk_flag.exit

do.end7.i.if.end14_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

csk_flag.exit:                                    ; preds = %do.end7.i
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i.i, align 4
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %csk_flag.exit.if.end14_crit_edge, label %if.then13

csk_flag.exit.if.end14_crit_edge:                 ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end14:                                         ; preds = %csk_flag.exit.if.end14_crit_edge, %do.end7.i.if.end14_crit_edge
  %passive_reap_next = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 36
  %16 = ptrtoint ptr %passive_reap_next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %passive_reap_next, align 4
  %tids = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 7
  %18 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tids, align 4
  %ts_recent = getelementptr inbounds %struct.request_sock, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %ts_recent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ts_recent, align 8
  %nsftids.i = getelementptr inbounds %struct.tid_info, ptr %19, i32 0, i32 23
  %22 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nsftids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i36 = icmp eq i32 %23, 0
  br i1 %tobool.not.i36, label %if.end14.if.else.i_crit_edge, label %land.lhs.true.i37

if.end14.if.else.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i37:                                ; preds = %if.end14
  %sftid_base.i = getelementptr inbounds %struct.tid_info, ptr %19, i32 0, i32 22
  %24 = ptrtoint ptr %sftid_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sftid_base.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp.not.i = icmp ult i32 %21, %25
  br i1 %cmp.not.i, label %land.lhs.true.i37.if.else.i_crit_edge, label %if.then.i38

land.lhs.true.i37.if.else.i_crit_edge:            ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i38:                                      ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %21, %25
  %nstids.i = getelementptr inbounds %struct.tid_info, ptr %19, i32 0, i32 5
  %26 = ptrtoint ptr %nstids.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nstids.i, align 4
  %add.i = add i32 %sub.i, %27
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i37.if.else.i_crit_edge, %if.end14.if.else.i_crit_edge
  %stid_base.i = getelementptr inbounds %struct.tid_info, ptr %19, i32 0, i32 6
  %28 = ptrtoint ptr %stid_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stid_base.i, align 8
  %sub2.i = sub i32 %21, %29
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i38
  %stid.addr.0.i = phi i32 [ %add.i, %if.then.i38 ], [ %sub2.i, %if.else.i ]
  %nstids3.i = getelementptr inbounds %struct.tid_info, ptr %19, i32 0, i32 5
  %30 = ptrtoint ptr %nstids3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nstids3.i, align 4
  %add5.i = add i32 %31, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %stid.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp ult i32 %stid.addr.0.i, %add5.i
  br i1 %cmp6.i, label %cond.true.i, label %if.end.i.lookup_stid.exit_crit_edge

if.end.i.lookup_stid.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup_stid.exit

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %stid_tab.i = getelementptr inbounds %struct.tid_info, ptr %19, i32 0, i32 3
  %32 = ptrtoint ptr %stid_tab.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stid_tab.i, align 4
  %arrayidx.i = getelementptr %struct.serv_entry, ptr %33, i32 %stid.addr.0.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  br label %lookup_stid.exit

lookup_stid.exit:                                 ; preds = %cond.true.i, %if.end.i.lookup_stid.exit_crit_edge
  %cond.i = phi ptr [ %35, %cond.true.i ], [ null, %if.end.i.lookup_stid.exit_crit_edge ]
  %36 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cond.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #10
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %lookup_stid.exit.sock_owned_by_user.exit_crit_edge

lookup_stid.exit.sock_owned_by_user.exit_crit_edge: ; preds = %lookup_stid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %lookup_stid.exit
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %38 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !172

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %lookup_stid.exit.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not = icmp eq i32 %40, 0
  br i1 %tobool.i.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @do_abort_syn_rcv(ptr noundef %sk, ptr noundef %37) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.end18

if.else:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %41 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bl_pass_open_abort, ptr %cb, align 8
  tail call fastcc void @__sk_add_backlog(ptr noundef %37, ptr noundef %skb)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_pass_open_abort(ptr noundef %lsk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call fastcc void @do_abort_syn_rcv(ptr noundef %2, ptr noundef %lsk) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_rx_hdr(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sk_user_data, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @chtls_rx_hdr.__warned, align 1
  br i1 %.b64, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_rx_hdr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1813, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %tlshws = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 37
  %seq = getelementptr inbounds %struct.cpl_rx_tls_cmp, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq, align 4
  %seq12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %seq12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %seq12, align 8
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %16, -32
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %18)
  %cmp.i = icmp ult i32 %sub.i, %18
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !171

do.body4.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !189
  unreachable

__skb_pull.exit:                                  ; preds = %do.end8
  %add.ptr.i = getelementptr i8, ptr %11, i32 32
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %data.i, align 4
  %res_to_mac_error = getelementptr i8, ptr %11, i32 47
  %20 = ptrtoint ptr %res_to_mac_error to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %res_to_mac_error, align 1
  %22 = and i8 %21, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not = icmp eq i8 %22, 0
  br i1 %tobool17.not, label %__skb_pull.exit.if.end19_crit_edge, label %if.then18

__skb_pull.exit.if.end19_crit_edge:               ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 127, ptr %add.ptr.i, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %__skb_pull.exit.if.end19_crit_edge
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not = icmp eq i32 %25, 0
  br i1 %tobool20.not, label %__skb_trim.exit, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

__skb_trim.exit:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %len1.i, align 4
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 5
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %__skb_trim.exit, %if.end19.if.end22_crit_edge
  %pdulength_length = getelementptr inbounds %struct.cpl_rx_tls_cmp, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %pdulength_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdulength_length, align 4
  %shr = lshr i32 %31, 16
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %32 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rcv_nxt, align 8
  %add = add i32 %33, %shr
  store i32 %add, ptr %rcv_nxt, align 8
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags, align 4
  %36 = or i16 %35, 64
  store i16 %36, ptr %flags, align 4
  %37 = ptrtoint ptr %tlshws to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tlshws, align 4
  %cmp.i.i = icmp eq ptr %38, %tlshws
  %tobool.not.i77 = icmp eq ptr %38, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i77
  br i1 %tobool.not.i, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %sk_receive_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %42 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %skb, ptr %40, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  br label %if.end36

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %qlen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 37, i32 0, i32 1
  %44 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %38, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %38, i32 0, i32 1
  %48 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %38, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %49, ptr %prev17.i.i, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %47, ptr %49, align 8
  %pldlen = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 37, i32 6
  %52 = ptrtoint ptr %pldlen to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %pldlen, align 8
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %length.i = getelementptr inbounds %struct.tlsrx_cmp_hdr, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %length.i, align 1
  %hdr_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %58 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %hdr_len.i, align 2
  store i16 %53, ptr %length.i, align 1
  store i16 0, ptr %pldlen, align 8
  %sk_receive_queue34 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %prev.i.i67 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i67, align 4
  %61 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %sk_receive_queue34, ptr %skb, align 8
  %prev10.i.i.i68 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %62 = ptrtoint ptr %prev10.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %prev10.i.i.i68, align 4
  store volatile ptr %skb, ptr %prev.i.i67, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %skb, ptr %60, align 4
  %qlen.i.i.i69 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %qlen.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i.i.i69, align 4
  %add.i.i.i70 = add i32 %65, 1
  store volatile i32 %add.i.i.i70, ptr %qlen.i.i.i69, align 4
  %66 = load ptr, ptr %prev.i.i67, align 4
  store volatile ptr %sk_receive_queue34, ptr %38, align 8
  store volatile ptr %66, ptr %prev9.i.i, align 4
  store volatile ptr %38, ptr %prev.i.i67, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %38, ptr %66, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then31
  %qlen.i.i.i69.sink78 = phi ptr [ %qlen.i.i.i69, %if.else ], [ %qlen.i.i.i, %if.then31 ]
  %68 = ptrtoint ptr %qlen.i.i.i69.sink78 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qlen.i.i.i69.sink78, align 4
  %add.i.i.i74 = add i32 %69, 1
  store volatile i32 %add.i.i.i74, ptr %qlen.i.i.i69.sink78, align 4
  %70 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %73 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not = icmp eq i32 %73, 0
  br i1 %tobool.i.not, label %if.then38, label %if.end36.if.end39_crit_edge

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %5, align 8
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %75, i32 0, i32 72
  %76 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sk_user_data.i, align 4
  %tobool.not.i75 = icmp eq ptr %77, null
  br i1 %tobool.not.i75, label %if.then38.check_sk_callbacks.exit_crit_edge, label %land.rhs.i

if.then38.check_sk_callbacks.exit_crit_edge:      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sk_callbacks.exit

land.rhs.i:                                       ; preds = %if.then38
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 10
  %78 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i76, label %land.rhs.i.check_sk_callbacks.exit_crit_edge, !prof !171

land.rhs.i.check_sk_callbacks.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sk_callbacks.exit

if.then.i76:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i.i = or i32 %79, 1
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or.i.i.i, ptr %flags.i.i, align 4
  br label %check_sk_callbacks.exit

check_sk_callbacks.exit:                          ; preds = %if.then.i76, %land.rhs.i.check_sk_callbacks.exit_crit_edge, %if.then38.check_sk_callbacks.exit_crit_edge
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %81 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sk_data_ready, align 8
  tail call void %82(ptr noundef %sk) #10
  br label %if.end39

if.end39:                                         ; preds = %check_sk_callbacks.exit, %if.end36.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_recv_pdu(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sk_user_data, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b78 = load i1, ptr @chtls_recv_pdu.__warned, align 1
  br i1 %.b78, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_recv_pdu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1750, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %tlshws = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 37
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sk_shutdown, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.end17, label %if.then16, !prof !172

if.then16:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @handle_excess_rx(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

if.end17:                                         ; preds = %do.end8
  %seq = getelementptr inbounds %struct.cpl_tls_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seq, align 4
  %seq18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %seq18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %seq18, align 8
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 4
  %ulp_mode = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %13 = ptrtoint ptr %ulp_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %ulp_mode, align 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %20, -24
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %22)
  %cmp.i = icmp ult i32 %sub.i, %22
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !171

do.body4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !189
  unreachable

__skb_pull.exit:                                  ; preds = %if.end17
  %add.ptr.i = getelementptr i8, ptr %15, i32 24
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %tobool24.not, label %__skb_trim.exit, label %__skb_pull.exit.if.end27_crit_edge

__skb_pull.exit.if.end27_crit_edge:               ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

__skb_trim.exit:                                  ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %length_pkd = getelementptr inbounds %struct.cpl_tls_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %length_pkd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length_pkd, align 4
  %and26 = and i32 %25, 65535
  %26 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and26, ptr %len1.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %and26
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end27

if.end27:                                         ; preds = %__skb_trim.exit, %__skb_pull.exit.if.end27_crit_edge
  %urg_data = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 55
  %28 = ptrtoint ptr %urg_data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %urg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %29)
  %cmp = icmp eq i16 %29, 512
  br i1 %cmp, label %land.rhs, label %if.end27.if.end46_crit_edge

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.rhs:                                         ; preds = %if.end27
  %urg_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %30 = ptrtoint ptr %urg_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %urg_seq, align 4
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %32 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rcv_nxt, align 8
  %sub = sub i32 %31, %33
  %34 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %35)
  %cmp30 = icmp ult i32 %sub, %35
  br i1 %cmp30, label %if.then38, label %land.rhs.if.end46_crit_edge, !prof !171

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then38:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %arrayidx42 = getelementptr i8, ptr %37, i32 %sub
  %38 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %39 to i16
  %or = or i16 %conv43, 256
  %40 = ptrtoint ptr %urg_data to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %or, ptr %urg_data, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then38, %land.rhs.if.end46_crit_edge, %if.end27.if.end46_crit_edge
  %41 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i, align 8
  %43 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %transport_header.i, align 2
  %conv.i.i = zext i16 %44 to i32
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %conv.i.i
  %fin = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %fin to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load = load i16, ptr %fin, align 4
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %fin, align 4
  %length_pkd48 = getelementptr inbounds %struct.cpl_tls_data, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %length_pkd48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length_pkd48, align 4
  %conv51 = trunc i32 %47 to i16
  %pldlen = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 37, i32 6
  %48 = ptrtoint ptr %pldlen to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv51, ptr %pldlen, align 8
  %prev.i.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 37, i32 0, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %tlshws, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %52 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %skb, ptr %50, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 37, i32 0, i32 1
  %54 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %55, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_rx_ack(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_user_data, align 4
  %credits2 = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %credits2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %credits2, align 4
  %conv = zext i8 %5 to i32
  %snd_una3 = getelementptr i8, ptr %1, i32 20
  %6 = ptrtoint ptr %snd_una3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snd_una3, align 4
  %wr_credits = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wr_credits, align 4
  %add = add i32 %9, %conv
  store i32 %add, ptr %wr_credits, align 4
  %wr_unacked = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wr_unacked, align 8
  %wr_max_credits = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %wr_max_credits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wr_max_credits, align 4
  %sub = sub i32 %13, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp = icmp ugt i32 %11, %sub
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %wr_unacked, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not145 = icmp eq i8 %5, 0
  br i1 %tobool.not145, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %wr_skb_head = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %credits.0146 = phi i32 [ %conv, %while.body.lr.ph ], [ %sub33, %cleanup.while.body_crit_edge ]
  %15 = ptrtoint ptr %wr_skb_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr_skb_head, align 8
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %if.then14, label %if.end20, !prof !171

if.then14:                                        ; preds = %while.body
  %wr_nondata = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %wr_nondata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wr_nondata, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not = icmp eq i32 %18, 0
  br i1 %tobool15.not, label %if.then14.while.end_crit_edge, label %if.then14.while.end.sink.split_crit_edge

if.then14.while.end.sink.split_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.sink.split

if.then14.while.end_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end20:                                         ; preds = %while.body
  %19 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %credits.0146, i32 %21)
  %cmp21 = icmp ult i32 %credits.0146, %21
  br i1 %cmp21, label %if.end20.while.end.sink.split_crit_edge, label %if.end31, !prof !171

if.end20.while.end.sink.split_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.sink.split

if.end31:                                         ; preds = %if.end20
  %22 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end31.do.end7.i_crit_edge

if.end31.do.end7.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end31
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @dequeue_wr.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dequeue_wr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 207, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.end31.do.end7.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i = and i32 %24, -4
  %25 = inttoptr i32 %and.i to ptr
  %wr_skb_head.i = getelementptr inbounds %struct.chtls_sock, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %wr_skb_head.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr_skb_head.i, align 8
  %tobool10.not.i = icmp eq ptr %27, null
  br i1 %tobool10.not.i, label %do.end7.i.cleanup_crit_edge, label %if.then13.i, !prof !171

do.end7.i.cleanup_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %next_wr.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %next_wr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next_wr.i, align 8
  %30 = ptrtoint ptr %wr_skb_head.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %wr_skb_head.i, align 8
  store ptr null, ptr %next_wr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i, %do.end7.i.cleanup_crit_edge
  %sub33 = sub i32 %credits.0146, %21
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #10
  %tobool.not = icmp eq i32 %sub33, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end.sink.split:                             ; preds = %if.end20.while.end.sink.split_crit_edge, %if.then14.while.end.sink.split_crit_edge
  %.sink = phi i32 [ %18, %if.then14.while.end.sink.split_crit_edge ], [ %21, %if.end20.while.end.sink.split_crit_edge ]
  %wr_nondata.sink = phi ptr [ %wr_nondata, %if.then14.while.end.sink.split_crit_edge ], [ %19, %if.end20.while.end.sink.split_crit_edge ]
  %sub18 = sub i32 %.sink, %credits.0146
  %31 = ptrtoint ptr %wr_nondata.sink to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub18, ptr %wr_nondata.sink, align 8
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %cleanup.while.end_crit_edge, %if.then14.while.end_crit_edge, %if.end.while.end_crit_edge
  %seq_vld = getelementptr i8, ptr %1, i32 15
  %32 = ptrtoint ptr %seq_vld to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %seq_vld, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool36.not = icmp eq i8 %34, 0
  br i1 %tobool36.not, label %while.end.if.end62_crit_edge, label %if.then37

while.end.if.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then37:                                        ; preds = %while.end
  %snd_una38 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %35 = ptrtoint ptr %snd_una38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %snd_una38, align 4
  %sub.i = sub i32 %7, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then37.cleanup80_crit_edge, label %if.end47, !prof !171

if.then37.cleanup80_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

if.end47:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %36)
  %cmp49.not = icmp eq i32 %7, %36
  br i1 %cmp49.not, label %if.end47.if.end62_crit_edge, label %if.then51

if.end47.if.end62_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then51:                                        ; preds = %if.end47
  %37 = ptrtoint ptr %snd_una38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %7, ptr %snd_una38, align 4
  %tcp_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %38 = ptrtoint ptr %tcp_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tcp_mstamp.i, align 8
  %40 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %39, i32 0) #15, !srcloc !192
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %40, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %40, 1
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %39, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #15, !srcloc !193
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %41, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %rcv_tstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 18
  %42 = ptrtoint ptr %rcv_tstamp to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv.i, ptr %rcv_tstamp, align 4
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %43 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %snd_nxt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %44)
  %cmp55 = icmp eq i32 %7, %44
  br i1 %cmp55, label %land.lhs.true, label %if.then51.if.end62_crit_edge

if.then51.if.end62_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.lhs.true:                                    ; preds = %if.then51
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i, align 4
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool58.not = icmp eq i32 %47, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then59:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %46, -9
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.i.i, ptr %flags.i, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %land.lhs.true.if.end62_crit_edge, %if.then51.if.end62_crit_edge, %if.end47.if.end62_crit_edge, %while.end.if.end62_crit_edge
  %49 = ptrtoint ptr %seq_vld to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %seq_vld, align 1
  %51 = and i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool66.not = icmp eq i8 %51, 0
  br i1 %tobool66.not, label %if.end62.if.end72_crit_edge, label %if.then67

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wr_credits, align 4
  %sub71 = add i32 %53, -32
  store i32 %sub71, ptr %wr_credits, align 4
  %flags.i135 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %54 = ptrtoint ptr %flags.i135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i135, align 4
  %and.i.i138 = and i32 %55, -265
  store i32 %and.i.i138, ptr %flags.i135, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end62.if.end72_crit_edge
  %qlen.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool74.not = icmp eq i32 %57, 0
  br i1 %tobool74.not, label %if.end72.cleanup80_crit_edge, label %land.lhs.true75

if.end72.cleanup80_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

land.lhs.true75:                                  ; preds = %if.end72
  %call76 = tail call i32 @chtls_push_frames(ptr noundef %3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true75.cleanup80_crit_edge, label %if.then78

land.lhs.true75.cleanup80_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

if.then78:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %58 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk_write_space, align 4
  tail call void %59(ptr noundef %sk) #10
  br label %cleanup80

cleanup80:                                        ; preds = %if.then78, %land.lhs.true75.cleanup80_crit_edge, %if.end72.cleanup80_crit_edge, %if.then37.cleanup80_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !73, !74, !75, !76, !78, !80, !81, !83, !85, !86, !88, !90, !91, !92, !93, !95, !96, !98, !100, !102, !104, !106, !107, !109, !111, !112, !113, !114, !116, !118, !120, !121, !123, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !142, !144, !146, !147, !148, !150, !152, !153, !154, !156, !158, !159}
!llvm.named.register.sp = !{!160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 343, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 483, i32 8}
!6 = !{ptr @chtls_handlers, !7, !"chtls_handlers", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 2321, i32 20}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 192, i32 27}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 247, i32 27}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 260, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 229, i32 8}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h", i32 547, i32 27}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @new_state, !23, !"new_state", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 42, i32 22}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 305, i32 8}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h", i32 483, i32 27}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 181, i32 27}
!30 = !{ptr @wait_for_states.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 416, i32 3}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 432, i32 3}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 436, i32 3}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 441, i32 6}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 116, i32 3}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @skb_queue_head_init.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 612, i32 8}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 500, i32 27}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/net/request_sock.h", i32 126, i32 2}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 799, i32 3}
!61 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @chtls_close_listsrv_rpl._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @chtls_close_listsrv_rpl._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 776, i32 3}
!66 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @chtls_pass_open_rpl._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @chtls_pass_open_rpl._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1877, i32 27}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1901, i32 3}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @chtls_peer_close._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @chtls_peer_close._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 820, i32 27}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.h", i32 207, i32 27}
!80 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.h", i32 148, i32 7}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/net/sock.h", i32 2444, i32 19}
!85 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1924, i32 8}
!88 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1958, i32 3}
!90 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @chtls_close_con_rpl._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @chtls_close_con_rpl._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 2127, i32 4}
!95 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/net/sock.h", i32 1750, i32 2}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 2061, i32 8}
!100 = !{ptr @.str.24, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/net/dst.h", i32 316, i32 3}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 2026, i32 8}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1968, i32 3}
!106 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 2156, i32 8}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1735, i32 3}
!111 = !{ptr @.str.27, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @chtls_rx_data._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @chtls_rx_data._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1687, i32 8}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 147, i32 8}
!118 = !{ptr @.str.28, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1490, i32 8}
!120 = !{ptr @reap_list_lock, !119, !"reap_list_lock", i1 false, i1 false}
!121 = !{ptr @reap_list, !122, !"reap_list", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1489, i32 21}
!123 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1519, i32 8}
!125 = !{ptr @reap_task, !124, !"reap_task", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1500, i32 28}
!128 = !{ptr @.str.30, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1447, i32 3}
!130 = !{ptr @.str.31, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @chtls_pass_accept_req._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @chtls_pass_accept_req._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.32, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1319, i32 3}
!135 = !{ptr @.str.33, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @chtls_pass_accept_request._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @chtls_pass_accept_request._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1410, i32 8}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../include/net/sock.h", i32 2067, i32 9}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 905, i32 8}
!144 = !{ptr @.str.34, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1856, i32 3}
!146 = !{ptr @chtls_rx_cmp._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @chtls_rx_cmp._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1813, i32 8}
!150 = !{ptr @.str.35, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1787, i32 3}
!152 = !{ptr @chtls_rx_pdu._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @chtls_rx_pdu._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 1750, i32 8}
!156 = !{ptr @.str.36, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c", i32 2291, i32 3}
!158 = !{ptr @chtls_wr_ack._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @chtls_wr_ack._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{!"sp"}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2148397279, i64 2148397311, i64 2148397340, i64 2148397374, i64 2148397405, i64 2148397428}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2148485304}
!174 = !{i64 2148399744, i64 2148399776, i64 2148399805, i64 2148399839, i64 2148399870, i64 2148399893}
!175 = !{i64 2149361418}
!176 = !{i64 2154617186, i64 2154617674, i64 2154617223, i64 2154617279, i64 2154617313, i64 2154617337, i64 2154617378, i64 2154617399, i64 2154617427, i64 2154617461}
!177 = !{i64 2160839287}
!178 = !{i64 2149411908}
!179 = !{i64 2149412174}
!180 = !{i64 2160932632}
!181 = !{i64 2148398214, i64 2148398240, i64 2148398269, i64 2148398303, i64 2148398334, i64 2148398357}
!182 = !{i64 799449, i64 799510}
!183 = !{i64 802181}
!184 = !{i64 802466}
!185 = !{i64 2149505632}
!186 = !{i64 2148395168}
!187 = !{i64 880788, i64 880813, i64 880835, i64 880851, i64 880863, i64 880883, i64 880907, i64 880923, i64 880935}
!188 = !{i64 2148395356}
!189 = !{i64 2154620154, i64 2154620642, i64 2154620191, i64 2154620247, i64 2154620281, i64 2154620305, i64 2154620346, i64 2154620367, i64 2154620395, i64 2154620429}
!190 = !{i64 2148395749, i64 2148395775, i64 2148395804, i64 2148395838, i64 2148395869, i64 2148395892}
!191 = !{!"auto-init"}
!192 = !{i64 756629, i64 756656, i64 756678, i64 756706}
!193 = !{i64 757037, i64 757064, i64 757097, i64 757118, i64 757145, i64 757171}
