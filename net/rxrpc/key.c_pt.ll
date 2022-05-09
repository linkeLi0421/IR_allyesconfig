; ModuleID = '/llk/IR_all_yes/net/rxrpc/key.c_pt.bc'
source_filename = "../net/rxrpc/key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+key_type_rxrpc\22, \22a\22\09"
module asm "\09.weak\09__crc_key_type_rxrpc\09\09\09\09"
module asm "\09.long\09__crc_key_type_rxrpc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_rxrpc:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_rxrpc\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_rxrpc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rxrpc_get_server_data_key\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_get_server_data_key\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_get_server_data_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_get_server_data_key:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_get_server_data_key\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_get_server_data_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rxrpc_get_null_key\22, \22a\22\09"
module asm "\09.weak\09__crc_rxrpc_get_null_key\09\09\09\09"
module asm "\09.long\09__crc_rxrpc_get_null_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rxrpc_get_null_key:\09\09\09\09\09"
module asm "\09.asciz \09\22rxrpc_get_null_key\22\09\09\09\09\09"
module asm "__kstrtabns_rxrpc_get_null_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.rxrpc_key_data_v1 = type { i16, i16, i32, i32, [8 x i8], [0 x i8] }
%struct.rxrpc_key_token = type { i16, i8, ptr, %union.anon.152 }
%union.anon.152 = type { ptr }
%struct.rxkad_key = type { i32, i32, i32, i32, i8, i16, [8 x i8], [0 x i8] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.131, ptr }
%union.anon = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.2 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.131 = type { %union.key_payload }
%struct.rxrpc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rwlock_t, ptr, ptr, %struct.rb_root, i32, %struct.rwlock_t, i32, i8, i16, %struct.anon.158, i16, %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.75, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.76, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.77, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.35, %union.anon.37, %union.anon.38, i16, i8, i8, i32, %union.anon.40, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.67, [0 x i32], %union.anon.68, i16, i16, %union.anon.69, %struct.refcount_struct, [0 x i32], %union.anon.70 }
%union.anon.35 = type { i64 }
%union.anon.37 = type { i32 }
%union.anon.38 = type { i32 }
%union.anon.40 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { %struct.hlist_node }
%union.anon.69 = type { i32 }
%union.anon.70 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.75 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%struct.sk_buff_head = type { %union.anon.73, i32, %struct.spinlock }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.158 = type { i16, i16 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.150 }
%union.anon.150 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.89, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.89 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.anon.160 = type { i32, %struct.rxrpc_key_data_v1 }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.153, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon.148 }
%union.anon.148 = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.151 }
%union.anon.151 = type { i32 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_crypt = type { %union.anon.157 }
%union.anon.157 = type { [2 x i32] }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxrpc\00", [26 x i8] zeroinitializer }, align 32
@key_type_rxrpc = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 1, ptr null, ptr @rxrpc_preparse, ptr @rxrpc_free_preparse, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr null, ptr @rxrpc_destroy, ptr @rxrpc_describe, ptr @rxrpc_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_key_type_rxrpc = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_rxrpc = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_rxrpc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_rxrpc to i32), ptr @__kstrtab_key_type_rxrpc, ptr @__kstrtabns_key_type_rxrpc }, section "___ksymtab+key_type_rxrpc", align 4
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_request_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxrpc_request_key\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/rxrpc/key.c\00", [16 x i8] zeroinitializer }, align 32
@rxrpc_request_key._entry_ptr = internal global ptr @rxrpc_request_key._entry, section ".printk_index", align 4
@rxrpc_request_key._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_request_key._entry_ptr.6 = internal global ptr @rxrpc_request_key._entry.4, section ".printk_index", align 4
@rxrpc_request_key._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() = 0 [key %x]\0A\00", [32 x i8] zeroinitializer }, align 32
@rxrpc_request_key._entry_ptr.9 = internal global ptr @rxrpc_request_key._entry.7, section ".printk_index", align 4
@rxrpc_get_server_data_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.10, ptr @.str.3, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rxrpc_get_server_data_key\00", [38 x i8] zeroinitializer }, align 32
@rxrpc_get_server_data_key._entry_ptr = internal global ptr @rxrpc_get_server_data_key._entry, section ".printk_index", align 4
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@rxrpc_get_server_data_key._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%-6.6s] <== %s() = -ENOMEM [alloc %ld]\0A\00", [55 x i8] zeroinitializer }, align 32
@rxrpc_get_server_data_key._entry_ptr.14 = internal global ptr @rxrpc_get_server_data_key._entry.12, section ".printk_index", align 4
@rxrpc_get_server_data_key._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     key %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_get_server_data_key._entry_ptr.17 = internal global ptr @rxrpc_get_server_data_key._entry.15, section ".printk_index", align 4
@rxrpc_get_server_data_key._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() = 0 [%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_get_server_data_key._entry_ptr.20 = internal global ptr @rxrpc_get_server_data_key._entry.18, section ".printk_index", align 4
@rxrpc_get_server_data_key._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.3, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] <== %s() = -ENOMEM [ins %d]\0A\00", [58 x i8] zeroinitializer }, align 32
@rxrpc_get_server_data_key._entry_ptr.23 = internal global ptr @rxrpc_get_server_data_key._entry.21, section ".printk_index", align 4
@__kstrtab_rxrpc_get_server_data_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_get_server_data_key = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_get_server_data_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_get_server_data_key to i32), ptr @__kstrtab_rxrpc_get_server_data_key, ptr @__kstrtabns_rxrpc_get_server_data_key }, section "___ksymtab+rxrpc_get_server_data_key", align 4
@__kstrtab_rxrpc_get_null_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_rxrpc_get_null_key = external dso_local constant [0 x i8], align 1
@__ksymtab_rxrpc_get_null_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rxrpc_get_null_key to i32), ptr @__kstrtab_rxrpc_get_null_key, ptr @__kstrtabns_rxrpc_get_null_key }, section "___ksymtab+rxrpc_get_null_key", align 4
@rxrpc_preparse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(%zu)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxrpc_preparse\00", [17 x i8] zeroinitializer }, align 32
@rxrpc_preparse._entry_ptr = internal global ptr @rxrpc_preparse._entry, section ".printk_index", align 4
@rxrpc_preparse._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     KEY I/F VERSION: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_preparse._entry_ptr.28 = internal global ptr @rxrpc_preparse._entry.26, section ".printk_index", align 4
@rxrpc_preparse._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     SCIX: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_preparse._entry_ptr.31 = internal global ptr @rxrpc_preparse._entry.29, section ".printk_index", align 4
@rxrpc_preparse._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     TLEN: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_preparse._entry_ptr.34 = internal global ptr @rxrpc_preparse._entry.32, section ".printk_index", align 4
@rxrpc_preparse._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.3, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     EXPY: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_preparse._entry_ptr.37 = internal global ptr @rxrpc_preparse._entry.35, section ".printk_index", align 4
@rxrpc_preparse._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.3, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     KVNO: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_preparse._entry_ptr.40 = internal global ptr @rxrpc_preparse._entry.38, section ".printk_index", align 4
@rxrpc_preparse._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.3, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%-6.6s]     SKEY: %02x%02x%02x%02x%02x%02x%02x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_preparse._entry_ptr.43 = internal global ptr @rxrpc_preparse._entry.41, section ".printk_index", align 4
@rxrpc_preparse._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.3, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%-6.6s]     TCKT: %02x%02x%02x%02x%02x%02x%02x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@rxrpc_preparse._entry_ptr.46 = internal global ptr @rxrpc_preparse._entry.44, section ".printk_index", align 4
@rxrpc_preparse_xdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] ==> %s(,{%x,%x,%x,%x},%zu)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_preparse_xdr\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr._entry_ptr = internal global ptr @rxrpc_preparse_xdr._entry, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@rxrpc_preparse_xdr._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s]     cellname: [%u/%u] '%*.*s'\0A\00", [56 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr._entry_ptr.51 = internal global ptr @rxrpc_preparse_xdr._entry.49, section ".printk_index", align 4
@rxrpc_preparse_xdr._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     ntoken: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr._entry_ptr.54 = internal global ptr @rxrpc_preparse_xdr._entry.52, section ".printk_index", align 4
@rxrpc_preparse_xdr._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s]     token: [%x/%zx] %x\0A\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr._entry_ptr.57 = internal global ptr @rxrpc_preparse_xdr._entry.55, section ".printk_index", align 4
@rxrpc_preparse_xdr._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.3, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s]     remainder: %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr._entry_ptr.60 = internal global ptr @rxrpc_preparse_xdr._entry.58, section ".printk_index", align 4
@rxrpc_preparse_xdr._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     TOKEN type=%x len=%x\0A\00", [61 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr._entry_ptr.63 = internal global ptr @rxrpc_preparse_xdr._entry.61, section ".printk_index", align 4
@rxrpc_preparse_xdr._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.48, ptr @.str.3, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr._entry_ptr.66 = internal global ptr @rxrpc_preparse_xdr._entry.64, section ".printk_index", align 4
@rxrpc_preparse_xdr._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.48, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -EPROTO\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr._entry_ptr.69 = internal global ptr @rxrpc_preparse_xdr._entry.67, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s(,{%x,%x,%x,%x},%u)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxrpc_preparse_xdr_rxkad\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr = internal global ptr @rxrpc_preparse_xdr_rxkad._entry, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s]     tktlen: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.74 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.72, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.71, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.76 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.75, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.71, ptr @.str.3, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.78 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.77, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.71, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.80 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.79, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.71, ptr @.str.3, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.82 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.81, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.71, ptr @.str.3, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s]     PRIM: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.85 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.83, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.71, ptr @.str.3, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.87 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.86, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.71, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.89 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.88, section ".printk_index", align 4
@rxrpc_preparse_xdr_rxkad._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.71, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_preparse_xdr_rxkad._entry_ptr.92 = internal global ptr @rxrpc_preparse_xdr_rxkad._entry.90, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rxrpc_free_token_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rxrpc: Unknown token type %x on rxrpc key\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxrpc_free_token_list\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_free_token_list._entry_ptr = internal global ptr @rxrpc_free_token_list._entry, section ".printk_index", align 4
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c": \00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ka\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.102, ptr @.str.3, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rxrpc_read\00", [21 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr = internal global ptr @rxrpc_read._entry, section ".printk_index", align 4
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"afs@\00", [27 x i8] zeroinitializer }, align 32
@rxrpc_read._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.102, ptr @.str.3, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rxrpc: Unsupported key token type (%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr.106 = internal global ptr @rxrpc_read._entry.104, section ".printk_index", align 4
@rxrpc_read._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.102, ptr @.str.3, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s]     token[%u]: toksize=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr.109 = internal global ptr @rxrpc_read._entry.107, section ".printk_index", align 4
@rxrpc_read._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.102, ptr @.str.3, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rxrpc: Assertion failed - %lu(0x%lx) %s %lu(0x%lx) is false\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr.112 = internal global ptr @rxrpc_read._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_read._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.102, ptr @.str.3, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr.115 = internal global ptr @rxrpc_read._entry.114, section ".printk_index", align 4
@rxrpc_read._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.102, ptr @.str.3, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr.117 = internal global ptr @rxrpc_read._entry.116, section ".printk_index", align 4
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_read._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.102, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr.120 = internal global ptr @rxrpc_read._entry.119, section ".printk_index", align 4
@rxrpc_read._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.102, ptr @.str.3, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr.122 = internal global ptr @rxrpc_read._entry.121, section ".printk_index", align 4
@rxrpc_read._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.102, ptr @.str.3, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %zu\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_read._entry_ptr.125 = internal global ptr @rxrpc_read._entry.123, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967203, i64 4294967231]
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 37, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"key_type_rxrpc\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 36, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 453, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 465, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 471, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 492, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 494, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 498, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 502, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 517, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 523, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 286, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 307, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 322, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 323, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 324, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 325, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 326, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 332, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 144, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 177, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 187, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 200, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 209, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 225, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 254, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 258, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 61, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 68, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 98, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 99, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 100, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 101, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 102, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 103, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 109, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 128, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 394, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 425, i32 20 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 434, i32 16 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 437, i32 18 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 441, i32 9 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 230, i32 6 }
@___asan_gen_.361 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 214, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 156, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 571, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 574, i32 31 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 599, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 604, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 605, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 677, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 682, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 691, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 692, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.415 = private constant [19 x i8] c"../net/rxrpc/key.c\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 693, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__ksymtab_key_type_rxrpc, ptr @__ksymtab_rxrpc_get_null_key, ptr @__ksymtab_rxrpc_get_server_data_key, ptr @rxrpc_free_token_list._entry, ptr @rxrpc_free_token_list._entry_ptr, ptr @rxrpc_get_server_data_key._entry, ptr @rxrpc_get_server_data_key._entry.12, ptr @rxrpc_get_server_data_key._entry.15, ptr @rxrpc_get_server_data_key._entry.18, ptr @rxrpc_get_server_data_key._entry.21, ptr @rxrpc_get_server_data_key._entry_ptr, ptr @rxrpc_get_server_data_key._entry_ptr.14, ptr @rxrpc_get_server_data_key._entry_ptr.17, ptr @rxrpc_get_server_data_key._entry_ptr.20, ptr @rxrpc_get_server_data_key._entry_ptr.23, ptr @rxrpc_preparse._entry, ptr @rxrpc_preparse._entry.26, ptr @rxrpc_preparse._entry.29, ptr @rxrpc_preparse._entry.32, ptr @rxrpc_preparse._entry.35, ptr @rxrpc_preparse._entry.38, ptr @rxrpc_preparse._entry.41, ptr @rxrpc_preparse._entry.44, ptr @rxrpc_preparse._entry_ptr, ptr @rxrpc_preparse._entry_ptr.28, ptr @rxrpc_preparse._entry_ptr.31, ptr @rxrpc_preparse._entry_ptr.34, ptr @rxrpc_preparse._entry_ptr.37, ptr @rxrpc_preparse._entry_ptr.40, ptr @rxrpc_preparse._entry_ptr.43, ptr @rxrpc_preparse._entry_ptr.46, ptr @rxrpc_preparse_xdr._entry, ptr @rxrpc_preparse_xdr._entry.49, ptr @rxrpc_preparse_xdr._entry.52, ptr @rxrpc_preparse_xdr._entry.55, ptr @rxrpc_preparse_xdr._entry.58, ptr @rxrpc_preparse_xdr._entry.61, ptr @rxrpc_preparse_xdr._entry.64, ptr @rxrpc_preparse_xdr._entry.67, ptr @rxrpc_preparse_xdr._entry_ptr, ptr @rxrpc_preparse_xdr._entry_ptr.51, ptr @rxrpc_preparse_xdr._entry_ptr.54, ptr @rxrpc_preparse_xdr._entry_ptr.57, ptr @rxrpc_preparse_xdr._entry_ptr.60, ptr @rxrpc_preparse_xdr._entry_ptr.63, ptr @rxrpc_preparse_xdr._entry_ptr.66, ptr @rxrpc_preparse_xdr._entry_ptr.69, ptr @rxrpc_preparse_xdr_rxkad._entry, ptr @rxrpc_preparse_xdr_rxkad._entry.72, ptr @rxrpc_preparse_xdr_rxkad._entry.75, ptr @rxrpc_preparse_xdr_rxkad._entry.77, ptr @rxrpc_preparse_xdr_rxkad._entry.79, ptr @rxrpc_preparse_xdr_rxkad._entry.81, ptr @rxrpc_preparse_xdr_rxkad._entry.83, ptr @rxrpc_preparse_xdr_rxkad._entry.86, ptr @rxrpc_preparse_xdr_rxkad._entry.88, ptr @rxrpc_preparse_xdr_rxkad._entry.90, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.74, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.76, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.78, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.80, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.82, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.85, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.87, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.89, ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.92, ptr @rxrpc_read._entry, ptr @rxrpc_read._entry.104, ptr @rxrpc_read._entry.107, ptr @rxrpc_read._entry.110, ptr @rxrpc_read._entry.114, ptr @rxrpc_read._entry.116, ptr @rxrpc_read._entry.119, ptr @rxrpc_read._entry.121, ptr @rxrpc_read._entry.123, ptr @rxrpc_read._entry_ptr, ptr @rxrpc_read._entry_ptr.106, ptr @rxrpc_read._entry_ptr.109, ptr @rxrpc_read._entry_ptr.112, ptr @rxrpc_read._entry_ptr.115, ptr @rxrpc_read._entry_ptr.117, ptr @rxrpc_read._entry_ptr.120, ptr @rxrpc_read._entry_ptr.122, ptr @rxrpc_read._entry_ptr.125, ptr @rxrpc_request_key._entry, ptr @rxrpc_request_key._entry.4, ptr @rxrpc_request_key._entry.7, ptr @rxrpc_request_key._entry_ptr, ptr @rxrpc_request_key._entry_ptr.6, ptr @rxrpc_request_key._entry_ptr.9, ptr @.str, ptr @key_type_rxrpc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.84, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.118, ptr @.str.124], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_rxrpc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_request_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_request_key._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_request_key._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_get_server_data_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_get_server_data_key._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_get_server_data_key._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_get_server_data_key._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_get_server_data_key._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_xdr_rxkad._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_free_token_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_read._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxrpc_preparse(ptr nocapture noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !217

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datalen, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm, ptr noundef nonnull @.str.25, i32 noundef %6) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %land.lhs.true, label %do.end6.if.end10_crit_edge

