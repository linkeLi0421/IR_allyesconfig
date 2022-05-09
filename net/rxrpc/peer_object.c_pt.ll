; ModuleID = '/llk/IR_all_yes/net/rxrpc/peer_object.c_pt.bc'
source_filename = "../net/rxrpc/peer_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rxrpc_kernel_get_peer\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_kernel_get_peer\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_kernel_get_peer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_kernel_get_peer:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_kernel_get_peer\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_kernel_get_peer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rxrpc_kernel_get_srtt\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_kernel_get_srtt\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_kernel_get_srtt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_kernel_get_srtt:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_kernel_get_srtt\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_kernel_get_srtt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.120, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.120 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.149 }
%union.anon.149 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.flowi = type { %union.anon.85 }
%union.anon.85 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.anon.86 = type { i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_lookup_peer_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] @@@ PEER %d {%pISp}\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxrpc_lookup_peer_rcu\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/rxrpc/peer_object.c\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer_rcu._entry_ptr = internal global ptr @rxrpc_lookup_peer_rcu._entry, section ".printk_index", align 4
@rxrpc_lookup_peer_rcu._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = %p {u=%d}\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer_rcu._entry_ptr.5 = internal global ptr @rxrpc_lookup_peer_rcu._entry.3, section ".printk_index", align 4
@rxrpc_alloc_peer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxrpc_alloc_peer\00", [47 x i8] zeroinitializer }, align 32
@rxrpc_alloc_peer._entry_ptr = internal global ptr @rxrpc_alloc_peer._entry, section ".printk_index", align 4
@rxrpc_alloc_peer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&peer->service_conn_lock)->lock\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_alloc_peer.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@rxrpc_alloc_peer.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&peer->lock\00", [20 x i8] zeroinitializer }, align 32
@rxrpc_alloc_peer.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&peer->rtt_input_lock\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_debug_id = external dso_local global %struct.atomic_t, align 4
@rxrpc_alloc_peer._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_peer._entry_ptr.17 = internal global ptr @rxrpc_alloc_peer._entry.15, section ".printk_index", align 4
@rxrpc_lookup_peer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s({%pISp})\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxrpc_lookup_peer\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer._entry_ptr = internal global ptr @rxrpc_lookup_peer._entry, section ".printk_index", align 4
@rxrpc_lookup_peer._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] <== %s() = NULL [nomem]\0A\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer._entry_ptr.22 = internal global ptr @rxrpc_lookup_peer._entry.20, section ".printk_index", align 4
@rxrpc_lookup_peer._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.19, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer._entry_ptr.24 = internal global ptr @rxrpc_lookup_peer._entry.23, section ".printk_index", align 4
@rxrpc_lookup_peer._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.19, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_lookup_peer._entry_ptr.26 = internal global ptr @rxrpc_lookup_peer._entry.25, section ".printk_index", align 4
@rxrpc_destroy_all_peers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013rxrpc: Leaked peer %u {%u} %pISp\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rxrpc_destroy_all_peers\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_peers._entry_ptr = internal global ptr @rxrpc_destroy_all_peers._entry, section ".printk_index", align 4
@__kstrtab_rxrpc_kernel_get_peer = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_kernel_get_peer = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_kernel_get_peer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_kernel_get_peer to i32), ptr @__kstrtab_rxrpc_kernel_get_peer, ptr @__kstrtabns_rxrpc_kernel_get_peer }, section "___ksymtab+rxrpc_kernel_get_peer", align 4
@__kstrtab_rxrpc_kernel_get_srtt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_kernel_get_srtt = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_kernel_get_srtt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_kernel_get_srtt to i32), ptr @__kstrtab_rxrpc_kernel_get_srtt, ptr @__kstrtabns_rxrpc_kernel_get_srtt }, section "___ksymtab+rxrpc_kernel_get_srtt", align 4
@rxrpc_peer_hash_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.29, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxrpc_peer_hash_key\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_peer_hash_key._entry_ptr = internal global ptr @rxrpc_peer_hash_key._entry, section ".printk_index", align 4
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"AF_RXRPC: Unsupported transport address family\0A\00", [48 x i8] zeroinitializer }, align 32
@rxrpc_peer_hash_key._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() 0x%lx\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_peer_hash_key._entry_ptr.33 = internal global ptr @rxrpc_peer_hash_key._entry.31, section ".printk_index", align 4
@__rxrpc_lookup_peer_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_rxrpc_peer = external dso_local global %struct.tracepoint, align 4
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_peer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_assess_MTU_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] <== %s() [route err %ld]\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxrpc_assess_MTU_size\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_assess_MTU_size._entry_ptr = internal global ptr @rxrpc_assess_MTU_size._entry, section ".printk_index", align 4
@rxrpc_assess_MTU_size._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] <== %s() [route err %d]\0A\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_assess_MTU_size._entry_ptr.42 = internal global ptr @rxrpc_assess_MTU_size._entry.40, section ".printk_index", align 4
@rxrpc_assess_MTU_size._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() [if_mtu %u]\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_assess_MTU_size._entry_ptr.45 = internal global ptr @rxrpc_assess_MTU_size._entry.43, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rxrpc_create_peer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.49, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxrpc_create_peer\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_create_peer._entry_ptr = internal global ptr @rxrpc_create_peer._entry, section ".printk_index", align 4
@rxrpc_create_peer._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.49, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_create_peer._entry_ptr.51 = internal global ptr @rxrpc_create_peer._entry.50, section ".printk_index", align 4
@__rxrpc_put_peer._entry = internal constant %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 422, ptr null, ptr null }, align 1
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__rxrpc_put_peer\00", [47 x i8] zeroinitializer }, align 32
@__rxrpc_put_peer._entry_ptr = internal global ptr @__rxrpc_put_peer._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 142, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 143, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 215, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 223, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 224, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 225, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 239, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 339, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 354, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 379, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 381, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 482, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 35, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 56, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 64, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 122, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 509, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 108, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 174, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 191, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 204, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 695, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 723, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 290, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 298, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [27 x i8] c"../net/rxrpc/peer_object.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 422, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__ksymtab_rxrpc_kernel_get_peer, ptr @__ksymtab_rxrpc_kernel_get_srtt, ptr @__rxrpc_put_peer._entry, ptr @__rxrpc_put_peer._entry_ptr, ptr @rxrpc_alloc_peer._entry, ptr @rxrpc_alloc_peer._entry.15, ptr @rxrpc_alloc_peer._entry_ptr, ptr @rxrpc_alloc_peer._entry_ptr.17, ptr @rxrpc_assess_MTU_size._entry, ptr @rxrpc_assess_MTU_size._entry.40, ptr @rxrpc_assess_MTU_size._entry.43, ptr @rxrpc_assess_MTU_size._entry_ptr, ptr @rxrpc_assess_MTU_size._entry_ptr.42, ptr @rxrpc_assess_MTU_size._entry_ptr.45, ptr @rxrpc_create_peer._entry, ptr @rxrpc_create_peer._entry.50, ptr @rxrpc_create_peer._entry_ptr, ptr @rxrpc_create_peer._entry_ptr.51, ptr @rxrpc_destroy_all_peers._entry, ptr @rxrpc_destroy_all_peers._entry_ptr, ptr @rxrpc_lookup_peer._entry, ptr @rxrpc_lookup_peer._entry.20, ptr @rxrpc_lookup_peer._entry.23, ptr @rxrpc_lookup_peer._entry.25, ptr @rxrpc_lookup_peer._entry_ptr, ptr @rxrpc_lookup_peer._entry_ptr.22, ptr @rxrpc_lookup_peer._entry_ptr.24, ptr @rxrpc_lookup_peer._entry_ptr.26, ptr @rxrpc_lookup_peer_rcu._entry, ptr @rxrpc_lookup_peer_rcu._entry.3, ptr @rxrpc_lookup_peer_rcu._entry_ptr, ptr @rxrpc_lookup_peer_rcu._entry_ptr.5, ptr @rxrpc_peer_hash_key._entry, ptr @rxrpc_peer_hash_key._entry.31, ptr @rxrpc_peer_hash_key._entry_ptr, ptr @rxrpc_peer_hash_key._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @rxrpc_alloc_peer.__key, ptr @.str.8, ptr @rxrpc_alloc_peer.__key.9, ptr @.str.10, ptr @rxrpc_alloc_peer.__key.11, ptr @.str.12, ptr @rxrpc_alloc_peer.__key.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer_rcu._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_peer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_peer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_peer.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_peer.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_peer.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_peer._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_peer._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_peers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_peer_hash_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_peer_hash_key._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_assess_MTU_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_assess_MTU_size._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_assess_MTU_size._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_create_peer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_create_peer._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_lookup_peer_rcu(ptr noundef %local, ptr nocapture noundef readonly %srx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rxrpc_peer_hash_key(ptr noundef %local, ptr noundef %srx)
  %call1 = tail call fastcc ptr @__rxrpc_lookup_peer_rcu(ptr noundef %local, ptr noundef %srx, i32 noundef %call)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %do.body

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.body12_crit_edge, label %do.end, !prof !117

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_peer, ptr %call1, i32 0, i32 15
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %call1, i32 0, i32 16, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, i32 noundef %6, ptr noundef %transport) #15
  br label %do.body12

