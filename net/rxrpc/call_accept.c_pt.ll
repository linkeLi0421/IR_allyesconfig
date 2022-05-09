; ModuleID = '/llk/IR_all_yes/net/rxrpc/call_accept.c_pt.bc'
source_filename = "../net/rxrpc/call_accept.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rxrpc_kernel_charge_accept\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_kernel_charge_accept\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_kernel_charge_accept\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_kernel_charge_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_kernel_charge_accept\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_kernel_charge_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rxrpc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rwlock_t, ptr, ptr, %struct.rb_root, i32, %struct.rwlock_t, i32, i8, i16, %struct.anon.151, i16, %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.122, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.122 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.123 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.124 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.151 = type { i16, i16 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.145 }
%union.anon.145 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rxrpc_backlog = type { i16, i16, i16, i16, i16, i16, [32 x ptr], [32 x ptr], [32 x ptr] }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.148, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon.143 }
%union.anon.143 = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.146 }
%union.anon.146 = type { i32 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_crypt = type { %union.anon.150 }
%union.anon.150 = type { [2 x i32] }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%union.anon.88 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }

@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_discard_prealloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s]     discard %lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxrpc_discard_prealloc\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/rxrpc/call_accept.c\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_discard_prealloc._entry_ptr = internal global ptr @rxrpc_discard_prealloc._entry, section ".printk_index", align 4
@rxrpc_new_incoming_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rxrpc_new_incoming_call\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_new_incoming_call._entry_ptr = internal global ptr @rxrpc_new_incoming_call._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CLS\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CON\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_new_incoming_call._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() = %p{%d}\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_new_incoming_call._entry_ptr.9 = internal global ptr @rxrpc_new_incoming_call._entry.7, section ".printk_index", align 4
@rxrpc_new_incoming_call._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = NULL [%u]\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_new_incoming_call._entry_ptr.12 = internal global ptr @rxrpc_new_incoming_call._entry.10, section ".printk_index", align 4
@rxrpc_debug_id = external dso_local global %struct.atomic_t, align 4
@__kstrtab_rxrpc_kernel_charge_accept = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_kernel_charge_accept = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_kernel_charge_accept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_kernel_charge_accept to i32), ptr @__kstrtab_rxrpc_kernel_charge_accept, ptr @__kstrtabns_rxrpc_kernel_charge_accept }, section "___ksymtab+rxrpc_kernel_charge_accept", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rxrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_abort = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_incoming_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rxrpc: Assertion failed - %lu(0x%lx) %s %lu(0x%lx) is false\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rxrpc_alloc_incoming_call\00", [38 x i8] zeroinitializer }, align 32
@rxrpc_alloc_incoming_call._entry_ptr = internal global ptr @rxrpc_alloc_incoming_call._entry, section ".printk_index", align 4
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c">=\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_alloc_incoming_call._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_incoming_call._entry_ptr.24 = internal global ptr @rxrpc_alloc_incoming_call._entry.23, section ".printk_index", align 4
@__tracepoint_rxrpc_receive = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_receive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_service_prealloc_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] <== %s() = -ENOBUFS [full %u]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxrpc_service_prealloc_one\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_service_prealloc_one._entry_ptr = internal global ptr @rxrpc_service_prealloc_one._entry, section ".printk_index", align 4
@rxrpc_service_prealloc_one._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%-6.6s] <== %s() = -ENOBUFS [enough %u]\0A\00", [54 x i8] zeroinitializer }, align 32
@rxrpc_service_prealloc_one._entry_ptr.29 = internal global ptr @rxrpc_service_prealloc_one._entry.27, section ".printk_index", align 4
@rxrpc_service_prealloc_one._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] <== %s() = 0 [%d -> %lx]\0A\00", [61 x i8] zeroinitializer }, align 32
@rxrpc_service_prealloc_one._entry_ptr.32 = internal global ptr @rxrpc_service_prealloc_one._entry.30, section ".printk_index", align 4
@rxrpc_service_prealloc_one._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = -EBADSLT\0A\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_service_prealloc_one._entry_ptr.35 = internal global ptr @rxrpc_service_prealloc_one._entry.33, section ".printk_index", align 4
@__tracepoint_rxrpc_conn = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_conn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_call = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 225, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 357, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 362, i32 24 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 418, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 436, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 441, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 45, i32 7 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 695, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 723, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 696, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 108, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 280, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 283, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 52, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 65, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 149, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [27 x i8] c"../net/rxrpc/call_accept.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 155, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_rxrpc_kernel_charge_accept, ptr @rxrpc_alloc_incoming_call._entry, ptr @rxrpc_alloc_incoming_call._entry.23, ptr @rxrpc_alloc_incoming_call._entry_ptr, ptr @rxrpc_alloc_incoming_call._entry_ptr.24, ptr @rxrpc_discard_prealloc._entry, ptr @rxrpc_discard_prealloc._entry_ptr, ptr @rxrpc_new_incoming_call._entry, ptr @rxrpc_new_incoming_call._entry.10, ptr @rxrpc_new_incoming_call._entry.7, ptr @rxrpc_new_incoming_call._entry_ptr, ptr @rxrpc_new_incoming_call._entry_ptr.12, ptr @rxrpc_new_incoming_call._entry_ptr.9, ptr @rxrpc_service_prealloc_one._entry, ptr @rxrpc_service_prealloc_one._entry.27, ptr @rxrpc_service_prealloc_one._entry.30, ptr @rxrpc_service_prealloc_one._entry.33, ptr @rxrpc_service_prealloc_one._entry_ptr, ptr @rxrpc_service_prealloc_one._entry_ptr.29, ptr @rxrpc_service_prealloc_one._entry_ptr.32, ptr @rxrpc_service_prealloc_one._entry_ptr.35, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_discard_prealloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_incoming_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_incoming_call._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_incoming_call._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_incoming_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_incoming_call._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_prealloc_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_prealloc_one._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_prealloc_one._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_service_prealloc_one._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_service_prealloc(ptr nocapture noundef %rx, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %backlog = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 4
  %0 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backlog, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !88