do.end6.if.end10_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %do.end6
  %datalen8 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %9 = ptrtoint ptr %datalen8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %datalen8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %do.end6.if.end10_crit_edge
  %datalen11 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %11 = ptrtoint ptr %datalen11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datalen11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %12)
  %cmp12 = icmp ugt i32 %12, 28
  br i1 %cmp12, label %if.then13, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %13 = load i32, ptr @rxrpc_debug, align 4
  %and.i369 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i369)
  %tobool.not.i = icmp eq i32 %and.i369, 0
  br i1 %tobool.not.i, label %if.then13.do.end11.i_crit_edge, label %do.end.i, !prof !217

if.then13.do.end11.i_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %8, align 4
  %arrayidx5.i = getelementptr i32, ptr %8, i32 1
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %8, i32 2
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %8, i32 3
  %24 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7.i, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %comm.i, ptr noundef nonnull @.str.48, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %12) #14
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %if.then13.do.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %12)
  %cmp.i = icmp ult i32 %12, 16385
  %and14.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool15.not.i
  br i1 %or.cond.i, label %if.end17.i, label %do.end11.i.do.body247.i_crit_edge

do.end11.i.do.body247.i_crit_edge:                ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

if.end17.i:                                       ; preds = %do.end11.i
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp18.not.i = icmp eq i32 %27, 0
  br i1 %cmp18.not.i, label %if.end20.i, label %if.end17.i.do.body247.i_crit_edge

if.end17.i.do.body247.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

if.end20.i:                                       ; preds = %if.end17.i
  %incdec.ptr.i = getelementptr i32, ptr %8, i32 1
  %incdec.ptr21.i = getelementptr i32, ptr %8, i32 2
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr.i, align 4
  %30 = add i32 %29, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %30)
  %31 = icmp ult i32 %30, -64
  br i1 %31, label %if.end20.i.do.body247.i_crit_edge, label %if.end25.i

if.end20.i.do.body247.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

if.end25.i:                                       ; preds = %if.end20.i
  %sub26.i = add nsw i32 %12, -8
  %add.i = add nuw nsw i32 %29, 3
  %and27.i = and i32 %add.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub26.i, i32 %and27.i)
  %cmp28.i = icmp ult i32 %sub26.i, %and27.i
  br i1 %cmp28.i, label %if.end25.i.do.body247.i_crit_edge, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  br label %for.body.i

if.end25.i.do.body247.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

for.cond40.preheader.i:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %and27.i)
  %cmp41373.i = icmp ult i32 %29, %and27.i
  br i1 %cmp41373.i, label %for.cond40.preheader.i.for.body43.i_crit_edge, label %for.cond40.preheader.i.do.body51.i_crit_edge

for.cond40.preheader.i.do.body51.i_crit_edge:     ; preds = %for.cond40.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51.i

for.cond40.preheader.i.for.body43.i_crit_edge:    ; preds = %for.cond40.preheader.i
  br label %for.body43.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25.i.for.body.i_crit_edge
  %loop.0372.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end25.i.for.body.i_crit_edge ]
  %arrayidx32.i = getelementptr i8, ptr %incdec.ptr21.i, i32 %loop.0372.i
  %32 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx32.i, align 1
  %conv.i = zext i8 %33 to i32
  %arrayidx33.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %34 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx33.i, align 1
  %36 = and i8 %35, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp36.not.i = icmp eq i8 %36, 0
  br i1 %cmp36.not.i, label %for.body.i.do.body247.i_crit_edge, label %for.inc.i

for.body.i.do.body247.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %loop.0372.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.cond40.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond40.i:                                     ; preds = %for.body43.i
  %inc49.i = add i32 %loop.1374.i, 1
  %exitcond377.not.i = icmp eq i32 %inc49.i, %and27.i
  br i1 %exitcond377.not.i, label %for.cond40.i.do.body51.i_crit_edge, label %for.cond40.i.for.body43.i_crit_edge

for.cond40.i.for.body43.i_crit_edge:              ; preds = %for.cond40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43.i

for.cond40.i.do.body51.i_crit_edge:               ; preds = %for.cond40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51.i

for.body43.i:                                     ; preds = %for.cond40.i.for.body43.i_crit_edge, %for.cond40.preheader.i.for.body43.i_crit_edge
  %loop.1374.i = phi i32 [ %inc49.i, %for.cond40.i.for.body43.i_crit_edge ], [ %29, %for.cond40.preheader.i.for.body43.i_crit_edge ]
  %arrayidx44.i = getelementptr i8, ptr %incdec.ptr21.i, i32 %loop.1374.i
  %37 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool45.not.i = icmp eq i8 %38, 0
  br i1 %tobool45.not.i, label %for.cond40.i, label %for.body43.i.do.body247.i_crit_edge

for.body43.i.do.body247.i_crit_edge:              ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

do.body51.i:                                      ; preds = %for.cond40.i.do.body51.i_crit_edge, %for.cond40.preheader.i.do.body51.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %39 = load i32, ptr @rxrpc_debug, align 4
  %and52.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %do.body51.i.do.end72.i_crit_edge, label %do.end63.i, !prof !217

do.body51.i.do.end72.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end72.i

do.end63.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i360.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i360.i to ptr
  %task66.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task66.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task66.i, align 8
  %comm67.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 101
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %comm67.i, i32 noundef %29, i32 noundef %and27.i, i32 noundef %29, i32 noundef %29, ptr noundef %incdec.ptr21.i) #14
  br label %do.end72.i

do.end72.i:                                       ; preds = %do.end63.i, %do.body51.i.do.end72.i_crit_edge
  %sub73.i = sub i32 %sub26.i, %and27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub73.i)
  %cmp74.i = icmp ult i32 %sub73.i, 12
  br i1 %cmp74.i, label %do.end72.i.do.body247.i_crit_edge, label %if.end77.i

do.end72.i.do.body247.i_crit_edge:                ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

if.end77.i:                                       ; preds = %do.end72.i
  %shr.i = lshr i32 %add.i, 2
  %add.ptr.i = getelementptr i32, ptr %incdec.ptr21.i, i32 %shr.i
  %incdec.ptr78.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %sub79.i = add i32 %sub73.i, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %46 = load i32, ptr @rxrpc_debug, align 4
  %and81.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end77.i.do.end101.i_crit_edge, label %do.end92.i, !prof !217

if.end77.i.do.end101.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end101.i

do.end92.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i361.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i361.i to ptr
  %task95.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task95.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task95.i, align 8
  %comm96.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 101
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %comm96.i, i32 noundef %45) #14
  br label %do.end101.i

do.end101.i:                                      ; preds = %do.end92.i, %if.end77.i.do.end101.i_crit_edge
  %51 = add i32 %45, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %51)
  %52 = icmp ult i32 %51, -8
  br i1 %52, label %do.end101.i.do.body247.i_crit_edge, label %do.end101.i.do.body109.i_crit_edge

do.end101.i.do.body109.i_crit_edge:               ; preds = %do.end101.i
  br label %do.body109.i

do.end101.i.do.body247.i_crit_edge:               ; preds = %do.end101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

do.body109.i:                                     ; preds = %if.end149.i.do.body109.i_crit_edge, %do.end101.i.do.body109.i_crit_edge
  %datalen.0.i = phi i32 [ %sub150.i, %if.end149.i.do.body109.i_crit_edge ], [ %sub79.i, %do.end101.i.do.body109.i_crit_edge ]
  %loop.2.i = phi i32 [ %dec.i, %if.end149.i.do.body109.i_crit_edge ], [ %45, %do.end101.i.do.body109.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr152.i, %if.end149.i.do.body109.i_crit_edge ], [ %incdec.ptr78.i, %do.end101.i.do.body109.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %datalen.0.i)
  %cmp110.i = icmp ult i32 %datalen.0.i, 8
  br i1 %cmp110.i, label %do.body109.i.do.body247.i_crit_edge, label %if.end113.i