do.body12:                                        ; preds = %do.end, %do.body.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %7 = load i32, ptr @rxrpc_debug, align 4
  %and13 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.if.end35_crit_edge, label %do.end24, !prof !117

do.body12.if.end35_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end24:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i43 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i43 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %call1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #12
  %12 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %usage, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm28, ptr noundef nonnull @.str.1, ptr noundef nonnull %call1, i32 noundef %13) #15
  br label %if.end35

if.end35:                                         ; preds = %do.end24, %do.body12.if.end35_crit_edge, %entry.if.end35_crit_edge
  ret ptr %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_peer_hash_key(ptr noundef %local, ptr nocapture noundef readonly %srx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !117

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.29) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = ptrtoint ptr %local to i32
  %div94 = lshr i32 %5, 2
  %transport_type = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 2
  %6 = ptrtoint ptr %transport_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_type, align 4
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %div94, %conv
  %transport_len = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 3
  %8 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_len, align 2
  %conv7 = zext i16 %9 to i32
  %add8 = add nuw nsw i32 %add, %conv7
  %transport = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %10 = ptrtoint ptr %transport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport, align 4
  %conv9 = zext i16 %11 to i32
  %add10 = add nuw nsw i32 %add8, %conv9
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %do.end34 [
    i16 2, label %sw.bb
    i16 10, label %sw.bb17
  ]

sw.bb:                                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  br label %for.body

sw.bb17:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 3
  br label %for.body

do.end34:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.30) #12
  br label %cleanup

for.body:                                         ; preds = %sw.bb17, %sw.bb
  %cmp.1 = phi i1 [ true, %sw.bb17 ], [ false, %sw.bb ]
  %p.0 = phi ptr [ %sin6_addr, %sw.bb17 ], [ %sin_addr, %sw.bb ]
  %conv20.pn.in.in = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %conv20.pn.in.in to i32
  call void @__asan_load2_noabort(i32 %13)
  %conv20.pn.in = load i16, ptr %conv20.pn.in.in, align 2
  %conv20.pn = zext i16 %conv20.pn.in to i32
  %hash_key.0 = add nuw nsw i32 %add10, %conv20.pn
  %14 = ptrtoint ptr %p.0 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %p.0, align 2
  %conv49 = zext i16 %15 to i32
  %add50 = add nuw i32 %hash_key.0, %conv49
  %incdec.ptr = getelementptr i16, ptr %p.0, i32 1
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incdec.ptr, align 2
  %conv49.1 = zext i16 %17 to i32
  %add50.1 = add i32 %add50, %conv49.1
  br i1 %cmp.1, label %for.body.2, label %for.body.do.body52_crit_edge

for.body.do.body52_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52

for.body.2:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.1 = getelementptr i16, ptr %p.0, i32 2
  %18 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %incdec.ptr.1, align 2
  %conv49.2 = zext i16 %19 to i32
  %add50.2 = add i32 %add50.1, %conv49.2
  %incdec.ptr.2 = getelementptr i16, ptr %p.0, i32 3
  %20 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %incdec.ptr.2, align 2
  %conv49.3 = zext i16 %21 to i32
  %add50.3 = add i32 %add50.2, %conv49.3
  %incdec.ptr.3 = getelementptr i16, ptr %p.0, i32 4
  %22 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %incdec.ptr.3, align 2
  %conv49.4 = zext i16 %23 to i32
  %add50.4 = add i32 %add50.3, %conv49.4
  %incdec.ptr.4 = getelementptr i16, ptr %p.0, i32 5
  %24 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %incdec.ptr.4, align 2
  %conv49.5 = zext i16 %25 to i32
  %add50.5 = add i32 %add50.4, %conv49.5
  %incdec.ptr.5 = getelementptr i16, ptr %p.0, i32 6
  %26 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %incdec.ptr.5, align 2
  %conv49.6 = zext i16 %27 to i32
  %add50.6 = add i32 %add50.5, %conv49.6
  %incdec.ptr.6 = getelementptr i16, ptr %p.0, i32 7
  %28 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %incdec.ptr.6, align 2
  %conv49.7 = zext i16 %29 to i32
  %add50.7 = add i32 %add50.6, %conv49.7
  br label %do.body52

do.body52:                                        ; preds = %for.body.2, %for.body.do.body52_crit_edge
  %add50.lcssa = phi i32 [ %add50.1, %for.body.do.body52_crit_edge ], [ %add50.7, %for.body.2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %30 = load i32, ptr @rxrpc_debug, align 4
  %and53 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.cleanup_crit_edge, label %do.end64, !prof !117

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end64:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i95 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i95 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task67, align 8
  %comm68 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 101
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm68, ptr noundef nonnull @.str.29, i32 noundef %add50.lcssa) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.body52.cleanup_crit_edge, %do.end34
  %retval.0 = phi i32 [ 0, %do.end34 ], [ %add50.lcssa, %do.end64 ], [ %add50.lcssa, %do.body52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rxrpc_lookup_peer_rcu(ptr noundef %local, ptr nocapture noundef readonly %srx, i32 noundef %hash_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rxnet1 = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 3
  %0 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxnet1, align 4
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @__rxrpc_lookup_peer_rcu.__warned, align 1
  br i1 %.b46, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rxrpc_lookup_peer_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 122, ptr noundef nonnull @.str.34) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mul.i.i = mul i32 %hash_key, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx = getelementptr %struct.rxrpc_net, ptr %1, i32 0, i32 21, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %tobool14.not5357 = icmp eq ptr %add.ptr, null
  %tobool14.not53 = or i1 %tobool12.not, %tobool14.not5357
  br i1 %tobool14.not53, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %transport_type8.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 2
  %transport_len16.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 3
  %transport24.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %sin6_port57.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %sin6_addr66.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 3
  %sin_addr49.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %peer.054 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr32, %for.inc.for.body_crit_edge ]
  %hash_key1.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 2
  %4 = ptrtoint ptr %hash_key1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash_key1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %hash_key)
  %tobool.not.i = icmp eq i32 %5, %hash_key
  br i1 %tobool.not.i, label %cond.false.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cond.false.i:                                     ; preds = %for.body
  %local2.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 4
  %6 = ptrtoint ptr %local2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local2.i, align 8
  %tobool4.not.i = icmp eq ptr %7, %local
  br i1 %tobool4.not.i, label %cond.false6.i, label %cond.false.i.for.inc_crit_edge