if.then.kzalloc.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.then
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.then.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %2 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i, i32 noundef 396) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %backlog, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %kzalloc.exit.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_discard_prealloc(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %backlog = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 4
  %0 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backlog, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %call1 = tail call fastcc ptr @rxrpc_net(ptr noundef %3)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %backlog, align 4
  %incoming_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %incoming_lock) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %incoming_lock) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  %conv = zext i16 %6 to i32
  %peer_backlog_tail = getelementptr inbounds %struct.rxrpc_backlog, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %peer_backlog_tail to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %peer_backlog_tail, align 2
  %conv4 = zext i16 %8 to i32
  %sub161 = sub nsw i32 %conv, %conv4
  %and162 = and i32 %sub161, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %cmp.not163 = icmp eq i32 %and162, 0
  br i1 %cmp.not163, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %tail.0164 = phi i32 [ %and8, %while.body.while.body_crit_edge ], [ %conv4, %if.end.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.rxrpc_backlog, ptr %1, i32 0, i32 6, i32 %tail.0164
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %local = getelementptr inbounds %struct.rxrpc_peer, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %local, align 8
  tail call void @rxrpc_put_local(ptr noundef %12) #10
  tail call void @kfree(ptr noundef %10) #10
  %add = add nuw nsw i32 %tail.0164, 1
  %and8 = and i32 %add, 31
  %sub = sub nsw i32 %conv, %add
  %and = and i32 %sub, 31
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %conn_backlog_head = getelementptr inbounds %struct.rxrpc_backlog, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %conn_backlog_head to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %conn_backlog_head, align 4
  %conv9 = zext i16 %14 to i32
  %conn_backlog_tail = getelementptr inbounds %struct.rxrpc_backlog, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %conn_backlog_tail to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %conn_backlog_tail, align 2
  %conv10 = zext i16 %16 to i32
  %sub12165 = sub nsw i32 %conv9, %conv10
  %and14166 = and i32 %sub12165, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14166)
  %cmp15.not167 = icmp eq i32 %and14166, 0
  br i1 %cmp15.not167, label %while.end.while.end27_crit_edge, label %while.body17.lr.ph

while.end.while.end27_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end27

while.body17.lr.ph:                               ; preds = %while.end
  %conn_lock = getelementptr inbounds %struct.rxrpc_net, ptr %call1, i32 0, i32 8
  %nr_conns = getelementptr inbounds %struct.rxrpc_net, ptr %call1, i32 0, i32 5
  br label %while.body17

while.body17:                                     ; preds = %if.end23.while.body17_crit_edge, %while.body17.lr.ph
  %tail.1168 = phi i32 [ %conv10, %while.body17.lr.ph ], [ %and26, %if.end23.while.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.rxrpc_backlog, ptr %1, i32 0, i32 7, i32 %tail.1168
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18, align 4
  tail call void @_raw_write_lock(ptr noundef %conn_lock) #10
  %link = getelementptr inbounds %struct.rxrpc_connection, ptr %18, i32 0, i32 12
  %call.i.i154 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #10
  br i1 %call.i.i154, label %if.end.i.i, label %while.body17.list_del.exit_crit_edge

while.body17.list_del.exit_crit_edge:             ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %18, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body17.list_del.exit_crit_edge
  %25 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.rxrpc_connection, ptr %18, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %proc_link = getelementptr inbounds %struct.rxrpc_connection, ptr %18, i32 0, i32 11
  %call.i.i155 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %proc_link) #10
  br i1 %call.i.i155, label %if.end.i.i158, label %list_del.exit.list_del.exit160_crit_edge

list_del.exit.list_del.exit160_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit160

if.end.i.i158:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i156 = getelementptr inbounds %struct.rxrpc_connection, ptr %18, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %prev.i.i156 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i156, align 4
  %29 = ptrtoint ptr %proc_link to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %proc_link, align 4
  %prev1.i.i.i157 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i157 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i157, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit160

list_del.exit160:                                 ; preds = %if.end.i.i158, %list_del.exit.list_del.exit160_crit_edge
  %33 = ptrtoint ptr %proc_link to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %proc_link, align 4
  %prev.i159 = getelementptr inbounds %struct.rxrpc_connection, ptr %18, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %prev.i159 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i159, align 4
  tail call void @_raw_write_unlock(ptr noundef %conn_lock) #10
  tail call void @kfree(ptr noundef %18) #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_conns, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %nr_conns, i32 1, i32 3, i32 1) #10
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_conns, ptr %nr_conns, i32 1, ptr elementtype(i32) %nr_conns) #10, !srcloc !90
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then21, label %list_del.exit160.if.end23_crit_edge

list_del.exit160.if.end23_crit_edge:              ; preds = %list_del.exit160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %list_del.exit160
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wake_up_var(ptr noundef %nr_conns) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %list_del.exit160.if.end23_crit_edge
  %add24 = add nuw nsw i32 %tail.1168, 1
  %and26 = and i32 %add24, 31
  %sub12 = sub nsw i32 %conv9, %add24
  %and14 = and i32 %sub12, 31
  %cmp15.not = icmp eq i32 %and14, 0
  br i1 %cmp15.not, label %if.end23.while.end27_crit_edge, label %if.end23.while.body17_crit_edge

if.end23.while.body17_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body17

if.end23.while.end27_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end27

while.end27:                                      ; preds = %if.end23.while.end27_crit_edge, %while.end.while.end27_crit_edge
  %call_backlog_head = getelementptr inbounds %struct.rxrpc_backlog, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %call_backlog_head to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %call_backlog_head, align 4
  %conv28 = zext i16 %37 to i32
  %call_backlog_tail = getelementptr inbounds %struct.rxrpc_backlog, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %call_backlog_tail to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %call_backlog_tail, align 2
  %conv29 = zext i16 %39 to i32
  %sub31169 = sub nsw i32 %conv28, %conv29
  %and33170 = and i32 %sub31169, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33170)
  %cmp34.not171 = icmp eq i32 %and33170, 0
  br i1 %cmp34.not171, label %while.end27.while.end101_crit_edge, label %while.body36.lr.ph

while.end27.while.end101_crit_edge:               ; preds = %while.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end101

while.body36.lr.ph:                               ; preds = %while.end27
  %discard_new_call = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 2
  br label %while.body36

while.body36:                                     ; preds = %if.end96.while.body36_crit_edge, %while.body36.lr.ph
  %tail.2172 = phi i32 [ %conv29, %while.body36.lr.ph ], [ %and100, %if.end96.while.body36_crit_edge ]
  %arrayidx38 = getelementptr %struct.rxrpc_backlog, ptr %1, i32 0, i32 8, i32 %tail.2172
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %socket62 = getelementptr inbounds %struct.rxrpc_call, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %socket62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %rx, ptr %socket62, align 8
  %43 = ptrtoint ptr %discard_new_call to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %discard_new_call, align 4
  %tobool74.not = icmp eq ptr %44, null
  br i1 %tobool74.not, label %while.body36.if.end96_crit_edge, label %do.body76

while.body36.if.end96_crit_edge:                  ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.body76:                                        ; preds = %while.body36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %45 = load i32, ptr @rxrpc_debug, align 4
  %and77 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.do.end89_crit_edge, label %do.end84, !prof !88

do.body76.do.end89_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

do.end84:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  %46 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %user_call_ID = getelementptr inbounds %struct.rxrpc_call, ptr %41, i32 0, i32 32
  %50 = ptrtoint ptr %user_call_ID to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %user_call_ID, align 8
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, i32 noundef %51) #14
  br label %do.end89