do.body109.i.do.body247.i_crit_edge:              ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

if.end113.i:                                      ; preds = %do.body109.i
  %incdec.ptr114.i = getelementptr i32, ptr %p.0.i, i32 1
  %53 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %p.0.i, align 4
  %sub115.i = add i32 %datalen.0.i, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %55 = load i32, ptr @rxrpc_debug, align 4
  %and117.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.end113.i.do.end137.i_crit_edge, label %do.end128.i, !prof !217

if.end113.i.do.end137.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end137.i

do.end128.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %incdec.ptr114.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %incdec.ptr114.i, align 4
  %58 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i362.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i362.i to ptr
  %task131.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task131.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task131.i, align 8
  %comm132.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 101
  %call134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %comm132.i, i32 noundef %54, i32 noundef %sub115.i, i32 noundef %57) #14
  br label %do.end137.i

do.end137.i:                                      ; preds = %do.end128.i, %if.end113.i.do.end137.i_crit_edge
  %add138.i = add i32 %54, 3
  %and139.i = and i32 %add138.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %54)
  %cmp140.i = icmp ult i32 %54, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub115.i)
  %cmp143.i = icmp ugt i32 %54, %sub115.i
  %or.cond358.i = select i1 %cmp140.i, i1 true, i1 %cmp143.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub115.i, i32 %and139.i)
  %cmp146.i = icmp ult i32 %sub115.i, %and139.i
  %or.cond359.i = select i1 %or.cond358.i, i1 true, i1 %cmp146.i
  br i1 %or.cond359.i, label %do.end137.i.do.body247.i_crit_edge, label %if.end149.i

do.end137.i.do.body247.i_crit_edge:               ; preds = %do.end137.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

if.end149.i:                                      ; preds = %do.end137.i
  %sub150.i = sub i32 %sub115.i, %and139.i
  %shr151.i = lshr i32 %add138.i, 2
  %add.ptr152.i = getelementptr i32, ptr %incdec.ptr114.i, i32 %shr151.i
  %dec.i = add i32 %loop.2.i, -1
  %cmp154.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp154.not.i, label %do.body157.i, label %if.end149.i.do.body109.i_crit_edge

if.end149.i.do.body109.i_crit_edge:               ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body109.i

do.body157.i:                                     ; preds = %if.end149.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %62 = load i32, ptr @rxrpc_debug, align 4
  %and158.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  br i1 %tobool159.not.i, label %do.body157.i.do.end178.i_crit_edge, label %do.end169.i, !prof !217

do.body157.i.do.end178.i_crit_edge:               ; preds = %do.body157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end178.i

do.end169.i:                                      ; preds = %do.body157.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i363.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i363.i to ptr
  %task172.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task172.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task172.i, align 8
  %comm173.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  %call175.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %comm173.i, i32 noundef %sub150.i) #14
  br label %do.end178.i

do.end178.i:                                      ; preds = %do.end169.i, %do.body157.i.do.end178.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub150.i)
  %cmp179.not.i = icmp eq i32 %sub150.i, 0
  br i1 %cmp179.not.i, label %do.end178.i.do.body183.i_crit_edge, label %do.end178.i.do.body247.i_crit_edge

do.end178.i.do.body247.i_crit_edge:               ; preds = %do.end178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body247.i

do.end178.i.do.body183.i_crit_edge:               ; preds = %do.end178.i
  br label %do.body183.i

do.body183.i:                                     ; preds = %do.cond220.i.do.body183.i_crit_edge, %do.end178.i.do.body183.i_crit_edge
  %ntoken.0.i = phi i32 [ %dec221.i, %do.cond220.i.do.body183.i_crit_edge ], [ %45, %do.end178.i.do.body183.i_crit_edge ]
  %ret.0.i = phi i32 [ %ret.1.i, %do.cond220.i.do.body183.i_crit_edge ], [ -93, %do.end178.i.do.body183.i_crit_edge ]
  %xdr.0.i = phi ptr [ %add.ptr186.i, %do.cond220.i.do.body183.i_crit_edge ], [ %incdec.ptr78.i, %do.end178.i.do.body183.i_crit_edge ]
  %incdec.ptr184.i = getelementptr i32, ptr %xdr.0.i, i32 1
  %67 = ptrtoint ptr %xdr.0.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %xdr.0.i, align 4
  %add185.i = add i32 %68, 3
  %div355.i = lshr i32 %add185.i, 2
  %add.ptr186.i = getelementptr i32, ptr %incdec.ptr184.i, i32 %div355.i
  %incdec.ptr187.i = getelementptr i32, ptr %xdr.0.i, i32 2
  %69 = ptrtoint ptr %incdec.ptr184.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %incdec.ptr184.i, align 4
  %sub188.i = add i32 %68, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %71 = load i32, ptr @rxrpc_debug, align 4
  %and190.i = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.i)
  %tobool191.not.i = icmp eq i32 %and190.i, 0
  br i1 %tobool191.not.i, label %do.body183.i.do.end210.i_crit_edge, label %do.end201.i, !prof !217

do.body183.i.do.end210.i_crit_edge:               ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end210.i

do.end201.i:                                      ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i364.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i364.i to ptr
  %task204.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task204.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task204.i, align 8
  %comm205.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 101
  %call207.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm205.i, i32 noundef %70, i32 noundef %sub188.i) #14
  br label %do.end210.i

do.end210.i:                                      ; preds = %do.end201.i, %do.body183.i.do.end210.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cond.i = icmp eq i32 %70, 2
  br i1 %cond.i, label %sw.epilog.i, label %do.end210.i.do.cond220.i_crit_edge

do.end210.i.do.cond220.i_crit_edge:               ; preds = %do.end210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond220.i

sw.epilog.i:                                      ; preds = %do.end210.i
  %call211.i = tail call fastcc i32 @rxrpc_preparse_xdr_rxkad(ptr noundef %prep, ptr noundef %incdec.ptr187.i, i32 noundef %sub188.i) #11
  %76 = zext i32 %call211.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call211.i, label %sw.epilog.i.do.body225.i_crit_edge [
    i32 0, label %sw.bb212.i
    i32 -93, label %sw.epilog.i.do.cond220.i_crit_edge
    i32 -65, label %sw.bb213.i
  ]

sw.epilog.i.do.cond220.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond220.i

sw.epilog.i.do.body225.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body225.i

sw.bb212.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond220.i

sw.bb213.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp214.not.i = icmp eq i32 %ret.0.i, 0
  %spec.store.select.i = select i1 %cmp214.not.i, i32 0, i32 -65
  br label %do.cond220.i

do.cond220.i:                                     ; preds = %sw.bb213.i, %sw.bb212.i, %sw.epilog.i.do.cond220.i_crit_edge, %do.end210.i.do.cond220.i_crit_edge
  %ret.1.i = phi i32 [ %spec.store.select.i, %sw.bb213.i ], [ %ret.0.i, %sw.epilog.i.do.cond220.i_crit_edge ], [ 0, %sw.bb212.i ], [ %ret.0.i, %do.end210.i.do.cond220.i_crit_edge ]
  %dec221.i = add i32 %ntoken.0.i, -1
  %cmp222.not.i = icmp eq i32 %dec221.i, 0
  br i1 %cmp222.not.i, label %do.cond220.i.do.body225.i_crit_edge, label %do.cond220.i.do.body183.i_crit_edge

do.cond220.i.do.body183.i_crit_edge:              ; preds = %do.cond220.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body183.i

do.cond220.i.do.body225.i_crit_edge:              ; preds = %do.cond220.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body225.i

do.body225.i:                                     ; preds = %do.cond220.i.do.body225.i_crit_edge, %sw.epilog.i.do.body225.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %do.cond220.i.do.body225.i_crit_edge ], [ %call211.i, %sw.epilog.i.do.body225.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %77 = load i32, ptr @rxrpc_debug, align 4
  %and226.i = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226.i)
  %tobool227.not.i = icmp eq i32 %and226.i, 0
  br i1 %tobool227.not.i, label %do.body225.i.rxrpc_preparse_xdr.exit_crit_edge, label %do.end237.i, !prof !217

do.body225.i.rxrpc_preparse_xdr.exit_crit_edge:   ; preds = %do.body225.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rxrpc_preparse_xdr.exit

do.end237.i:                                      ; preds = %do.body225.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i365.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i365.i to ptr
  %task240.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task240.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task240.i, align 8
  %comm241.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 101
  %call243.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %comm241.i, ptr noundef nonnull @.str.48, i32 noundef %ret.2.i) #14
  br label %rxrpc_preparse_xdr.exit

do.body247.i:                                     ; preds = %do.end178.i.do.body247.i_crit_edge, %do.end137.i.do.body247.i_crit_edge, %do.body109.i.do.body247.i_crit_edge, %do.end101.i.do.body247.i_crit_edge, %do.end72.i.do.body247.i_crit_edge, %for.body43.i.do.body247.i_crit_edge, %for.body.i.do.body247.i_crit_edge, %if.end25.i.do.body247.i_crit_edge, %if.end20.i.do.body247.i_crit_edge, %if.end17.i.do.body247.i_crit_edge, %do.end11.i.do.body247.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %82 = load i32, ptr @rxrpc_debug, align 4
  %and248.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248.i)
  %tobool249.not.i = icmp eq i32 %and248.i, 0
  br i1 %tobool249.not.i, label %do.body247.i.if.end18thread-pre-split_crit_edge, label %do.end259.i, !prof !217

do.body247.i.if.end18thread-pre-split_crit_edge:  ; preds = %do.body247.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18thread-pre-split

do.end259.i:                                      ; preds = %do.body247.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i366.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i366.i to ptr
  %task262.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task262.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task262.i, align 8
  %comm263.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 101
  %call265.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %comm263.i, ptr noundef nonnull @.str.48) #14
  br label %if.end18thread-pre-split

rxrpc_preparse_xdr.exit:                          ; preds = %do.end237.i, %do.body225.i.rxrpc_preparse_xdr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %ret.2.i)
  %cmp15.not = icmp eq i32 %ret.2.i, -71
  br i1 %cmp15.not, label %rxrpc_preparse_xdr.exit.if.end18thread-pre-split_crit_edge, label %rxrpc_preparse_xdr.exit.cleanup_crit_edge

rxrpc_preparse_xdr.exit.cleanup_crit_edge:        ; preds = %rxrpc_preparse_xdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rxrpc_preparse_xdr.exit.if.end18thread-pre-split_crit_edge: ; preds = %rxrpc_preparse_xdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18thread-pre-split

if.end18thread-pre-split:                         ; preds = %rxrpc_preparse_xdr.exit.if.end18thread-pre-split_crit_edge, %do.end259.i, %do.body247.i.if.end18thread-pre-split_crit_edge
  %87 = ptrtoint ptr %datalen11 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr = load i32, ptr %datalen11, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18thread-pre-split, %if.end10.if.end18_crit_edge
  %88 = phi i32 [ %.pr, %if.end18thread-pre-split ], [ %12, %if.end10.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %88)
  %cmp20 = icmp ult i32 %88, 5
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %lor.lhs.false

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end18
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data, align 8
  %tobool22.not = icmp eq ptr %90, null
  br i1 %tobool22.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %kver.0.copyload = load i32, ptr %90, align 1
  %add.ptr = getelementptr i8, ptr %90, i32 4
  %92 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr, ptr %data, align 8
  %sub = add i32 %88, -4
  %93 = ptrtoint ptr %datalen11 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub, ptr %datalen11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %94 = load i32, ptr @rxrpc_debug, align 4
  %and29 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end24.do.end49_crit_edge, label %do.end40, !prof !217

if.end24.do.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.end40:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %95 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i370 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i370 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task43, align 8
  %comm44 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 101
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm44, i32 noundef %kver.0.copyload) #14
  br label %do.end49

do.end49:                                         ; preds = %do.end40, %if.end24.do.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %kver.0.copyload)
  %cmp50.not = icmp eq i32 %kver.0.copyload, 1
  br i1 %cmp50.not, label %if.end52, label %do.end49.cleanup_crit_edge

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %do.end49
  %99 = ptrtoint ptr %datalen11 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %datalen11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %100)
  %cmp54 = icmp ult i32 %100, 20
  br i1 %cmp54, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %101 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data, align 8
  %ticket_length = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %ticket_length to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %ticket_length, align 2
  %conv = zext i16 %104 to i32
  %add = add nuw nsw i32 %conv, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add)
  %cmp59.not = icmp eq i32 %100, %add
  br i1 %cmp59.not, label %do.body63, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body63:                                        ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %105 = load i32, ptr @rxrpc_debug, align 4
  %and64 = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body63.do.body86_crit_edge, label %do.end75, !prof !217