cond.false.i.for.inc_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cond.false6.i:                                    ; preds = %cond.false.i
  %transport_type.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 16, i32 2
  %8 = ptrtoint ptr %transport_type.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_type.i, align 4
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %transport_type8.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_type8.i, align 4
  %conv9.i = zext i16 %11 to i32
  %sub10.i = sub nsw i32 %conv.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %tobool11.not.i = icmp eq i32 %sub10.i, 0
  br i1 %tobool11.not.i, label %cond.false13.i, label %cond.false6.i.cond.end31.i_crit_edge

cond.false6.i.cond.end31.i_crit_edge:             ; preds = %cond.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end31.i

cond.false13.i:                                   ; preds = %cond.false6.i
  %transport_len.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 16, i32 3
  %12 = ptrtoint ptr %transport_len.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_len.i, align 2
  %conv15.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %transport_len16.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_len16.i, align 2
  %conv17.i = zext i16 %15 to i32
  %sub18.i = sub nsw i32 %conv15.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i)
  %tobool19.not.i = icmp eq i32 %sub18.i, 0
  br i1 %tobool19.not.i, label %cond.false21.i, label %cond.false13.i.cond.end31.i_crit_edge

cond.false13.i.cond.end31.i_crit_edge:            ; preds = %cond.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end31.i

cond.false21.i:                                   ; preds = %cond.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  %transport.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 16, i32 4
  %16 = ptrtoint ptr %transport.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transport.i, align 8
  %conv23.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %transport24.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %transport24.i, align 4
  %conv25.i = zext i16 %19 to i32
  %sub26.i = sub nsw i32 %conv23.i, %conv25.i
  br label %cond.end31.i

cond.end31.i:                                     ; preds = %cond.false21.i, %cond.false13.i.cond.end31.i_crit_edge, %cond.false6.i.cond.end31.i_crit_edge
  %cond32.i = phi i32 [ %sub10.i, %cond.false6.i.cond.end31.i_crit_edge ], [ %sub26.i, %cond.false21.i ], [ %sub18.i, %cond.false13.i.cond.end31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond32.i)
  %cmp.not.i = icmp eq i32 %cond32.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %cond.end31.i.rxrpc_peer_cmp_key.exit_crit_edge

cond.end31.i.rxrpc_peer_cmp_key.exit_crit_edge:   ; preds = %cond.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxrpc_peer_cmp_key.exit

if.end.i:                                         ; preds = %cond.end31.i
  %20 = ptrtoint ptr %transport24.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %transport24.i, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %21, label %do.body.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb52.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %sin_port.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 16, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sin_port.i, align 2
  %conv38.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %sin6_port57.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sin6_port57.i, align 2
  %conv41.i = zext i16 %26 to i32
  %sub42.i = sub nsw i32 %conv38.i, %conv41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub42.i)
  %tobool43.not.i = icmp eq i32 %sub42.i, 0
  br i1 %tobool43.not.i, label %cond.false45.i, label %sw.bb.i.rxrpc_peer_cmp_key.exit_crit_edge

sw.bb.i.rxrpc_peer_cmp_key.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxrpc_peer_cmp_key.exit

cond.false45.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 16, i32 4, i32 0, i32 2
  %call.i = tail call i32 @memcmp(ptr noundef dereferenceable(4) %sin_addr.i, ptr noundef dereferenceable(4) %sin_addr49.i, i32 noundef 4) #16
  br label %rxrpc_peer_cmp_key.exit

sw.bb52.i:                                        ; preds = %if.end.i
  %sin6_port.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 16, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sin6_port.i, align 2
  %conv55.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %sin6_port57.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sin6_port57.i, align 2
  %conv58.i = zext i16 %30 to i32
  %sub59.i = sub nsw i32 %conv55.i, %conv58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub59.i)
  %tobool60.not.i = icmp eq i32 %sub59.i, 0
  br i1 %tobool60.not.i, label %cond.false62.i, label %sw.bb52.i.rxrpc_peer_cmp_key.exit_crit_edge

sw.bb52.i.rxrpc_peer_cmp_key.exit_crit_edge:      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxrpc_peer_cmp_key.exit

cond.false62.i:                                   ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 16, i32 4, i32 0, i32 3
  %call67.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %sin6_addr.i, ptr noundef dereferenceable(16) %sin6_addr66.i, i32 noundef 16) #16
  br label %rxrpc_peer_cmp_key.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/peer_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #12, !srcloc !118
  unreachable

rxrpc_peer_cmp_key.exit:                          ; preds = %cond.false62.i, %sw.bb52.i.rxrpc_peer_cmp_key.exit_crit_edge, %cond.false45.i, %sw.bb.i.rxrpc_peer_cmp_key.exit_crit_edge, %cond.end31.i.rxrpc_peer_cmp_key.exit_crit_edge
  %retval.0.i = phi i32 [ %cond32.i, %cond.end31.i.rxrpc_peer_cmp_key.exit_crit_edge ], [ %call.i, %cond.false45.i ], [ %sub42.i, %sw.bb.i.rxrpc_peer_cmp_key.exit_crit_edge ], [ %call67.i, %cond.false62.i ], [ %sub59.i, %sw.bb52.i.rxrpc_peer_cmp_key.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %land.lhs.true16, label %rxrpc_peer_cmp_key.exit.for.inc_crit_edge

rxrpc_peer_cmp_key.exit.for.inc_crit_edge:        ; preds = %rxrpc_peer_cmp_key.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true16:                                  ; preds = %rxrpc_peer_cmp_key.exit
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #12
  %31 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp18 = icmp sgt i32 %32, 0
  br i1 %cmp18, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %rxrpc_peer_cmp_key.exit.for.inc_crit_edge, %cond.false.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hash_link = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.054, i32 0, i32 3
  %33 = ptrtoint ptr %hash_link to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hash_link, align 8
  %tobool28.not = icmp eq ptr %34, null
  %add.ptr32 = getelementptr i8, ptr %34, i32 -16
  %tobool14.not58 = icmp eq ptr %add.ptr32, null
  %tobool14.not = or i1 %tobool28.not, %tobool14.not58
  br i1 %tobool14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %peer.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %peer.054, %land.lhs.true16.cleanup_crit_edge ]
  ret ptr %peer.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_alloc_peer(ptr noundef %local, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %1 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !117

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.7) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end6.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !117

do.end6.kzalloc.exit_crit_edge:                   ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %do.end6
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %do.end6.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %do.end6.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %6 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef %or.i, i32 noundef 320) #17
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %kzalloc.exit.do.body42_crit_edge, label %if.then9

kzalloc.exit.do.body42_crit_edge:                 ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