do.end89:                                         ; preds = %do.end84, %do.body76.do.end89_crit_edge
  %52 = ptrtoint ptr %discard_new_call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %discard_new_call, align 4
  %user_call_ID91 = getelementptr inbounds %struct.rxrpc_call, ptr %41, i32 0, i32 32
  %54 = ptrtoint ptr %user_call_ID91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %user_call_ID91, align 8
  tail call void %53(ptr noundef %41, i32 noundef %55) #10
  %notify_rx = getelementptr inbounds %struct.rxrpc_call, ptr %41, i32 0, i32 20
  %56 = ptrtoint ptr %notify_rx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %notify_rx, align 8
  %tobool92.not = icmp eq ptr %57, null
  br i1 %tobool92.not, label %do.end89.if.end95_crit_edge, label %if.then93

do.end89.if.end95_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then93:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %notify_rx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rxrpc_dummy_notify, ptr %notify_rx, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %do.end89.if.end95_crit_edge
  tail call void @rxrpc_put_call(ptr noundef %41, i32 noundef 8) #10
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %while.body36.if.end96_crit_edge
  %call97 = tail call zeroext i1 @rxrpc_call_completed(ptr noundef %41) #10
  tail call void @rxrpc_release_call(ptr noundef %rx, ptr noundef %41) #10
  tail call void @rxrpc_put_call(ptr noundef %41, i32 noundef 7) #10
  %add98 = add nuw nsw i32 %tail.2172, 1
  %and100 = and i32 %add98, 31
  %sub31 = sub nsw i32 %conv28, %add98
  %and33 = and i32 %sub31, 31
  %cmp34.not = icmp eq i32 %and33, 0
  br i1 %cmp34.not, label %if.end96.while.end101_crit_edge, label %if.end96.while.body36_crit_edge

if.end96.while.body36_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body36

if.end96.while.end101_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end101

while.end101:                                     ; preds = %if.end96.while.end101_crit_edge, %while.end27.while.end101_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end101, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rxrpc_net(ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_net_id to i32))
  %0 = load i32, ptr @rxrpc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
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
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 45, ptr noundef nonnull @.str.14) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #10
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rxrpc_dummy_notify(ptr nocapture noundef %sk, ptr nocapture noundef %call, i32 noundef %user_call_ID) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_call(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_call_completed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_release_call(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_new_incoming_call(ptr noundef %local, ptr noundef %rx, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %peer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peer) #10
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %peer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %1 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !88

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %incoming_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %incoming_lock) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp = icmp eq i8 %7, 6
  br i1 %cmp, label %do.end7.if.then15_crit_edge, label %lor.lhs.false

do.end7.if.then15_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.end7
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp13 = icmp eq i8 %9, 7
  br i1 %cmp13, label %lor.lhs.false.if.then15_crit_edge, label %if.end18

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %do.end7.if.then15_crit_edge
  %cid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cid, align 4
  %callNumber = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %12 = ptrtoint ptr %callNumber to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %callNumber, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq, align 4
  tail call fastcc void @trace_rxrpc_abort(i32 noundef %11, i32 noundef %13, i32 noundef %15)
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %16, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2, ptr %priority, align 4
  br label %no_call

if.end18:                                         ; preds = %lor.lhs.false
  %call19 = call ptr @rxrpc_find_connection_rcu(ptr noundef %local, ptr noundef %skb, ptr noundef nonnull %peer) #10
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  %call22 = call ptr @rxrpc_get_incoming_security(ptr noundef %rx, ptr noundef %skb) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then21.no_call_crit_edge, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21.no_call_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_call

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %sec.0 = phi ptr [ null, %if.end18.if.end26_crit_edge ], [ %call22, %if.then21.if.end26_crit_edge ]
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer, align 4
  %backlog.i = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 4
  %21 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %backlog.i, align 4
  %call_backlog_head.i = getelementptr inbounds %struct.rxrpc_backlog, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %call_backlog_head.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load volatile i16, ptr %call_backlog_head.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  %call_backlog_tail.i = getelementptr inbounds %struct.rxrpc_backlog, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %call_backlog_tail.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call_backlog_tail.i, align 2
  %conv5.i = zext i16 %26 to i32
  %sub.i = sub i16 %24, %26
  %and.i173 = and i16 %sub.i, 31
  %conn_backlog_head.i = getelementptr inbounds %struct.rxrpc_backlog, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %conn_backlog_head.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load volatile i16, ptr %conn_backlog_head.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  %conn_backlog_tail.i = getelementptr inbounds %struct.rxrpc_backlog, ptr %22, i32 0, i32 3
  %29 = ptrtoint ptr %conn_backlog_tail.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %conn_backlog_tail.i, align 2
  %conv17.i = zext i16 %30 to i32
  %sub18.i = sub i16 %28, %30
  %and19.i = and i16 %sub18.i, 31
  %conv22.i = zext i16 %and19.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %and19.i, i16 %and.i173)
  %cmp.not.i = icmp ult i16 %and19.i, %and.i173
  br i1 %cmp.not.i, label %do.end29.i, label %if.end.i, !prof !97

do.end29.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %conv23.i = zext i16 %and.i173 to i32
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv22.i, i32 noundef %conv22.i, ptr noundef nonnull @.str.22, i32 noundef %conv23.i, i32 noundef %conv23.i) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_accept.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

if.end.i:                                         ; preds = %if.end26
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load volatile i16, ptr %22, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  %peer_backlog_tail.i = getelementptr inbounds %struct.rxrpc_backlog, ptr %22, i32 0, i32 1
  %33 = ptrtoint ptr %peer_backlog_tail.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %peer_backlog_tail.i, align 2
  %conv55.i = zext i16 %32 to i32
  %conv56.i = zext i16 %34 to i32
  %sub57.i = sub nsw i32 %conv55.i, %conv56.i
  %and58.i = and i32 %sub57.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and58.i, i32 %conv22.i)
  %cmp63.not.i = icmp ult i32 %and58.i, %conv22.i
  br i1 %cmp63.not.i, label %do.end76.i, label %if.end87.i, !prof !97

do.end76.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and58.i, i32 noundef %and58.i, ptr noundef nonnull @.str.22, i32 noundef %conv22.i, i32 noundef %conv22.i) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_accept.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

if.end87.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i173)
  %cmp91.i = icmp eq i16 %and.i173, 0
  br i1 %cmp91.i, label %if.end87.i.if.then29_crit_edge, label %if.end94.i

if.end87.i.if.then29_crit_edge:                   ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end94.i:                                       ; preds = %if.end87.i
  br i1 %tobool20.not, label %if.then96.i, label %if.else.i

if.then96.i:                                      ; preds = %if.end94.i
  %tobool97.not.i = icmp eq ptr %20, null
  br i1 %tobool97.not.i, label %if.then96.i.if.then103.i_crit_edge, label %land.lhs.true.i

if.then96.i.if.then103.i_crit_edge:               ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then103.i