do.body63.do.body86_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

do.end75:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  %106 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i371 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i371 to ptr
  %task78 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task78 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task78, align 8
  %comm79 = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 101
  %110 = ptrtoint ptr %102 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %102, align 4
  %conv81 = zext i16 %111 to i32
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm79, i32 noundef %conv81) #14
  br label %do.body86

do.body86:                                        ; preds = %do.end75, %do.body63.do.body86_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %112 = load i32, ptr @rxrpc_debug, align 4
  %and87 = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body86.do.body110_crit_edge, label %do.end98, !prof !217

do.body86.do.body110_crit_edge:                   ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body110

do.end98:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  %113 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i372 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i372 to ptr
  %task101 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task101 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task101, align 8
  %comm102 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 101
  %117 = ptrtoint ptr %ticket_length to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %ticket_length, align 2
  %conv105 = zext i16 %118 to i32
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm102, i32 noundef %conv105) #14
  br label %do.body110

do.body110:                                       ; preds = %do.end98, %do.body86.do.body110_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %119 = load i32, ptr @rxrpc_debug, align 4
  %and111 = and i32 %119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body110.do.body133_crit_edge, label %do.end122, !prof !217

do.body110.do.body133_crit_edge:                  ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body133

do.end122:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #13
  %120 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i373 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i373 to ptr
  %task125 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task125 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task125, align 8
  %comm126 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 101
  %expiry128 = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 2
  %124 = ptrtoint ptr %expiry128 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %expiry128, align 4
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %comm126, i32 noundef %125) #14
  br label %do.body133

do.body133:                                       ; preds = %do.end122, %do.body110.do.body133_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %126 = load i32, ptr @rxrpc_debug, align 4
  %and134 = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body133.do.body155_crit_edge, label %do.end145, !prof !217

do.body133.do.body155_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

do.end145:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #13
  %127 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i374 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i374 to ptr
  %task148 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %task148 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %task148, align 8
  %comm149 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 101
  %kvno = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 3
  %131 = ptrtoint ptr %kvno to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %kvno, align 4
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %comm149, i32 noundef %132) #14
  br label %do.body155

do.body155:                                       ; preds = %do.end145, %do.body133.do.body155_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %133 = load i32, ptr @rxrpc_debug, align 4
  %and156 = and i32 %133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %do.body155.do.end198_crit_edge, label %do.end167, !prof !217

do.body155.do.end198_crit_edge:                   ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end198

do.end167:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #13
  %134 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i375 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i375 to ptr
  %task170 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task170 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task170, align 8
  %comm171 = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 101
  %session_key = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4
  %138 = ptrtoint ptr %session_key to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %session_key, align 4
  %conv173 = zext i8 %139 to i32
  %arrayidx175 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %141 to i32
  %arrayidx178 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4, i32 2
  %142 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx178, align 2
  %conv179 = zext i8 %143 to i32
  %arrayidx181 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4, i32 3
  %144 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx181, align 1
  %conv182 = zext i8 %145 to i32
  %arrayidx184 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4, i32 4
  %146 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx184, align 4
  %conv185 = zext i8 %147 to i32
  %arrayidx187 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4, i32 5
  %148 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx187, align 1
  %conv188 = zext i8 %149 to i32
  %arrayidx190 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4, i32 6
  %150 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx190, align 2
  %conv191 = zext i8 %151 to i32
  %arrayidx193 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4, i32 7
  %152 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %153 to i32
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %comm171, i32 noundef %conv173, i32 noundef %conv176, i32 noundef %conv179, i32 noundef %conv182, i32 noundef %conv185, i32 noundef %conv188, i32 noundef %conv191, i32 noundef %conv194) #14
  br label %do.end198

do.end198:                                        ; preds = %do.end167, %do.body155.do.end198_crit_edge
  %154 = ptrtoint ptr %ticket_length to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %ticket_length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %155)
  %cmp201 = icmp ugt i16 %155, 7
  br i1 %cmp201, label %do.body204, label %do.end198.if.end249_crit_edge

do.end198.if.end249_crit_edge:                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end249

do.body204:                                       ; preds = %do.end198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %156 = load i32, ptr @rxrpc_debug, align 4
  %and205 = and i32 %156, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %do.body204.if.end249_crit_edge, label %do.end216, !prof !217

do.body204.if.end249_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end249

do.end216:                                        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #13
  %157 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i376 = and i32 %157, -16384
  %158 = inttoptr i32 %and.i376 to ptr
  %task219 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %task219 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %task219, align 8
  %comm220 = getelementptr inbounds %struct.task_struct, ptr %160, i32 0, i32 101
  %ticket = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 5
  %161 = ptrtoint ptr %ticket to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ticket, align 4
  %conv223 = zext i8 %162 to i32
  %arrayidx225 = getelementptr [0 x i8], ptr %ticket, i32 0, i32 1
  %163 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx225, align 1
  %conv226 = zext i8 %164 to i32
  %arrayidx228 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 1, i32 1
  %165 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx228, align 2
  %conv229 = zext i8 %166 to i32
  %arrayidx231 = getelementptr [0 x i8], ptr %ticket, i32 0, i32 3
  %167 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx231, align 1
  %conv232 = zext i8 %168 to i32
  %arrayidx234 = getelementptr %struct.rxrpc_key_data_v1, ptr %102, i32 1, i32 2
  %169 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx234, align 4
  %conv235 = zext i8 %170 to i32
  %arrayidx237 = getelementptr [0 x i8], ptr %ticket, i32 0, i32 5
  %171 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %172 to i32
  %arrayidx240 = getelementptr [0 x i8], ptr %ticket, i32 0, i32 6
  %173 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx240, align 2
  %conv241 = zext i8 %174 to i32
  %arrayidx243 = getelementptr [0 x i8], ptr %ticket, i32 0, i32 7
  %175 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx243, align 1
  %conv244 = zext i8 %176 to i32
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm220, i32 noundef %conv223, i32 noundef %conv226, i32 noundef %conv229, i32 noundef %conv232, i32 noundef %conv235, i32 noundef %conv238, i32 noundef %conv241, i32 noundef %conv244) #14
  br label %if.end249

if.end249:                                        ; preds = %do.end216, %do.body204.if.end249_crit_edge, %do.end198.if.end249_crit_edge
  %177 = ptrtoint ptr %102 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %102, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %178)
  %cmp252.not = icmp eq i16 %178, 2
  br i1 %cmp252.not, label %if.end255, label %if.end249.cleanup_crit_edge

if.end249.cleanup_crit_edge:                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end255:                                        ; preds = %if.end249
  %179 = ptrtoint ptr %ticket_length to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %ticket_length, align 2
  %conv257 = zext i16 %180 to i32
  %add259 = add nuw nsw i32 %conv257, 40
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %181 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %add259, ptr %quotalen, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %182 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %182, i32 noundef 3520, i32 noundef 12) #15
  %tobool261.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool261.not, label %if.end255.cleanup_crit_edge, label %if.end8.i.i

if.end255.cleanup_crit_edge:                      ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end255
  %add258 = add nuw nsw i32 %conv257, 28
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add258, i32 noundef 3520) #16
  %183 = getelementptr inbounds %struct.rxrpc_key_token, ptr %call7.i.i, i32 0, i32 3
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call9.i.i, ptr %183, align 8
  %tobool265.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool265.not, label %if.end8.i.i.error_free_crit_edge, label %if.end267

if.end8.i.i.error_free_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free

if.end267:                                        ; preds = %if.end8.i.i
  %185 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 2, ptr %call7.i.i, align 8
  %186 = ptrtoint ptr %ticket_length to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %ticket_length, align 2
  %ticket_len = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 5
  %188 = ptrtoint ptr %ticket_len to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %ticket_len, align 2
  %expiry270 = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 2
  %189 = ptrtoint ptr %expiry270 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %expiry270, align 4
  %expiry271 = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 2
  %191 = ptrtoint ptr %expiry271 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %expiry271, align 8
  %kvno272 = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 3
  %192 = ptrtoint ptr %kvno272 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %kvno272, align 4
  %kvno273 = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 3
  %194 = ptrtoint ptr %kvno273 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %kvno273, align 4
  %session_key274 = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 6
  %session_key275 = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 4
  %195 = ptrtoint ptr %session_key275 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 8)
  %196 = load i64, ptr %session_key275, align 4
  %197 = ptrtoint ptr %session_key274 to i32
  call void @__asan_storeN_noabort(i32 %197, i32 8)
  store i64 %196, ptr %session_key274, align 4
  %ticket276 = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 7
  %ticket277 = getelementptr inbounds %struct.rxrpc_key_data_v1, ptr %102, i32 0, i32 5
  %198 = load i16, ptr %ticket_length, align 2
  %conv280 = zext i16 %198 to i32
  %199 = call ptr @memcpy(ptr %ticket276, ptr %ticket277, i32 %conv280)
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %arrayidx281 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %200 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx281, align 4
  %202 = ptrtoint ptr %201 to i32
  %add282 = add i32 %202, 1
  %203 = inttoptr i32 %add282 to ptr
  store ptr %203, ptr %arrayidx281, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end267
  %pp.0 = phi ptr [ %payload, %if.end267 ], [ %next, %while.cond.while.cond_crit_edge ]
  %204 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pp.0, align 4
  %tobool287.not = icmp eq ptr %205, null
  %next = getelementptr inbounds %struct.rxrpc_key_token, ptr %205, i32 0, i32 2
  br i1 %tobool287.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %206 = ptrtoint ptr %pp.0 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call7.i.i, ptr %pp.0, align 4
  %207 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %183, align 8
  %expiry288 = getelementptr inbounds %struct.rxkad_key, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %expiry288 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %expiry288, align 4
  %conv.i378 = zext i32 %210 to i64
  %expiry290 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 6
  %211 = ptrtoint ptr %expiry290 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %expiry290, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %212, i64 %conv.i378)
  %cmp291 = icmp sgt i64 %212, %conv.i378
  br i1 %cmp291, label %if.then293, label %while.end.error_free_crit_edge

while.end.error_free_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free

if.then293:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %213 = ptrtoint ptr %expiry290 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %conv.i378, ptr %expiry290, align 8
  br label %error_free

error_free:                                       ; preds = %if.then293, %while.end.error_free_crit_edge, %if.end8.i.i.error_free_crit_edge
  %ret.0 = phi i32 [ -12, %if.end8.i.i.error_free_crit_edge ], [ 0, %if.then293 ], [ 0, %while.end.error_free_crit_edge ]
  %token.0 = phi ptr [ %call7.i.i, %if.end8.i.i.error_free_crit_edge ], [ null, %if.then293 ], [ null, %while.end.error_free_crit_edge ]
  tail call void @kfree(ptr noundef %token.0) #11
  br label %cleanup

cleanup:                                          ; preds = %error_free, %if.end255.cleanup_crit_edge, %if.end249.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end49.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %rxrpc_preparse_xdr.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %ret.2.i, %rxrpc_preparse_xdr.exit.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -129, %do.end49.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ -22, %if.end56.cleanup_crit_edge ], [ -93, %if.end249.cleanup_crit_edge ], [ %ret.0, %error_free ], [ -12, %if.end255.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_free_preparse(ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 8
  %tobool.not15.i = icmp eq ptr %1, null
  br i1 %tobool.not15.i, label %entry.rxrpc_free_token_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rxrpc_free_token_list.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rxrpc_free_token_list.exit

for.body.i:                                       ; preds = %sw.bb.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %token.addr.016.i = phi ptr [ %5, %sw.bb.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %token.addr.016.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %token.addr.016.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cond.i = icmp eq i16 %3, 2
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %for.body.i
  %next1.i = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.addr.016.i, i32 0, i32 2
  %4 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next1.i, align 4
  %6 = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.addr.016.i, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %8) #11
  tail call void @kfree(ptr noundef nonnull %token.addr.016.i) #11
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %sw.bb.i.rxrpc_free_token_list.exit_crit_edge, label %sw.bb.i.for.body.i_crit_edge

sw.bb.i.for.body.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sw.bb.i.rxrpc_free_token_list.exit_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rxrpc_free_token_list.exit

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %3 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %conv.i) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #11, !srcloc !218
  unreachable

rxrpc_free_token_list.exit:                       ; preds = %sw.bb.i.rxrpc_free_token_list.exit_crit_edge, %entry.rxrpc_free_token_list.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_destroy(ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not15.i = icmp eq ptr %2, null
  br i1 %tobool.not15.i, label %entry.rxrpc_free_token_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rxrpc_free_token_list.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rxrpc_free_token_list.exit

for.body.i:                                       ; preds = %sw.bb.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %token.addr.016.i = phi ptr [ %6, %sw.bb.i.for.body.i_crit_edge ], [ %2, %entry.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %token.addr.016.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %token.addr.016.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cond.i = icmp eq i16 %4, 2
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %for.body.i
  %next1.i = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.addr.016.i, i32 0, i32 2
  %5 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next1.i, align 4
  %7 = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.addr.016.i, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %9) #11
  tail call void @kfree(ptr noundef nonnull %token.addr.016.i) #11
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %sw.bb.i.rxrpc_free_token_list.exit_crit_edge, label %sw.bb.i.for.body.i_crit_edge

sw.bb.i.for.body.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sw.bb.i.rxrpc_free_token_list.exit_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rxrpc_free_token_list.exit

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %4 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %conv.i) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #11, !srcloc !218
  unreachable

rxrpc_free_token_list.exit:                       ; preds = %sw.bb.i.rxrpc_free_token_list.exit_crit_edge, %entry.rxrpc_free_token_list.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_describe(ptr nocapture noundef readonly %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %1) #11
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %token.010 = load ptr, ptr %2, align 4
  %tobool.not11 = icmp eq ptr %token.010, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.95) #11
  %4 = ptrtoint ptr %token.010 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %token.010, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cond.peel = icmp eq i16 %5, 2
  br i1 %cond.peel, label %sw.bb.peel, label %sw.default.peel