if.then9:                                         ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %usage, align 8
  %call10 = tail call ptr @rxrpc_get_local(ptr noundef %local) #12
  %local11 = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %local11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %local11, align 8
  %error_targets = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %error_targets to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %error_targets, align 4
  %service_conns = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %service_conns to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %service_conns, align 8
  %service_conn_lock = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 9
  %lock = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 9, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @rxrpc_alloc_peer.__key, i16 noundef signext 3) #12
  %dep_map.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @rxrpc_alloc_peer.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %12 = ptrtoint ptr %service_conn_lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %service_conn_lock, align 8
  %lock25 = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %13 = ptrtoint ptr %lock25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock, ptr %lock25, align 8
  %lock31 = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock31, ptr noundef nonnull @.str.12, ptr noundef nonnull @rxrpc_alloc_peer.__key.11, i16 noundef signext 3) #12
  %rtt_input_lock = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %rtt_input_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @rxrpc_alloc_peer.__key.13, i16 noundef signext 3) #12
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rxrpc_debug_id, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr nonnull @rxrpc_debug_id, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rxrpc_debug_id, ptr nonnull @rxrpc_debug_id, i32 1, ptr nonnull elementtype(i32) @rxrpc_debug_id) #12, !srcloc !120
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  %debug_id = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 15
  %15 = ptrtoint ptr %debug_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %asmresult.i.i.i.i, ptr %debug_id, align 4
  tail call void @rxrpc_peer_init_rtt(ptr noundef nonnull %call7.i.i) #12
  %cong_cwnd = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i.i, i32 0, i32 26
  %16 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %cong_cwnd, align 1
  %17 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_rxrpc_peer(i32 noundef %18, i32 noundef 1, i32 noundef 1, ptr noundef %0)
  br label %do.body42

do.body42:                                        ; preds = %if.then9, %kzalloc.exit.do.body42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %19 = load i32, ptr @rxrpc_debug, align 4
  %and43 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end63_crit_edge, label %do.end54, !prof !117

do.body42.do.end63_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

do.end54:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i81 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i81 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task57, align 8
  %comm58 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm58, ptr noundef nonnull @.str.7, ptr noundef %call7.i.i) #15
  br label %do.end63

do.end63:                                         ; preds = %do.end54, %do.body42.do.end63_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_get_local(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_peer_init_rtt(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_peer(i32 noundef %peer_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_peer, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_peer, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !122

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %call42 = tail call i32 @__traceiter_rxrpc_peer(ptr noundef null, i32 noundef %peer_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_peer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_peer, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_peer.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_rxrpc_peer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 534, ptr noundef nonnull @.str.36) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_new_incoming_peer(ptr nocapture noundef readonly %rx, ptr noundef %local, ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rxnet1 = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 3
  %0 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxnet1, align 4
  %srx = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 16
  %call = tail call fastcc i32 @rxrpc_peer_hash_key(ptr noundef %local, ptr noundef %srx)
  tail call fastcc void @rxrpc_init_peer(ptr noundef %rx, ptr noundef %peer, i32 noundef %call)
  %peer_hash_lock = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %peer_hash_lock) #12
  %hash_link = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 3
  %mul.i.i = mul i32 %call, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx = getelementptr %struct.rxrpc_net, ptr %1, i32 0, i32 21, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %hash_link to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %hash_link, align 4
  %pprev.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %hash_link, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

entry.hlist_add_head_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %hash_link, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %entry.hlist_add_head_rcu.exit_crit_edge
  %keepalive_link = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 7
  %peer_keepalive_new = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 26
  %prev.i = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 26, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %keepalive_link, ptr noundef %9, ptr noundef %peer_keepalive_new) #12
  br i1 %call.i.i, label %if.end.i.i, label %hlist_add_head_rcu.exit.list_add_tail.exit_crit_edge

hlist_add_head_rcu.exit.list_add_tail.exit_crit_edge: ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %keepalive_link, ptr %prev.i, align 4
  %11 = ptrtoint ptr %keepalive_link to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %peer_keepalive_new, ptr %keepalive_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %keepalive_link, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %hlist_add_head_rcu.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %peer_hash_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxrpc_init_peer(ptr nocapture noundef readonly %rx, ptr nocapture noundef %peer, i32 noundef %hash_key) unnamed_addr #0 align 64 {
entry:
  %fl.i = alloca %struct.flowi, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_key1 = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 2
  %0 = ptrtoint ptr %hash_key1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %hash_key, ptr %hash_key1, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 9
  %1 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl.i) #12
  %if_mtu.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 11
  %3 = ptrtoint ptr %if_mtu.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1500, ptr %if_mtu.i, align 4
  %4 = call ptr @memset(ptr %fl.i, i32 0, i32 88)
  %transport.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 16, i32 4
  %5 = ptrtoint ptr %transport.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %transport.i, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %6, label %do.body51.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb17.i
  ]

sw.bb.i:                                          ; preds = %entry
  %sin_addr.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 16, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr.i, align 4
  %user_ns.i.i.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 11
  %10 = ptrtoint ptr %user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i.i.i, align 4
  %call.i.i.i = tail call i32 @make_kuid(ptr noundef %11, i32 noundef 0) #12
  %12 = ptrtoint ptr %fl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fl.i, align 8
  %flowic_iif.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 1
  %13 = ptrtoint ptr %flowic_iif.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %flowic_iif.i.i.i, align 4
  %flowic_mark.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 2
  %14 = ptrtoint ptr %flowic_mark.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flowic_mark.i.i.i, align 8
  %flowic_tos.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 3
  %15 = ptrtoint ptr %flowic_tos.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %flowic_tos.i.i.i, align 4
  %flowic_scope.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 4
  %16 = ptrtoint ptr %flowic_scope.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %flowic_scope.i.i.i, align 1
  %flowic_proto.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 5
  %17 = ptrtoint ptr %flowic_proto.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 17, ptr %flowic_proto.i.i.i, align 2
  %flowic_flags.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 6
  %18 = ptrtoint ptr %flowic_flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %flowic_flags.i.i.i, align 1
  %flowic_secid.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 7
  %19 = ptrtoint ptr %flowic_secid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flowic_secid.i.i.i, align 8
  %flowic_tun_key.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 9
  %20 = ptrtoint ptr %flowic_tun_key.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %flowic_tun_key.i.i.i, align 8
  %flowic_uid.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 8
  %21 = ptrtoint ptr %flowic_uid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i.i.i, ptr %flowic_uid.i.i.i, align 4
  %daddr10.i.i.i = getelementptr inbounds %struct.flowi4, ptr %fl.i, i32 0, i32 2
  %22 = ptrtoint ptr %daddr10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %9, ptr %daddr10.i.i.i, align 4
  %saddr11.i.i.i = getelementptr inbounds %struct.flowi4, ptr %fl.i, i32 0, i32 1
  %23 = ptrtoint ptr %saddr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %saddr11.i.i.i, align 8
  %uli.i.i.i = getelementptr inbounds %struct.flowi4, ptr %fl.i, i32 0, i32 3
  %24 = ptrtoint ptr %uli.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 7000, ptr %uli.i.i.i, align 8
  %sport14.i.i.i = getelementptr inbounds %struct.anon.86, ptr %uli.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %sport14.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 7001, ptr %sport14.i.i.i, align 2
  %flowic_multipath_hash.i.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 10
  %26 = ptrtoint ptr %flowic_multipath_hash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flowic_multipath_hash.i.i.i, align 8
  %call11.i.i = call ptr @ip_route_output_flow(ptr noundef %2, ptr noundef nonnull %fl.i, ptr noundef null) #12
  %cmp.i.i = icmp ugt ptr %call11.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.body.i:                                        ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %27 = load i32, ptr @rxrpc_debug, align 4
  %and.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.rxrpc_assess_MTU_size.exit_crit_edge, label %do.end.i, !prof !117