land.lhs.true.i:                                  ; preds = %if.then96.i
  %call98.i = call ptr @rxrpc_get_peer_maybe(ptr noundef nonnull %20) #10
  %tobool99.not.i = icmp eq ptr %call98.i, null
  br i1 %tobool99.not.i, label %land.lhs.true.i.if.then103.i_crit_edge, label %land.lhs.true.i.if.end137.i_crit_edge

land.lhs.true.i.if.end137.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i

land.lhs.true.i.if.then103.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then103.i

if.then103.i:                                     ; preds = %land.lhs.true.i.if.then103.i_crit_edge, %if.then96.i.if.then103.i_crit_edge
  %arrayidx.i = getelementptr %struct.rxrpc_backlog, ptr %22, i32 0, i32 6, i32 %conv56.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %srx.i = getelementptr inbounds %struct.rxrpc_peer, ptr %36, i32 0, i32 16
  %call104.i = call i32 @rxrpc_extract_addr_from_skb(ptr noundef %srx.i, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %cmp105.i = icmp slt i32 %call104.i, 0
  br i1 %cmp105.i, label %if.then103.i.if.then29_crit_edge, label %if.end108.i

if.then103.i.if.then29_crit_edge:                 ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end108.i:                                      ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %add.i = add i16 %34, 1
  %and126.i = and i16 %add.i, 31
  %38 = ptrtoint ptr %peer_backlog_tail.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store volatile i16 %and126.i, ptr %peer_backlog_tail.i, align 2
  call void @rxrpc_new_incoming_peer(ptr noundef %rx, ptr noundef %local, ptr noundef %36) #10
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.end108.i, %land.lhs.true.i.if.end137.i_crit_edge
  %peer.addr.1.i = phi ptr [ %36, %if.end108.i ], [ %20, %land.lhs.true.i.if.end137.i_crit_edge ]
  %arrayidx139.i = getelementptr %struct.rxrpc_backlog, ptr %22, i32 0, i32 7, i32 %conv17.i
  %39 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx139.i, align 4
  store ptr null, ptr %arrayidx139.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %add157.i = add i16 %30, 1
  %and158.i = and i16 %add157.i, 31
  %41 = ptrtoint ptr %conn_backlog_tail.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store volatile i16 %and158.i, ptr %conn_backlog_tail.i, align 2
  %call169.i = call ptr @rxrpc_get_local(ptr noundef %local) #10
  %params.i = getelementptr inbounds %struct.rxrpc_connection, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call169.i, ptr %params.i, align 8
  %peer172.i = getelementptr inbounds %struct.rxrpc_connection, ptr %40, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %peer172.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %peer.addr.1.i, ptr %peer172.i, align 4
  call void @rxrpc_see_connection(ptr noundef %40) #10
  call void @rxrpc_new_incoming_connection(ptr noundef %rx, ptr noundef %40, ptr noundef %sec.0, ptr noundef %skb) #10
  br label %rxrpc_alloc_incoming_call.exit

if.else.i:                                        ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  %call173.i = call ptr @rxrpc_get_connection(ptr noundef nonnull %call19) #10
  br label %rxrpc_alloc_incoming_call.exit

rxrpc_alloc_incoming_call.exit:                   ; preds = %if.else.i, %if.end137.i
  %conn.addr.0.i = phi ptr [ %call19, %if.else.i ], [ %40, %if.end137.i ]
  %arrayidx176.i = getelementptr %struct.rxrpc_backlog, ptr %22, i32 0, i32 8, i32 %conv5.i
  %44 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx176.i, align 4
  store ptr null, ptr %arrayidx176.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  %add194.i = add i16 %26, 1
  %and195.i = and i16 %add194.i, 31
  %46 = ptrtoint ptr %call_backlog_tail.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store volatile i16 %and195.i, ptr %call_backlog_tail.i, align 2
  call void @rxrpc_see_call(ptr noundef %45) #10
  %conn206.i = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %conn206.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %conn.addr.0.i, ptr %conn206.i, align 8
  %security.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn.addr.0.i, i32 0, i32 14
  %48 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %security.i, align 8
  %security207.i = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 5
  %50 = ptrtoint ptr %security207.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %security207.i, align 8
  %security_ix.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn.addr.0.i, i32 0, i32 27
  %51 = ptrtoint ptr %security_ix.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %security_ix.i, align 8
  %security_ix208.i = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 44
  %53 = ptrtoint ptr %security_ix208.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %security_ix208.i, align 2
  %peer210.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn.addr.0.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %peer210.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %peer210.i, align 4
  %call211.i = call ptr @rxrpc_get_peer(ptr noundef %55) #10
  %peer212.i = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 2
  %56 = ptrtoint ptr %peer212.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call211.i, ptr %peer212.i, align 4
  %cong_cwnd.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call211.i, i32 0, i32 26
  %57 = ptrtoint ptr %cong_cwnd.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cong_cwnd.i, align 1
  %cong_cwnd214.i = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 57
  %59 = ptrtoint ptr %cong_cwnd214.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %cong_cwnd214.i, align 2
  %tobool28.not = icmp eq ptr %45, null
  br i1 %tobool28.not, label %rxrpc_alloc_incoming_call.exit.if.then29_crit_edge, label %if.end30

rxrpc_alloc_incoming_call.exit.if.then29_crit_edge: ; preds = %rxrpc_alloc_incoming_call.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %rxrpc_alloc_incoming_call.exit.if.then29_crit_edge, %if.then103.i.if.then29_crit_edge, %if.end87.i.if.then29_crit_edge
  %60 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %60, align 4
  br label %no_call

if.end30:                                         ; preds = %rxrpc_alloc_incoming_call.exit
  %serial = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %62 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %serial, align 4
  %seq33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %64 = ptrtoint ptr %seq33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %seq33, align 4
  call fastcc void @trace_rxrpc_receive(ptr noundef nonnull %45, i32 noundef %63, i32 noundef %65)
  call void @rxrpc_incoming_call(ptr noundef %rx, ptr noundef nonnull %45, ptr noundef %skb) #10
  %66 = ptrtoint ptr %conn206.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %conn206.i, align 8
  %notify_new_call = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 1
  %68 = ptrtoint ptr %notify_new_call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %notify_new_call, align 8
  %tobool35.not = icmp eq ptr %69, null
  br i1 %tobool35.not, label %if.end30.if.end39_crit_edge, label %if.then36

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %user_call_ID = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 32
  %70 = ptrtoint ptr %user_call_ID to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %user_call_ID, align 8
  call void %69(ptr noundef %rx, ptr noundef nonnull %45, i32 noundef %71) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end30.if.end39_crit_edge
  %state_lock = getelementptr inbounds %struct.rxrpc_connection, ptr %67, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %state_lock) #10
  %state = getelementptr inbounds %struct.rxrpc_connection, ptr %67, i32 0, i32 21
  %72 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %state, align 8
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %73, label %do.body63 [
    i32 3, label %sw.bb
    i32 5, label %sw.bb44
    i32 6, label %sw.bb53
    i32 7, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %state, align 8
  %76 = ptrtoint ptr %conn206.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %conn206.i, align 8
  %events = getelementptr inbounds %struct.rxrpc_connection, ptr %77, i32 0, i32 18
  call void @_set_bit(i32 noundef 0, ptr noundef %events) #10
  %78 = ptrtoint ptr %conn206.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %conn206.i, align 8
  %call43 = call zeroext i1 @rxrpc_queue_conn(ptr noundef %79) #10
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end39
  %state_lock45 = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 37
  call void @_raw_write_lock(ptr noundef %state_lock45) #10
  %state46 = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 40
  %80 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %state46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %81)
  %cmp47 = icmp ult i32 %81, 11
  br i1 %cmp47, label %if.then49, label %sw.bb44.if.end51_crit_edge