sw.default.peel:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %conv.peel = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97, i32 noundef %conv.peel) #11
  br label %sw.epilog.peel

sw.bb.peel:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.96) #11
  br label %sw.epilog.peel

sw.epilog.peel:                                   ; preds = %sw.bb.peel, %sw.default.peel
  %next.peel = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.010, i32 0, i32 2
  %6 = ptrtoint ptr %next.peel to i32
  call void @__asan_load4_noabort(i32 %6)
  %token.0.peel = load ptr, ptr %next.peel, align 4
  %tobool.not.peel = icmp eq ptr %token.0.peel, null
  br i1 %tobool.not.peel, label %sw.epilog.peel.for.end_crit_edge, label %sw.epilog.peel.for.body_crit_edge

sw.epilog.peel.for.body_crit_edge:                ; preds = %sw.epilog.peel
  br label %for.body

sw.epilog.peel.for.end_crit_edge:                 ; preds = %sw.epilog.peel
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %sw.epilog.peel.for.body_crit_edge
  %token.013 = phi ptr [ %token.0, %sw.epilog.for.body_crit_edge ], [ %token.0.peel, %sw.epilog.peel.for.body_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.98) #11
  %7 = ptrtoint ptr %token.013 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %token.013, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cond = icmp eq i16 %8, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.96) #11
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97, i32 noundef %conv) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %next = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.013, i32 0, i32 2
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %token.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %token.0, null
  br i1 %tobool.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge, !llvm.loop !219

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %sw.epilog.peel.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxrpc_read(ptr nocapture noundef readonly %key, ptr noundef %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  %zero = alloca i32, align 4
  %toksizes = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %toksizes) #11
  %0 = call ptr @memset(ptr %toksizes, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %1 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !217

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, ptr noundef nonnull @.str.102) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %6 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %description, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %7, ptr noundef nonnull dereferenceable(4) @.str.103, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end9, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %call11 = tail call i32 @strlen(ptr noundef %add.ptr) #17
  %add = add i32 %call11, 3
  %8 = add i32 %call11, 15
  %add14 = and i32 %8, -4
  %9 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %token.0439 = load ptr, ptr %9, align 4
  %tobool15.not440 = icmp eq ptr %token.0439, null
  br i1 %tobool15.not440, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end76.for.body_crit_edge, %if.end9.for.body_crit_edge
  %token.0443 = phi ptr [ %token.0, %if.end76.for.body_crit_edge ], [ %token.0439, %if.end9.for.body_crit_edge ]
  %size.0442 = phi i32 [ %add82, %if.end76.for.body_crit_edge ], [ %add14, %if.end9.for.body_crit_edge ]
  %ntoks.0441 = phi i32 [ %inc, %if.end76.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %11 = ptrtoint ptr %token.0443 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %token.0443, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cond327 = icmp eq i16 %12, 2
  br i1 %cond327, label %sw.bb, label %do.end26

sw.bb:                                            ; preds = %for.body
  %no_leak_key = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.0443, i32 0, i32 1
  %13 = ptrtoint ptr %no_leak_key to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %no_leak_key, align 2, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp eq i8 %14, 0
  br i1 %tobool17.not, label %if.then18, label %sw.bb.do.body31_crit_edge

sw.bb.do.body31_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body31

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %15 = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.0443, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %ticket_len = getelementptr inbounds %struct.rxkad_key, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ticket_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ticket_len, align 2
  %conv19 = zext i16 %19 to i32
  %add20 = add nuw nsw i32 %conv19, 3
  %and21 = and i32 %add20, 131068
  %add22 = add nuw nsw i32 %and21, 36
  br label %do.body31

do.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %12 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %conv) #14
  br label %cleanup

do.body31:                                        ; preds = %if.then18, %sw.bb.do.body31_crit_edge
  %toksize.0 = phi i32 [ 36, %sw.bb.do.body31_crit_edge ], [ %add22, %if.then18 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %20 = load i32, ptr @rxrpc_debug, align 4
  %and32 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.body53_crit_edge, label %do.end43, !prof !217

do.body31.do.body53_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body53

do.end43:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %21 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i425 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i425 to ptr
  %task46 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task46, align 8
  %comm47 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 101
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %comm47, i32 noundef %ntoks.0441, i32 noundef %toksize.0) #14
  br label %do.body53

do.body53:                                        ; preds = %do.end43, %do.body31.do.body53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %toksize.0)
  %cmp54 = icmp ugt i32 %toksize.0, 16384
  br i1 %cmp54, label %do.end67, label %if.end76, !prof !222

do.end67:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %toksize.0, i32 noundef %toksize.0, ptr noundef nonnull @.str.113, i32 noundef 16384, i32 noundef 16384) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 605, 0\0A.popsection", ""() #11, !srcloc !223
  unreachable

if.end76:                                         ; preds = %do.body53
  %conv79 = trunc i32 %toksize.0 to i16
  %inc = add i32 %ntoks.0441, 1
  %arrayidx80 = getelementptr [8 x i16], ptr %toksizes, i32 0, i32 %ntoks.0441
  %25 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv79, ptr %arrayidx80, align 2
  %add81 = add i32 %size.0442, 4
  %add82 = add i32 %add81, %toksize.0
  %next = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.0443, i32 0, i32 2
  %26 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %26)
  %token.0 = load ptr, ptr %next, align 4
  %tobool15.not = icmp eq ptr %token.0, null
  br i1 %tobool15.not, label %if.end76.for.end_crit_edge, label %if.end76.for.body_crit_edge

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end76.for.end_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end76.for.end_crit_edge, %if.end9.for.end_crit_edge
  %ntoks.0.lcssa = phi i32 [ 0, %if.end9.for.end_crit_edge ], [ %inc, %if.end76.for.end_crit_edge ]
  %size.0.lcssa = phi i32 [ %add14, %if.end9.for.end_crit_edge ], [ %add82, %if.end76.for.end_crit_edge ]
  %tobool83.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.lcssa, i32 %buflen)
  %cmp84 = icmp ugt i32 %size.0.lcssa, %buflen
  %or.cond = select i1 %tobool83.not, i1 true, i1 %cmp84
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end87

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end87:                                         ; preds = %for.end
  %27 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %zero, align 4
  %incdec.ptr = getelementptr i32, ptr %buffer, i32 1
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %buffer, align 4
  %incdec.ptr93 = getelementptr i32, ptr %buffer, i32 2
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call11, ptr %incdec.ptr, align 4
  %30 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %description, align 8
  %add.ptr97 = getelementptr i8, ptr %31, i32 4
  %32 = call ptr @memcpy(ptr %incdec.ptr93, ptr %add.ptr97, i32 %call11)
  %and98 = and i32 %call11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end87.if.end103_crit_edge, label %if.then100

if.end87.if.end103_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then100:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr101 = getelementptr i8, ptr %incdec.ptr93, i32 %call11
  %sub = sub nuw nsw i32 4, %and98
  %33 = call ptr @memcpy(ptr %add.ptr101, ptr %zero, i32 %sub)
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end87.if.end103_crit_edge
  %shr = lshr i32 %add, 2
  %add.ptr105 = getelementptr i32, ptr %incdec.ptr93, i32 %shr
  %incdec.ptr109 = getelementptr i32, ptr %add.ptr105, i32 1
  %34 = ptrtoint ptr %add.ptr105 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %ntoks.0.lcssa, ptr %add.ptr105, align 4
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %token.1447 = load ptr, ptr %9, align 4
  %tobool114.not448 = icmp eq ptr %token.1447, null
  br i1 %tobool114.not448, label %if.end103.do.body240_crit_edge, label %if.end103.for.body115_crit_edge

if.end103.for.body115_crit_edge:                  ; preds = %if.end103
  br label %for.body115

if.end103.do.body240_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body240

for.cond113:                                      ; preds = %do.body208
  %next238 = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.1451, i32 0, i32 2
  %36 = ptrtoint ptr %next238 to i32
  call void @__asan_load4_noabort(i32 %36)
  %token.1 = load ptr, ptr %next238, align 4
  %tobool114.not = icmp eq ptr %token.1, null
  br i1 %tobool114.not, label %for.cond113.do.body240_crit_edge, label %for.cond113.for.body115_crit_edge

for.cond113.for.body115_crit_edge:                ; preds = %for.cond113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body115

for.cond113.do.body240_crit_edge:                 ; preds = %for.cond113
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body240

for.body115:                                      ; preds = %for.cond113.for.body115_crit_edge, %if.end103.for.body115_crit_edge
  %token.1451 = phi ptr [ %token.1, %for.cond113.for.body115_crit_edge ], [ %token.1447, %if.end103.for.body115_crit_edge ]
  %xdr.0450 = phi ptr [ %xdr.1, %for.cond113.for.body115_crit_edge ], [ %incdec.ptr109, %if.end103.for.body115_crit_edge ]
  %tok.0449 = phi i32 [ %inc116, %for.cond113.for.body115_crit_edge ], [ 0, %if.end103.for.body115_crit_edge ]
  %inc116 = add i32 %tok.0449, 1
  %arrayidx117 = getelementptr [8 x i16], ptr %toksizes, i32 0, i32 %tok.0449
  %37 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx117, align 2
  %conv118 = zext i16 %38 to i32
  %incdec.ptr120 = getelementptr i32, ptr %xdr.0450, i32 1
  %39 = ptrtoint ptr %xdr.0450 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv118, ptr %xdr.0450, align 4
  %40 = ptrtoint ptr %token.1451 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %token.1451, align 4
  %conv125 = zext i16 %41 to i32
  %42 = ptrtoint ptr %incdec.ptr120 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv125, ptr %incdec.ptr120, align 4
  %43 = load i16, ptr %token.1451, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %43)
  %cond = icmp eq i16 %43, 2
  br i1 %cond, label %do.body132, label %do.end202

do.body132:                                       ; preds = %for.body115
  %incdec.ptr126 = getelementptr i32, ptr %xdr.0450, i32 2
  %44 = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.1451, i32 0, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %incdec.ptr133 = getelementptr i32, ptr %xdr.0450, i32 3
  %49 = ptrtoint ptr %incdec.ptr126 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %incdec.ptr126, align 4
  %50 = load ptr, ptr %44, align 4
  %kvno = getelementptr inbounds %struct.rxkad_key, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %kvno to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %kvno, align 4
  %incdec.ptr137 = getelementptr i32, ptr %xdr.0450, i32 4
  %53 = ptrtoint ptr %incdec.ptr133 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %incdec.ptr133, align 4
  %54 = load ptr, ptr %44, align 4
  %session_key = getelementptr inbounds %struct.rxkad_key, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %session_key to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %session_key, align 4
  %57 = ptrtoint ptr %incdec.ptr137 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %incdec.ptr137, align 4
  %add.ptr152 = getelementptr i32, ptr %xdr.0450, i32 6
  %58 = load ptr, ptr %44, align 4
  %start = getelementptr inbounds %struct.rxkad_key, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %start, align 4
  %incdec.ptr156 = getelementptr i32, ptr %xdr.0450, i32 7
  %61 = ptrtoint ptr %add.ptr152 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %add.ptr152, align 4
  %62 = load ptr, ptr %44, align 4
  %expiry = getelementptr inbounds %struct.rxkad_key, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %expiry to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %expiry, align 4
  %incdec.ptr160 = getelementptr i32, ptr %xdr.0450, i32 8
  %65 = ptrtoint ptr %incdec.ptr156 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %incdec.ptr156, align 4
  %66 = load ptr, ptr %44, align 4
  %primary_flag = getelementptr inbounds %struct.rxkad_key, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %primary_flag to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %primary_flag, align 4
  %conv164 = zext i8 %68 to i32
  %incdec.ptr165 = getelementptr i32, ptr %xdr.0450, i32 9
  %69 = ptrtoint ptr %incdec.ptr160 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv164, ptr %incdec.ptr160, align 4
  %no_leak_key168 = getelementptr inbounds %struct.rxrpc_key_token, ptr %token.1451, i32 0, i32 1
  %70 = ptrtoint ptr %no_leak_key168 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %no_leak_key168, align 2, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool169.not = icmp eq i8 %71, 0
  br i1 %tobool169.not, label %do.body175, label %do.body171