do.body.i.rxrpc_assess_MTU_size.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxrpc_assess_MTU_size.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %32 = ptrtoint ptr %call11.i.i to i32
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm.i, ptr noundef nonnull @.str.39, i32 noundef %32) #15
  br label %rxrpc_assess_MTU_size.exit

sw.bb17.i:                                        ; preds = %entry
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 1
  %33 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl.i, i32 0, i32 5
  %34 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 17, ptr %flowic_proto.i, align 2
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl.i, i32 0, i32 1
  %sin6_addr.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 16, i32 4, i32 0, i32 3
  %35 = call ptr @memcpy(ptr %daddr.i, ptr %sin6_addr.i, i32 16)
  %uli.i = getelementptr inbounds %struct.flowi6, ptr %fl.i, i32 0, i32 4
  %36 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 7001, ptr %uli.i, align 4
  %sport.i = getelementptr inbounds %struct.anon.86, ptr %uli.i, i32 0, i32 1
  %37 = ptrtoint ptr %sport.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 7000, ptr %sport.i, align 2
  %call.i.i = call ptr @ip6_route_output_flags(ptr noundef %2, ptr noundef null, ptr noundef nonnull %fl.i, i32 noundef 0) #12
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %call.i.i, i32 0, i32 15
  %38 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool24.not.i = icmp eq i16 %39, 0
  br i1 %tobool24.not.i, label %sw.bb17.i.sw.epilog.i_crit_edge, label %do.body26.i

sw.bb17.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.body26.i:                                      ; preds = %sw.bb17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %40 = load i32, ptr @rxrpc_debug, align 4
  %and27.i = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.rxrpc_assess_MTU_size.exit_crit_edge, label %do.end38.i, !prof !117

do.body26.i.rxrpc_assess_MTU_size.exit_crit_edge: ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxrpc_assess_MTU_size.exit

do.end38.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i104.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i104.i to ptr
  %task41.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task41.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task41.i, align 8
  %comm42.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 101
  %conv45.i = sext i16 %39 to i32
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm42.i, ptr noundef nonnull @.str.39, i32 noundef %conv45.i) #15
  br label %rxrpc_assess_MTU_size.exit

do.body51.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/peer_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #12, !srcloc !128
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb17.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %dst.0.i = phi ptr [ %call.i.i, %sw.bb17.i.sw.epilog.i_crit_edge ], [ %call11.i.i, %sw.bb.i.sw.epilog.i_crit_edge ]
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst.0.i, i32 0, i32 1
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mtu.i.i, align 4
  %call.i105.i = call i32 %48(ptr noundef %dst.0.i) #12
  %49 = ptrtoint ptr %if_mtu.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i105.i, ptr %if_mtu.i, align 4
  call void @dst_release(ptr noundef %dst.0.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %50 = load i32, ptr @rxrpc_debug, align 4
  %and60.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %sw.epilog.i.rxrpc_assess_MTU_size.exit_crit_edge, label %do.end71.i, !prof !117

sw.epilog.i.rxrpc_assess_MTU_size.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxrpc_assess_MTU_size.exit

do.end71.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i106.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i106.i to ptr
  %task74.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task74.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task74.i, align 8
  %comm75.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %55 = ptrtoint ptr %if_mtu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %if_mtu.i, align 4
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %comm75.i, ptr noundef nonnull @.str.39, i32 noundef %56) #15
  br label %rxrpc_assess_MTU_size.exit

rxrpc_assess_MTU_size.exit:                       ; preds = %do.end71.i, %sw.epilog.i.rxrpc_assess_MTU_size.exit_crit_edge, %do.end38.i, %do.body26.i.rxrpc_assess_MTU_size.exit_crit_edge, %do.end.i, %do.body.i.rxrpc_assess_MTU_size.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl.i) #12
  %57 = ptrtoint ptr %if_mtu.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %if_mtu.i, align 4
  %mtu = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 12
  %59 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %mtu, align 8
  %call.i = call i64 @ktime_get_with_offset(i32 noundef 0) #12
  %rtt_last_req = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 18
  %60 = ptrtoint ptr %rtt_last_req to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %call.i, ptr %rtt_last_req, align 8
  %61 = ptrtoint ptr %transport.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %transport.i, align 8
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %62, label %do.body [
    i16 2, label %rxrpc_assess_MTU_size.exit.sw.epilog_crit_edge
    i16 10, label %sw.bb2
  ]

rxrpc_assess_MTU_size.exit.sw.epilog_crit_edge:   ; preds = %rxrpc_assess_MTU_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %rxrpc_assess_MTU_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body:                                          ; preds = %rxrpc_assess_MTU_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/peer_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 264, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

sw.epilog:                                        ; preds = %sw.bb2, %rxrpc_assess_MTU_size.exit.sw.epilog_crit_edge
  %.sink = phi i16 [ 40, %sw.bb2 ], [ 20, %rxrpc_assess_MTU_size.exit.sw.epilog_crit_edge ]
  %hdrsize3 = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 14
  %64 = ptrtoint ptr %hdrsize3 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %.sink, ptr %hdrsize3, align 8
  %transport_type = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 16, i32 2
  %65 = ptrtoint ptr %transport_type to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %transport_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %66)
  %cond = icmp eq i16 %66, 2
  br i1 %cond, label %sw.bb8, label %do.body13

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %hdrsize9 = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 14
  %67 = ptrtoint ptr %hdrsize9 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %hdrsize9, align 8
  %add20 = add i16 %68, 36
  store i16 %add20, ptr %hdrsize9, align 8
  %69 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mtu, align 8
  %conv24 = zext i16 %add20 to i32
  %sub = sub i32 %70, %conv24
  %maxdata = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 13
  %71 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub, ptr %maxdata, align 4
  ret void

do.body13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/peer_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 272, 0\0A.popsection", ""() #12, !srcloc !130
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_lookup_peer(ptr nocapture noundef readonly %rx, ptr noundef %local, ptr noundef %srx, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rxnet1 = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 3
  %0 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxnet1, align 4
  %call = tail call fastcc i32 @rxrpc_peer_hash_key(ptr noundef %local, ptr noundef %srx)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %2 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !117

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %transport = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm, ptr noundef nonnull @.str.19, ptr noundef %transport) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %do.end8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end8.rcu_read_lock.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end8
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 696, ptr noundef nonnull @.str.47) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end8.rcu_read_lock.exit_crit_edge
  %call9 = tail call fastcc ptr @__rxrpc_lookup_peer_rcu(ptr noundef %local, ptr noundef %srx, i32 noundef %call)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %rcu_read_lock.exit.if.end14_crit_edge, label %if.then.i140

rcu_read_lock.exit.if.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then.i140:                                     ; preds = %rcu_read_lock.exit
  %11 = tail call ptr @llvm.returnaddress(i32 0) #12
  %usage.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call9, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 0, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !133
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then.i140.if.end14_crit_edge, label %atomic_fetch_add_unless.exit.i

if.then.i140.if.end14_crit_edge:                  ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

atomic_fetch_add_unless.exit.i:                   ; preds = %if.then.i140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i, 0
  br i1 %cmp.i, label %if.then1.i, label %atomic_fetch_add_unless.exit.i.if.end14_crit_edge