sw.bb44.if.end51_crit_edge:                       ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %state46 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 7, ptr %state46, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %sw.bb44.if.end51_crit_edge
  call void @_raw_write_unlock(ptr noundef %state_lock45) #10
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %abort_code = getelementptr inbounds %struct.rxrpc_connection, ptr %67, i32 0, i32 22
  %83 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %abort_code, align 4
  %error = getelementptr inbounds %struct.rxrpc_connection, ptr %67, i32 0, i32 30
  %85 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %error, align 4
  %conv54 = sext i16 %86 to i32
  %call55 = call zeroext i1 @rxrpc_set_call_completion(ptr noundef nonnull %45, i32 noundef 1, i32 noundef %84, i32 noundef %conv54) #10
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %seq33 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %seq33, align 4
  %abort_code59 = getelementptr inbounds %struct.rxrpc_connection, ptr %67, i32 0, i32 22
  %89 = ptrtoint ptr %abort_code59 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %abort_code59, align 4
  %error60 = getelementptr inbounds %struct.rxrpc_connection, ptr %67, i32 0, i32 30
  %91 = ptrtoint ptr %error60 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %error60, align 4
  %conv61 = sext i16 %92 to i32
  %call62 = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.6, ptr noundef nonnull %45, i32 noundef %88, i32 noundef %90, i32 noundef %conv61) #10
  br label %sw.epilog

do.body63:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_accept.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

sw.epilog:                                        ; preds = %sw.bb56, %sw.bb53, %if.end51, %sw.bb
  call void @_raw_spin_unlock(ptr noundef %state_lock) #10
  call void @_raw_spin_unlock(ptr noundef %incoming_lock) #10
  %93 = ptrtoint ptr %peer212.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %peer212.i, align 4
  %rtt_count.i = getelementptr inbounds %struct.rxrpc_peer, ptr %94, i32 0, i32 19
  %95 = ptrtoint ptr %rtt_count.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rtt_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp.i = icmp ult i32 %96, 3
  br i1 %cmp.i, label %sw.epilog.if.then.i_crit_edge, label %lor.lhs.false.i

sw.epilog.if.then.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %97, align 8
  %rtt_last_req.i = getelementptr inbounds %struct.rxrpc_peer, ptr %94, i32 0, i32 18
  %100 = ptrtoint ptr %rtt_last_req.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rtt_last_req.i, align 8
  %add.i.i = add i64 %101, 1000000000
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %99)
  %cmp.i.i.i = icmp slt i64 %add.i.i, %99
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.rxrpc_send_ping.exit_crit_edge

lor.lhs.false.i.rxrpc_send_ping.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_send_ping.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.epilog.if.then.i_crit_edge
  %102 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %serial, align 4
  call void @rxrpc_propose_ACK(ptr noundef nonnull %45, i8 noundef zeroext 6, i32 noundef %103, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 6) #10
  br label %rxrpc_send_ping.exit

rxrpc_send_ping.exit:                             ; preds = %if.then.i, %lor.lhs.false.i.rxrpc_send_ping.exit_crit_edge
  call void @rxrpc_put_call(ptr noundef nonnull %45, i32 noundef 7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %104 = load i32, ptr @rxrpc_debug, align 4
  %and72 = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %rxrpc_send_ping.exit.cleanup_crit_edge, label %do.end83, !prof !88

rxrpc_send_ping.exit.cleanup_crit_edge:           ; preds = %rxrpc_send_ping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end83:                                         ; preds = %rxrpc_send_ping.exit
  call void @__sanitizer_cov_trace_pc() #12
  %105 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i175 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i175 to ptr
  %task86 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task86 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task86, align 8
  %comm87 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %45, i32 0, i32 48
  %109 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %debug_id, align 4
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm87, ptr noundef nonnull @.str.4, ptr noundef nonnull %45, i32 noundef %110) #14
  br label %cleanup