do.body171:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr172 = getelementptr i32, ptr %xdr.0450, i32 10
  %72 = ptrtoint ptr %incdec.ptr165 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %incdec.ptr165, align 4
  br label %do.body208

do.body175:                                       ; preds = %do.body132
  %73 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %44, align 4
  %ticket_len177 = getelementptr inbounds %struct.rxkad_key, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %ticket_len177 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ticket_len177, align 2
  %conv178 = zext i16 %76 to i32
  %incdec.ptr182 = getelementptr i32, ptr %xdr.0450, i32 10
  %77 = ptrtoint ptr %incdec.ptr165 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv178, ptr %incdec.ptr165, align 4
  %78 = load ptr, ptr %44, align 4
  %ticket = getelementptr inbounds %struct.rxkad_key, ptr %78, i32 0, i32 7
  %79 = call ptr @memcpy(ptr %incdec.ptr182, ptr %ticket, i32 %conv178)
  %and186 = and i32 %conv178, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %do.body175.if.end192_crit_edge, label %if.then188

do.body175.if.end192_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192

if.then188:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr189 = getelementptr i8, ptr %incdec.ptr182, i32 %conv178
  %sub191 = sub nuw nsw i32 4, %and186
  %80 = call ptr @memcpy(ptr %add.ptr189, ptr %zero, i32 %sub191)
  br label %if.end192

if.end192:                                        ; preds = %if.then188, %do.body175.if.end192_crit_edge
  %add193 = add nuw nsw i32 %conv178, 3
  %shr194 = lshr i32 %add193, 2
  %add.ptr195 = getelementptr i32, ptr %incdec.ptr182, i32 %shr194
  br label %do.body208

do.end202:                                        ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #13
  %conv130 = zext i16 %43 to i32
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %conv130) #14
  br label %cleanup

do.body208:                                       ; preds = %if.end192, %do.body171
  %xdr.1 = phi ptr [ %incdec.ptr172, %do.body171 ], [ %add.ptr195, %if.end192 ]
  %81 = ptrtoint ptr %xdr.1 to i32
  %82 = ptrtoint ptr %incdec.ptr120 to i32
  %sub210 = sub i32 %81, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %sub210, i32 %conv118)
  %cmp212.not = icmp eq i32 %sub210, %conv118
  br i1 %cmp212.not, label %for.cond113, label %do.end225, !prof !217

do.end225:                                        ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #13
  %conv118.le = zext i16 %38 to i32
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %sub210, i32 noundef %sub210, ptr noundef nonnull @.str.118, i32 noundef %conv118.le, i32 noundef %conv118.le) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 683, 0\0A.popsection", ""() #11, !srcloc !224
  unreachable

do.body240:                                       ; preds = %for.cond113.do.body240_crit_edge, %if.end103.do.body240_crit_edge
  %tok.0.lcssa = phi i32 [ 0, %if.end103.do.body240_crit_edge ], [ %inc116, %for.cond113.do.body240_crit_edge ]
  %xdr.0.lcssa = phi ptr [ %incdec.ptr109, %if.end103.do.body240_crit_edge ], [ %xdr.1, %for.cond113.do.body240_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tok.0.lcssa, i32 %ntoks.0.lcssa)
  %cmp243.not = icmp eq i32 %tok.0.lcssa, %ntoks.0.lcssa
  br i1 %cmp243.not, label %if.end265, label %do.end256, !prof !217

do.end256:                                        ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #13
  %call258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %tok.0.lcssa, i32 noundef %tok.0.lcssa, ptr noundef nonnull @.str.118, i32 noundef %ntoks.0.lcssa, i32 noundef %ntoks.0.lcssa) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 691, 0\0A.popsection", ""() #11, !srcloc !225
  unreachable

if.end265:                                        ; preds = %do.body240
  %sub.ptr.lhs.cast = ptrtoint ptr %xdr.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buffer to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %size.0.lcssa)
  %cmp271.not = icmp eq i32 %sub.ptr.sub, %size.0.lcssa
  br i1 %cmp271.not, label %if.end293, label %do.end284, !prof !217

do.end284:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #13
  %call286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %sub.ptr.sub, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str.118, i32 noundef %size.0.lcssa, i32 noundef %size.0.lcssa) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 692, 0\0A.popsection", ""() #11, !srcloc !226
  unreachable

if.end293:                                        ; preds = %if.end265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %83 = load i32, ptr @rxrpc_debug, align 4
  %and297 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297)
  %tobool298.not = icmp eq i32 %and297, 0
  br i1 %tobool298.not, label %if.end293.cleanup_crit_edge, label %do.end308, !prof !217

if.end293.cleanup_crit_edge:                      ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end308:                                        ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  %84 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i426 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i426 to ptr
  %task311 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task311 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task311, align 8
  %comm312 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 101
  %call314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %comm312, ptr noundef nonnull @.str.102, i32 noundef %size.0.lcssa) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end308, %if.end293.cleanup_crit_edge, %do.end202, %for.end.cleanup_crit_edge, %do.end26, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -65, %do.end26 ], [ -65, %do.end202 ], [ -95, %do.end6.cleanup_crit_edge ], [ %size.0.lcssa, %for.end.cleanup_crit_edge ], [ %size.0.lcssa, %do.end308 ], [ %size.0.lcssa, %if.end293.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %toksizes) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_request_key(ptr nocapture noundef %rx, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !217

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, ptr noundef nonnull @.str.2) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = add i32 %optlen, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %5)
  %6 = icmp ult i32 %5, -4095
  br i1 %6, label %do.end6.cleanup_crit_edge, label %lor.lhs.false8

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false8:                                   ; preds = %do.end6
  %securities = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 11
  %7 = ptrtoint ptr %securities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %securities, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8
  %add.i = add nuw nsw i32 %optlen, 1
  %9 = tail call ptr @llvm.returnaddress(i32 0) #11
  %10 = ptrtoint ptr %9 to i32
  %call.i = tail call ptr @__kmalloc_track_caller(i32 noundef %add.i, i32 noundef 3264, i32 noundef %10) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end11.if.then14_crit_edge, label %if.end.i

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end.i:                                         ; preds = %if.end11
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %11 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end.i
  tail call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %optlen, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.101, i32 noundef 156) #11
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 %optlen, i32 -1226833920) #18, !srcloc !227
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !217

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %optlen) #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i.i.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #6, !srcloc !228
  %and.i.i.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  %call1.i.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %11, i32 noundef %optlen) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.memdup_sockptr_nul.exit_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !217

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.memdup_sockptr_nul.exit_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %memdup_sockptr_nul.exit

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i.i87 = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ %optlen, %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ %optlen, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 %optlen, %res.0.i.i.i.i.i87
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i, i32 %sub.i.i.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i.i87)
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  br label %if.then14

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call ptr @memcpy(ptr %call.i, ptr %11, i32 %optlen)
  br label %memdup_sockptr_nul.exit

memdup_sockptr_nul.exit:                          ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.memdup_sockptr_nul.exit_crit_edge
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %optlen
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %memdup_sockptr_nul.exit.if.then14_crit_edge, label %if.end16

memdup_sockptr_nul.exit.if.then14_crit_edge:      ; preds = %memdup_sockptr_nul.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %memdup_sockptr_nul.exit.if.then14_crit_edge, %if.then11.i.i.i.i.i, %if.end11.if.then14_crit_edge
  %retval.0.i90 = phi ptr [ %call.i, %memdup_sockptr_nul.exit.if.then14_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end11.if.then14_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i.i.i.i ]
  %19 = ptrtoint ptr %retval.0.i90 to i32
  br label %cleanup

if.end16:                                         ; preds = %memdup_sockptr_nul.exit
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 9
  %20 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_net.i, align 4
  %key_domain = getelementptr inbounds %struct.net, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %key_domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %key_domain, align 128
  %call18 = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_rxrpc, ptr noundef nonnull %call.i, ptr noundef %23, ptr noundef null) #11
  %cmp.i82 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then20, label %if.end45

if.then20:                                        ; preds = %if.end16
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %24 = load i32, ptr @rxrpc_debug, align 4
  %and22 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then20.do.end43_crit_edge, label %do.end33, !prof !217

if.then20.do.end43_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = ptrtoint ptr %call18 to i32
  br label %cleanup

do.end33:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %25 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i83 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i83 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task36, align 8
  %comm37 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %29 = ptrtoint ptr %call18 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm37, ptr noundef nonnull @.str.2, i32 noundef %29) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end16
  %key46 = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 10
  %30 = ptrtoint ptr %key46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call18, ptr %key46, align 8
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %31 = load i32, ptr @rxrpc_debug, align 4
  %and48 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end45.cleanup_crit_edge, label %do.end59, !prof !217

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end59:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %32 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i84 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i84 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task62, align 8
  %comm63 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %serial = getelementptr inbounds %struct.key, ptr %call18, i32 0, i32 1
  %36 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %serial, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm63, ptr noundef nonnull @.str.2, i32 noundef %37) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end45.cleanup_crit_edge, %do.end33, %if.then20.do.end43_crit_edge, %if.then14, %lor.lhs.false8.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then14 ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %do.end6.cleanup_crit_edge ], [ 0, %do.end59 ], [ 0, %if.end45.cleanup_crit_edge ], [ %.pre, %if.then20.do.end43_crit_edge ], [ %29, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_get_server_data_key(ptr nocapture noundef writeonly %conn, ptr nocapture noundef readonly %session_key, i64 noundef %expiry, i32 %kvno) #0 align 64 {
entry:
  %data = alloca %struct.anon.160, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #11
  %6 = getelementptr inbounds %struct.anon.160, ptr %data, i32 0, i32 1
  %7 = getelementptr inbounds %struct.anon.160, ptr %data, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.anon.160, ptr %data, i32 0, i32 1, i32 2
  %9 = getelementptr inbounds %struct.anon.160, ptr %data, i32 0, i32 1, i32 3
  %10 = getelementptr inbounds %struct.anon.160, ptr %data, i32 0, i32 1, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %11 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.end7, !prof !217

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, ptr noundef nonnull @.str.10) #14
  br label %do.end13

do.end13:                                         ; preds = %do.end7, %entry.do.end13_crit_edge
  %call17 = tail call ptr @key_alloc(ptr noundef nonnull @key_type_rxrpc, ptr noundef nonnull @.str.11, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef %5, i32 noundef 0, i32 noundef 2, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %14 = load i32, ptr @rxrpc_debug, align 4
  br i1 %cmp.i, label %do.body20, label %do.body44

do.body20:                                        ; preds = %do.end13
  %and21 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.cleanup_crit_edge, label %do.end32, !prof !217

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %comm36 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %17 = ptrtoint ptr %call17 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm36, ptr noundef nonnull @.str.10, i32 noundef %17) #14
  br label %cleanup

do.body44:                                        ; preds = %do.end13
  %and45 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.do.end66_crit_edge, label %do.end56, !prof !217

do.body44.do.end66_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66

do.end56:                                         ; preds = %do.body44
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm60 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %tobool.not.i = icmp eq ptr %call17, null
  br i1 %tobool.not.i, label %do.end56.key_serial.exit_crit_edge, label %cond.true.i

do.end56.key_serial.exit_crit_edge:               ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  %serial.i = getelementptr inbounds %struct.key, ptr %call17, i32 0, i32 1
  %20 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end56.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %21, %cond.true.i ], [ 0, %do.end56.key_serial.exit_crit_edge ]
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm60, i32 noundef %cond.i) #14
  br label %do.end66