atomic_fetch_add_unless.exit.i.if.end14_crit_edge: ; preds = %atomic_fetch_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then1.i:                                       ; preds = %atomic_fetch_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %debug_id.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call9, i32 0, i32 15
  %13 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_id.i, align 4
  %add.i = add nuw i32 %asmresult.i.i.i, 1
  tail call fastcc void @trace_rxrpc_peer(i32 noundef %14, i32 noundef 0, i32 noundef %add.i, ptr noundef %11) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then1.i, %atomic_fetch_add_unless.exit.i.if.end14_crit_edge, %if.then.i140.if.end14_crit_edge, %rcu_read_lock.exit.if.end14_crit_edge
  %peer.0 = phi ptr [ null, %rcu_read_lock.exit.if.end14_crit_edge ], [ %call9, %if.then1.i ], [ null, %atomic_fetch_add_unless.exit.i.if.end14_crit_edge ], [ null, %if.then.i140.if.end14_crit_edge ]
  %call.i141 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i141, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i144

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i144:                               ; preds = %if.end14
  %call1.i142 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142)
  %tobool.not.i143 = icmp eq i32 %call1.i142, 0
  br i1 %tobool.not.i143, label %land.lhs.true.i144.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i146

land.lhs.true.i144.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i146:                              ; preds = %land.lhs.true.i144
  %.b4.i145 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i145, label %land.lhs.true2.i146.rcu_read_unlock.exit_crit_edge, label %if.then.i147

land.lhs.true2.i146.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i147:                                     ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 724, ptr noundef nonnull @.str.48) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i147, %land.lhs.true2.i146.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i144.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !135
  %15 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i.i.i.i.i148 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i148 to ptr
  %preempt_count.i.i.i.i149 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i149, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i149, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool15.not = icmp eq ptr %peer.0, null
  br i1 %tobool15.not, label %if.then16, label %rcu_read_unlock.exit.do.body59_crit_edge

rcu_read_unlock.exit.do.body59_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body59

if.then16:                                        ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %19 = load i32, ptr @rxrpc_debug, align 4
  %and.i150 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %if.then16.do.end6.i_crit_edge, label %do.end.i, !prof !117

if.then16.do.end6.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm.i, ptr noundef nonnull @.str.49) #15
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then16.do.end6.i_crit_edge
  %call7.i = tail call ptr @rxrpc_alloc_peer(ptr noundef %local, i32 noundef %gfp) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %do.end6.i.do.body12.i_crit_edge, label %if.then9.i

do.end6.i.do.body12.i_crit_edge:                  ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

if.then9.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %srx10.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i, i32 0, i32 16
  %24 = call ptr @memcpy(ptr %srx10.i, ptr %srx, i32 36)
  tail call fastcc void @rxrpc_init_peer(ptr noundef %rx, ptr noundef nonnull %call7.i, i32 noundef %call) #12
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then9.i, %do.end6.i.do.body12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %25 = load i32, ptr @rxrpc_debug, align 4
  %and13.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.rxrpc_create_peer.exit_crit_edge, label %do.end24.i, !prof !117

do.body12.i.rxrpc_create_peer.exit_crit_edge:     ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxrpc_create_peer.exit

do.end24.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i38.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i38.i to ptr
  %task27.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task27.i, align 8
  %comm28.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm28.i, ptr noundef nonnull @.str.49, ptr noundef %call7.i) #15
  br label %rxrpc_create_peer.exit

rxrpc_create_peer.exit:                           ; preds = %do.end24.i, %do.body12.i.rxrpc_create_peer.exit_crit_edge
  br i1 %tobool8.not.i, label %do.body20, label %if.end42

do.body20:                                        ; preds = %rxrpc_create_peer.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %30 = load i32, ptr @rxrpc_debug, align 4
  %and21 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.cleanup_crit_edge, label %do.end32, !prof !117

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i152 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i152 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task35, align 8
  %comm36 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 101
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %comm36, ptr noundef nonnull @.str.19) #15
  br label %cleanup

if.end42:                                         ; preds = %rxrpc_create_peer.exit
  %peer_hash_lock = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %peer_hash_lock) #12
  %call43 = tail call fastcc ptr @__rxrpc_lookup_peer_rcu(ptr noundef %local, ptr noundef %srx, i32 noundef %call)
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.if.then51_crit_edge, label %if.then.i158

if.end42.if.then51_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.then.i158:                                     ; preds = %if.end42
  %35 = tail call ptr @llvm.returnaddress(i32 0) #12
  %usage.i154 = getelementptr inbounds %struct.rxrpc_peer, ptr %call43, i32 0, i32 1
  %call.i.i.i155 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i154, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr %usage.i154, i32 1, i32 3, i32 1) #12
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage.i154, ptr %usage.i154, i32 0, i32 1, ptr elementtype(i32) %usage.i154) #12, !srcloc !133
  %asmresult.i.i.i156 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i156)
  %cmp.not.i.i.i157 = icmp eq i32 %asmresult.i.i.i156, 0
  br i1 %cmp.not.i.i.i157, label %if.then.i158.if.then51_crit_edge, label %atomic_fetch_add_unless.exit.i160

if.then.i158.if.then51_crit_edge:                 ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

atomic_fetch_add_unless.exit.i160:                ; preds = %if.then.i158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i156)
  %cmp.i159 = icmp sgt i32 %asmresult.i.i.i156, 0
  br i1 %cmp.i159, label %rxrpc_free_peer.exit, label %atomic_fetch_add_unless.exit.i160.if.then51_crit_edge

atomic_fetch_add_unless.exit.i160.if.then51_crit_edge: ; preds = %atomic_fetch_add_unless.exit.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.then51:                                        ; preds = %atomic_fetch_add_unless.exit.i160.if.then51_crit_edge, %if.then.i158.if.then51_crit_edge, %if.end42.if.then51_crit_edge
  %hash_link = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i, i32 0, i32 3
  %mul.i.i = mul i32 %call, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx = getelementptr %struct.rxrpc_net, ptr %1, i32 0, i32 21, i32 %shr.i
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %hash_link to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %hash_link, align 4
  %pprev.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %hash_link, ptr %arrayidx, align 4
  %tobool.not.i166 = icmp eq ptr %38, null
  br i1 %tobool.not.i166, label %if.then51.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.then51.hlist_add_head_rcu.exit_crit_edge:      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %hash_link, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.then51.hlist_add_head_rcu.exit_crit_edge
  %keepalive_link = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i, i32 0, i32 7
  %peer_keepalive_new = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 26
  %prev.i = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 26, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %call.i.i167 = tail call zeroext i1 @__list_add_valid(ptr noundef %keepalive_link, ptr noundef %44, ptr noundef %peer_keepalive_new) #12
  br i1 %call.i.i167, label %if.end.i.i, label %hlist_add_head_rcu.exit.list_add_tail.exit_crit_edge

hlist_add_head_rcu.exit.list_add_tail.exit_crit_edge: ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %keepalive_link, ptr %prev.i, align 4
  %46 = ptrtoint ptr %keepalive_link to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %peer_keepalive_new, ptr %keepalive_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %keepalive_link, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %hlist_add_head_rcu.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %peer_hash_lock) #12
  br label %do.body59

rxrpc_free_peer.exit:                             ; preds = %atomic_fetch_add_unless.exit.i160
  call void @__sanitizer_cov_trace_pc() #14
  %debug_id.i161 = getelementptr inbounds %struct.rxrpc_peer, ptr %call43, i32 0, i32 15
  %49 = ptrtoint ptr %debug_id.i161 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_id.i161, align 4
  %add.i162 = add nuw i32 %asmresult.i.i.i156, 1
  tail call fastcc void @trace_rxrpc_peer(i32 noundef %50, i32 noundef 0, i32 noundef %add.i162, ptr noundef %35) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %peer_hash_lock) #12
  %local.i = getelementptr inbounds %struct.rxrpc_peer, ptr %call7.i, i32 0, i32 4
  %51 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %local.i, align 8
  tail call void @rxrpc_put_local(ptr noundef %52) #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %call7.i, ptr noundef null) #12
  br label %do.body59