no_call:                                          ; preds = %if.then29, %if.then21.no_call_crit_edge, %if.then15
  call void @_raw_spin_unlock(ptr noundef %incoming_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %111 = load i32, ptr @rxrpc_debug, align 4
  %and95 = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %no_call.cleanup_crit_edge, label %do.end106, !prof !88

no_call.cleanup_crit_edge:                        ; preds = %no_call
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end106:                                        ; preds = %no_call
  call void @__sanitizer_cov_trace_pc() #12
  %112 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i176 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i176 to ptr
  %task109 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task109 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task109, align 8
  %comm110 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 101
  %116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm110, ptr noundef nonnull @.str.4, i32 noundef %118) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %no_call.cleanup_crit_edge, %do.end83, %rxrpc_send_ping.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %45, %do.end83 ], [ %45, %rxrpc_send_ping.exit.cleanup_crit_edge ], [ null, %do.end106 ], [ null, %no_call.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peer) #10
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_abort(i32 noundef %cid, i32 noundef %call_id, i32 noundef %seq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_abort, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %call42 = tail call i32 @__traceiter_rxrpc_abort(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %cid, i32 noundef %call_id, i32 noundef %seq, i32 noundef -2, i32 noundef 108) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !88

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_abort.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 726, ptr noundef nonnull @.str.14) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_find_connection_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_incoming_security(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_receive(ptr noundef %call, i32 noundef %serial, i32 noundef %seq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_receive, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_receive, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %call43 = tail call i32 @__traceiter_rxrpc_receive(ptr noundef null, ptr noundef %call, i32 noundef 2, i32 noundef %serial, i32 noundef %seq) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !88

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_receive, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_receive, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_receive.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_receive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1037, ptr noundef nonnull @.str.14) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_incoming_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_queue_conn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_set_call_completion(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_abort_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_user_charge_accept(ptr noundef %rx, i32 noundef %user_call_ID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %backlog = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 4
  %0 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backlog, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp = icmp eq i8 %3, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rxrpc_debug_id, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr nonnull @rxrpc_debug_id, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rxrpc_debug_id, ptr nonnull @rxrpc_debug_id, i32 1, ptr nonnull elementtype(i32) @rxrpc_debug_id) #10, !srcloc !113
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  %call2 = tail call fastcc i32 @rxrpc_service_prealloc_one(ptr noundef %rx, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef %user_call_ID, i32 noundef 3264, i32 noundef %asmresult.i.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_service_prealloc_one(ptr noundef %rx, ptr noundef %b, ptr noundef %notify_rx, ptr noundef readonly %user_attach_call, i32 noundef %user_call_ID, i32 noundef %gfp, i32 noundef %debug_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 9
  %1 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call fastcc ptr @rxrpc_net(ptr noundef %2)
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %rx, i32 0, i32 54
  %3 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sk_max_ack_backlog, align 8
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %rx, i32 0, i32 53
  %5 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_ack_backlog, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp sgt i32 %4, %6
  br i1 %cmp.not, label %if.end14, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %7 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup247_crit_edge, label %do.end, !prof !88

do.body.cleanup247_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm, ptr noundef nonnull @.str.26, i32 noundef %4) #14
  br label %cleanup247

if.end14:                                         ; preds = %entry
  %sub = sub i32 %4, %6
  %call_backlog_head = getelementptr inbounds %struct.rxrpc_backlog, ptr %b, i32 0, i32 4
  %12 = ptrtoint ptr %call_backlog_head to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call_backlog_head, align 4
  %conv = zext i16 %13 to i32
  %call_backlog_tail = getelementptr inbounds %struct.rxrpc_backlog, ptr %b, i32 0, i32 5
  %14 = ptrtoint ptr %call_backlog_tail to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load volatile i16, ptr %call_backlog_tail, align 2
  %conv19 = zext i16 %15 to i32
  %sub20 = sub nsw i32 %conv, %conv19
  %and22 = and i32 %sub20, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and22, i32 %sub)
  %cmp23.not = icmp slt i32 %and22, %sub
  br i1 %cmp23.not, label %if.end48, label %do.body26

do.body26:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %16 = load i32, ptr @rxrpc_debug, align 4
  %and27 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.cleanup247_crit_edge, label %do.end38, !prof !88

do.body26.cleanup247_crit_edge:                   ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i350 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i350 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task41, align 8
  %comm42 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm42, ptr noundef nonnull @.str.26, i32 noundef %and22) #14
  br label %cleanup247

if.end48:                                         ; preds = %if.end14
  %21 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %b, align 4
  %conv49 = zext i16 %22 to i32
  %peer_backlog_tail = getelementptr inbounds %struct.rxrpc_backlog, ptr %b, i32 0, i32 1
  %23 = ptrtoint ptr %peer_backlog_tail to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load volatile i16, ptr %peer_backlog_tail, align 2
  %conv54 = zext i16 %24 to i32
  %sub55 = sub nsw i32 %conv49, %conv54
  %and57 = and i32 %sub55, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and57, i32 %and22)
  %cmp58.not = icmp ugt i32 %and57, %and22
  br i1 %cmp58.not, label %if.end48.if.end91_crit_edge, label %if.then60

if.end48.if.end91_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then60:                                        ; preds = %if.end48
  %local = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 3
  %25 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %local, align 8
  %call61 = tail call ptr @rxrpc_alloc_peer(ptr noundef %26, i32 noundef %gfp) #10
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.then60.cleanup247_crit_edge, label %if.end64

if.then60.cleanup247_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

if.end64:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.rxrpc_backlog, ptr %b, i32 0, i32 6, i32 %conv49
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call61, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  %add78 = add i16 %22, 1
  %and80 = and i16 %add78, 31
  %28 = ptrtoint ptr %b to i32
  call void @__asan_store2_noabort(i32 %28)
  store volatile i16 %and80, ptr %b, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end64, %if.end48.if.end91_crit_edge
  %conn_backlog_head = getelementptr inbounds %struct.rxrpc_backlog, ptr %b, i32 0, i32 2
  %29 = ptrtoint ptr %conn_backlog_head to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %conn_backlog_head, align 4
  %conv92 = zext i16 %30 to i32
  %conn_backlog_tail = getelementptr inbounds %struct.rxrpc_backlog, ptr %b, i32 0, i32 3
  %31 = ptrtoint ptr %conn_backlog_tail to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load volatile i16, ptr %conn_backlog_tail, align 2
  %conv97 = zext i16 %32 to i32
  %sub98 = sub nsw i32 %conv92, %conv97
  %and100 = and i32 %sub98, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and100, i32 %and22)
  %cmp101.not = icmp ugt i32 %and100, %and22
  br i1 %cmp101.not, label %if.end91.if.end140_crit_edge, label %if.then103

if.end91.if.end140_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then103:                                       ; preds = %if.end91
  %call104 = tail call ptr @rxrpc_prealloc_service_connection(ptr noundef %call2, i32 noundef %gfp) #10
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.then103.cleanup247_crit_edge, label %if.end107

if.then103.cleanup247_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

if.end107:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx108 = getelementptr %struct.rxrpc_backlog, ptr %b, i32 0, i32 7, i32 %conv92
  %33 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call104, ptr %arrayidx108, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  %add122 = add i16 %30, 1
  %and124 = and i16 %add122, 31
  %34 = ptrtoint ptr %conn_backlog_head to i32
  call void @__asan_store2_noabort(i32 %34)
  store volatile i16 %and124, ptr %conn_backlog_head, align 4
  %debug_id135 = getelementptr inbounds %struct.rxrpc_connection, ptr %call104, i32 0, i32 23
  %35 = ptrtoint ptr %debug_id135 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug_id135, align 8
  %usage = getelementptr inbounds %struct.rxrpc_connection, ptr %call104, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %37 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %usage, align 4
  tail call fastcc void @trace_rxrpc_conn(i32 noundef %36, i32 noundef %38, ptr noundef %0)
  br label %if.end140

if.end140:                                        ; preds = %if.end107, %if.end91.if.end140_crit_edge
  %call141 = tail call ptr @rxrpc_alloc_call(ptr noundef %rx, i32 noundef %gfp, i32 noundef %debug_id) #10
  %tobool142.not = icmp eq ptr %call141, null
  br i1 %tobool142.not, label %if.end140.cleanup247_crit_edge, label %if.end144

if.end140.cleanup247_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