do.end66:                                         ; preds = %key_serial.exit, %do.body44.do.end66_crit_edge
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %data, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %6, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %7, align 2
  %25 = tail call i64 @llvm.smin.i64(i64 %expiry, i64 4294967295) #11
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 0) #11
  %27 = trunc i64 %26 to i32
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %8, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %9, align 4
  %30 = ptrtoint ptr %session_key to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %session_key, align 1
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %10, align 4
  %call75 = call i32 @key_instantiate_and_link(ptr noundef %call17, ptr noundef nonnull %data, i32 noundef 24, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp = icmp slt i32 %call75, 0
  br i1 %cmp, label %error, label %if.end77

if.end77:                                         ; preds = %do.end66
  %key78 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %key78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call17, ptr %key78, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %34 = load i32, ptr @rxrpc_debug, align 4
  %and80 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end77.cleanup_crit_edge, label %do.end91, !prof !217

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end91:                                         ; preds = %if.end77
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %comm95 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %tobool.not.i136 = icmp eq ptr %call17, null
  br i1 %tobool.not.i136, label %do.end91.key_serial.exit140_crit_edge, label %cond.true.i138

do.end91.key_serial.exit140_crit_edge:            ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_serial.exit140

cond.true.i138:                                   ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #13
  %serial.i137 = getelementptr inbounds %struct.key, ptr %call17, i32 0, i32 1
  %37 = ptrtoint ptr %serial.i137 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %serial.i137, align 4
  br label %key_serial.exit140

key_serial.exit140:                               ; preds = %cond.true.i138, %do.end91.key_serial.exit140_crit_edge
  %cond.i139 = phi i32 [ %38, %cond.true.i138 ], [ 0, %do.end91.key_serial.exit140_crit_edge ]
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm95, ptr noundef nonnull @.str.10, i32 noundef %cond.i139) #14
  br label %cleanup

error:                                            ; preds = %do.end66
  call void @key_revoke(ptr noundef %call17) #11
  call void @key_put(ptr noundef %call17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %39 = load i32, ptr @rxrpc_debug, align 4
  %and103 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %error.cleanup_crit_edge, label %do.end114, !prof !217

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end114:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %comm118 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 101
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %comm118, ptr noundef nonnull @.str.10, i32 noundef %call75) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end114, %error.cleanup_crit_edge, %key_serial.exit140, %if.end77.cleanup_crit_edge, %do.end32, %do.body20.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end32 ], [ -12, %do.body20.cleanup_crit_edge ], [ 0, %key_serial.exit140 ], [ 0, %if.end77.cleanup_crit_edge ], [ -12, %do.end114 ], [ -12, %error.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_alloc(ptr noundef, ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_get_null_key(ptr noundef %keyname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  %call5 = tail call ptr @key_alloc(ptr noundef nonnull @key_type_rxrpc, ptr noundef %keyname, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef %5, i32 noundef 134217728, i32 noundef 2, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @key_instantiate_and_link(ptr noundef %call5, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @key_revoke(ptr noundef %call5) #11
  tail call void @key_put(ptr noundef %call5) #11
  %6 = inttoptr i32 %call7 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then8 ], [ %call5, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxrpc_preparse_xdr_rxkad(ptr nocapture noundef %prep, ptr nocapture noundef readonly %xdr, i32 noundef %toklen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !217

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %5 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xdr, align 4
  %arrayidx4 = getelementptr i32, ptr %xdr, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %xdr, i32 2
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %xdr, i32 3
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm, ptr noundef nonnull @.str.71, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %toklen) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %toklen)
  %cmp = icmp ult i32 %toklen, 33
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end11

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.end9
  %arrayidx12 = getelementptr i32, ptr %xdr, i32 7
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %15 = load i32, ptr @rxrpc_debug, align 4
  %and14 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end11.do.end34_crit_edge, label %do.end25, !prof !217

if.end11.do.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %16 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i1 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i1 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task28, align 8
  %comm29 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %comm29, i32 noundef %14) #14
  br label %do.end34

do.end34:                                         ; preds = %do.end25, %if.end11.do.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %14)
  %cmp35 = icmp ugt i32 %14, 12000
  %add = add i32 %14, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %toklen)
  %cmp38 = icmp ugt i32 %add, %toklen
  %or.cond = or i1 %cmp35, %cmp38
  br i1 %or.cond, label %do.end34.cleanup_crit_edge, label %if.end40

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %do.end34
  %add41 = add nuw nsw i32 %14, 40
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %20 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add41, ptr %quotalen, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 12) #15
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %if.end40.cleanup_crit_edge, label %if.end8.i.i

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end40
  %sub = add nuw nsw i32 %14, 28
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #16
  %22 = getelementptr inbounds %struct.rxrpc_key_token, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i, ptr %22, align 8
  %tobool48.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end8.i.i
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %call7.i.i, align 8
  %conv = trunc i32 %14 to i16
  %ticket_len = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %ticket_len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %ticket_len, align 2
  %26 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xdr, align 4
  %28 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %call9.i.i, align 128
  %arrayidx52 = getelementptr i32, ptr %xdr, i32 1
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx52, align 4
  %kvno = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %kvno to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %kvno, align 4
  %arrayidx53 = getelementptr i32, ptr %xdr, i32 4
  %32 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx53, align 4
  %start = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %start, align 4
  %arrayidx54 = getelementptr i32, ptr %xdr, i32 5
  %35 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx54, align 4
  %expiry55 = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %expiry55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %expiry55, align 8
  %arrayidx56 = getelementptr i32, ptr %xdr, i32 6
  %38 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx56, align 4
  %conv57 = trunc i32 %39 to i8
  %primary_flag = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %primary_flag to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv57, ptr %primary_flag, align 16
  %session_key = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 6
  %arrayidx58 = getelementptr i32, ptr %xdr, i32 2
  %41 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %arrayidx58, align 4
  %43 = ptrtoint ptr %session_key to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %session_key, align 4
  %ticket = getelementptr inbounds %struct.rxkad_key, ptr %call9.i.i, i32 0, i32 7
  %arrayidx59 = getelementptr i32, ptr %xdr, i32 8
  %44 = call ptr @memcpy(ptr %ticket, ptr %arrayidx59, i32 %14)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %45 = load i32, ptr @rxrpc_debug, align 4
  %and61 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end50.do.body84_crit_edge, label %do.end72, !prof !217

if.end50.do.body84_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body84

do.end72:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %46 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i3 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i3 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task75, align 8
  %comm76 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm76, i32 noundef 2) #14
  br label %do.body84

do.body84:                                        ; preds = %do.end72, %if.end50.do.body84_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %50 = load i32, ptr @rxrpc_debug, align 4
  %and85 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body84.do.body108_crit_edge, label %do.end96, !prof !217

do.body84.do.body108_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body108

do.end96:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  %51 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i4 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i4 to ptr
  %task99 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task99, align 8
  %comm100 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %55 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %22, align 8
  %ticket_len102 = getelementptr inbounds %struct.rxkad_key, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %ticket_len102 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ticket_len102, align 2
  %conv103 = zext i16 %58 to i32
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm100, i32 noundef %conv103) #14
  br label %do.body108

do.body108:                                       ; preds = %do.end96, %do.body84.do.body108_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %59 = load i32, ptr @rxrpc_debug, align 4
  %and109 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body108.do.body131_crit_edge, label %do.end120, !prof !217

do.body108.do.body131_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body131

do.end120:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #13
  %60 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i5 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i5 to ptr
  %task123 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task123 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task123, align 8
  %comm124 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %64 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %22, align 8
  %expiry126 = getelementptr inbounds %struct.rxkad_key, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %expiry126 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %expiry126, align 4
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %comm124, i32 noundef %67) #14
  br label %do.body131

do.body131:                                       ; preds = %do.end120, %do.body108.do.body131_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %68 = load i32, ptr @rxrpc_debug, align 4
  %and132 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %do.body131.do.body154_crit_edge, label %do.end143, !prof !217

do.body131.do.body154_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body154

do.end143:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  %69 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i6 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i6 to ptr
  %task146 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task146 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task146, align 8
  %comm147 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 101
  %73 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %22, align 8
  %kvno149 = getelementptr inbounds %struct.rxkad_key, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %kvno149 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %kvno149, align 4
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %comm147, i32 noundef %76) #14
  br label %do.body154

do.body154:                                       ; preds = %do.end143, %do.body131.do.body154_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %77 = load i32, ptr @rxrpc_debug, align 4
  %and155 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %do.body154.do.body178_crit_edge, label %do.end166, !prof !217

do.body154.do.body178_crit_edge:                  ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body178

do.end166:                                        ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #13
  %78 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i7 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i7 to ptr
  %task169 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task169 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task169, align 8
  %comm170 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 101
  %82 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %22, align 8
  %primary_flag172 = getelementptr inbounds %struct.rxkad_key, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %primary_flag172 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %primary_flag172, align 4
  %conv173 = zext i8 %85 to i32
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %comm170, i32 noundef %conv173) #14
  br label %do.body178

do.body178:                                       ; preds = %do.end166, %do.body154.do.body178_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %86 = load i32, ptr @rxrpc_debug, align 4
  %and179 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %do.body178.do.end223_crit_edge, label %do.end190, !prof !217

do.body178.do.end223_crit_edge:                   ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end223

do.end190:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #13
  %87 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i8 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i8 to ptr
  %task193 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task193 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task193, align 8
  %comm194 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 101
  %91 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %22, align 8
  %session_key196 = getelementptr inbounds %struct.rxkad_key, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %session_key196 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %session_key196, align 4
  %conv198 = zext i8 %94 to i32
  %arrayidx200 = getelementptr %struct.rxkad_key, ptr %92, i32 0, i32 6, i32 1
  %95 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %96 to i32
  %arrayidx203 = getelementptr %struct.rxkad_key, ptr %92, i32 0, i32 6, i32 2
  %97 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx203, align 2
  %conv204 = zext i8 %98 to i32
  %arrayidx206 = getelementptr %struct.rxkad_key, ptr %92, i32 0, i32 6, i32 3
  %99 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %100 to i32
  %arrayidx209 = getelementptr %struct.rxkad_key, ptr %92, i32 0, i32 6, i32 4
  %101 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx209, align 4
  %conv210 = zext i8 %102 to i32
  %arrayidx212 = getelementptr %struct.rxkad_key, ptr %92, i32 0, i32 6, i32 5
  %103 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %104 to i32
  %arrayidx215 = getelementptr %struct.rxkad_key, ptr %92, i32 0, i32 6, i32 6
  %105 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx215, align 2
  %conv216 = zext i8 %106 to i32
  %arrayidx218 = getelementptr %struct.rxkad_key, ptr %92, i32 0, i32 6, i32 7
  %107 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %108 to i32
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %comm194, i32 noundef %conv198, i32 noundef %conv201, i32 noundef %conv204, i32 noundef %conv207, i32 noundef %conv210, i32 noundef %conv213, i32 noundef %conv216, i32 noundef %conv219) #14
  br label %do.end223

do.end223:                                        ; preds = %do.end190, %do.body178.do.end223_crit_edge
  %109 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %22, align 8
  %ticket_len224 = getelementptr inbounds %struct.rxkad_key, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %ticket_len224 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %ticket_len224, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %112)
  %cmp226 = icmp ugt i16 %112, 7
  br i1 %cmp226, label %do.body229, label %do.end223.if.end275_crit_edge

do.end223.if.end275_crit_edge:                    ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end275

do.body229:                                       ; preds = %do.end223
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %113 = load i32, ptr @rxrpc_debug, align 4
  %and230 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %do.body229.if.end275_crit_edge, label %do.end241, !prof !217

do.body229.if.end275_crit_edge:                   ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end275

do.end241:                                        ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #13
  %114 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i9 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i9 to ptr
  %task244 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task244 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task244, align 8
  %comm245 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 101
  %ticket247 = getelementptr inbounds %struct.rxkad_key, ptr %110, i32 0, i32 7
  %118 = ptrtoint ptr %ticket247 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ticket247, align 4
  %conv249 = zext i8 %119 to i32
  %arrayidx251 = getelementptr [0 x i8], ptr %ticket247, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx251, align 1
  %conv252 = zext i8 %121 to i32
  %arrayidx254 = getelementptr [0 x i8], ptr %ticket247, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx254, align 2
  %conv255 = zext i8 %123 to i32
  %arrayidx257 = getelementptr [0 x i8], ptr %ticket247, i32 0, i32 3
  %124 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx257, align 1
  %conv258 = zext i8 %125 to i32
  %arrayidx260 = getelementptr %struct.rxkad_key, ptr %110, i32 1, i32 1
  %126 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx260, align 4
  %conv261 = zext i8 %127 to i32
  %arrayidx263 = getelementptr [0 x i8], ptr %ticket247, i32 0, i32 5
  %128 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx263, align 1
  %conv264 = zext i8 %129 to i32
  %arrayidx266 = getelementptr [0 x i8], ptr %ticket247, i32 0, i32 6
  %130 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx266, align 2
  %conv267 = zext i8 %131 to i32
  %arrayidx269 = getelementptr [0 x i8], ptr %ticket247, i32 0, i32 7
  %132 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx269, align 1
  %conv270 = zext i8 %133 to i32
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm245, i32 noundef %conv249, i32 noundef %conv252, i32 noundef %conv255, i32 noundef %conv258, i32 noundef %conv261, i32 noundef %conv264, i32 noundef %conv267, i32 noundef %conv270) #14
  br label %if.end275