do.body59:                                        ; preds = %rxrpc_free_peer.exit, %list_add_tail.exit, %rcu_read_unlock.exit.do.body59_crit_edge
  %peer.2 = phi ptr [ %peer.0, %rcu_read_unlock.exit.do.body59_crit_edge ], [ %call43, %rxrpc_free_peer.exit ], [ %call7.i, %list_add_tail.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %53 = load i32, ptr @rxrpc_debug, align 4
  %and60 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.body83_crit_edge, label %do.end71, !prof !117

do.body59.do.body83_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body83

do.end71:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %54 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i170 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i170 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task74, align 8
  %comm75 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.2, i32 0, i32 15
  %58 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug_id, align 4
  %transport78 = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.2, i32 0, i32 16, i32 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm75, i32 noundef %59, ptr noundef %transport78) #15
  br label %do.body83

do.body83:                                        ; preds = %do.end71, %do.body59.do.body83_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %60 = load i32, ptr @rxrpc_debug, align 4
  %and84 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body83.cleanup_crit_edge, label %do.end95, !prof !117

do.body83.cleanup_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end95:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  %61 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i171 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i171 to ptr
  %task98 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task98, align 8
  %comm99 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 101
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.2, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #12
  %65 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %usage, align 4
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm99, ptr noundef nonnull @.str.19, ptr noundef nonnull %peer.2, i32 noundef %66) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %do.body83.cleanup_crit_edge, %do.end32, %do.body20.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end32 ], [ null, %do.body20.cleanup_crit_edge ], [ %peer.2, %do.end95 ], [ %peer.2, %do.body83.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_get_peer_maybe(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %tobool.not = icmp eq ptr %peer, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 0, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !133
  %asmresult.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not.i.i, label %if.then.if.end2_crit_edge, label %atomic_fetch_add_unless.exit

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

atomic_fetch_add_unless.exit:                     ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i, 0
  br i1 %cmp, label %if.then1, label %atomic_fetch_add_unless.exit.if.end2_crit_edge

atomic_fetch_add_unless.exit.if.end2_crit_edge:   ; preds = %atomic_fetch_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then1:                                         ; preds = %atomic_fetch_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #14
  %debug_id = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 15
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 4
  %add = add nuw i32 %asmresult.i.i, 1
  tail call fastcc void @trace_rxrpc_peer(i32 noundef %3, i32 noundef 0, i32 noundef %add, ptr noundef %0)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %atomic_fetch_add_unless.exit.if.end2_crit_edge, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %peer.addr.1 = phi ptr [ null, %entry.if.end2_crit_edge ], [ %peer, %if.then1 ], [ null, %atomic_fetch_add_unless.exit.if.end2_crit_edge ], [ null, %if.then.if.end2_crit_edge ]
  ret ptr %peer.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_get_peer(ptr noundef returned %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !120
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  %debug_id = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 15
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_rxrpc_peer(i32 noundef %3, i32 noundef 0, i32 noundef %asmresult.i.i.i.i, ptr noundef %0)
  ret ptr %peer
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_put_peer(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %peer, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %debug_id1 = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 15
  %1 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_id1, align 4
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !137
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  tail call fastcc void @trace_rxrpc_peer(i32 noundef %2, i32 noundef 3, i32 noundef %asmresult.i.i.i.i, ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.then
  %local.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 4
  %4 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local.i, align 8
  %rxnet1.i = getelementptr inbounds %struct.rxrpc_local, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rxnet1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxnet1.i, align 4
  %error_targets.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 5
  %8 = ptrtoint ptr %error_targets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %error_targets.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i, label %do.end14.i, label %do.end.i, !prof !117

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/peer_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end14.i:                                       ; preds = %if.then2
  %peer_hash_lock.i = getelementptr inbounds %struct.rxrpc_net, ptr %7, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %peer_hash_lock.i) #12
  %pprev.i.i.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.i.i.i, label %do.end14.i.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

do.end14.i.hash_del_rcu.exit.i_crit_edge:         ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %do.end14.i
  %hash_link.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 3
  %12 = ptrtoint ptr %hash_link.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hash_link.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %11, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %do.end14.i.hash_del_rcu.exit.i_crit_edge
  %keepalive_link.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %keepalive_link.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %hash_del_rcu.exit.i.__rxrpc_put_peer.exit_crit_edge

hash_del_rcu.exit.i.__rxrpc_put_peer.exit_crit_edge: ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rxrpc_put_peer.exit

if.end.i.i.i:                                     ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %keepalive_link.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %keepalive_link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__rxrpc_put_peer.exit

__rxrpc_put_peer.exit:                            ; preds = %if.end.i.i.i, %hash_del_rcu.exit.i.__rxrpc_put_peer.exit_crit_edge
  %23 = ptrtoint ptr %keepalive_link.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %keepalive_link.i, ptr %keepalive_link.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %keepalive_link.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %peer_hash_lock.i) #12
  %25 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %local.i, align 8
  tail call void @rxrpc_put_local(ptr noundef %26) #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %peer, ptr noundef null) #12
  br label %if.end3

if.end3:                                          ; preds = %__rxrpc_put_peer.exit, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_put_peer_locked(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %debug_id1 = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 15
  %1 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_id1, align 4
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !137
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  tail call fastcc void @trace_rxrpc_peer(i32 noundef %2, i32 noundef 3, i32 noundef %asmresult.i.i.i.i, ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i.i, label %if.then.hash_del_rcu.exit_crit_edge, label %if.then.i.i

if.then.hash_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %if.then
  %hash_link = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 3
  %6 = ptrtoint ptr %hash_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash_link, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i7.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %if.then.hash_del_rcu.exit_crit_edge
  %keepalive_link = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 7
  %call.i.i7 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %keepalive_link) #12
  br i1 %call.i.i7, label %if.end.i.i, label %hash_del_rcu.exit.list_del_init.exit_crit_edge

hash_del_rcu.exit.list_del_init.exit_crit_edge:   ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %keepalive_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %keepalive_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %hash_del_rcu.exit.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %keepalive_link to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %keepalive_link, ptr %keepalive_link, align 4
  %prev.i3.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %keepalive_link, ptr %prev.i3.i, align 4
  %local.i = getelementptr inbounds %struct.rxrpc_peer, ptr %peer, i32 0, i32 4
  %19 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %local.i, align 8
  tail call void @rxrpc_put_local(ptr noundef %20) #12
  %tobool.not.i = icmp eq ptr %peer, null
  br i1 %tobool.not.i, label %list_del_init.exit.if.end_crit_edge, label %do.end.i

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree_call_rcu(ptr noundef nonnull %peer, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end.i, %list_del_init.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_destroy_all_peers(ptr noundef %rxnet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.inc21.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rxrpc_net, ptr %rxnet, i32 0, i32 21, i32 %i.039
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %tobool6.not37 = icmp eq ptr %add.ptr, null
  %or.cond = or i1 %tobool.not.i, %tobool6.not37
  br i1 %or.cond, label %for.body.for.inc21_crit_edge, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  br label %do.end

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21

do.end:                                           ; preds = %do.end.do.end_crit_edge, %for.body.do.end_crit_edge
  %peer.038 = phi ptr [ %add.ptr17, %do.end.do.end_crit_edge ], [ %add.ptr, %for.body.do.end_crit_edge ]
  %debug_id = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.038, i32 0, i32 15
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 4
  %usage = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.038, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #12
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %usage, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.038, i32 0, i32 16, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %5, ptr noundef %transport) #15
  %hash_link = getelementptr inbounds %struct.rxrpc_peer, ptr %peer.038, i32 0, i32 3
  %6 = ptrtoint ptr %hash_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash_link, align 8
  %tobool13.not = icmp eq ptr %7, null
  %add.ptr17 = getelementptr i8, ptr %7, i32 -16
  %tobool6.not40 = icmp eq ptr %add.ptr17, null
  %tobool6.not = or i1 %tobool13.not, %tobool6.not40
  br i1 %tobool6.not, label %do.end.for.inc21_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.for.inc21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21

for.inc21:                                        ; preds = %do.end.for.inc21_crit_edge, %for.body.for.inc21_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end22, label %for.inc21.for.body_crit_edge

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end22:                                        ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rxrpc_kernel_get_peer(ptr nocapture readnone %sock, ptr nocapture noundef readonly %call, ptr nocapture noundef writeonly %_srx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 4
  %srx = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 16
  %2 = call ptr @memcpy(ptr %_srx, ptr %srx, i32 36)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rxrpc_kernel_get_srtt(ptr nocapture readnone %sock, ptr nocapture noundef readonly %call, ptr nocapture noundef writeonly %_srtt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %peer1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  %rtt_count = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %rtt_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtt_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %srtt_us = getelementptr inbounds %struct.rxrpc_peer, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srtt_us, align 4
  %shr = lshr i32 %5, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %storemerge = phi i32 [ %shr, %if.end ], [ 1000000, %entry.cleanup_crit_edge ]
  %6 = xor i1 %cmp, true
  %7 = ptrtoint ptr %_srtt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %_srtt, align 4
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_peer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_local(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/peer_object.c", i32 142, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_lookup_peer_rcu._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_lookup_peer_rcu._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/peer_object.c", i32 143, i32 3}
!8 = !{ptr @rxrpc_lookup_peer_rcu._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rxrpc_lookup_peer_rcu._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rxrpc/peer_object.c", i32 215, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rxrpc_alloc_peer._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @rxrpc_alloc_peer._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @rxrpc_alloc_peer.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../net/rxrpc/peer_object.c", i32 223, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rxrpc_alloc_peer.__key.9, !16, !"__key", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rxrpc_alloc_peer.__key.11, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/rxrpc/peer_object.c", i32 224, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rxrpc_alloc_peer.__key.13, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/rxrpc/peer_object.c", i32 225, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/rxrpc/peer_object.c", i32 239, i32 2}
!28 = !{ptr @rxrpc_alloc_peer._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rxrpc_alloc_peer._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/rxrpc/peer_object.c", i32 339, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rxrpc_lookup_peer._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rxrpc_lookup_peer._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/rxrpc/peer_object.c", i32 354, i32 4}
!37 = !{ptr @rxrpc_lookup_peer._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rxrpc_lookup_peer._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @rxrpc_lookup_peer._entry.23, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../net/rxrpc/peer_object.c", i32 379, i32 2}
!41 = !{ptr @rxrpc_lookup_peer._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @rxrpc_lookup_peer._entry.25, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../net/rxrpc/peer_object.c", i32 381, i32 2}
!44 = !{ptr @rxrpc_lookup_peer._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/rxrpc/peer_object.c", i32 482, i32 4}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rxrpc_destroy_all_peers._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rxrpc_destroy_all_peers._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @__ksymtab_rxrpc_kernel_get_peer, !51, !"__ksymtab_rxrpc_kernel_get_peer", i1 false, i1 false}
!51 = !{!"../net/rxrpc/peer_object.c", i32 503, i32 1}
!52 = !{ptr @__ksymtab_rxrpc_kernel_get_srtt, !53, !"__ksymtab_rxrpc_kernel_get_srtt", i1 false, i1 false}
!53 = !{!"../net/rxrpc/peer_object.c", i32 526, i32 1}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/rxrpc/peer_object.c", i32 35, i32 2}
!56 = !{ptr @rxrpc_peer_hash_key._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rxrpc_peer_hash_key._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/rxrpc/peer_object.c", i32 56, i32 3}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/rxrpc/peer_object.c", i32 64, i32 2}
!62 = !{ptr @rxrpc_peer_hash_key._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rxrpc_peer_hash_key._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/rxrpc/peer_object.c", i32 122, i32 2}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/trace/events/rxrpc.h", i32 509, i32 1}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!71 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/rxrpc/peer_object.c", i32 174, i32 4}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rxrpc_assess_MTU_size._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rxrpc_assess_MTU_size._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/rxrpc/peer_object.c", i32 191, i32 4}
!82 = !{ptr @rxrpc_assess_MTU_size._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rxrpc_assess_MTU_size._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/rxrpc/peer_object.c", i32 204, i32 2}
!86 = !{ptr @rxrpc_assess_MTU_size._entry.43, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rxrpc_assess_MTU_size._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/rxrpc/peer_object.c", i32 290, i32 2}
!97 = !{ptr @rxrpc_create_peer._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rxrpc_create_peer._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @rxrpc_create_peer._entry.50, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../net/rxrpc/peer_object.c", i32 298, i32 2}
!101 = !{ptr @rxrpc_create_peer._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/rxrpc/peer_object.c", i32 422, i32 2}
!104 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @__rxrpc_put_peer._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @__rxrpc_put_peer._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2158600780, i64 2158601268, i64 2158600817, i64 2158600873, i64 2158600907, i64 2158600931, i64 2158600972, i64 2158600993, i64 2158601021, i64 2158601055}
!119 = !{i64 2148436418}
!120 = !{i64 2148351703, i64 2148351735, i64 2148351764, i64 2148351798, i64 2148351829, i64 2148351852}
!121 = !{i64 2148436647}
!122 = !{i64 2148964360, i64 2148964365, i64 2148964378, i64 2148964422, i64 2148964456, i64 2148964477}
!123 = !{i64 2157940893}
!124 = !{i64 2157941138}
!125 = !{i64 2149375701}
!126 = !{i64 2149376737}
!127 = !{i64 2151860838}
!128 = !{i64 2158795100, i64 2158795588, i64 2158795137, i64 2158795193, i64 2158795227, i64 2158795251, i64 2158795292, i64 2158795313, i64 2158795341, i64 2158795375}
!129 = !{i64 2158803693, i64 2158804181, i64 2158803730, i64 2158803786, i64 2158803820, i64 2158803844, i64 2158803885, i64 2158803906, i64 2158803934, i64 2158803968}
!130 = !{i64 2158805183, i64 2158805671, i64 2158805220, i64 2158805276, i64 2158805310, i64 2158805334, i64 2158805375, i64 2158805396, i64 2158805424, i64 2158805458}
!131 = !{i64 2149367142}
!132 = !{i64 2148350402}
!133 = !{i64 836022, i64 836047, i64 836069, i64 836085, i64 836097, i64 836117, i64 836141, i64 836157, i64 836169}
!134 = !{i64 2148350590}
!135 = !{i64 2149367408}
!136 = !{i64 2148439459}
!137 = !{i64 2148354168, i64 2148354200, i64 2148354229, i64 2148354263, i64 2148354294, i64 2148354317}
!138 = !{i64 2148439688}
!139 = !{i64 2158835004, i64 2158835492, i64 2158835041, i64 2158835097, i64 2158835131, i64 2158835155, i64 2158835196, i64 2158835217, i64 2158835245, i64 2158835279}