if.end144:                                        ; preds = %if.end140
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 33
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %or = or i32 %40, 4
  store i32 %or, ptr %flags, align 4
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 40
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 5, ptr %state, align 8
  %debug_id145 = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 48
  %42 = ptrtoint ptr %debug_id145 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_id145, align 4
  %usage146 = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 42
  %call.i.i349 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage146, i32 noundef 4) #10
  %44 = ptrtoint ptr %usage146 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %usage146, align 4
  %46 = inttoptr i32 %user_call_ID to ptr
  tail call fastcc void @trace_rxrpc_call(i32 noundef %43, i32 noundef %45, ptr noundef %0, ptr noundef %46)
  %call_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 14
  tail call void @_raw_write_lock(ptr noundef %call_lock) #10
  %calls = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 12
  %47 = ptrtoint ptr %calls to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %calls, align 4
  %tobool148.not359 = icmp eq ptr %48, null
  br i1 %tobool148.not359, label %if.end144.while.end_crit_edge, label %if.end144.while.body_crit_edge

if.end144.while.body_crit_edge:                   ; preds = %if.end144
  br label %while.body

if.end144.while.end_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end160.while.body_crit_edge, %if.end144.while.body_crit_edge
  %49 = phi ptr [ %53, %if.end160.while.body_crit_edge ], [ %48, %if.end144.while.body_crit_edge ]
  %user_call_ID150 = getelementptr i8, ptr %49, i32 84
  %50 = ptrtoint ptr %user_call_ID150 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %user_call_ID150, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %user_call_ID)
  %cmp151 = icmp ugt i32 %51, %user_call_ID
  br i1 %cmp151, label %if.then153, label %if.else

if.then153:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2
  br label %if.end160

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %user_call_ID)
  %cmp155 = icmp ult i32 %51, %user_call_ID
  br i1 %cmp155, label %if.then157, label %id_in_use

if.then157:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 1
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.then153
  %pp.1 = phi ptr [ %rb_left, %if.then153 ], [ %rb_right, %if.then157 ]
  %52 = ptrtoint ptr %pp.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pp.1, align 4
  %tobool148.not = icmp eq ptr %53, null
  br i1 %tobool148.not, label %while.cond.while.end_crit_edge, label %if.end160.while.body_crit_edge

if.end160.while.body_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le = ptrtoint ptr %49 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end144.while.end_crit_edge
  %pp.0.lcssa = phi ptr [ %pp.1, %while.cond.while.end_crit_edge ], [ %calls, %if.end144.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end144.while.end_crit_edge ]
  %user_call_ID161 = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 32
  %54 = ptrtoint ptr %user_call_ID161 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %user_call_ID, ptr %user_call_ID161, align 8
  %notify_rx162 = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 20
  %55 = ptrtoint ptr %notify_rx162 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %notify_rx, ptr %notify_rx162, align 8
  %tobool163.not = icmp eq ptr %user_attach_call, null
  br i1 %tobool163.not, label %while.end.if.end165_crit_edge, label %if.then164

while.end.if.end165_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then164:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_get_call(ptr noundef nonnull %call141, i32 noundef 3) #10
  tail call void %user_attach_call(ptr noundef nonnull %call141, i32 noundef %user_call_ID) #10
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %while.end.if.end165_crit_edge
  tail call void @rxrpc_get_call(ptr noundef nonnull %call141, i32 noundef 4) #10
  %sock_node = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 27
  %56 = ptrtoint ptr %sock_node to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %parent.0.lcssa, ptr %sock_node, align 4
  %rb_right.i = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 27, i32 1
  %57 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 27, i32 2
  %58 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rb_left.i, align 4
  %59 = ptrtoint ptr %pp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %sock_node, ptr %pp.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %sock_node, ptr noundef %calls) #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  %sock_link = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 26
  %sock_calls = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 6
  %60 = ptrtoint ptr %sock_calls to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sock_calls, align 4
  %call.i.i351 = tail call zeroext i1 @__list_add_valid(ptr noundef %sock_link, ptr noundef %sock_calls, ptr noundef %61) #10
  br i1 %call.i.i351, label %if.end.i.i, label %if.end165.list_add.exit_crit_edge

if.end165.list_add.exit_crit_edge:                ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %sock_link, ptr %prev1.i.i, align 4
  %63 = ptrtoint ptr %sock_link to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %61, ptr %sock_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 26, i32 1
  %64 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %sock_calls, ptr %prev3.i.i, align 4
  %65 = ptrtoint ptr %sock_calls to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %sock_link, ptr %sock_calls, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end165.list_add.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %call_lock) #10
  %rxnet170 = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 4
  %66 = ptrtoint ptr %rxnet170 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rxnet170, align 4
  %call_lock171 = getelementptr inbounds %struct.rxrpc_net, ptr %67, i32 0, i32 3
  tail call void @_raw_write_lock(ptr noundef %call_lock171) #10
  %link = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 21
  %calls172 = getelementptr inbounds %struct.rxrpc_net, ptr %67, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.rxrpc_net, ptr %67, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i, align 4
  %call.i.i352 = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %69, ptr noundef %calls172) #10
  br i1 %call.i.i352, label %if.end.i.i354, label %list_add.exit.list_add_tail.exit_crit_edge

list_add.exit.list_add_tail.exit_crit_edge:       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i354:                                    ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %link, ptr %prev.i, align 4
  %71 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %calls172, ptr %link, align 4
  %prev3.i.i353 = getelementptr inbounds %struct.rxrpc_call, ptr %call141, i32 0, i32 21, i32 1
  %72 = ptrtoint ptr %prev3.i.i353 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i353, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %link, ptr %69, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i354, %list_add.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %call_lock171) #10
  %arrayidx174 = getelementptr %struct.rxrpc_backlog, ptr %b, i32 0, i32 8, i32 %conv
  %74 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call141, ptr %arrayidx174, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  %add188 = add i16 %13, 1
  %and190 = and i16 %add188, 31
  %75 = ptrtoint ptr %call_backlog_head to i32
  call void @__asan_store2_noabort(i32 %75)
  store volatile i16 %and190, ptr %call_backlog_head, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %76 = load i32, ptr @rxrpc_debug, align 4
  %and202 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %list_add_tail.exit.cleanup247_crit_edge, label %do.end213, !prof !88

list_add_tail.exit.cleanup247_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

do.end213:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %77 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i355 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i355 to ptr
  %task216 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task216 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task216, align 8
  %comm217 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  %81 = ptrtoint ptr %debug_id145 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %debug_id145, align 4
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm217, ptr noundef nonnull @.str.26, i32 noundef %82, i32 noundef %user_call_ID) #14
  br label %cleanup247

id_in_use:                                        ; preds = %if.else
  tail call void @_raw_write_unlock(ptr noundef %call_lock) #10
  tail call void @rxrpc_cleanup_call(ptr noundef nonnull %call141) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %83 = load i32, ptr @rxrpc_debug, align 4
  %and226 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %id_in_use.cleanup247_crit_edge, label %do.end237, !prof !88

id_in_use.cleanup247_crit_edge:                   ; preds = %id_in_use
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

do.end237:                                        ; preds = %id_in_use
  call void @__sanitizer_cov_trace_pc() #12
  %84 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i356 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i356 to ptr
  %task240 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task240 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task240, align 8
  %comm241 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 101
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %comm241, ptr noundef nonnull @.str.26) #14
  br label %cleanup247