if.end275:                                        ; preds = %do.end241, %do.body229.if.end275_crit_edge, %do.end223.if.end275_crit_edge
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %arrayidx276 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx276, align 4
  %136 = ptrtoint ptr %135 to i32
  %add277 = add i32 %136, 1
  %137 = inttoptr i32 %add277 to ptr
  store ptr %137, ptr %arrayidx276, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end275
  %pptoken.0 = phi ptr [ %payload, %if.end275 ], [ %next, %for.cond.for.cond_crit_edge ]
  %138 = ptrtoint ptr %pptoken.0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pptoken.0, align 4
  %tobool282.not = icmp eq ptr %139, null
  %next = getelementptr inbounds %struct.rxrpc_key_token, ptr %139, i32 0, i32 2
  br i1 %tobool282.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %140 = ptrtoint ptr %pptoken.0 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call7.i.i, ptr %pptoken.0, align 4
  %141 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %22, align 8
  %expiry283 = getelementptr inbounds %struct.rxkad_key, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %expiry283 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %expiry283, align 4
  %conv.i = zext i32 %144 to i64
  %expiry285 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 6
  %145 = ptrtoint ptr %expiry285 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %expiry285, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %conv.i)
  %cmp286 = icmp sgt i64 %146, %conv.i
  br i1 %cmp286, label %if.then288, label %for.end.do.body291_crit_edge

for.end.do.body291_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body291

if.then288:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %expiry285 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %conv.i, ptr %expiry285, align 8
  br label %do.body291

do.body291:                                       ; preds = %if.then288, %for.end.do.body291_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %148 = load i32, ptr @rxrpc_debug, align 4
  %and292 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %do.body291.cleanup_crit_edge, label %do.end303, !prof !217

do.body291.cleanup_crit_edge:                     ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end303:                                        ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #13
  %149 = tail call i32 @llvm.read_register.i32(metadata !207) #11
  %and.i10 = and i32 %149, -16384
  %150 = inttoptr i32 %and.i10 to ptr
  %task306 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task306 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task306, align 8
  %comm307 = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 101
  %call309 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %comm307, ptr noundef nonnull @.str.71) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end303, %do.body291.cleanup_crit_edge, %if.then49, %if.end40.cleanup_crit_edge, %do.end34.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then49 ], [ -129, %do.end9.cleanup_crit_edge ], [ -129, %do.end34.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ], [ 0, %do.end303 ], [ 0, %do.body291.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !160, !162, !164, !166, !167, !169, !171, !173, !174, !175, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/key.c", i32 37, i32 11}
!2 = !{ptr @key_type_rxrpc, !3, !"key_type_rxrpc", i1 false, i1 false}
!3 = !{!"../net/rxrpc/key.c", i32 36, i32 17}
!4 = !{ptr @__ksymtab_key_type_rxrpc, !5, !"__ksymtab_key_type_rxrpc", i1 false, i1 false}
!5 = !{!"../net/rxrpc/key.c", i32 46, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/key.c", i32 453, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rxrpc_request_key._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @rxrpc_request_key._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rxrpc/key.c", i32 465, i32 3}
!14 = !{ptr @rxrpc_request_key._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rxrpc_request_key._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rxrpc/key.c", i32 471, i32 2}
!18 = !{ptr @rxrpc_request_key._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rxrpc_request_key._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/rxrpc/key.c", i32 483, i32 28}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rxrpc/key.c", i32 492, i32 2}
!24 = !{ptr @rxrpc_get_server_data_key._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rxrpc_get_server_data_key._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/rxrpc/key.c", i32 494, i32 35}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/rxrpc/key.c", i32 498, i32 3}
!30 = !{ptr @rxrpc_get_server_data_key._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rxrpc_get_server_data_key._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/rxrpc/key.c", i32 502, i32 2}
!34 = !{ptr @rxrpc_get_server_data_key._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rxrpc_get_server_data_key._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/rxrpc/key.c", i32 517, i32 2}
!38 = !{ptr @rxrpc_get_server_data_key._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rxrpc_get_server_data_key._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/rxrpc/key.c", i32 523, i32 2}
!42 = !{ptr @rxrpc_get_server_data_key._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rxrpc_get_server_data_key._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab_rxrpc_get_server_data_key, !45, !"__ksymtab_rxrpc_get_server_data_key", i1 false, i1 false}
!45 = !{!"../net/rxrpc/key.c", i32 526, i32 1}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/rxrpc/key.c", i32 537, i32 28}
!48 = !{ptr @__ksymtab_rxrpc_get_null_key, !49, !"__ksymtab_rxrpc_get_null_key", i1 false, i1 false}
!49 = !{!"../net/rxrpc/key.c", i32 556, i32 1}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/rxrpc/key.c", i32 286, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rxrpc_preparse._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rxrpc_preparse._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/rxrpc/key.c", i32 307, i32 2}
!57 = !{ptr @rxrpc_preparse._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rxrpc_preparse._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/rxrpc/key.c", i32 322, i32 2}
!61 = !{ptr @rxrpc_preparse._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rxrpc_preparse._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/rxrpc/key.c", i32 323, i32 2}
!65 = !{ptr @rxrpc_preparse._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rxrpc_preparse._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/rxrpc/key.c", i32 324, i32 2}
!69 = !{ptr @rxrpc_preparse._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rxrpc_preparse._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/rxrpc/key.c", i32 325, i32 2}
!73 = !{ptr @rxrpc_preparse._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rxrpc_preparse._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/rxrpc/key.c", i32 326, i32 2}
!77 = !{ptr @rxrpc_preparse._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rxrpc_preparse._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/rxrpc/key.c", i32 332, i32 3}
!81 = !{ptr @rxrpc_preparse._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rxrpc_preparse._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/rxrpc/key.c", i32 144, i32 2}
!85 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rxrpc_preparse_xdr._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @rxrpc_preparse_xdr._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/rxrpc/key.c", i32 177, i32 2}
!90 = !{ptr @rxrpc_preparse_xdr._entry.49, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rxrpc_preparse_xdr._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/rxrpc/key.c", i32 187, i32 2}
!94 = !{ptr @rxrpc_preparse_xdr._entry.52, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rxrpc_preparse_xdr._entry_ptr.54, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/rxrpc/key.c", i32 200, i32 3}
!98 = !{ptr @rxrpc_preparse_xdr._entry.55, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rxrpc_preparse_xdr._entry_ptr.57, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/rxrpc/key.c", i32 209, i32 2}
!102 = !{ptr @rxrpc_preparse_xdr._entry.58, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rxrpc_preparse_xdr._entry_ptr.60, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/rxrpc/key.c", i32 225, i32 3}
!106 = !{ptr @rxrpc_preparse_xdr._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rxrpc_preparse_xdr._entry_ptr.63, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/rxrpc/key.c", i32 254, i32 2}
!110 = !{ptr @rxrpc_preparse_xdr._entry.64, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rxrpc_preparse_xdr._entry_ptr.66, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.68, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/rxrpc/key.c", i32 258, i32 2}
!114 = !{ptr @rxrpc_preparse_xdr._entry.67, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @rxrpc_preparse_xdr._entry_ptr.69, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/rxrpc/key.c", i32 61, i32 2}
!118 = !{ptr @.str.71, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rxrpc_preparse_xdr_rxkad._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/rxrpc/key.c", i32 68, i32 2}
!123 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.72, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.74, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.75, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../net/rxrpc/key.c", i32 98, i32 2}
!127 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.76, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.77, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../net/rxrpc/key.c", i32 99, i32 2}
!130 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.78, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.79, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../net/rxrpc/key.c", i32 100, i32 2}
!133 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.80, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.81, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../net/rxrpc/key.c", i32 101, i32 2}
!136 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.82, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.84, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/rxrpc/key.c", i32 102, i32 2}
!139 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.83, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.85, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.86, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../net/rxrpc/key.c", i32 103, i32 2}
!143 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.87, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.88, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../net/rxrpc/key.c", i32 109, i32 3}
!146 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.89, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.91, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/rxrpc/key.c", i32 128, i32 2}
!149 = !{ptr @rxrpc_preparse_xdr_rxkad._entry.90, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @rxrpc_preparse_xdr_rxkad._entry_ptr.92, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.93, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/rxrpc/key.c", i32 394, i32 4}
!153 = !{ptr @.str.94, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @rxrpc_free_token_list._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @rxrpc_free_token_list._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.95, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/rxrpc/key.c", i32 425, i32 20}
!158 = !{ptr @.str.96, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/rxrpc/key.c", i32 434, i32 16}
!160 = !{ptr @.str.97, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../net/rxrpc/key.c", i32 437, i32 18}
!162 = !{ptr @.str.98, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/rxrpc/key.c", i32 441, i32 9}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!166 = !{ptr @.str.99, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.100, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!169 = !{ptr @.str.101, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!171 = !{ptr @.str.102, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/rxrpc/key.c", i32 571, i32 2}
!173 = !{ptr @rxrpc_read._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @rxrpc_read._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.103, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/rxrpc/key.c", i32 574, i32 31}
!177 = !{ptr @.str.105, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/rxrpc/key.c", i32 599, i32 4}
!179 = !{ptr @rxrpc_read._entry.104, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @rxrpc_read._entry_ptr.106, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.108, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/rxrpc/key.c", i32 604, i32 3}
!183 = !{ptr @rxrpc_read._entry.107, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @rxrpc_read._entry_ptr.109, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.111, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/rxrpc/key.c", i32 605, i32 3}
!187 = !{ptr @rxrpc_read._entry.110, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @rxrpc_read._entry_ptr.112, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.113, !186, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @rxrpc_read._entry.114, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../net/rxrpc/key.c", i32 677, i32 4}
!192 = !{ptr @rxrpc_read._entry_ptr.115, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @rxrpc_read._entry.116, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../net/rxrpc/key.c", i32 682, i32 3}
!195 = !{ptr @rxrpc_read._entry_ptr.117, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.118, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @rxrpc_read._entry.119, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../net/rxrpc/key.c", i32 691, i32 2}
!199 = !{ptr @rxrpc_read._entry_ptr.120, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @rxrpc_read._entry.121, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../net/rxrpc/key.c", i32 692, i32 2}
!202 = !{ptr @rxrpc_read._entry_ptr.122, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.124, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/rxrpc/key.c", i32 693, i32 2}
!205 = !{ptr @rxrpc_read._entry.123, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @rxrpc_read._entry_ptr.125, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{!"branch_weights", i32 2000, i32 1}
!218 = !{i64 2158252275, i64 2158252755, i64 2158252312, i64 2158252368, i64 2158252402, i64 2158252426, i64 2158252467, i64 2158252488, i64 2158252516, i64 2158252550}
!219 = distinct !{!219, !220}
!220 = !{!"llvm.loop.peeled.count", i32 1}
!221 = !{i8 0, i8 2}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{i64 2158282081, i64 2158282561, i64 2158282118, i64 2158282174, i64 2158282208, i64 2158282232, i64 2158282273, i64 2158282294, i64 2158282322, i64 2158282356}
!224 = !{i64 2158294659, i64 2158295139, i64 2158294696, i64 2158294752, i64 2158294786, i64 2158294810, i64 2158294851, i64 2158294872, i64 2158294900, i64 2158294934}
!225 = !{i64 2158298668, i64 2158299148, i64 2158298705, i64 2158298761, i64 2158298795, i64 2158298819, i64 2158298860, i64 2158298881, i64 2158298909, i64 2158298943}
!226 = !{i64 2158302750, i64 2158303230, i64 2158302787, i64 2158302843, i64 2158302877, i64 2158302901, i64 2158302942, i64 2158302963, i64 2158302991, i64 2158303025}
!227 = !{i64 2152932888, i64 2152932913}
!228 = !{i64 5428443}
!229 = !{i64 5428640}
!230 = !{i64 2152913873}