cleanup247:                                       ; preds = %do.end237, %id_in_use.cleanup247_crit_edge, %do.end213, %list_add_tail.exit.cleanup247_crit_edge, %if.end140.cleanup247_crit_edge, %if.then103.cleanup247_crit_edge, %if.then60.cleanup247_crit_edge, %do.end38, %do.body26.cleanup247_crit_edge, %do.end, %do.body.cleanup247_crit_edge
  %retval.3 = phi i32 [ -105, %do.end ], [ -105, %do.body.cleanup247_crit_edge ], [ -105, %do.end38 ], [ -105, %do.body26.cleanup247_crit_edge ], [ -12, %if.end140.cleanup247_crit_edge ], [ 0, %do.end213 ], [ 0, %list_add_tail.exit.cleanup247_crit_edge ], [ -57, %do.end237 ], [ -57, %id_in_use.cleanup247_crit_edge ], [ -12, %if.then60.cleanup247_crit_edge ], [ -12, %if.then103.cleanup247_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_kernel_charge_accept(ptr nocapture noundef readonly %sock, ptr noundef %notify_rx, ptr noundef %user_attach_call, i32 noundef %user_call_ID, i32 noundef %gfp, i32 noundef %debug_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %backlog = getelementptr inbounds %struct.rxrpc_sock, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlog, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp = icmp eq i8 %5, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @rxrpc_service_prealloc_one(ptr noundef %1, ptr noundef %3, ptr noundef %notify_rx, ptr noundef %user_attach_call, i32 noundef %user_call_ID, i32 noundef %gfp, i32 noundef %debug_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
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
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_abort(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_peer_maybe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_extract_addr_from_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_new_incoming_peer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_connection(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_new_incoming_connection(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_connection(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_see_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_peer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_receive(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_propose_ACK(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_alloc_peer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_prealloc_service_connection(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_conn(i32 noundef %conn_debug_id, i32 noundef %usage, ptr noundef %where) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_conn, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %call42 = tail call i32 @__traceiter_rxrpc_conn(ptr noundef null, i32 noundef %conn_debug_id, i32 noundef 2, i32 noundef %usage, ptr noundef %where) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !88

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_conn, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_conn.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 561, ptr noundef nonnull @.str.14) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_alloc_call(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_call(i32 noundef %call_debug_id, i32 noundef %usage, ptr noundef %where, ptr noundef %aux) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_call, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  %call42 = tail call i32 @__traceiter_rxrpc_call(ptr noundef null, i32 noundef %call_debug_id, i32 noundef 6, i32 noundef %usage, ptr noundef %where, ptr noundef %aux) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !88

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_call.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 621, ptr noundef nonnull @.str.14) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_get_call(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_cleanup_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_conn(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_call(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/call_accept.c", i32 225, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_discard_prealloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_discard_prealloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/call_accept.c", i32 357, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rxrpc_new_incoming_call._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rxrpc_new_incoming_call._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/rxrpc/call_accept.c", i32 362, i32 24}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/rxrpc/call_accept.c", i32 418, i32 20}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/rxrpc/call_accept.c", i32 436, i32 2}
!17 = !{ptr @rxrpc_new_incoming_call._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @rxrpc_new_incoming_call._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/rxrpc/call_accept.c", i32 441, i32 2}
!21 = !{ptr @rxrpc_new_incoming_call._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @rxrpc_new_incoming_call._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_rxrpc_kernel_charge_accept, !24, !"__ksymtab_rxrpc_kernel_charge_accept", i1 false, i1 false}
!24 = !{!"../net/rxrpc/call_accept.c", i32 491, i32 1}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/rxrpc.h", i32 696, i32 1}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/rxrpc/call_accept.c", i32 280, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rxrpc_alloc_incoming_call._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rxrpc_alloc_incoming_call._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rxrpc_alloc_incoming_call._entry.23, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../net/rxrpc/call_accept.c", i32 283, i32 2}
!51 = !{ptr @rxrpc_alloc_incoming_call._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/trace/events/rxrpc.h", i32 1006, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/rxrpc/call_accept.c", i32 52, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rxrpc_service_prealloc_one._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @rxrpc_service_prealloc_one._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/rxrpc/call_accept.c", i32 65, i32 3}
!62 = !{ptr @rxrpc_service_prealloc_one._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rxrpc_service_prealloc_one._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/rxrpc/call_accept.c", i32 149, i32 2}
!66 = !{ptr @rxrpc_service_prealloc_one._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rxrpc_service_prealloc_one._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/rxrpc/call_accept.c", i32 155, i32 2}
!70 = !{ptr @rxrpc_service_prealloc_one._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rxrpc_service_prealloc_one._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/trace/events/rxrpc.h", i32 536, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/trace/events/rxrpc.h", i32 593, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2148440900}
!90 = !{i64 2148355609, i64 2148355641, i64 2148355670, i64 2148355704, i64 2148355735, i64 2148355758}
!91 = !{i64 2148441129}
!92 = !{i64 2158157960}
!93 = !{i64 2149368583}
!94 = !{i64 2149368849}
!95 = !{i64 2158168432}
!96 = !{i64 2158174666}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2158177549, i64 2158178037, i64 2158177586, i64 2158177642, i64 2158177676, i64 2158177700, i64 2158177741, i64 2158177762, i64 2158177790, i64 2158177824}
!99 = !{i64 2158184972}
!100 = !{i64 2158187963, i64 2158188451, i64 2158188000, i64 2158188056, i64 2158188090, i64 2158188114, i64 2158188155, i64 2158188176, i64 2158188204, i64 2158188238}
!101 = !{i64 2158191561}
!102 = !{i64 2158200351}
!103 = !{i64 2158205066}
!104 = !{i64 2158209845, i64 2158210333, i64 2158209882, i64 2158209938, i64 2158209972, i64 2158209996, i64 2158210037, i64 2158210058, i64 2158210086, i64 2158210120}
!105 = !{i64 2148965801, i64 2148965806, i64 2148965819, i64 2148965863, i64 2148965897, i64 2148965918}
!106 = !{i64 2157587196}
!107 = !{i64 2157587481}
!108 = !{i64 2149377142}
!109 = !{i64 2149378178}
!110 = !{i64 2157769991}
!111 = !{i64 2157770224}
!112 = !{i64 2148437859}
!113 = !{i64 2148353144, i64 2148353176, i64 2148353205, i64 2148353239, i64 2148353270, i64 2148353293}
!114 = !{i64 2148438088}
!115 = !{i64 2158132203}
!116 = !{i64 2158139976}
!117 = !{i64 2158146257}
!118 = !{i64 2157477368}
!119 = !{i64 2157477613}
!120 = !{i64 2157515712}
!121 = !{i64 2157515967}
