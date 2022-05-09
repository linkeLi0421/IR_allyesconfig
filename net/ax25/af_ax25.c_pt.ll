; ModuleID = '/llk/IR_all_yes/net/ax25/af_ax25.c_pt.bc'
source_filename = "../net/ax25/af_ax25.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ax25_find_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_find_cb\09\09\09\09"
module asm "\09.long\09__crc_ax25_find_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_find_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_find_cb\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_find_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.54, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.54 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.100, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.100 = type { ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.105, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.106, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.107, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.7, %union.anon.9, %union.anon.10, i16, i8, i8, i32, %union.anon.12, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.101, [0 x i32], %union.anon.102, i16, i16, %union.anon.103, %struct.refcount_struct, [0 x i32], %union.anon.104 }
%union.anon.7 = type { i64 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.12 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%union.anon.103 = type { i32 }
%union.anon.104 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.105 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.ax25_digi = type { [8 x %struct.ax25_address], [8 x i8], i8, i8 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%union.anon.6 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.ax25_sock = type { %struct.sock, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.71 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.41 = type { %struct.callback_head }
%struct.ax25_uid_assoc = type { %struct.hlist_node, %struct.refcount_struct, %struct.kuid_t, %struct.ax25_address }
%struct.sockaddr_ax25 = type { i16, %struct.ax25_address, i32 }
%struct.full_sockaddr_ax25 = type { %struct.sockaddr_ax25, [8 x %struct.ax25_address] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.140 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.142 = type { %struct.callback_head }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.144 = type { ptr }
%struct.ax25_ctl_struct = type { %struct.ax25_address, %struct.ax25_address, %struct.ax25_address, i32, i32, i8, [8 x %struct.ax25_address] }
%struct.ax25_info_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ax25_fwd_struct = type { %struct.ax25_address, %struct.ax25_address }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.99, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.13, %union.anon.97 }
%union.anon.13 = type { ptr }
%union.anon.97 = type { i64 }
%union.anon.99 = type { ptr }

@ax25_list = dso_local global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ax25_list_lock\00", [17 x i8] zeroinitializer }, align 32
@ax25_list_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_ax25_find_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_find_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_find_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_find_cb to i32), ptr @__kstrtab_ax25_find_cb, ptr @__kstrtabns_ax25_find_cb }, section "___ksymtab+ax25_find_cb", align 4
@ax25_destroy_socket.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&ax25->dtimer)\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__initcall__kmod_ax25__496_2015_ax25_init6 = internal global ptr @ax25_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author497 = internal constant [60 x i8] c"ax25.author=Jonathan Naylor G4KLX <g4klx@g4klx.demon.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description498 = internal constant [61 x i8] c"ax25.description=The amateur radio AX.25 link layer protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file499 = internal constant [24 x i8] c"ax25.file=net/ax25/ax25\00", section ".modinfo", align 1
@__UNIQUE_ID_license500 = internal constant [17 x i8] c"ax25.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias501 = internal constant [20 x i8] c"ax25.alias=net-pf-3\00", section ".modinfo", align 1
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ax25_route\00", [21 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ax25\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ax25_calls\00", [21 x i8] zeroinitializer }, align 32
@ax25_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ax25_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ax25_packet_type = internal global %struct.packet_type { i16 2, i8 0, ptr null, ptr null, ptr @ax25_kiss_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@ax25_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 968, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.100 zeroinitializer, ptr null, [32 x i8] c"AX25\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ax25_exit = internal global ptr @ax25_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@ax25_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 3, ptr @ax25_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@ax25_rt_seqops = external dso_local constant %struct.seq_operations, align 4
@ax25_info_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ax25_info_start, ptr @ax25_info_stop, ptr @ax25_info_next, ptr @ax25_info_show }, [16 x i8] zeroinitializer }, align 32
@ax25_uid_seqops = external dso_local constant %struct.seq_operations, align 4
@ax25_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 3, ptr null, ptr @ax25_release, ptr @ax25_bind, ptr @ax25_connect, ptr @sock_no_socketpair, ptr @ax25_accept, ptr @ax25_getname, ptr @datagram_poll, ptr @ax25_ioctl, ptr @sock_gettstamp, ptr @ax25_listen, ptr @ax25_shutdown, ptr @ax25_setsockopt, ptr @ax25_getsockopt, ptr null, ptr @ax25_sendmsg, ptr @ax25_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ax25_uid_policy = external dso_local local_unnamed_addr global i32, align 4
@null_ax25_address = external dso_local constant %struct.ax25_address, align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ax25_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014ax25_connect(): %s uses autobind, please contact jreuter@yaina.de\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ax25_connect\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ax25/af_ax25.c\00", [45 x i8] zeroinitializer }, align 32
@ax25_connect._entry_ptr = internal global ptr @ax25_connect._entry, section ".printk_index", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@ax25_ioctl.warned = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ax25_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.8, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s uses old SIOCAX25GETINFO\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ax25_ioctl\00", [21 x i8] zeroinitializer }, align 32
@ax25_ioctl._entry_ptr = internal global ptr @ax25_ioctl._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%p %s %s%s \00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",%s%s\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c" %d %d %d %d %lu %lu %lu %lu %lu %lu %lu %lu %d %d %lu %d %d\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" %d %d %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" * * *\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 8, i64 204, i64 205, i64 207]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 72]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 72]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [26 x i64] [i64 24, i64 32, i64 21521, i64 21531, i64 35083, i64 35084, i64 35093, i64 35094, i64 35095, i64 35096, i64 35097, i64 35098, i64 35099, i64 35100, i64 35101, i64 35102, i64 35296, i64 35297, i64 35298, i64 35299, i64 35303, i64 35304, i64 35305, i64 35306, i64 35307, i64 35309]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 10, i64 99]
@__sancov_gen_cov_switch_values.35 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 25]
@__sancov_gen_cov_switch_values.36 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 25]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 72]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"ax25_list\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 50, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"ax25_list_lock\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 51, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 340, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 2025, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 2026, i32 20 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 2027, i32 20 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"ax25_dev_notifier\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1993, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"ax25_proto\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 820, i32 21 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1984, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"ax25_family_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1957, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"ax25_info_seqops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1949, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"ax25_proto_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1963, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1248, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 2024, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"ax25_ioctl.warned\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1824, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 230, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 214, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 156, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1912, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1914, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1916, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1916, i32 25 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1917, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1920, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1925, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1939, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [22 x i8] c"../net/ax25/af_ax25.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1944, i32 17 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias501, ptr @__UNIQUE_ID_author497, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file499, ptr @__UNIQUE_ID_license500, ptr @__exitcall_ax25_exit, ptr @__initcall__kmod_ax25__496_2015_ax25_init6, ptr @__ksymtab_ax25_find_cb, ptr @ax25_connect._entry, ptr @ax25_connect._entry_ptr, ptr @ax25_exit, ptr @ax25_ioctl._entry, ptr @ax25_ioctl._entry_ptr, ptr @ax25_list, ptr @.str, ptr @ax25_list_lock, ptr @ax25_destroy_socket.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ax25_dev_notifier, ptr @ax25_proto, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @ax25_family_ops, ptr @ax25_info_seqops, ptr @ax25_proto_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ax25_ioctl.warned, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_destroy_socket.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_info_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_ioctl.warned to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_cb_add(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %refcount = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 36
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !96
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !97

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !98

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %2 = load ptr, ptr @ax25_list, align 4
  %3 = ptrtoint ptr %ax25 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %2, ptr %ax25, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %refcount_inc.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

refcount_inc.exit.hlist_add_head.exit_crit_edge:  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ax25, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %refcount_inc.exit.hlist_add_head.exit_crit_edge
  store volatile ptr %ax25, ptr @ax25_list, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %ax25, i32 0, i32 1
  %5 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr @ax25_list, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_list_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_find_listener(ptr noundef %addr, i32 noundef %digi, ptr noundef readnone %dev, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ax25_list_lock) #13
  %s.063 = load ptr, ptr @ax25_list, align 4
  %tobool2.not64 = icmp eq ptr %s.063, null
  br i1 %tobool2.not64, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %digi)
  %tobool4.not = icmp eq i32 %digi, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %s.065 = phi ptr [ %s.063, %for.body.lr.ph ], [ %s.0, %for.inc.for.body_crit_edge ]
  %iamdigi = getelementptr inbounds %struct.ax25_cb, ptr %s.065, i32 0, i32 5
  %0 = ptrtoint ptr %iamdigi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iamdigi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp ne i8 %1, 0
  %or.cond62 = xor i1 %tobool4.not, %tobool3.not
  br i1 %or.cond62, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %s.065, i32 0, i32 35
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end.for.inc_crit_edge, label %land.lhs.true10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true10:                                  ; preds = %if.end
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %s.065, i32 0, i32 1
  %call = tail call i32 @ax25cmp(ptr noundef %source_addr, ptr noundef %addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_type, align 2
  %conv14 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %type)
  %cmp = icmp eq i32 %conv14, %type
  br i1 %cmp, label %land.lhs.true16, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp19 = icmp eq i8 %9, 10
  br i1 %cmp19, label %if.then21, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true16
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %s.065, i32 0, i32 4
  %10 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ax25_dev, align 4
  %cmp22 = icmp eq ptr %11, null
  br i1 %cmp22, label %if.then21.if.then29_crit_edge, label %lor.lhs.false24

if.then21.if.then29_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

lor.lhs.false24:                                  ; preds = %if.then21
  %dev26 = getelementptr inbounds %struct.ax25_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  %cmp27 = icmp eq ptr %13, %dev
  br i1 %cmp27, label %lor.lhs.false24.if.then29_crit_edge, label %lor.lhs.false24.for.inc_crit_edge

lor.lhs.false24.for.inc_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false24.if.then29_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false24.if.then29_crit_edge, %if.then21.if.then29_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then29.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.then29.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then29
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then29.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then29.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ax25_list_lock) #13
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 4
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false24.for.inc_crit_edge, %land.lhs.true16.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %s.065 to i32
  call void @__asan_load4_noabort(i32 %18)
  %s.0 = load ptr, ptr %s.065, align 4
  %tobool2.not = icmp eq ptr %s.0, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ax25_list_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sock_hold.exit
  %retval.0 = phi ptr [ %17, %sock_hold.exit ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_get_socket(ptr noundef %my_addr, ptr noundef %dest_addr, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ax25_list_lock) #13
  %s.035 = load ptr, ptr @ax25_list, align 4
  %tobool2.not36 = icmp eq ptr %s.035, null
  br i1 %tobool2.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %s.037 = phi ptr [ %s.0, %for.inc.for.body_crit_edge ], [ %s.035, %entry.for.body_crit_edge ]
  %sk3 = getelementptr inbounds %struct.ax25_cb, ptr %s.037, i32 0, i32 35
  %0 = ptrtoint ptr %sk3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk3, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %s.037, i32 0, i32 1
  %call = tail call i32 @ax25cmp(ptr noundef %source_addr, ptr noundef %my_addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %dest_addr7 = getelementptr inbounds %struct.ax25_cb, ptr %s.037, i32 0, i32 2
  %call8 = tail call i32 @ax25cmp(ptr noundef %dest_addr7, ptr noundef %dest_addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %2 = ptrtoint ptr %sk3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk3, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %type)
  %cmp = icmp eq i32 %conv, %type
  br i1 %cmp, label %if.then, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.end_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true10.for.inc_crit_edge, %land.lhs.true6.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %s.037 to i32
  call void @__asan_load4_noabort(i32 %8)
  %s.0 = load ptr, ptr %s.037, align 4
  %tobool2.not = icmp eq ptr %s.0, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.end_crit_edge, %entry.for.end_crit_edge
  %sk.0 = phi ptr [ %3, %if.else.i.i.i.i.for.end_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ax25_list_lock) #13
  ret ptr %sk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_find_cb(ptr noundef %src_addr, ptr noundef %dest_addr, ptr noundef %digi, ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %s.087 = load ptr, ptr @ax25_list, align 4
  %tobool2.not88 = icmp eq ptr %s.087, null
  br i1 %tobool2.not88, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cmp23.not = icmp eq ptr %digi, null
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %s.089 = phi ptr [ %s.087, %for.body.lr.ph ], [ %s.0, %for.inc.for.body_crit_edge ]
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %s.089, i32 0, i32 35
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp.not = icmp eq i16 %3, 5
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %s.089, i32 0, i32 4
  %4 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ax25_dev, align 4
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %s.089, i32 0, i32 1
  %call = tail call i32 @ax25cmp(ptr noundef %source_addr, ptr noundef %src_addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %land.lhs.true12, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true12:                                  ; preds = %if.end9
  %dest_addr13 = getelementptr inbounds %struct.ax25_cb, ptr %s.089, i32 0, i32 2
  %call14 = tail call i32 @ax25cmp(ptr noundef %dest_addr13, ptr noundef %dest_addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %6 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ax25_dev, align 4
  %dev19 = getelementptr inbounds %struct.ax25_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev19, align 4
  %cmp20 = icmp eq ptr %9, %dev
  br i1 %cmp20, label %if.then22, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true17
  br i1 %cmp23.not, label %if.then22.if.else_crit_edge, label %land.lhs.true25

if.then22.if.else_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true25:                                  ; preds = %if.then22
  %10 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ndigi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp27.not = icmp eq i8 %11, 0
  br i1 %cmp27.not, label %land.lhs.true25.if.else_crit_edge, label %if.then29

land.lhs.true25.if.else_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then29:                                        ; preds = %land.lhs.true25
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %s.089, i32 0, i32 3
  %12 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %digipeat, align 4
  %cmp30 = icmp eq ptr %13, null
  br i1 %cmp30, label %if.then29.for.inc_crit_edge, label %if.end33

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end33:                                         ; preds = %if.then29
  %call35 = tail call i32 @ax25digicmp(ptr noundef nonnull %13, ptr noundef nonnull %digi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end33.if.end51_crit_edge, label %if.end33.for.inc_crit_edge

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true25.if.else_crit_edge, %if.then22.if.else_crit_edge
  %digipeat40 = getelementptr inbounds %struct.ax25_cb, ptr %s.089, i32 0, i32 3
  %14 = ptrtoint ptr %digipeat40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %digipeat40, align 4
  %cmp41.not = icmp eq ptr %15, null
  br i1 %cmp41.not, label %if.else.if.end51_crit_edge, label %land.lhs.true43

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true43:                                  ; preds = %if.else
  %ndigi45 = getelementptr inbounds %struct.ax25_digi, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ndigi45 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ndigi45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp47.not = icmp eq i8 %17, 0
  br i1 %cmp47.not, label %land.lhs.true43.if.end51_crit_edge, label %land.lhs.true43.for.inc_crit_edge

land.lhs.true43.for.inc_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true43.if.end51_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true43.if.end51_crit_edge, %if.else.if.end51_crit_edge, %if.end33.if.end51_crit_edge
  %refcount = getelementptr inbounds %struct.ax25_cb, ptr %s.089, i32 0, i32 36
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !96
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end51.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !97

if.end51.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end51
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !98

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end51.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end51.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true43.for.inc_crit_edge, %if.end33.for.inc_crit_edge, %if.then29.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %20 = ptrtoint ptr %s.089 to i32
  call void @__asan_load4_noabort(i32 %20)
  %s.0 = load ptr, ptr %s.089, align 4
  %tobool2.not = icmp eq ptr %s.0, null
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %s.086 = phi ptr [ %s.089, %if.else.i.i.i.cleanup_crit_edge ], [ %s.089, %if.end15.sink.split.i.i.i ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_list_lock) #13
  ret ptr %s.086
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25digicmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_send_to_raw(ptr noundef %addr, ptr noundef %skb, i32 noundef %proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ax25_list_lock) #13
  %s.058 = load ptr, ptr @ax25_list, align 4
  %tobool2.not59 = icmp eq ptr %s.058, null
  br i1 %tobool2.not59, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.anon.4, ptr %skb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %s.060 = phi ptr [ %s.058, %for.body.lr.ph ], [ %s.0, %for.inc.for.body_crit_edge ]
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %s.060, i32 0, i32 35
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %s.060, i32 0, i32 1
  %call = tail call i32 @ax25cmp(ptr noundef %source_addr, ptr noundef %addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp6 = icmp eq i16 %6, 3
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 46
  %7 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sk_protocol, align 4
  %conv10 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %proto)
  %cmp11 = icmp eq i32 %conv10, %proto
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %s.060, i32 0, i32 4
  %9 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ax25_dev, align 4
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 8
  %cmp14 = icmp eq ptr %12, %14
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #13
  %15 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sk_backlog, align 4
  %17 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp20.not = icmp sgt i32 %16, %20
  br i1 %cmp20.not, label %land.lhs.true16.for.inc_crit_edge, label %if.then

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true16
  %call22 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %if.then
  %21 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk, align 4
  %call27 = tail call i32 @sock_queue_rcv_skb(ptr noundef %22, ptr noundef nonnull %call22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end.for.inc_crit_edge, label %if.then30

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call22, i32 noundef 0) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.end.for.inc_crit_edge, %if.then.for.inc_crit_edge, %land.lhs.true16.for.inc_crit_edge, %land.lhs.true13.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge, %land.lhs.true4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %s.060 to i32
  call void @__asan_load4_noabort(i32 %23)
  %s.0 = load ptr, ptr %s.060, align 4
  %tobool2.not = icmp eq ptr %s.0, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ax25_list_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_destroy_socket(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %ax25, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.ax25_cb_del.exit_crit_edge, label %if.then.i

entry.ax25_cb_del.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_cb_del.exit

if.then.i:                                        ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i.i, label %if.then.i.hlist_del_init.exit.i_crit_edge, label %if.then.i.i

if.then.i.hlist_del_init.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %4 = ptrtoint ptr %ax25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ax25, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %ax25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ax25, align 4
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit.i

hlist_del_init.exit.i:                            ; preds = %__hlist_del.exit.i.i, %if.then.i.hlist_del_init.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %refcount.i.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 36
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i4.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ax25_cb_del.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.ax25_cb_del.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_cb_del.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #13
  br label %ax25_cb_del.exit

if.then.i4.i:                                     ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  %digipeat.i.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 3
  %11 = ptrtoint ptr %digipeat.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %digipeat.i.i, align 4
  tail call void @kfree(ptr noundef %12) #13
  tail call void @kfree(ptr noundef %ax25) #13
  br label %ax25_cb_del.exit

ax25_cb_del.exit:                                 ; preds = %if.then.i4.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ax25_cb_del.exit_crit_edge, %entry.ax25_cb_del.exit_crit_edge
  tail call void @ax25_stop_heartbeat(ptr noundef %ax25) #13
  tail call void @ax25_stop_t1timer(ptr noundef %ax25) #13
  tail call void @ax25_stop_t2timer(ptr noundef %ax25) #13
  tail call void @ax25_stop_t3timer(ptr noundef %ax25) #13
  tail call void @ax25_stop_idletimer(ptr noundef %ax25) #13
  tail call void @ax25_clear_queues(ptr noundef %ax25) #13
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 35
  %13 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk, align 4
  %cmp.not = icmp eq ptr %14, null
  br i1 %cmp.not, label %ax25_cb_del.exit.if.else21_crit_edge, label %while.cond.preheader

ax25_cb_del.exit.if.else21_crit_edge:             ; preds = %ax25_cb_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

while.cond.preheader:                             ; preds = %ax25_cb_del.exit
  %15 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk, align 4
  %sk_receive_queue56 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 8
  %call57 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue56) #13
  %cmp2.not58 = icmp eq ptr %call57, null
  br i1 %cmp2.not58, label %while.cond.preheader.if.end8_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end8_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call59 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %call57, %while.cond.preheader.while.body_crit_edge ]
  %17 = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk, align 4
  %cmp4.not = icmp eq ptr %19, %21
  br i1 %cmp4.not, label %while.body.if.end_crit_edge, label %if.then5

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb.i, align 8
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
  %24 = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %or.i.i.i = or i32 %26, 1
  store i32 %or.i.i.i, ptr %24, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 71
  %27 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %sk_socket.i.i, align 8
  %28 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 17
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %17, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %32)
  store volatile i8 10, ptr %skc_state, align 2
  tail call void @ax25_start_heartbeat(ptr noundef %23) #13
  %state = getelementptr inbounds %struct.ax25_cb, ptr %23, i32 0, i32 6
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %state, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %while.body.if.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call59, i32 noundef 0) #13
  %34 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 8
  %call = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %cmp2.not = icmp eq ptr %call, null
  br i1 %cmp2.not, label %if.end.if.end8_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %while.cond.preheader.if.end8_crit_edge
  %36 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk, align 4
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #13
  %38 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load ptr, ptr %sk, align 4
  %cmp10.not = icmp eq ptr %.pr, null
  br i1 %cmp10.not, label %if.end8.if.else21_crit_edge, label %if.then11

if.end8.if.else21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

if.then11:                                        ; preds = %if.end8
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %.pr, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #13
  %39 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 1
  br i1 %tobool.not.i, label %sk_has_allocations.exit, label %if.then11.do.body_crit_edge

if.then11.do.body_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

sk_has_allocations.exit:                          ; preds = %if.then11
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %.pr, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #13
  %41 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %sk_backlog.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool2.i.not = icmp eq i32 %42, 0
  br i1 %tobool2.i.not, label %if.else, label %sk_has_allocations.exit.do.body_crit_edge

sk_has_allocations.exit.do.body_crit_edge:        ; preds = %sk_has_allocations.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %sk_has_allocations.exit.do.body_crit_edge, %if.then11.do.body_crit_edge
  %dtimer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 34
  tail call void @init_timer_key(ptr noundef %dtimer, ptr noundef nonnull @ax25_destroy_timer, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @ax25_destroy_socket.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %43, 200
  %expires = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 34, i32 1
  %44 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %dtimer) #13
  br label %if.end22

if.else:                                          ; preds = %sk_has_allocations.exit
  %45 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk, align 4
  store ptr null, ptr %sk, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i47, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end22_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.if.end22_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %if.end22

if.then.i47:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  tail call void @sk_free(ptr noundef %46) #13
  br label %if.end22

if.else21:                                        ; preds = %if.end8.if.else21_crit_edge, %ax25_cb_del.exit.if.else21_crit_edge
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 36
  %call.i.i.i.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i49)
  %cmp.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i.i49, 1
  br i1 %cmp.i.i.i.i50, label %if.then.i54, label %if.end5.i.i.i.i52

if.end5.i.i.i.i52:                                ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49)
  %.not.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i51, label %if.end5.i.i.i.i52.if.end22_crit_edge, label %if.then10.i.i.i.i53, !prof !98

if.end5.i.i.i.i52.if.end22_crit_edge:             ; preds = %if.end5.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then10.i.i.i.i53:                              ; preds = %if.end5.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %if.end22

if.then.i54:                                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 3
  %49 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %50) #13
  tail call void @kfree(ptr noundef %ax25) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then.i54, %if.then10.i.i.i.i53, %if.end5.i.i.i.i52.if.end22_crit_edge, %if.then.i47, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end22_crit_edge, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_heartbeat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t3timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_clear_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_heartbeat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_destroy_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -544
  %sk1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #13
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @ax25_destroy_socket(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #13
  %call.i.i.i.i.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i10 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i10, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %sock_put.exit

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  tail call void @sk_free(ptr noundef %1) #13
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_fillin_cb(ptr noundef writeonly %ax25, ptr noundef %ax25_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ax25_dev1 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %0 = ptrtoint ptr %ax25_dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ax25_dev, ptr %ax25_dev1, align 4
  %cmp.not = icmp eq ptr %ax25_dev, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 6
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #13
  %div52.i = lshr i32 %call2.i.i, 1
  %rtt.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 24
  %3 = ptrtoint ptr %rtt.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div52.i, ptr %rtt.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call2.i58.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #13
  %t1.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 20
  %6 = ptrtoint ptr %t1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2.i58.i, ptr %t1.i, align 4
  %arrayidx5.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5.i, align 4
  %call2.i67.i = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #13
  %t2.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 21
  %9 = ptrtoint ptr %t2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2.i67.i, ptr %t2.i, align 4
  %arrayidx8.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8.i, align 4
  %call2.i76.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #13
  %t3.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 22
  %12 = ptrtoint ptr %t3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i76.i, ptr %t3.i, align 4
  %arrayidx11.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 10
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11.i, align 4
  %conv.i = trunc i32 %14 to i8
  %n2.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 14
  %15 = ptrtoint ptr %n2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %n2.i, align 4
  %arrayidx13.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 11
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13.i, align 4
  %conv14.i = trunc i32 %17 to i16
  %paclen.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 25
  %18 = ptrtoint ptr %paclen.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv14.i, ptr %paclen.i, align 4
  %arrayidx16.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 9
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx16.i, align 4
  %call2.i85.i = tail call i32 @__msecs_to_jiffies(i32 noundef %20) #13
  %idle.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 23
  %21 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call2.i85.i, ptr %idle.i, align 4
  %arrayidx19.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19.i, align 4
  %conv20.i = trunc i32 %23 to i8
  %backoff.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 13
  %24 = ptrtoint ptr %backoff.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv20.i, ptr %backoff.i, align 1
  %arrayidx22.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %modulus26.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %modulus26.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -128, ptr %modulus26.i, align 2
  %arrayidx24.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 5
  br label %ax25_fillin_cb_from_dev.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %modulus26.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %modulus26.i, align 2
  %arrayidx28.i = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 4
  br label %ax25_fillin_cb_from_dev.exit

ax25_fillin_cb_from_dev.exit:                     ; preds = %if.else.i, %if.then.i
  %conv25.sink.in.in.i = phi ptr [ %arrayidx28.i, %if.else.i ], [ %arrayidx24.i, %if.then.i ]
  %29 = ptrtoint ptr %conv25.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %conv25.sink.in.i = load i32, ptr %conv25.sink.in.in.i, align 4
  %conv25.sink.i = trunc i32 %conv25.sink.in.i to i8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rtt = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 24
  %30 = ptrtoint ptr %rtt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 500, ptr %rtt, align 4
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 20
  %31 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1000, ptr %t1, align 4
  %t2 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 21
  %32 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 300, ptr %t2, align 4
  %t3 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 22
  %33 = ptrtoint ptr %t3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 30000, ptr %t3, align 4
  %n2 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 14
  %34 = ptrtoint ptr %n2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 10, ptr %n2, align 4
  %paclen = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 25
  %35 = ptrtoint ptr %paclen to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 256, ptr %paclen, align 4
  %idle = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 23
  %36 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %idle, align 4
  %backoff = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 13
  %37 = ptrtoint ptr %backoff to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %backoff, align 1
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %38 = ptrtoint ptr %modulus to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %modulus, align 2
  br label %return

return:                                           ; preds = %if.end, %ax25_fillin_cb_from_dev.exit
  %.sink = phi i8 [ 2, %if.end ], [ %conv25.sink.i, %ax25_fillin_cb_from_dev.exit ]
  %window = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %39 = ptrtoint ptr %window to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink, ptr %window, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_create_cb() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 600) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %refcount = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 36
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcount, align 4
  %write_queue = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 28
  %lock.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 28, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %2 = ptrtoint ptr %write_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %write_queue, ptr %write_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 28, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %write_queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i.i, align 4
  %frag_queue = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 31
  %lock.i9 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 31, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i9, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %5 = ptrtoint ptr %frag_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %frag_queue, ptr %frag_queue, align 4
  %prev.i.i10 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 31, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %frag_queue, ptr %prev.i.i10, align 8
  %qlen.i.i11 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 31, i32 1
  %7 = ptrtoint ptr %qlen.i.i11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i11, align 4
  %ack_queue = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 30
  %lock.i12 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 30, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i12, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %8 = ptrtoint ptr %ack_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ack_queue, ptr %ack_queue, align 4
  %prev.i.i13 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 30, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ack_queue, ptr %prev.i.i13, align 8
  %qlen.i.i14 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 30, i32 1
  %10 = ptrtoint ptr %qlen.i.i14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i14, align 4
  %reseq_queue = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 29
  %lock.i15 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 29, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i15, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %11 = ptrtoint ptr %reseq_queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reseq_queue, ptr %reseq_queue, align 4
  %prev.i.i16 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 29, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reseq_queue, ptr %prev.i.i16, align 8
  %qlen.i.i17 = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 29, i32 1
  %13 = ptrtoint ptr %qlen.i.i17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i17, align 4
  tail call void @ax25_setup_timers(ptr noundef nonnull %call7.i.i) #13
  %ax25_dev1.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %ax25_dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ax25_dev1.i, align 4
  %rtt.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 24
  %15 = ptrtoint ptr %rtt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 500, ptr %rtt.i, align 8
  %t1.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 20
  %16 = ptrtoint ptr %t1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1000, ptr %t1.i, align 8
  %t2.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 21
  %17 = ptrtoint ptr %t2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 300, ptr %t2.i, align 4
  %t3.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 22
  %18 = ptrtoint ptr %t3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 30000, ptr %t3.i, align 8
  %n2.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %n2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %n2.i, align 4
  %paclen.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 25
  %20 = ptrtoint ptr %paclen.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %paclen.i, align 4
  %idle.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 23
  %21 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idle.i, align 4
  %backoff.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %backoff.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %backoff.i, align 1
  %modulus.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %modulus.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %modulus.i, align 2
  %window.i = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 32
  %24 = ptrtoint ptr %window.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %window.i, align 4
  %state = getelementptr inbounds %struct.ax25_cb, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_setup_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_make_new(ptr nocapture noundef readonly %osk, ptr noundef %ax25_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %osk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %osk, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot, align 8
  %call1 = tail call ptr @sk_alloc(ptr noundef %1, i32 noundef 3, i32 noundef 2592, ptr noundef %3, i32 noundef 0) #13
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @ax25_create_cb()
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sk_free(ptr noundef nonnull %call1) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %sw.default [
    i16 2, label %if.end5.sw.epilog_crit_edge
    i16 5, label %if.end5.sw.epilog_crit_edge111
  ]

if.end5.sw.epilog_crit_edge111:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  tail call void @sk_free(ptr noundef nonnull %call1) #13
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 3
  %8 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %9) #13
  tail call void @kfree(ptr noundef nonnull %call2) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end5.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge111
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call1) #13
  %10 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_type, align 2
  %sk_type7 = getelementptr inbounds %struct.sock, ptr %call1, i32 0, i32 45
  %12 = ptrtoint ptr %sk_type7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %sk_type7, align 2
  %sk_priority = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 33
  %13 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_priority, align 4
  %sk_priority8 = getelementptr inbounds %struct.sock, ptr %call1, i32 0, i32 33
  %15 = ptrtoint ptr %sk_priority8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sk_priority8, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 46
  %16 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sk_protocol, align 4
  %sk_protocol9 = getelementptr inbounds %struct.sock, ptr %call1, i32 0, i32 46
  %18 = ptrtoint ptr %sk_protocol9 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %sk_protocol9, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 15
  %19 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_rcvbuf, align 8
  %sk_rcvbuf10 = getelementptr inbounds %struct.sock, ptr %call1, i32 0, i32 15
  %21 = ptrtoint ptr %sk_rcvbuf10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sk_rcvbuf10, align 8
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %osk, i32 0, i32 21
  %22 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_sndbuf, align 4
  %sk_sndbuf11 = getelementptr inbounds %struct.sock, ptr %call1, i32 0, i32 21
  %24 = ptrtoint ptr %sk_sndbuf11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sk_sndbuf11, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 4
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 1, ptr %skc_state, align 2
  %26 = getelementptr inbounds %struct.sock_common, ptr %osk, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %29 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 8
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %osk, i32 0, i32 1
  %31 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cb.i, align 8
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %modulus, align 2
  %modulus14 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 7
  %35 = ptrtoint ptr %modulus14 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %modulus14, align 2
  %backoff = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 13
  %36 = ptrtoint ptr %backoff to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %backoff, align 1
  %backoff15 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 13
  %38 = ptrtoint ptr %backoff15 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %backoff15, align 1
  %pidincl = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 8
  %39 = ptrtoint ptr %pidincl to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pidincl, align 1
  %pidincl16 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 8
  %41 = ptrtoint ptr %pidincl16 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %pidincl16, align 1
  %iamdigi = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 5
  %42 = ptrtoint ptr %iamdigi to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %iamdigi, align 4
  %iamdigi17 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 5
  %44 = ptrtoint ptr %iamdigi17 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %iamdigi17, align 4
  %rtt = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 24
  %45 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rtt, align 4
  %rtt18 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 24
  %47 = ptrtoint ptr %rtt18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rtt18, align 4
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 20
  %48 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %t1, align 4
  %t119 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 20
  %50 = ptrtoint ptr %t119 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %t119, align 4
  %t2 = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 21
  %51 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %t2, align 4
  %t220 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 21
  %53 = ptrtoint ptr %t220 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %t220, align 4
  %t3 = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 22
  %54 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %t3, align 4
  %t321 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 22
  %56 = ptrtoint ptr %t321 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %t321, align 4
  %n2 = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 14
  %57 = ptrtoint ptr %n2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %n2, align 4
  %n222 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 14
  %59 = ptrtoint ptr %n222 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %n222, align 4
  %idle = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 23
  %60 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %idle, align 4
  %idle23 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 23
  %62 = ptrtoint ptr %idle23 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %idle23, align 4
  %paclen = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 25
  %63 = ptrtoint ptr %paclen to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %paclen, align 4
  %paclen24 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 25
  %65 = ptrtoint ptr %paclen24 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %paclen24, align 4
  %window = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 32
  %66 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %window, align 4
  %window25 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 32
  %68 = ptrtoint ptr %window25 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %window25, align 4
  %ax25_dev26 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 4
  %69 = ptrtoint ptr %ax25_dev26 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %ax25_dev, ptr %ax25_dev26, align 4
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 1
  %source_addr27 = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 1
  %70 = call ptr @memcpy(ptr %source_addr, ptr %source_addr27, i32 7)
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %32, i32 0, i32 3
  %71 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %digipeat, align 4
  %cmp28.not = icmp eq ptr %72, null
  br i1 %cmp28.not, label %sw.epilog.if.end39_crit_edge, label %if.then30

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then30:                                        ; preds = %sw.epilog
  %call32 = tail call ptr @kmemdup(ptr noundef nonnull %72, i32 noundef 66, i32 noundef 2592) #13
  %digipeat33 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 3
  %73 = ptrtoint ptr %digipeat33 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call32, ptr %digipeat33, align 4
  %cmp35 = icmp eq ptr %call32, null
  br i1 %cmp35, label %if.then37, label %if.then30.if.end39_crit_edge

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %if.then30
  tail call void @sk_free(ptr noundef nonnull %call1) #13
  %refcount.i101 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 36
  %call.i.i.i.i.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i101, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i101, i32 1, i32 3, i32 1) #13
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i101, ptr %refcount.i101, i32 1, ptr elementtype(i32) %refcount.i101) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i103 = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i103)
  %cmp.i.i.i.i104 = icmp eq i32 %asmresult.i.i.i.i.i.i.i103, 1
  br i1 %cmp.i.i.i.i104, label %if.then.i109, label %if.end5.i.i.i.i106

if.end5.i.i.i.i106:                               ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i103)
  %.not.i.i.i.i105 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i103, 0
  br i1 %.not.i.i.i.i105, label %if.end5.i.i.i.i106.cleanup_crit_edge, label %if.then10.i.i.i.i107, !prof !98

if.end5.i.i.i.i106.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i107:                             ; preds = %if.end5.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i101, i32 noundef 3) #13
  br label %cleanup

if.then.i109:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  %75 = ptrtoint ptr %digipeat33 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %digipeat33, align 4
  tail call void @kfree(ptr noundef %76) #13
  tail call void @kfree(ptr noundef nonnull %call2) #13
  br label %cleanup

if.end39:                                         ; preds = %if.then30.if.end39_crit_edge, %sw.epilog.if.end39_crit_edge
  %cb = getelementptr inbounds %struct.ax25_sock, ptr %call1, i32 0, i32 1
  %77 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call2, ptr %cb, align 8
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call1, i32 0, i32 82
  %78 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ax25_free_sock, ptr %sk_destruct, align 4
  %sk41 = getelementptr inbounds %struct.ax25_cb, ptr %call2, i32 0, i32 35
  %79 = ptrtoint ptr %sk41 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call1, ptr %sk41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then.i109, %if.then10.i.i.i.i107, %if.end5.i.i.i.i106.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ %call1, %if.end39 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i ], [ null, %if.end5.i.i.i.i106.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i107 ], [ null, %if.then.i109 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_free_sock(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb.i, align 8
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %1, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_cb_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %ax25_cb_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %4) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %ax25_cb_put.exit

ax25_cb_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @ax25_proto, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @sock_register(ptr noundef nonnull @ax25_family_ops) #13
  tail call void @dev_add_pack(ptr noundef nonnull @ax25_packet_type) #13
  %call2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ax25_dev_notifier) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call3 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %0, ptr noundef nonnull @ax25_rt_seqops, i32 noundef 0, ptr noundef null) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call4 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @ax25_info_seqops, i32 noundef 0, ptr noundef null) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call5 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %2, ptr noundef nonnull @ax25_uid_seqops, i32 noundef 0, ptr noundef null) #13
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ax25_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %2) #13
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ax25_dev_notifier) #13
  tail call void @dev_remove_pack(ptr noundef nonnull @ax25_packet_type) #13
  tail call void @sock_unregister(i32 noundef 3) #13
  tail call void @proto_unregister(ptr noundef nonnull @ax25_proto) #13
  tail call void @ax25_rt_free() #13
  tail call void @ax25_uid_free() #13
  tail call void @ax25_dev_free() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_rt_free() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_uid_free() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dev_free() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %protocol)
  %0 = icmp ugt i32 %protocol, 255
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 4
  %conv = sext i16 %2 to i32
  %3 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %conv, label %if.end3.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %sw.bb11
    i32 3, label %sw.bb14
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %4 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %protocol, label %sw.bb.sw.epilog19_crit_edge [
    i32 0, label %sw.bb.if.then9_crit_edge
    i32 3, label %sw.bb.if.then9_crit_edge48
  ]

sw.bb.if.then9_crit_edge48:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

sw.bb.if.then9_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

sw.bb.sw.epilog19_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog19

if.then9:                                         ; preds = %sw.bb.if.then9_crit_edge, %sw.bb.if.then9_crit_edge48
  br label %sw.epilog19

sw.bb11:                                          ; preds = %if.end3
  %5 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %protocol, label %sw.bb11.sw.epilog19_crit_edge [
    i32 0, label %sw.bb11.sw.bb12_crit_edge
    i32 3, label %sw.bb11.sw.bb12_crit_edge49
    i32 8, label %sw.bb11.cleanup_crit_edge
    i32 205, label %sw.bb11.cleanup_crit_edge50
    i32 204, label %sw.bb11.cleanup_crit_edge51
    i32 207, label %sw.bb11.cleanup_crit_edge52
    i32 1, label %sw.bb11.cleanup_crit_edge53
  ]

sw.bb11.cleanup_crit_edge53:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb11.cleanup_crit_edge52:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb11.cleanup_crit_edge51:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb11.cleanup_crit_edge50:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb11.sw.bb12_crit_edge49:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12

sw.bb11.sw.bb12_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12

sw.bb11.sw.epilog19_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog19

sw.bb12:                                          ; preds = %sw.bb11.sw.bb12_crit_edge, %sw.bb11.sw.bb12_crit_edge49
  br label %sw.epilog19

sw.bb14:                                          ; preds = %if.end3
  %call15 = tail call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call15, label %sw.bb14.sw.epilog19_crit_edge, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb14.sw.epilog19_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb14.sw.epilog19_crit_edge, %sw.bb12, %sw.bb11.sw.epilog19_crit_edge, %if.then9, %sw.bb.sw.epilog19_crit_edge
  %protocol.addr.0 = phi i32 [ %protocol, %sw.bb14.sw.epilog19_crit_edge ], [ %protocol, %sw.bb11.sw.epilog19_crit_edge ], [ 240, %sw.bb12 ], [ 240, %if.then9 ], [ %protocol, %sw.bb.sw.epilog19_crit_edge ]
  %call20 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 3, i32 noundef 2592, ptr noundef nonnull @ax25_proto, i32 noundef %kern) #13
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %sw.epilog19.cleanup_crit_edge, label %if.end24

sw.epilog19.cleanup_crit_edge:                    ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog19
  %call25 = tail call ptr @ax25_create_cb()
  %cb = getelementptr inbounds %struct.ax25_sock, ptr %call20, i32 0, i32 1
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call25, ptr %cb, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sk_free(ptr noundef nonnull %call20) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call20) #13
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call20, i32 0, i32 82
  %7 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ax25_free_sock, ptr %sk_destruct, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ax25_proto_ops, ptr %ops, align 4
  %conv30 = trunc i32 %protocol.addr.0 to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call20, i32 0, i32 46
  %9 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv30, ptr %sk_protocol, align 4
  %sk31 = getelementptr inbounds %struct.ax25_cb, ptr %call25, i32 0, i32 35
  %10 = ptrtoint ptr %sk31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %sk31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then28, %sw.epilog19.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge50, %sw.bb11.cleanup_crit_edge51, %sw.bb11.cleanup_crit_edge52, %sw.bb11.cleanup_crit_edge53, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -12, %if.then28 ], [ -22, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ], [ -94, %sw.bb11.cleanup_crit_edge ], [ -94, %sw.bb11.cleanup_crit_edge50 ], [ -94, %sw.bb11.cleanup_crit_edge51 ], [ -94, %sw.bb11.cleanup_crit_edge52 ], [ -94, %sw.bb11.cleanup_crit_edge53 ], [ -1, %sw.bb14.cleanup_crit_edge ], [ -94, %if.end3.cleanup_crit_edge ], [ -12, %sw.epilog19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
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
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb.i, align 8
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %12 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %13)
  %cmp2 = icmp eq i16 %13, 5
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %sock_hold.exit
  %state = getelementptr inbounds %struct.ax25_cb, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %15, label %if.then4.if.end25_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.then4.sw.bb6_crit_edge
    i8 2, label %if.then4.sw.bb6_crit_edge71
    i8 3, label %if.then4.sw.bb11_crit_edge
    i8 4, label %if.then4.sw.bb11_crit_edge72
  ]

if.then4.sw.bb11_crit_edge72:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11

if.then4.sw.bb11_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11

if.then4.sw.bb6_crit_edge71:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

if.then4.sw.bb6_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

if.then4.if.end25_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @release_sock(ptr noundef nonnull %1) #13
  tail call void @ax25_disconnect(ptr noundef %11, i32 noundef 0) #13
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  tail call void @ax25_destroy_socket(ptr noundef %11)
  br label %if.end25

sw.bb6:                                           ; preds = %if.then4.sw.bb6_crit_edge, %if.then4.sw.bb6_crit_edge71
  tail call void @ax25_send_control(ptr noundef %11, i32 noundef 67, i32 noundef 1, i32 noundef 1) #13
  tail call void @release_sock(ptr noundef nonnull %1) #13
  tail call void @ax25_disconnect(ptr noundef %11, i32 noundef 0) #13
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  %sk7 = getelementptr inbounds %struct.ax25_cb, ptr %11, i32 0, i32 35
  %17 = ptrtoint ptr %sk7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk7, align 4
  %19 = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %if.then9, label %sw.bb6.if.end25_crit_edge

sw.bb6.if.end25_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ax25_destroy_socket(ptr noundef %11)
  br label %if.end25

sw.bb11:                                          ; preds = %if.then4.sw.bb11_crit_edge, %if.then4.sw.bb11_crit_edge72
  tail call void @ax25_clear_queues(ptr noundef %11) #13
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %11, i32 0, i32 15
  %23 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %n2count, align 1
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %11, i32 0, i32 4
  %24 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ax25_dev, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %25, i32 0, i32 5, i32 12
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %27, label %sw.bb11.sw.epilog_crit_edge [
    i32 0, label %sw.bb11.sw.bb12_crit_edge
    i32 1, label %sw.bb11.sw.bb12_crit_edge73
    i32 2, label %sw.bb11.sw.epilog.sink.split_crit_edge
  ]

sw.bb11.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb11.sw.bb12_crit_edge73:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12

sw.bb11.sw.bb12_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb12:                                          ; preds = %sw.bb11.sw.bb12_crit_edge, %sw.bb11.sw.bb12_crit_edge73
  tail call void @ax25_send_control(ptr noundef %11, i32 noundef 67, i32 noundef 1, i32 noundef 1) #13
  tail call void @ax25_stop_t2timer(ptr noundef %11) #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb12, %sw.bb11.sw.epilog.sink.split_crit_edge
  tail call void @ax25_stop_t3timer(ptr noundef %11) #13
  tail call void @ax25_stop_idletimer(ptr noundef %11) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb11.sw.epilog_crit_edge
  tail call void @ax25_calculate_t1(ptr noundef %11) #13
  tail call void @ax25_start_t1timer(ptr noundef %11) #13
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %state, align 1
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %30)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %31 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sk_shutdown, align 2
  %33 = or i8 %32, 2
  store i8 %33, ptr %sk_shutdown, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %34 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk_state_change, align 4
  tail call void %35(ptr noundef nonnull %1) #13
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %4, align 4
  %or.i.i = or i32 %37, 32
  store i32 %or.i.i, ptr %4, align 4
  br label %if.end25

if.else:                                          ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %skc_state19 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %skc_state19 to i32
  call void @__asan_store1_noabort(i32 %38)
  store volatile i8 7, ptr %skc_state19, align 2
  %sk_shutdown20 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %39 = ptrtoint ptr %sk_shutdown20 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sk_shutdown20, align 2
  %41 = or i8 %40, 2
  store i8 %41, ptr %sk_shutdown20, align 2
  %sk_state_change24 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %42 = ptrtoint ptr %sk_state_change24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk_state_change24, align 4
  tail call void %43(ptr noundef nonnull %1) #13
  tail call void @ax25_destroy_socket(ptr noundef %11)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %sw.epilog, %if.then9, %sw.bb6.if.end25_crit_edge, %sw.bb, %if.then4.if.end25_crit_edge
  %44 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %sk1, align 16
  tail call void @release_sock(ptr noundef nonnull %1) #13
  %call.i.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i70 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i70, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  tail call void @sk_free(ptr noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_bind(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %addr_len, label %if.then [
    i32 16, label %entry.if.end6_crit_edge
    i32 72, label %entry.if.end6_crit_edge108
  ]

entry.if.end6_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %3 = add i32 %addr_len, -73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %3)
  %4 = icmp ult i32 %3, -15
  br i1 %4, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge, %entry.if.end6_crit_edge108
  %5 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp7.not = icmp eq i16 %6, 3
  br i1 %cmp7.not, label %do.end, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end6
  %7 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call12 = tail call ptr @ax25_findbyuid([1 x i32] %.fca.0.insert) #13
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  %call14 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call12, i32 0, i32 3
  %14 = ptrtoint ptr %call14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %call.sroa.0.0.copyload = load i8, ptr %call14, align 4
  %call.sroa.6.0.call14.sroa_idx = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call12, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %call.sroa.6.0.call14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %call.sroa.6.0.copyload = load i8, ptr %call.sroa.6.0.call14.sroa_idx, align 1
  %call.sroa.7.0.call14.sroa_idx = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call12, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %call.sroa.7.0.call14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %call.sroa.7.0.copyload = load i8, ptr %call.sroa.7.0.call14.sroa_idx, align 2
  %call.sroa.8.0.call14.sroa_idx = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call12, i32 0, i32 3, i32 0, i32 3
  %17 = ptrtoint ptr %call.sroa.8.0.call14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %call.sroa.8.0.copyload = load i8, ptr %call.sroa.8.0.call14.sroa_idx, align 1
  %call.sroa.9.0.call14.sroa_idx = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call12, i32 0, i32 3, i32 0, i32 4
  %18 = ptrtoint ptr %call.sroa.9.0.call14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %call.sroa.9.0.copyload = load i8, ptr %call.sroa.9.0.call14.sroa_idx, align 4
  %call.sroa.10.0.call14.sroa_idx = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call12, i32 0, i32 3, i32 0, i32 5
  %19 = ptrtoint ptr %call.sroa.10.0.call14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %call.sroa.10.0.copyload = load i8, ptr %call.sroa.10.0.call14.sroa_idx, align 1
  %call.sroa.11.0.call14.sroa_idx = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call12, i32 0, i32 3, i32 0, i32 6
  %20 = ptrtoint ptr %call.sroa.11.0.call14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %call.sroa.11.0.copyload = load i8, ptr %call.sroa.11.0.call14.sroa_idx, align 2
  %refcount.i = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call12, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end21_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.if.end21_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %if.end21

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  tail call void @kfree(ptr noundef nonnull %call12) #13
  br label %if.end21

if.else:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ax25_uid_policy to i32))
  %22 = load i32, ptr @ax25_uid_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %if.else.if.end19_crit_edge, label %land.lhs.true16

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true16:                                  ; preds = %if.else
  %call17 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call17, label %land.lhs.true16.if.end19_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true16.if.end19_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true16.if.end19_crit_edge, %if.else.if.end19_crit_edge
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %23 = ptrtoint ptr %sax25_call to i32
  call void @__asan_load1_noabort(i32 %23)
  %call.sroa.0.0.copyload70 = load i8, ptr %sax25_call, align 2
  %call.sroa.6.0.sax25_call.sroa_idx = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %call.sroa.6.0.sax25_call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %call.sroa.6.0.copyload72 = load i8, ptr %call.sroa.6.0.sax25_call.sroa_idx, align 1
  %call.sroa.7.0.sax25_call.sroa_idx = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %call.sroa.7.0.sax25_call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %call.sroa.7.0.copyload74 = load i8, ptr %call.sroa.7.0.sax25_call.sroa_idx, align 2
  %call.sroa.8.0.sax25_call.sroa_idx = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %call.sroa.8.0.sax25_call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %call.sroa.8.0.copyload76 = load i8, ptr %call.sroa.8.0.sax25_call.sroa_idx, align 1
  %call.sroa.9.0.sax25_call.sroa_idx = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %call.sroa.9.0.sax25_call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %call.sroa.9.0.copyload78 = load i8, ptr %call.sroa.9.0.sax25_call.sroa_idx, align 2
  %call.sroa.10.0.sax25_call.sroa_idx = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %call.sroa.10.0.sax25_call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %call.sroa.10.0.copyload80 = load i8, ptr %call.sroa.10.0.sax25_call.sroa_idx, align 1
  %call.sroa.11.0.sax25_call.sroa_idx = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1, i32 0, i32 6
  %29 = ptrtoint ptr %call.sroa.11.0.sax25_call.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %call.sroa.11.0.copyload82 = load i8, ptr %call.sroa.11.0.sax25_call.sroa_idx, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end21_crit_edge
  %call.sroa.11.0 = phi i8 [ %call.sroa.11.0.copyload82, %if.end19 ], [ %call.sroa.11.0.copyload, %if.end5.i.i.i.i.if.end21_crit_edge ], [ %call.sroa.11.0.copyload, %if.then10.i.i.i.i ], [ %call.sroa.11.0.copyload, %if.then.i ]
  %call.sroa.10.0 = phi i8 [ %call.sroa.10.0.copyload80, %if.end19 ], [ %call.sroa.10.0.copyload, %if.end5.i.i.i.i.if.end21_crit_edge ], [ %call.sroa.10.0.copyload, %if.then10.i.i.i.i ], [ %call.sroa.10.0.copyload, %if.then.i ]
  %call.sroa.9.0 = phi i8 [ %call.sroa.9.0.copyload78, %if.end19 ], [ %call.sroa.9.0.copyload, %if.end5.i.i.i.i.if.end21_crit_edge ], [ %call.sroa.9.0.copyload, %if.then10.i.i.i.i ], [ %call.sroa.9.0.copyload, %if.then.i ]
  %call.sroa.8.0 = phi i8 [ %call.sroa.8.0.copyload76, %if.end19 ], [ %call.sroa.8.0.copyload, %if.end5.i.i.i.i.if.end21_crit_edge ], [ %call.sroa.8.0.copyload, %if.then10.i.i.i.i ], [ %call.sroa.8.0.copyload, %if.then.i ]
  %call.sroa.7.0 = phi i8 [ %call.sroa.7.0.copyload74, %if.end19 ], [ %call.sroa.7.0.copyload, %if.end5.i.i.i.i.if.end21_crit_edge ], [ %call.sroa.7.0.copyload, %if.then10.i.i.i.i ], [ %call.sroa.7.0.copyload, %if.then.i ]
  %call.sroa.6.0 = phi i8 [ %call.sroa.6.0.copyload72, %if.end19 ], [ %call.sroa.6.0.copyload, %if.end5.i.i.i.i.if.end21_crit_edge ], [ %call.sroa.6.0.copyload, %if.then10.i.i.i.i ], [ %call.sroa.6.0.copyload, %if.then.i ]
  %call.sroa.0.0 = phi i8 [ %call.sroa.0.0.copyload70, %if.end19 ], [ %call.sroa.0.0.copyload, %if.end5.i.i.i.i.if.end21_crit_edge ], [ %call.sroa.0.0.copyload, %if.then10.i.i.i.i ], [ %call.sroa.0.0.copyload, %if.then.i ]
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb.i, align 8
  %32 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not = icmp eq i32 %35, 0
  br i1 %tobool.i.not, label %if.end21.out_crit_edge, label %if.end25

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end25:                                         ; preds = %if.end21
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %source_addr to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call.sroa.0.0, ptr %source_addr, align 4
  %call.sroa.6.0.source_addr.sroa_idx = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %call.sroa.6.0.source_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call.sroa.6.0, ptr %call.sroa.6.0.source_addr.sroa_idx, align 1
  %call.sroa.7.0.source_addr.sroa_idx = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %call.sroa.7.0.source_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call.sroa.7.0, ptr %call.sroa.7.0.source_addr.sroa_idx, align 2
  %call.sroa.8.0.source_addr.sroa_idx = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %call.sroa.8.0.source_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call.sroa.8.0, ptr %call.sroa.8.0.source_addr.sroa_idx, align 1
  %call.sroa.9.0.source_addr.sroa_idx = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 1, i32 0, i32 4
  %40 = ptrtoint ptr %call.sroa.9.0.source_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call.sroa.9.0, ptr %call.sroa.9.0.source_addr.sroa_idx, align 4
  %call.sroa.10.0.source_addr.sroa_idx = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 1, i32 0, i32 5
  %41 = ptrtoint ptr %call.sroa.10.0.source_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call.sroa.10.0, ptr %call.sroa.10.0.source_addr.sroa_idx, align 1
  %call.sroa.11.0.source_addr.sroa_idx = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 1, i32 0, i32 6
  %42 = ptrtoint ptr %call.sroa.11.0.source_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call.sroa.11.0, ptr %call.sroa.11.0.source_addr.sroa_idx, align 2
  %ax25_dev26 = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 4
  %43 = ptrtoint ptr %ax25_dev26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ax25_dev26, align 4
  %cmp27.not = icmp eq ptr %44, null
  br i1 %cmp27.not, label %if.end30, label %if.end25.done_crit_edge

if.end25.done_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp31 = icmp ugt i32 %addr_len, 16
  br i1 %cmp31, label %land.lhs.true33, label %if.end30.if.else49_crit_edge

if.end30.if.else49_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else49

land.lhs.true33:                                  ; preds = %if.end30
  %sax25_ndigis = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 2
  %45 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sax25_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp35 = icmp eq i32 %46, 1
  br i1 %cmp35, label %if.then37, label %land.lhs.true33.if.else49_crit_edge

land.lhs.true33.if.else49_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else49

if.then37:                                        ; preds = %land.lhs.true33
  %fsa_digipeater = getelementptr inbounds %struct.full_sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %call38 = tail call i32 @ax25cmp(ptr noundef %fsa_digipeater, ptr noundef nonnull @null_ax25_address) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.then37.done_crit_edge, label %land.lhs.true41

if.then37.done_crit_edge:                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

land.lhs.true41:                                  ; preds = %if.then37
  %call44 = tail call ptr @ax25_addr_ax25dev(ptr noundef %fsa_digipeater) #13
  %cmp45 = icmp eq ptr %call44, null
  br i1 %cmp45, label %land.lhs.true41.out_crit_edge, label %land.lhs.true41.if.then59_crit_edge

land.lhs.true41.if.then59_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then59

land.lhs.true41.out_crit_edge:                    ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else49:                                        ; preds = %land.lhs.true33.if.else49_crit_edge, %if.end30.if.else49_crit_edge
  %sax25_call51 = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %call52 = tail call ptr @ax25_addr_ax25dev(ptr noundef %sax25_call51) #13
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.else49.out_crit_edge, label %if.else49.if.then59_crit_edge

if.else49.if.then59_crit_edge:                    ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then59

if.else49.out_crit_edge:                          ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then59:                                        ; preds = %if.else49.if.then59_crit_edge, %land.lhs.true41.if.then59_crit_edge
  %ax25_dev.0.ph = phi ptr [ %call52, %if.else49.if.then59_crit_edge ], [ %call44, %land.lhs.true41.if.then59_crit_edge ]
  tail call void @ax25_fillin_cb(ptr noundef %31, ptr noundef nonnull %ax25_dev.0.ph)
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev.0.ph, i32 0, i32 1
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %dev_tracker = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev.0.ph, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.then59.done_crit_edge, label %do.body1.i.i

if.then59.done_crit_edge:                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

do.body1.i.i:                                     ; preds = %if.then59
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !102
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 118
  %50 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %58, %52
  %59 = inttoptr i32 %add.i.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add13.i.i = add i32 %61, 1
  store i32 %add13.i.i, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !103
  %and.i.i.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !97

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #13, !srcloc !104
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 2592) #13
  br label %done

done:                                             ; preds = %dev_hold.exit.i, %if.then59.done_crit_edge, %if.then37.done_crit_edge, %if.end25.done_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %refcount.i102 = getelementptr inbounds %struct.ax25_cb, ptr %31, i32 0, i32 36
  %call.i.i.i.i.i.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i102, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount.i102, i32 1, i32 3, i32 1) #13
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i102, ptr %refcount.i102, i32 1, ptr elementtype(i32) %refcount.i102) #13, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %done.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

done.if.end15.sink.split.i.i.i.i_crit_edge:       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %done
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %64 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %.not.i.i.i.i104 = icmp sgt i32 %64, -1
  br i1 %.not.i.i.i.i104, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %done.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %done.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i102, i32 noundef %.sink.i.i.i.i) #13
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %65 = load ptr, ptr @ax25_list, align 4
  %66 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %65, ptr %31, align 4
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %refcount_inc.exit.i.ax25_cb_add.exit_crit_edge, label %do.body12.i.i

refcount_inc.exit.i.ax25_cb_add.exit_crit_edge:   ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_cb_add.exit

do.body12.i.i:                                    ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %31, ptr %pprev.i.i, align 4
  br label %ax25_cb_add.exit

ax25_cb_add.exit:                                 ; preds = %do.body12.i.i, %refcount_inc.exit.i.ax25_cb_add.exit_crit_edge
  store volatile ptr %31, ptr @ax25_list, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  %68 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr @ax25_list, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %69 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %32, align 4
  %and.i.i = and i32 %70, -257
  store i32 %and.i.i, ptr %32, align 4
  br label %out

out:                                              ; preds = %ax25_cb_add.exit, %if.else49.out_crit_edge, %land.lhs.true41.out_crit_edge, %if.end21.out_crit_edge
  %err.0 = phi i32 [ 0, %ax25_cb_add.exit ], [ -22, %if.end21.out_crit_edge ], [ -99, %land.lhs.true41.out_crit_edge ], [ -99, %if.else49.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true16.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -13, %land.lhs.true16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_connect(ptr nocapture noundef %sock, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %flags) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb.i, align 8
  %4 = zext i32 %addr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %addr_len, label %if.then3 [
    i32 16, label %entry.if.end8_crit_edge
    i32 72, label %entry.if.end8_crit_edge301
  ]

entry.if.end8_crit_edge301:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then3:                                         ; preds = %entry
  %5 = add i32 %addr_len, -73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %5)
  %6 = icmp ult i32 %5, -15
  br i1 %6, label %if.then3.cleanup198_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then3.cleanup198_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup198

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %entry.if.end8_crit_edge, %entry.if.end8_crit_edge301
  %7 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %8)
  %cmp9.not = icmp eq i16 %8, 3
  br i1 %cmp9.not, label %if.end12, label %if.end8.cleanup198_crit_edge

if.end8.cleanup198_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup198

if.end12:                                         ; preds = %if.end8
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %9 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp13 = icmp eq i32 %10, 2
  br i1 %cmp13, label %if.then15, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %12, label %if.then15.if.end21_crit_edge [
    i8 2, label %if.then15.out_release_crit_edge
    i8 1, label %sw.bb17
    i8 7, label %sw.bb19
  ]

if.then15.out_release_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

sw.bb17:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %sock, align 128
  br label %out_release

sw.bb19:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %sock, align 128
  br label %out_release

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %skc_state23 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp25 = icmp eq i8 %17, 1
  br i1 %cmp25, label %land.lhs.true, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end21
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %18 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %19)
  %cmp28 = icmp eq i16 %19, 5
  br i1 %cmp28, label %land.lhs.true.out_release_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true.out_release_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %20 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_store1_noabort(i32 %20)
  store volatile i8 7, ptr %skc_state23, align 2
  %21 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %sock, align 128
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %digipeat, align 4
  tail call void @kfree(ptr noundef %23) #13
  %24 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %digipeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp36 = icmp ugt i32 %addr_len, 16
  br i1 %cmp36, label %land.lhs.true38, label %if.end31.if.end87_crit_edge

if.end31.if.end87_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

land.lhs.true38:                                  ; preds = %if.end31
  %sax25_ndigis = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 2
  %25 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sax25_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp40.not = icmp eq i32 %26, 0
  br i1 %cmp40.not, label %land.lhs.true38.if.end87_crit_edge, label %if.then42

land.lhs.true38.if.end87_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then42:                                        ; preds = %land.lhs.true38
  %27 = add i32 %26, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %27)
  %28 = icmp ult i32 %27, -8
  br i1 %28, label %if.then42.out_release_crit_edge, label %lor.lhs.false52

if.then42.out_release_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

lor.lhs.false52:                                  ; preds = %if.then42
  %mul = mul nuw nsw i32 %26, 7
  %add = add nuw nsw i32 %mul, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr_len)
  %cmp55 = icmp ugt i32 %add, %addr_len
  br i1 %cmp55, label %lor.lhs.false52.out_release_crit_edge, label %if.end58

lor.lhs.false52.out_release_crit_edge:            ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end58:                                         ; preds = %lor.lhs.false52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 66) #16
  %cmp60 = icmp eq ptr %call7.i, null
  br i1 %cmp60, label %if.end58.out_release_crit_edge, label %if.end63

if.end58.out_release_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end63:                                         ; preds = %if.end58
  %30 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sax25_ndigis, align 4
  %conv66 = trunc i32 %31 to i8
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %call7.i, i32 0, i32 2
  %32 = ptrtoint ptr %ndigi to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv66, ptr %ndigi, align 8
  %lastrepeat = getelementptr inbounds %struct.ax25_digi, ptr %call7.i, i32 0, i32 3
  %33 = ptrtoint ptr %lastrepeat to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %lastrepeat, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp69296 = icmp sgt i32 %31, 0
  br i1 %cmp69296, label %while.body.lr.ph, label %if.end63.if.end87_crit_edge

if.end63.if.end87_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

while.body.lr.ph:                                 ; preds = %if.end63
  %iamdigi = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end83.while.body_crit_edge, %while.body.lr.ph
  %ct.0297 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end83.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.full_sockaddr_ax25, ptr %uaddr, i32 0, i32 1, i32 %ct.0297
  %arrayidx71 = getelementptr [7 x i8], ptr %arrayidx, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool.not = icmp sgt i8 %35, -1
  br i1 %tobool.not, label %while.body.if.else80_crit_edge, label %land.lhs.true73

while.body.if.else80_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else80

land.lhs.true73:                                  ; preds = %while.body
  %36 = ptrtoint ptr %iamdigi to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %iamdigi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool75.not = icmp eq i8 %37, 0
  br i1 %tobool75.not, label %land.lhs.true73.if.else80_crit_edge, label %if.then76

land.lhs.true73.if.else80_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else80

if.then76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx77 = getelementptr %struct.ax25_digi, ptr %call7.i, i32 0, i32 1, i32 %ct.0297
  %38 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %arrayidx77, align 1
  %conv78 = trunc i32 %ct.0297 to i8
  %39 = ptrtoint ptr %lastrepeat to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv78, ptr %lastrepeat, align 1
  br label %if.end83

if.else80:                                        ; preds = %land.lhs.true73.if.else80_crit_edge, %while.body.if.else80_crit_edge
  %arrayidx82 = getelementptr %struct.ax25_digi, ptr %call7.i, i32 0, i32 1, i32 %ct.0297
  %40 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx82, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.else80, %if.then76
  %arrayidx84 = getelementptr [8 x %struct.ax25_address], ptr %call7.i, i32 0, i32 %ct.0297
  %41 = call ptr @memcpy(ptr %arrayidx84, ptr %arrayidx, i32 7)
  %inc = add nuw nsw i32 %ct.0297, 1
  %exitcond.not = icmp eq i32 %inc, %31
  br i1 %exitcond.not, label %if.end83.if.end87_crit_edge, label %if.end83.while.body_crit_edge

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end83.if.end87_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.end87:                                         ; preds = %if.end83.if.end87_crit_edge, %if.end63.if.end87_crit_edge, %land.lhs.true38.if.end87_crit_edge, %if.end31.if.end87_crit_edge
  %digi.0 = phi ptr [ null, %land.lhs.true38.if.end87_crit_edge ], [ null, %if.end31.if.end87_crit_edge ], [ %call7.i, %if.end63.if.end87_crit_edge ], [ %call7.i, %if.end83.if.end87_crit_edge ]
  %42 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not = icmp eq i32 %45, 0
  br i1 %tobool.i.not, label %if.else98, label %do.end

do.end:                                           ; preds = %if.end87
  %46 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm) #17
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %call93 = tail call i32 @ax25_rt_autobind(ptr noundef %3, ptr noundef %sax25_call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %digi.0) #13
  br label %out_release

if.end97:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 4
  %50 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ax25_dev, align 4
  tail call void @ax25_fillin_cb(ptr noundef %3, ptr noundef %51)
  tail call void @ax25_cb_add(ptr noundef %3)
  br label %if.end104

if.else98:                                        ; preds = %if.end87
  %ax25_dev99 = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 4
  %52 = ptrtoint ptr %ax25_dev99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ax25_dev99, align 4
  %cmp100 = icmp eq ptr %53, null
  br i1 %cmp100, label %if.then102, label %if.else98.if.end104_crit_edge

if.else98.if.end104_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then102:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %digi.0) #13
  br label %out_release

if.end104:                                        ; preds = %if.else98.if.end104_crit_edge, %if.end97
  %err.0 = phi i32 [ %call93, %if.end97 ], [ 0, %if.else98.if.end104_crit_edge ]
  %sk_type105 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %54 = ptrtoint ptr %sk_type105 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %sk_type105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %55)
  %cmp107 = icmp eq i16 %55, 5
  br i1 %cmp107, label %land.lhs.true109, label %if.end104.if.end116_crit_edge

if.end104.if.end116_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

land.lhs.true109:                                 ; preds = %if.end104
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 1
  %sax25_call111 = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %ax25_dev112 = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 4
  %56 = ptrtoint ptr %ax25_dev112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ax25_dev112, align 4
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %call113 = tail call ptr @ax25_find_cb(ptr noundef %source_addr, ptr noundef %sax25_call111, ptr noundef %digi.0, ptr noundef %59)
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %land.lhs.true109.if.end116_crit_edge, label %if.then115

land.lhs.true109.if.end116_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then115:                                       ; preds = %land.lhs.true109
  tail call void @kfree(ptr noundef %digi.0) #13
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %call113, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_release_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.out_release_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %out_release

if.then.i:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %call113, i32 0, i32 3
  %61 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %62) #13
  tail call void @kfree(ptr noundef nonnull %call113) #13
  br label %out_release

if.end116:                                        ; preds = %land.lhs.true109.if.end116_crit_edge, %if.end104.if.end116_crit_edge
  %dest_addr = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 2
  %sax25_call118 = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %63 = call ptr @memcpy(ptr %dest_addr, ptr %sax25_call118, i32 7)
  %64 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %digi.0, ptr %digipeat, align 4
  %65 = ptrtoint ptr %sk_type105 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %sk_type105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %66)
  %cmp122.not = icmp eq i16 %66, 5
  br i1 %cmp122.not, label %if.end128, label %if.then124

if.then124:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %sock, align 128
  %68 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_store1_noabort(i32 %68)
  store volatile i8 1, ptr %skc_state23, align 2
  br label %out_release

if.end128:                                        ; preds = %if.end116
  %69 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %sock, align 128
  %70 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_store1_noabort(i32 %70)
  store volatile i8 2, ptr %skc_state23, align 2
  %ax25_dev132 = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 4
  %71 = ptrtoint ptr %ax25_dev132 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ax25_dev132, align 4
  %arrayidx133 = getelementptr %struct.ax25_dev, ptr %72, i32 0, i32 5, i32 12
  %73 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx133, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %74, label %if.end128.sw.epilog145_crit_edge [
    i32 0, label %if.end128.sw.bb134_crit_edge
    i32 1, label %if.end128.sw.bb134_crit_edge302
    i32 2, label %sw.bb135
  ]

if.end128.sw.bb134_crit_edge302:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb134

if.end128.sw.bb134_crit_edge:                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb134

if.end128.sw.epilog145_crit_edge:                 ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog145

sw.bb134:                                         ; preds = %if.end128.sw.bb134_crit_edge, %if.end128.sw.bb134_crit_edge302
  tail call void @ax25_std_establish_data_link(ptr noundef %3) #13
  br label %sw.epilog145

sw.bb135:                                         ; preds = %if.end128
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 7
  %76 = ptrtoint ptr %modulus to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 8, ptr %modulus, align 2
  %arrayidx138 = getelementptr %struct.ax25_dev, ptr %72, i32 0, i32 5, i32 4
  %77 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx138, align 4
  %conv139 = trunc i32 %78 to i8
  %window = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 32
  %79 = ptrtoint ptr %window to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv139, ptr %window, align 4
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %72, i32 0, i32 6
  %80 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool141.not = icmp eq i8 %81, 0
  br i1 %tobool141.not, label %if.else143, label %if.then142

if.then142:                                       ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ax25_ds_establish_data_link(ptr noundef %3) #13
  br label %sw.epilog145

if.else143:                                       ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ax25_std_establish_data_link(ptr noundef %3) #13
  br label %sw.epilog145

sw.epilog145:                                     ; preds = %if.else143, %if.then142, %sw.bb134, %if.end128.sw.epilog145_crit_edge
  %state146 = getelementptr inbounds %struct.ax25_cb, ptr %3, i32 0, i32 6
  %82 = ptrtoint ptr %state146 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %state146, align 1
  tail call void @ax25_start_heartbeat(ptr noundef %3) #13
  %83 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load volatile i8, ptr %skc_state23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp150.not = icmp eq i8 %84, 1
  %and153 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %or.cond289 = or i1 %tobool154.not, %cmp150.not
  br i1 %or.cond289, label %if.end156, label %sw.epilog145.out_release_crit_edge

sw.epilog145.out_release_crit_edge:               ; preds = %sw.epilog145
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

if.end156:                                        ; preds = %sw.epilog145
  %85 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load volatile i8, ptr %skc_state23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %cmp160 = icmp eq i8 %86, 2
  br i1 %cmp160, label %if.then162, label %if.end156.if.end187_crit_edge

if.end156.if.end187_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

if.then162:                                       ; preds = %if.end156
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %87 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %88 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %89 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %90 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %wait, align 4
  %92 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i290 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i290 to ptr
  %task165 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task165 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task165, align 8
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %87, align 4
  %97 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @autoremove_wake_function, ptr %88, align 4
  %98 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %89, ptr %89, align 4
  %99 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %89, ptr %90, align 4
  %100 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %100, align 8
  call void @prepare_to_wait(ptr noundef %102, ptr noundef nonnull %wait, i32 noundef 1) #13
  %103 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load volatile i8, ptr %skc_state23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %104)
  %cmp173.not300 = icmp eq i8 %104, 2
  br i1 %cmp173.not300, label %if.then162.if.end176_crit_edge, label %if.then162.for.end_crit_edge

if.then162.for.end_crit_edge:                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then162.if.end176_crit_edge:                   ; preds = %if.then162
  br label %if.end176

if.end176:                                        ; preds = %if.then181.if.end176_crit_edge, %if.then162.if.end176_crit_edge
  %105 = ptrtoint ptr %task165 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task165, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %stack.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %108, align 4
  %111 = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end176.for.end.thread_crit_edge, !prof !98

if.end176.for.end.thread_crit_edge:               ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

signal_pending.exit:                              ; preds = %if.end176
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %108, align 4
  %and1.i.i.i.i.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool180.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool180.not, label %if.then181, label %signal_pending.exit.for.end.thread_crit_edge

signal_pending.exit.for.end.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

if.then181:                                       ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %1) #13
  call void @schedule() #13
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %114 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %100, align 8
  call void @prepare_to_wait(ptr noundef %115, ptr noundef nonnull %wait, i32 noundef 1) #13
  %116 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load volatile i8, ptr %skc_state23, align 2
  %cmp173.not = icmp eq i8 %117, 2
  br i1 %cmp173.not, label %if.then181.if.end176_crit_edge, label %if.then181.for.end_crit_edge

if.then181.for.end_crit_edge:                     ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then181.if.end176_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176

for.end.thread:                                   ; preds = %signal_pending.exit.for.end.thread_crit_edge, %if.end176.for.end.thread_crit_edge
  %118 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %100, align 8
  call void @finish_wait(ptr noundef %119, ptr noundef nonnull %wait) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  br label %out_release

for.end:                                          ; preds = %if.then181.for.end_crit_edge, %if.then162.for.end_crit_edge
  %120 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %100, align 8
  call void @finish_wait(ptr noundef %121, ptr noundef nonnull %wait) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool184.not = icmp eq i32 %err.0, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  br i1 %tobool184.not, label %for.end.if.end187_crit_edge, label %for.end.out_release_crit_edge

for.end.out_release_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release

for.end.if.end187_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

if.end187:                                        ; preds = %for.end.if.end187_crit_edge, %if.end156.if.end187_crit_edge
  %122 = ptrtoint ptr %skc_state23 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load volatile i8, ptr %skc_state23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %123)
  %cmp191.not = icmp eq i8 %123, 1
  br i1 %cmp191.not, label %if.end196, label %if.then193

if.then193:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %sock, align 128
  %call195 = call fastcc i32 @sock_error(ptr noundef %1)
  br label %out_release

if.end196:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 3, ptr %sock, align 128
  br label %out_release

out_release:                                      ; preds = %if.end196, %if.then193, %for.end.out_release_crit_edge, %for.end.thread, %sw.epilog145.out_release_crit_edge, %if.then124, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_release_crit_edge, %if.then102, %if.then96, %if.end58.out_release_crit_edge, %lor.lhs.false52.out_release_crit_edge, %if.then42.out_release_crit_edge, %land.lhs.true.out_release_crit_edge, %sw.bb19, %sw.bb17, %if.then15.out_release_crit_edge
  %err.2 = phi i32 [ %call93, %if.then96 ], [ %err.0, %if.then124 ], [ %err.0, %for.end.out_release_crit_edge ], [ %call195, %if.then193 ], [ 0, %if.end196 ], [ -113, %if.then102 ], [ -111, %sw.bb19 ], [ 0, %sw.bb17 ], [ -115, %if.then15.out_release_crit_edge ], [ -106, %land.lhs.true.out_release_crit_edge ], [ -22, %lor.lhs.false52.out_release_crit_edge ], [ -22, %if.then42.out_release_crit_edge ], [ -105, %if.end58.out_release_crit_edge ], [ -115, %sw.epilog145.out_release_crit_edge ], [ -98, %if.end5.i.i.i.i.out_release_crit_edge ], [ -98, %if.then10.i.i.i.i ], [ -98, %if.then.i ], [ -512, %for.end.thread ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup198

cleanup198:                                       ; preds = %out_release, %if.end8.cleanup198_crit_edge, %if.then3.cleanup198_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_release ], [ -22, %if.then3.cleanup198_crit_edge ], [ -22, %if.end8.cleanup198_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !86) #13
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not = icmp eq i32 %14, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk5 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %15 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk5, align 16
  %cmp6 = icmp eq ptr %16, null
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @lock_sock_nested(ptr noundef nonnull %16, i32 noundef 0) #13
  %sk_type = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 45
  %17 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %18)
  %cmp9.not = icmp eq i16 %18, 5
  br i1 %cmp9.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end12:                                         ; preds = %if.end8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp14.not = icmp eq i8 %20, 10
  br i1 %cmp14.not, label %for.cond.preheader, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond.preheader:                               ; preds = %if.end12
  %21 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 17
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %21, align 8
  call void @prepare_to_wait(ptr noundef %23, ptr noundef nonnull %wait, i32 noundef 1) #13
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 8
  %call1961 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool.not62 = icmp eq ptr %call1961, null
  br i1 %tobool.not62, label %if.end21.lr.ph, label %for.cond.preheader.if.end34_crit_edge

for.cond.preheader.if.end34_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end21.lr.ph:                                   ; preds = %for.cond.preheader
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end21.lr.ph.if.end21_crit_edge, label %if.end21.lr.ph.for.end.thread.split_crit_edge

if.end21.lr.ph.for.end.thread.split_crit_edge:    ; preds = %if.end21.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread.split

if.end21.lr.ph.if.end21_crit_edge:                ; preds = %if.end21.lr.ph
  br label %if.end21

if.end21:                                         ; preds = %if.then29.if.end21_crit_edge, %if.end21.lr.ph.if.end21_crit_edge
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
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end21.for.end.thread.split_crit_edge, !prof !98

if.end21.for.end.thread.split_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread.split

signal_pending.exit:                              ; preds = %if.end21
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool28.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool28.not, label %if.then29, label %signal_pending.exit.for.end.thread.split_crit_edge

signal_pending.exit.for.end.thread.split_crit_edge: ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread.split

if.then29:                                        ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef nonnull %16) #13
  call void @schedule() #13
  call void @lock_sock_nested(ptr noundef nonnull %16, i32 noundef 0) #13
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %21, align 8
  call void @prepare_to_wait(ptr noundef %34, ptr noundef nonnull %wait, i32 noundef 1) #13
  %call19 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %if.then29.if.end21_crit_edge, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then29.if.end21_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.end.thread.split:                             ; preds = %signal_pending.exit.for.end.thread.split_crit_edge, %if.end21.for.end.thread.split_crit_edge, %if.end21.lr.ph.for.end.thread.split_crit_edge
  %err.0.ph.split = phi i32 [ -11, %if.end21.lr.ph.for.end.thread.split_crit_edge ], [ -512, %signal_pending.exit.for.end.thread.split_crit_edge ], [ -512, %if.end21.for.end.thread.split_crit_edge ]
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %21, align 8
  call void @finish_wait(ptr noundef %36, ptr noundef nonnull %wait) #13
  br label %out

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %for.cond.preheader.if.end34_crit_edge
  %call19.lcssa = phi ptr [ %call1961, %for.cond.preheader.if.end34_crit_edge ], [ %call19, %if.then29.if.end34_crit_edge ]
  %37 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %21, align 8
  call void @finish_wait(ptr noundef %38, ptr noundef nonnull %wait) #13
  %39 = getelementptr inbounds %struct.sk_buff, ptr %call19.lcssa, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %42 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i54 = icmp eq ptr %43, null
  br i1 %tobool.not.i54, label %if.end34.sock_graft.exit_crit_edge, label %do.end.i, !prof !98

if.end34.sock_graft.exit_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_graft.exit

do.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2024, i32 noundef 9, ptr noundef null) #13
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %if.end34.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %41, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
  %wq.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  %44 = getelementptr inbounds %struct.sock, ptr %41, i32 0, i32 17
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %wq.i, ptr %44, align 8
  %46 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %41, ptr %sk1.i, align 16
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %41, i32 0, i32 71
  %47 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %newsock, ptr %sk_socket.i.i, align 8
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %41, i32 0, i32 55
  %i_uid.i = getelementptr inbounds %struct.socket_alloc, ptr %newsock, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_uid.i, align 4
  %50 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %sk_uid.i, align 4
  call void @security_sock_graft(ptr noundef %41, ptr noundef %newsock) #13
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  call void @kfree_skb_reason(ptr noundef nonnull %call19.lcssa, i32 noundef 0) #13
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 53
  %51 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %52, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  %53 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %newsock, align 128
  br label %out

out:                                              ; preds = %sock_graft.exit, %for.end.thread.split, %if.end12.out_crit_edge, %if.end8.out_crit_edge
  %err.1 = phi i32 [ 0, %sock_graft.exit ], [ -95, %if.end8.out_crit_edge ], [ -22, %if.end12.out_crit_edge ], [ %err.0.ph.split, %for.end.thread.split ]
  call void @release_sock(ptr noundef nonnull %16) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = call ptr @memset(ptr %uaddr, i32 0, i32 72)
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %cmp.not = icmp eq i32 %peer, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp2.not = icmp eq i8 %6, 1
  br i1 %cmp2.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 3, ptr %uaddr, align 4
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %dest_addr = getelementptr inbounds %struct.ax25_cb, ptr %4, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %sax25_call, ptr %dest_addr, i32 7)
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %digipeat, align 4
  %cmp6.not = icmp eq ptr %10, null
  br i1 %cmp6.not, label %if.end.out_crit_edge, label %if.then8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then8:                                         ; preds = %if.end
  %ndigi10 = getelementptr inbounds %struct.ax25_digi, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ndigi10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ndigi10, align 1
  %conv11 = zext i8 %12 to i32
  %sax25_ndigis = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 2
  %13 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv11, ptr %sax25_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp1561.not = icmp eq i8 %12, 0
  br i1 %cmp1561.not, label %if.then8.out_crit_edge, label %if.then8.for.body_crit_edge

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  br label %for.body

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then8.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.then8.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.full_sockaddr_ax25, ptr %uaddr, i32 0, i32 1, i32 %indvars.iv
  %14 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %digipeat, align 4
  %arrayidx19 = getelementptr [8 x %struct.ax25_address], ptr %15, i32 0, i32 %indvars.iv
  %16 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx19, i32 7)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv11
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else:                                          ; preds = %entry
  %17 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3, ptr %uaddr, align 4
  %sax25_call24 = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %4, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %sax25_call24, ptr %source_addr, i32 7)
  %sax25_ndigis26 = getelementptr inbounds %struct.sockaddr_ax25, ptr %uaddr, i32 0, i32 2
  %19 = ptrtoint ptr %sax25_ndigis26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %sax25_ndigis26, align 4
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %4, i32 0, i32 4
  %20 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ax25_dev, align 4
  %cmp27.not = icmp eq ptr %21, null
  %fsa_digipeater34 = getelementptr inbounds %struct.full_sockaddr_ax25, ptr %uaddr, i32 0, i32 1
  br i1 %cmp27.not, label %if.else33, label %if.then29

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %26 = call ptr @memcpy(ptr %fsa_digipeater34, ptr %25, i32 7)
  br label %out

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %27 = call ptr @memcpy(ptr %fsa_digipeater34, ptr @null_ax25_address, i32 7)
  br label %out

out:                                              ; preds = %if.else33, %if.then29, %for.body.out_crit_edge, %if.then8.out_crit_edge, %if.end.out_crit_edge, %if.then.out_crit_edge
  %err.0 = phi i32 [ -107, %if.then.out_crit_edge ], [ 72, %if.then29 ], [ 72, %if.else33 ], [ 72, %if.end.out_crit_edge ], [ 72, %if.then8.out_crit_edge ], [ 72, %for.body.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ax25_ctl.i = alloca %struct.ax25_ctl_struct, align 4
  %digi.i = alloca %struct.ax25_digi, align 1
  %sax25 = alloca %struct.sockaddr_ax25, align 4
  %ax25_info = alloca %struct.ax25_info_struct, align 4
  %ax25_fwd = alloca %struct.ax25_fwd_struct, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = inttoptr i32 %arg to ptr
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %cmd, label %sw.default [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb4
    i32 35297, label %entry.sw.bb25_crit_edge
    i32 35298, label %entry.sw.bb25_crit_edge257
    i32 35296, label %entry.sw.bb25_crit_edge258
    i32 35299, label %sw.bb30
    i32 35083, label %entry.sw.bb53_crit_edge
    i32 35084, label %entry.sw.bb53_crit_edge259
    i32 35303, label %entry.sw.bb53_crit_edge260
    i32 35304, label %sw.bb58
    i32 35309, label %entry.sw.bb63_crit_edge
    i32 35305, label %entry.sw.bb63_crit_edge261
    i32 35306, label %entry.sw.bb126_crit_edge
    i32 35307, label %entry.sw.bb126_crit_edge262
    i32 35093, label %entry.sw.epilog_crit_edge
    i32 35094, label %entry.sw.epilog_crit_edge263
    i32 35095, label %entry.sw.epilog_crit_edge264
    i32 35096, label %entry.sw.epilog_crit_edge265
    i32 35097, label %entry.sw.epilog_crit_edge266
    i32 35098, label %entry.sw.epilog_crit_edge267
    i32 35099, label %entry.sw.epilog_crit_edge268
    i32 35100, label %entry.sw.epilog_crit_edge269
    i32 35101, label %entry.sw.epilog_crit_edge270
    i32 35102, label %entry.sw.epilog_crit_edge271
  ]

entry.sw.epilog_crit_edge271:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge270:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge269:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge268:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge267:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge266:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge265:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge264:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge263:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.bb126_crit_edge262:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb126

entry.sw.bb126_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb126

entry.sw.bb63_crit_edge261:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb63

entry.sw.bb63_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb63

entry.sw.bb53_crit_edge260:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb53

entry.sw.bb53_crit_edge259:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb53

entry.sw.bb53_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb53

entry.sw.bb25_crit_edge258:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb25

entry.sw.bb25_crit_edge257:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb25

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb25

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndbuf, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i.neg = add i32 %5, 1
  %sub = sub i32 %sub.i.neg, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 1732) #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !106
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %8, i32 -1226833921) #13, !srcloc !109
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %14, %sk_receive_queue
  %cmp7.not256 = icmp eq ptr %14, null
  %cmp7.not = or i1 %cmp.i, %cmp7.not256
  br i1 %cmp7.not, label %sw.bb4.if.end9_crit_edge, label %if.then8

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.bb4.if.end9_crit_edge
  %amount5.0 = phi i32 [ %16, %if.then8 ], [ 0, %sw.bb4.if.end9_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 1742) #13
  %17 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i179 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i179 to ptr
  %cpu_domain.i.i180 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i180) #7, !srcloc !106
  %and.i181 = and i32 %19, -13
  %or.i182 = or i32 %and.i181, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i182) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %amount5.0, i32 -1226833921) #13, !srcloc !110
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge257, %entry.sw.bb25_crit_edge258
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sax25) #13
  %21 = call ptr @memset(ptr %sax25, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %sw.bb25.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb25.if.then11.i.i_crit_edge:                  ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb25
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #18, !srcloc !111
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !98

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sax25, i32 noundef 16) #13
  %23 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !106
  %and.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sax25, ptr noundef %2, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end28, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !98

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb25.if.then11.i.i_crit_edge
  %res.0.i.i244 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %sw.bb25.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i244
  %add.ptr.i.i = getelementptr i8, ptr %sax25, i32 %sub.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i244)
  br label %cleanup

if.end28:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = call i32 @ax25_uid_ioctl(i32 noundef %cmd, ptr noundef nonnull %sax25) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then11.i.i
  %res.0 = phi i32 [ %call29, %if.end28 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sax25) #13
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %call32 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call32, label %if.end34, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end34:                                         ; preds = %sw.bb30
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 1764) #13
  %27 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i183 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i183 to ptr
  %cpu_domain.i.i184 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i184) #7, !srcloc !106
  %and.i185 = and i32 %29, -13
  %or.i186 = or i32 %and.i185, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i186) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %30 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #13, !srcloc !112
  %asmresult = extractvalue { i32, i32 } %30, 0
  %asmresult43 = extractvalue { i32, i32 } %30, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool45.not = icmp eq i32 %asmresult, 0
  br i1 %tobool45.not, label %if.end47, label %if.end34.sw.epilog_crit_edge

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end47:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult43)
  %31 = icmp ugt i32 %asmresult43, 1
  br i1 %31, label %if.end47.sw.epilog_crit_edge, label %if.end51

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ax25_uid_policy to i32))
  store i32 %asmresult43, ptr @ax25_uid_policy, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry.sw.bb53_crit_edge, %entry.sw.bb53_crit_edge259, %entry.sw.bb53_crit_edge260
  %call54 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call54, label %if.end56, label %sw.bb53.sw.epilog_crit_edge

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end56:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = tail call i32 @ax25_rt_ioctl(i32 noundef %cmd, ptr noundef %2) #13
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  %call59 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call59, label %if.end61, label %sw.bb58.sw.epilog_crit_edge

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end61:                                         ; preds = %sw.bb58
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %ax25_ctl.i) #13
  %32 = call ptr @memset(ptr %ax25_ctl.i, i32 255, i32 92)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %digi.i) #13
  %33 = call ptr @memset(ptr %digi.i, i32 255, i32 66)
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #13
  %call.i.i.i233 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i233, label %if.end61.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end61.if.then11.i.i.i_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end61
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 92, i32 -1226833920) #18, !srcloc !111
  %asmresult.i.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !98

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i234 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ax25_ctl.i, i32 noundef 92) #13
  %35 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !106
  %and.i.i.i.i.i = and i32 %37, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ax25_ctl.i, ptr noundef %2, i32 noundef 92) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !98

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end61.if.then11.i.i.i_crit_edge
  %res.0.i.i26.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 92, %if.end61.if.then11.i.i.i_crit_edge ], [ 92, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 92, %res.0.i.i26.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ax25_ctl.i, i32 %sub.i.i.i
  %38 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i26.i)
  br label %ax25_ctl_ioctl.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %digi_count.i = getelementptr inbounds %struct.ax25_ctl_struct, ptr %ax25_ctl.i, i32 0, i32 5
  %39 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %digi_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %40)
  %cmp.i235 = icmp ugt i8 %40, 8
  br i1 %cmp.i235, label %if.end.i.ax25_ctl_ioctl.exit_crit_edge, label %if.end3.i

if.end.i.ax25_ctl_ioctl.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_ctl_ioctl.exit

if.end3.i:                                        ; preds = %if.end.i
  %arg4.i = getelementptr inbounds %struct.ax25_ctl_struct, ptr %ax25_ctl.i, i32 0, i32 4
  %41 = ptrtoint ptr %arg4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arg4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %42)
  %cmp5.i = icmp ugt i32 %42, 42949672
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end3.i.if.end11.i_crit_edge

if.end3.i.if.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %cmd7.i = getelementptr inbounds %struct.ax25_ctl_struct, ptr %ax25_ctl.i, i32 0, i32 3
  %43 = ptrtoint ptr %cmd7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cmd7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %44)
  %cmp8.not.i = icmp eq i32 %44, 99
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %land.lhs.true.i.ax25_ctl_ioctl.exit_crit_edge

land.lhs.true.i.ax25_ctl_ioctl.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_ctl_ioctl.exit

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end3.i.if.end11.i_crit_edge
  %call12.i = call ptr @ax25_addr_ax25dev(ptr noundef nonnull %ax25_ctl.i) #13
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end11.i.ax25_ctl_ioctl.exit_crit_edge, label %if.end15.i

if.end11.i.ax25_ctl_ioctl.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_ctl_ioctl.exit

if.end15.i:                                       ; preds = %if.end11.i
  %45 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %digi_count.i, align 4
  %ndigi.i = getelementptr inbounds %struct.ax25_digi, ptr %digi.i, i32 0, i32 2
  %47 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %ndigi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp1930.not.i = icmp eq i8 %46, 0
  br i1 %cmp1930.not.i, label %if.end15.i.for.end.i_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  br label %for.body.i

if.end15.i.for.end.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end15.i.for.body.i_crit_edge
  %k.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end15.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.ax25_address], ptr %digi.i, i32 0, i32 %k.031.i
  %arrayidx21.i = getelementptr %struct.ax25_ctl_struct, ptr %ax25_ctl.i, i32 0, i32 6, i32 %k.031.i
  %48 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx21.i, i32 7)
  %inc.i = add nuw nsw i32 %k.031.i, 1
  %49 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ndigi.i, align 1
  %conv18.i = zext i8 %50 to i32
  %cmp19.i = icmp ult i32 %inc.i, %conv18.i
  br i1 %cmp19.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end15.i.for.end.i_crit_edge
  %source_addr.i = getelementptr inbounds %struct.ax25_ctl_struct, ptr %ax25_ctl.i, i32 0, i32 1
  %dest_addr.i = getelementptr inbounds %struct.ax25_ctl_struct, ptr %ax25_ctl.i, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.ax25_dev, ptr %call12.i, i32 0, i32 1
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %call22.i = call ptr @ax25_find_cb(ptr noundef %source_addr.i, ptr noundef %dest_addr.i, ptr noundef nonnull %digi.i, ptr noundef %52) #13
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end25.i

if.then24.i:                                      ; preds = %for.end.i
  %refcount.i.i = getelementptr inbounds %struct.ax25_dev, ptr %call12.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #13
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i236, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ax25_ctl_ioctl.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.ax25_ctl_ioctl.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_ctl_ioctl.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #13
  br label %ax25_ctl_ioctl.exit

if.then.i.i236:                                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  call void @kfree(ptr noundef nonnull %call12.i) #13
  br label %ax25_ctl_ioctl.exit

if.end25.i:                                       ; preds = %for.end.i
  %cmd26.i = getelementptr inbounds %struct.ax25_ctl_struct, ptr %ax25_ctl.i, i32 0, i32 3
  %54 = ptrtoint ptr %cmd26.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmd26.i, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %55, label %if.end25.i.out_put.i_crit_edge [
    i32 99, label %sw.bb.i
    i32 1, label %sw.bb36.i
    i32 2, label %sw.bb61.i
    i32 5, label %sw.bb74.i
    i32 3, label %sw.bb86.i
    i32 4, label %sw.bb98.i
    i32 9, label %sw.bb106.i
    i32 10, label %sw.bb115.i
  ]

if.end25.i.out_put.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

sw.bb.i:                                          ; preds = %if.end25.i
  call void @ax25_send_control(ptr noundef nonnull %call22.i, i32 noundef 67, i32 noundef 1, i32 noundef 1) #13
  %dama.i = getelementptr inbounds %struct.ax25_dev, ptr %call12.i, i32 0, i32 6
  %57 = ptrtoint ptr %dama.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dama.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool28.not.i = icmp eq i8 %58, 0
  br i1 %tobool28.not.i, label %sw.bb.i.if.end35.i_crit_edge, label %land.lhs.true29.i

sw.bb.i.if.end35.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

land.lhs.true29.i:                                ; preds = %sw.bb.i
  %ax25_dev30.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 4
  %59 = ptrtoint ptr %ax25_dev30.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ax25_dev30.i, align 4
  %arrayidx31.i = getelementptr %struct.ax25_dev, ptr %60, i32 0, i32 5, i32 12
  %61 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp32.i = icmp eq i32 %62, 2
  br i1 %cmp32.i, label %if.then34.i, label %land.lhs.true29.i.if.end35.i_crit_edge

land.lhs.true29.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then34.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @ax25_dama_off(ptr noundef nonnull %call22.i) #13
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %land.lhs.true29.i.if.end35.i_crit_edge, %sw.bb.i.if.end35.i_crit_edge
  call void @ax25_disconnect(ptr noundef nonnull %call22.i, i32 noundef 102) #13
  br label %out_put.i

sw.bb36.i:                                        ; preds = %if.end25.i
  %modulus.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 7
  %63 = ptrtoint ptr %modulus.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %modulus.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %64)
  %cmp38.i = icmp eq i8 %64, 8
  %65 = ptrtoint ptr %arg4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arg4.i, align 4
  br i1 %cmp38.i, label %if.then40.i, label %if.else.i

if.then40.i:                                      ; preds = %sw.bb36.i
  %67 = add i32 %66, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %67)
  %68 = icmp ult i32 %67, -7
  br i1 %68, label %if.then40.i.out_put.i_crit_edge, label %if.then40.i.if.end58.i_crit_edge

if.then40.i.if.end58.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

if.then40.i.out_put.i_crit_edge:                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

if.else.i:                                        ; preds = %sw.bb36.i
  %69 = add i32 %66, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %69)
  %70 = icmp ult i32 %69, -63
  br i1 %70, label %if.else.i.out_put.i_crit_edge, label %if.else.i.if.end58.i_crit_edge

if.else.i.if.end58.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

if.else.i.out_put.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

if.end58.i:                                       ; preds = %if.else.i.if.end58.i_crit_edge, %if.then40.i.if.end58.i_crit_edge
  %conv60.i = trunc i32 %66 to i8
  %window.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 32
  %71 = ptrtoint ptr %window.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv60.i, ptr %window.i, align 4
  br label %out_put.i

sw.bb61.i:                                        ; preds = %if.end25.i
  %72 = ptrtoint ptr %arg4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arg4.i, align 4
  %74 = add i32 %73, -42949673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42949672, i32 %74)
  %75 = icmp ult i32 %74, -42949672
  br i1 %75, label %sw.bb61.i.out_put.i_crit_edge, label %if.end70.i

sw.bb61.i.out_put.i_crit_edge:                    ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

if.end70.i:                                       ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = mul nuw i32 %73, 100
  %div1.i = lshr exact i32 %mul.i, 1
  %rtt.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 24
  %76 = ptrtoint ptr %rtt.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div1.i, ptr %rtt.i, align 4
  %t1.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 20
  %77 = ptrtoint ptr %t1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul.i, ptr %t1.i, align 4
  br label %out_put.i

sw.bb74.i:                                        ; preds = %if.end25.i
  %78 = ptrtoint ptr %arg4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arg4.i, align 4
  %80 = add i32 %79, -42949673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42949672, i32 %80)
  %81 = icmp ult i32 %80, -42949672
  br i1 %81, label %sw.bb74.i.out_put.i_crit_edge, label %if.end83.i

sw.bb74.i.out_put.i_crit_edge:                    ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

if.end83.i:                                       ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul85.i = mul nuw i32 %79, 100
  %t2.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 21
  %82 = ptrtoint ptr %t2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul85.i, ptr %t2.i, align 4
  br label %out_put.i

sw.bb86.i:                                        ; preds = %if.end25.i
  %83 = ptrtoint ptr %arg4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arg4.i, align 4
  %85 = add i32 %84, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %85)
  %86 = icmp ult i32 %85, -31
  br i1 %86, label %sw.bb86.i.out_put.i_crit_edge, label %if.end95.i

sw.bb86.i.out_put.i_crit_edge:                    ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

if.end95.i:                                       ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #15
  %n2count.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 15
  %87 = ptrtoint ptr %n2count.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %n2count.i, align 1
  %conv97.i = trunc i32 %84 to i8
  %n2.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 14
  %88 = ptrtoint ptr %n2.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv97.i, ptr %n2.i, align 4
  br label %out_put.i

sw.bb98.i:                                        ; preds = %if.end25.i
  %89 = ptrtoint ptr %arg4.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arg4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %90)
  %cmp100.i = icmp ugt i32 %90, 42949672
  br i1 %cmp100.i, label %sw.bb98.i.out_put.i_crit_edge, label %if.end103.i

sw.bb98.i.out_put.i_crit_edge:                    ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

if.end103.i:                                      ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul105.i = mul nuw i32 %90, 100
  %t3.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 22
  %91 = ptrtoint ptr %t3.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %mul105.i, ptr %t3.i, align 4
  br label %out_put.i

sw.bb106.i:                                       ; preds = %if.end25.i
  %92 = ptrtoint ptr %arg4.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arg4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 715827, i32 %93)
  %cmp108.i = icmp ugt i32 %93, 715827
  br i1 %cmp108.i, label %sw.bb106.i.out_put.i_crit_edge, label %if.end111.i

sw.bb106.i.out_put.i_crit_edge:                   ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

if.end111.i:                                      ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul114.i = mul nuw i32 %93, 6000
  %idle.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 23
  %94 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %mul114.i, ptr %idle.i, align 4
  br label %out_put.i

sw.bb115.i:                                       ; preds = %if.end25.i
  %95 = ptrtoint ptr %arg4.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arg4.i, align 4
  %97 = add i32 %96, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65520, i32 %97)
  %98 = icmp ult i32 %97, -65520
  br i1 %98, label %sw.bb115.i.out_put.i_crit_edge, label %if.end124.i

sw.bb115.i.out_put.i_crit_edge:                   ; preds = %sw.bb115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put.i

if.end124.i:                                      ; preds = %sw.bb115.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv126.i = trunc i32 %96 to i16
  %paclen.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 25
  %99 = ptrtoint ptr %paclen.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv126.i, ptr %paclen.i, align 4
  br label %out_put.i

out_put.i:                                        ; preds = %if.end124.i, %sw.bb115.i.out_put.i_crit_edge, %if.end111.i, %sw.bb106.i.out_put.i_crit_edge, %if.end103.i, %sw.bb98.i.out_put.i_crit_edge, %if.end95.i, %sw.bb86.i.out_put.i_crit_edge, %if.end83.i, %sw.bb74.i.out_put.i_crit_edge, %if.end70.i, %sw.bb61.i.out_put.i_crit_edge, %if.end58.i, %if.else.i.out_put.i_crit_edge, %if.then40.i.out_put.i_crit_edge, %if.end35.i, %if.end25.i.out_put.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end124.i ], [ 0, %if.end111.i ], [ 0, %if.end103.i ], [ 0, %if.end95.i ], [ 0, %if.end83.i ], [ 0, %if.end70.i ], [ 0, %if.end58.i ], [ 0, %if.end35.i ], [ -22, %if.end25.i.out_put.i_crit_edge ], [ -22, %sw.bb115.i.out_put.i_crit_edge ], [ -22, %sw.bb106.i.out_put.i_crit_edge ], [ -22, %sw.bb98.i.out_put.i_crit_edge ], [ -22, %sw.bb86.i.out_put.i_crit_edge ], [ -22, %sw.bb74.i.out_put.i_crit_edge ], [ -22, %sw.bb61.i.out_put.i_crit_edge ], [ -22, %if.else.i.out_put.i_crit_edge ], [ -22, %if.then40.i.out_put.i_crit_edge ]
  %refcount.i7.i = getelementptr inbounds %struct.ax25_dev, ptr %call12.i, i32 0, i32 7
  %call.i.i.i.i.i.i8.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i7.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i7.i, i32 1, i32 3, i32 1) #13
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i7.i, ptr %refcount.i7.i, i32 1, ptr elementtype(i32) %refcount.i7.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i9.i = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i9.i)
  %cmp.i.i.i.i10.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i9.i, 1
  br i1 %cmp.i.i.i.i10.i, label %if.then.i14.i, label %if.end5.i.i.i.i12.i

if.end5.i.i.i.i12.i:                              ; preds = %out_put.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i9.i)
  %.not.i.i.i.i11.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i9.i, 0
  br i1 %.not.i.i.i.i11.i, label %if.end5.i.i.i.i12.i.ax25_dev_put.exit15.i_crit_edge, label %if.then10.i.i.i.i13.i, !prof !98

if.end5.i.i.i.i12.i.ax25_dev_put.exit15.i_crit_edge: ; preds = %if.end5.i.i.i.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_dev_put.exit15.i

if.then10.i.i.i.i13.i:                            ; preds = %if.end5.i.i.i.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i7.i, i32 noundef 3) #13
  br label %ax25_dev_put.exit15.i

if.then.i14.i:                                    ; preds = %out_put.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  call void @kfree(ptr noundef nonnull %call12.i) #13
  br label %ax25_dev_put.exit15.i

ax25_dev_put.exit15.i:                            ; preds = %if.then.i14.i, %if.then10.i.i.i.i13.i, %if.end5.i.i.i.i12.i.ax25_dev_put.exit15.i_crit_edge
  %refcount.i16.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 36
  %call.i.i.i.i.i.i17.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i16.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i16.i, i32 1, i32 3, i32 1) #13
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i16.i, ptr %refcount.i16.i, i32 1, ptr elementtype(i32) %refcount.i16.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i18.i = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i18.i)
  %cmp.i.i.i.i19.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i18.i, 1
  br i1 %cmp.i.i.i.i19.i, label %if.then.i23.i, label %if.end5.i.i.i.i21.i

if.end5.i.i.i.i21.i:                              ; preds = %ax25_dev_put.exit15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i18.i)
  %.not.i.i.i.i20.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i18.i, 0
  br i1 %.not.i.i.i.i20.i, label %if.end5.i.i.i.i21.i.ax25_ctl_ioctl.exit_crit_edge, label %if.then10.i.i.i.i22.i, !prof !98

if.end5.i.i.i.i21.i.ax25_ctl_ioctl.exit_crit_edge: ; preds = %if.end5.i.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_ctl_ioctl.exit

if.then10.i.i.i.i22.i:                            ; preds = %if.end5.i.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i16.i, i32 noundef 3) #13
  br label %ax25_ctl_ioctl.exit

if.then.i23.i:                                    ; preds = %ax25_dev_put.exit15.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  %digipeat.i.i = getelementptr inbounds %struct.ax25_cb, ptr %call22.i, i32 0, i32 3
  %102 = ptrtoint ptr %digipeat.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %digipeat.i.i, align 4
  call void @kfree(ptr noundef %103) #13
  call void @kfree(ptr noundef nonnull %call22.i) #13
  br label %ax25_ctl_ioctl.exit

ax25_ctl_ioctl.exit:                              ; preds = %if.then.i23.i, %if.then10.i.i.i.i22.i, %if.end5.i.i.i.i21.i.ax25_ctl_ioctl.exit_crit_edge, %if.then.i.i236, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ax25_ctl_ioctl.exit_crit_edge, %if.end11.i.ax25_ctl_ioctl.exit_crit_edge, %land.lhs.true.i.ax25_ctl_ioctl.exit_crit_edge, %if.end.i.ax25_ctl_ioctl.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -22, %if.end.i.ax25_ctl_ioctl.exit_crit_edge ], [ -22, %land.lhs.true.i.ax25_ctl_ioctl.exit_crit_edge ], [ -19, %if.end11.i.ax25_ctl_ioctl.exit_crit_edge ], [ -107, %if.end5.i.i.i.i.i.ax25_ctl_ioctl.exit_crit_edge ], [ -107, %if.then10.i.i.i.i.i ], [ -107, %if.then.i.i236 ], [ %ret.0.i, %if.end5.i.i.i.i21.i.ax25_ctl_ioctl.exit_crit_edge ], [ %ret.0.i, %if.then10.i.i.i.i22.i ], [ %ret.0.i, %if.then.i23.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %digi.i) #13
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %ax25_ctl.i) #13
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry.sw.bb63_crit_edge, %entry.sw.bb63_crit_edge261
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cb.i, align 8
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %ax25_info) #13
  %106 = call ptr @memset(ptr %ax25_info, i32 255, i32 76)
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 20
  %107 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %t1, align 4
  %div = udiv i32 %108, 100
  %t165 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 2
  %109 = ptrtoint ptr %t165 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %div, ptr %t165, align 4
  %t2 = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 21
  %110 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %t2, align 4
  %div66 = udiv i32 %111, 100
  %t267 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 4
  %112 = ptrtoint ptr %t267 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %div66, ptr %t267, align 4
  %t3 = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 22
  %113 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %t3, align 4
  %div68 = udiv i32 %114, 100
  %t369 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 6
  %115 = ptrtoint ptr %t369 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %div68, ptr %t369, align 4
  %idle = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 23
  %116 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %idle, align 4
  %div70 = udiv i32 %117, 6000
  %idle71 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 8
  %118 = ptrtoint ptr %idle71 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %div70, ptr %idle71, align 4
  %n2 = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 14
  %119 = ptrtoint ptr %n2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %n2, align 4
  %conv = zext i8 %120 to i32
  %121 = ptrtoint ptr %ax25_info to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv, ptr %ax25_info, align 4
  %t1timer = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 16
  %call73 = tail call i32 @ax25_display_timer(ptr noundef %t1timer) #13
  %div74 = udiv i32 %call73, 100
  %t1timer75 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 3
  %122 = ptrtoint ptr %t1timer75 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %div74, ptr %t1timer75, align 4
  %t2timer = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 17
  %call76 = tail call i32 @ax25_display_timer(ptr noundef %t2timer) #13
  %div77 = udiv i32 %call76, 100
  %t2timer78 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 5
  %123 = ptrtoint ptr %t2timer78 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %div77, ptr %t2timer78, align 4
  %t3timer = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 18
  %call79 = tail call i32 @ax25_display_timer(ptr noundef %t3timer) #13
  %div80 = udiv i32 %call79, 100
  %t3timer81 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 7
  %124 = ptrtoint ptr %t3timer81 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %div80, ptr %t3timer81, align 4
  %idletimer = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 19
  %call82 = tail call i32 @ax25_display_timer(ptr noundef %idletimer) #13
  %div83 = udiv i32 %call82, 6000
  %idletimer84 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 9
  %125 = ptrtoint ptr %idletimer84 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %div83, ptr %idletimer84, align 4
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 15
  %126 = ptrtoint ptr %n2count to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %n2count, align 1
  %conv85 = zext i8 %127 to i32
  %n2count86 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 1
  %128 = ptrtoint ptr %n2count86 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv85, ptr %n2count86, align 4
  %state = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 6
  %129 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %state, align 1
  %conv87 = zext i8 %130 to i32
  %state88 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 10
  %131 = ptrtoint ptr %state88 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv87, ptr %state88, align 4
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i.i237 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  %132 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %sk_backlog.i, align 4
  %rcv_q = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 11
  %134 = ptrtoint ptr %rcv_q to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %rcv_q, align 4
  %sk_wmem_alloc.i238 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i239 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i238, i32 noundef 4) #13
  %135 = ptrtoint ptr %sk_wmem_alloc.i238 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %sk_wmem_alloc.i238, align 4
  %sub.i240 = add i32 %136, -1
  %snd_q = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 12
  %137 = ptrtoint ptr %snd_q to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub.i240, ptr %snd_q, align 4
  %vs = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 9
  %138 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %vs, align 4
  %conv91 = zext i16 %139 to i32
  %vs92 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 13
  %140 = ptrtoint ptr %vs92 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv91, ptr %vs92, align 4
  %vr = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 10
  %141 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %vr, align 2
  %conv93 = zext i16 %142 to i32
  %vr94 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 14
  %143 = ptrtoint ptr %vr94 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv93, ptr %vr94, align 4
  %va = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 11
  %144 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %va, align 4
  %conv95 = zext i16 %145 to i32
  %va96 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 15
  %146 = ptrtoint ptr %va96 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv95, ptr %va96, align 4
  %147 = load i16, ptr %vs, align 4
  %conv98 = zext i16 %147 to i32
  %vs_max = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 16
  %148 = ptrtoint ptr %vs_max to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv98, ptr %vs_max, align 4
  %paclen = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 25
  %149 = ptrtoint ptr %paclen to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %paclen, align 4
  %conv99 = zext i16 %150 to i32
  %paclen100 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 17
  %151 = ptrtoint ptr %paclen100 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv99, ptr %paclen100, align 4
  %window = getelementptr inbounds %struct.ax25_cb, ptr %105, i32 0, i32 32
  %152 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %window, align 4
  %conv101 = zext i8 %153 to i32
  %window102 = getelementptr inbounds %struct.ax25_info_struct, ptr %ax25_info, i32 0, i32 18
  %154 = ptrtoint ptr %window102 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv101, ptr %window102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35305, i32 %cmd)
  %cmp103 = icmp eq i32 %cmd, 35305
  br i1 %cmp103, label %if.then105, label %if.end8.i.i200

if.then105:                                       ; preds = %sw.bb63
  %.b = load i1, ptr @ax25_ioctl.warned, align 4
  br i1 %.b, label %if.then105.if.end8.i.i190_crit_edge, label %do.end110

if.then105.if.end8.i.i190_crit_edge:              ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i190

do.end110:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  %155 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i241 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i241 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 101
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm) #17
  store i1 true, ptr @ax25_ioctl.warned, align 4
  br label %if.end8.i.i190

if.end8.i.i190:                                   ; preds = %do.end110, %if.then105.if.end8.i.i190_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #13
  %call.i.i191 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i191, label %if.end8.i.i190.cleanup124_crit_edge, label %if.end.i.i194

if.end8.i.i190.cleanup124_crit_edge:              ; preds = %if.end8.i.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

if.end.i.i194:                                    ; preds = %if.end8.i.i190
  %159 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 52, i32 -1226833920) #18, !srcloc !113
  %asmresult.i.i192 = extractvalue { i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i192)
  %cmp.i6.i193 = icmp eq i32 %asmresult.i.i192, 0
  br i1 %cmp.i6.i193, label %copy_to_user.exit, label %if.end.i.i194.cleanup124_crit_edge

if.end.i.i194.cleanup124_crit_edge:               ; preds = %if.end.i.i194
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

copy_to_user.exit:                                ; preds = %if.end.i.i194
  %call.i.i.i195 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ax25_info, i32 noundef 52) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ax25_info, i32 noundef 52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool116.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool116.not, label %copy_to_user.exit.if.end123_crit_edge, label %copy_to_user.exit.cleanup124_crit_edge

copy_to_user.exit.cleanup124_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

copy_to_user.exit.if.end123_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.end8.i.i200:                                   ; preds = %sw.bb63
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #13
  %call.i.i201 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i201, label %if.end8.i.i200.cleanup124_crit_edge, label %if.end.i.i204

if.end8.i.i200.cleanup124_crit_edge:              ; preds = %if.end8.i.i200
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

if.end.i.i204:                                    ; preds = %if.end8.i.i200
  %160 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 76, i32 -1226833920) #18, !srcloc !113
  %asmresult.i.i202 = extractvalue { i32, i32 } %160, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i202)
  %cmp.i6.i203 = icmp eq i32 %asmresult.i.i202, 0
  br i1 %cmp.i6.i203, label %copy_to_user.exit209, label %if.end.i.i204.cleanup124_crit_edge

if.end.i.i204.cleanup124_crit_edge:               ; preds = %if.end.i.i204
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

copy_to_user.exit209:                             ; preds = %if.end.i.i204
  %call.i.i.i205 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ax25_info, i32 noundef 76) #13
  %call.i12.i.i206 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ax25_info, i32 noundef 76) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i206)
  %tobool120.not = icmp eq i32 %call.i12.i.i206, 0
  br i1 %tobool120.not, label %copy_to_user.exit209.if.end123_crit_edge, label %copy_to_user.exit209.cleanup124_crit_edge

copy_to_user.exit209.cleanup124_crit_edge:        ; preds = %copy_to_user.exit209
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup124

copy_to_user.exit209.if.end123_crit_edge:         ; preds = %copy_to_user.exit209
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.end123:                                        ; preds = %copy_to_user.exit209.if.end123_crit_edge, %copy_to_user.exit.if.end123_crit_edge
  br label %cleanup124

cleanup124:                                       ; preds = %if.end123, %copy_to_user.exit209.cleanup124_crit_edge, %if.end.i.i204.cleanup124_crit_edge, %if.end8.i.i200.cleanup124_crit_edge, %copy_to_user.exit.cleanup124_crit_edge, %if.end.i.i194.cleanup124_crit_edge, %if.end8.i.i190.cleanup124_crit_edge
  %res.2 = phi i32 [ 0, %if.end123 ], [ -14, %copy_to_user.exit.cleanup124_crit_edge ], [ -22, %copy_to_user.exit209.cleanup124_crit_edge ], [ -14, %if.end8.i.i190.cleanup124_crit_edge ], [ -14, %if.end.i.i194.cleanup124_crit_edge ], [ -22, %if.end8.i.i200.cleanup124_crit_edge ], [ -22, %if.end.i.i204.cleanup124_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ax25_info) #13
  br label %sw.epilog

sw.bb126:                                         ; preds = %entry.sw.bb126_crit_edge, %entry.sw.bb126_crit_edge262
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %ax25_fwd) #13
  %161 = call ptr @memset(ptr %ax25_fwd, i32 255, i32 14)
  %call127 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call127, label %if.end8.i.i213, label %sw.bb126.cleanup135_crit_edge

sw.bb126.cleanup135_crit_edge:                    ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup135

if.end8.i.i213:                                   ; preds = %sw.bb126
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #13
  %call.i.i214 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i214, label %if.end8.i.i213.if.then11.i.i230_crit_edge, label %land.lhs.true.i.i217

if.end8.i.i213.if.then11.i.i230_crit_edge:        ; preds = %if.end8.i.i213
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i230

land.lhs.true.i.i217:                             ; preds = %if.end8.i.i213
  %162 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 14, i32 -1226833920) #18, !srcloc !111
  %asmresult.i.i215 = extractvalue { i32, i32 } %162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i215)
  %cmp.i6.i216 = icmp eq i32 %asmresult.i.i215, 0
  br i1 %cmp.i6.i216, label %if.end.i.i227, label %land.lhs.true.i.i217.if.then11.i.i230_crit_edge, !prof !98

land.lhs.true.i.i217.if.then11.i.i230_crit_edge:  ; preds = %land.lhs.true.i.i217
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i230

if.end.i.i227:                                    ; preds = %land.lhs.true.i.i217
  %call.i.i.i218 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ax25_fwd, i32 noundef 14) #13
  %163 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i.i219 = and i32 %163, -16384
  %164 = inttoptr i32 %and.i.i.i.i.i.i219 to ptr
  %cpu_domain.i.i.i.i.i220 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 4
  %165 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i220) #7, !srcloc !106
  %and.i.i.i.i221 = and i32 %165, -13
  %or.i.i.i.i222 = or i32 %and.i.i.i.i221, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i222) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %call1.i.i.i223 = call i32 @arm_copy_from_user(ptr noundef nonnull %ax25_fwd, ptr noundef %2, i32 noundef 14) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i223)
  %tobool4.not.i.i226 = icmp eq i32 %call1.i.i.i223, 0
  br i1 %tobool4.not.i.i226, label %if.end133, label %if.end.i.i227.if.then11.i.i230_crit_edge, !prof !98

if.end.i.i227.if.then11.i.i230_crit_edge:         ; preds = %if.end.i.i227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i230

if.then11.i.i230:                                 ; preds = %if.end.i.i227.if.then11.i.i230_crit_edge, %land.lhs.true.i.i217.if.then11.i.i230_crit_edge, %if.end8.i.i213.if.then11.i.i230_crit_edge
  %res.0.i.i225253 = phi i32 [ %call1.i.i.i223, %if.end.i.i227.if.then11.i.i230_crit_edge ], [ 14, %if.end8.i.i213.if.then11.i.i230_crit_edge ], [ 14, %land.lhs.true.i.i217.if.then11.i.i230_crit_edge ]
  %sub.i.i228 = sub i32 14, %res.0.i.i225253
  %add.ptr.i.i229 = getelementptr i8, ptr %ax25_fwd, i32 %sub.i.i228
  %166 = call ptr @memset(ptr %add.ptr.i.i229, i32 0, i32 %res.0.i.i225253)
  br label %cleanup135

if.end133:                                        ; preds = %if.end.i.i227
  call void @__sanitizer_cov_trace_pc() #15
  %call134 = call i32 @ax25_fwd_ioctl(i32 noundef %cmd, ptr noundef nonnull %ax25_fwd) #13
  br label %cleanup135

cleanup135:                                       ; preds = %if.end133, %if.then11.i.i230, %sw.bb126.cleanup135_crit_edge
  %res.3 = phi i32 [ %call134, %if.end133 ], [ -1, %sw.bb126.cleanup135_crit_edge ], [ -14, %if.then11.i.i230 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %ax25_fwd) #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup135, %cleanup124, %ax25_ctl_ioctl.exit, %sw.bb58.sw.epilog_crit_edge, %if.end56, %sw.bb53.sw.epilog_crit_edge, %if.end51, %if.end47.sw.epilog_crit_edge, %if.end34.sw.epilog_crit_edge, %sw.bb30.sw.epilog_crit_edge, %cleanup, %if.end9, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge263, %entry.sw.epilog_crit_edge264, %entry.sw.epilog_crit_edge265, %entry.sw.epilog_crit_edge266, %entry.sw.epilog_crit_edge267, %entry.sw.epilog_crit_edge268, %entry.sw.epilog_crit_edge269, %entry.sw.epilog_crit_edge270, %entry.sw.epilog_crit_edge271
  %res.4 = phi i32 [ -515, %sw.default ], [ %res.3, %cleanup135 ], [ %res.2, %cleanup124 ], [ %retval.0.i, %ax25_ctl_ioctl.exit ], [ %call57, %if.end56 ], [ %res.0, %cleanup ], [ %20, %if.end9 ], [ %12, %sw.bb ], [ 0, %if.end51 ], [ -1, %sw.bb30.sw.epilog_crit_edge ], [ -14, %if.end34.sw.epilog_crit_edge ], [ -22, %if.end47.sw.epilog_crit_edge ], [ -1, %sw.bb53.sw.epilog_crit_edge ], [ -1, %sw.bb58.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge263 ], [ -22, %entry.sw.epilog_crit_edge264 ], [ -22, %entry.sw.epilog_crit_edge265 ], [ -22, %entry.sw.epilog_crit_edge266 ], [ -22, %entry.sw.epilog_crit_edge267 ], [ -22, %entry.sw.epilog_crit_edge268 ], [ -22, %entry.sw.epilog_crit_edge269 ], [ -22, %entry.sw.epilog_crit_edge270 ], [ -22, %entry.sw.epilog_crit_edge271 ]
  call void @release_sock(ptr noundef %1) #13
  ret i32 %res.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp = icmp eq i16 %3, 5
  br i1 %cmp, label %land.lhs.true, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp4.not = icmp eq i8 %5, 10
  br i1 %cmp4.not, label %land.lhs.true.out_crit_edge, label %if.then

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %6 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 10, ptr %skc_state, align 2
  br label %out

out:                                              ; preds = %if.then, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %res.0 = phi i32 [ 0, %if.then ], [ -95, %land.lhs.true.out_crit_edge ], [ -95, %entry.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax25_shutdown(ptr nocapture noundef readnone %sk, i32 noundef %how) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %devname = alloca [16 x i8], align 1
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %devname) #13
  %2 = call ptr @memset(ptr %devname, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #13
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %opt, align 4, !annotation !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %level)
  %cmp.not = icmp eq i32 %level, 257
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp2 = icmp ult i32 %optlen, 4
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %4 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end4
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 4, i32 -1226833920) #18, !srcloc !111
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !98

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #13
  %6 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !106
  %and.i.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %4, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end6_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !98

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end6_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i181 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i181
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i181)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %4, align 1
  %12 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %opt, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end6_crit_edge
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb.i, align 8
  %15 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %optname, label %if.end6.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb26
    i32 5, label %sw.bb35
    i32 3, label %sw.bb44
    i32 4, label %sw.bb53
    i32 9, label %sw.bb62
    i32 6, label %sw.bb69
    i32 7, label %sw.bb75
    i32 8, label %sw.bb79
    i32 12, label %sw.bb83
    i32 10, label %sw.bb87
    i32 25, label %sw.bb96
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 7
  %16 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %modulus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp8 = icmp eq i8 %17, 8
  %18 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opt, align 4
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb
  %20 = add i32 %19, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %20)
  %21 = icmp ult i32 %20, -7
  br i1 %21, label %if.then10.sw.epilog_crit_edge, label %if.then10.if.end24_crit_edge

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then10.sw.epilog_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %22 = add i32 %19, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %22)
  %23 = icmp ult i32 %22, -63
  br i1 %23, label %if.else.sw.epilog_crit_edge, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.then10.if.end24_crit_edge
  %24 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opt, align 4
  %conv25 = trunc i32 %25 to i8
  %window = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 32
  %26 = ptrtoint ptr %window to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv25, ptr %window, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end6
  %27 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %opt, align 4
  %29 = add i32 %28, -42949673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42949672, i32 %29)
  %30 = icmp ult i32 %29, -42949672
  br i1 %30, label %sw.bb26.sw.epilog_crit_edge, label %if.end33

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end33:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul nuw i32 %28, 100
  %shr = lshr exact i32 %mul, 1
  %rtt = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 24
  %31 = ptrtoint ptr %rtt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr, ptr %rtt, align 4
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 20
  %32 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %t1, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end6
  %33 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %opt, align 4
  %35 = add i32 %34, -42949673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42949672, i32 %35)
  %36 = icmp ult i32 %35, -42949672
  br i1 %36, label %sw.bb35.sw.epilog_crit_edge, label %if.end42

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end42:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  %mul43 = mul nuw i32 %34, 100
  %t2 = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 21
  %37 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul43, ptr %t2, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end6
  %38 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %opt, align 4
  %40 = add i32 %39, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %40)
  %41 = icmp ult i32 %40, -31
  br i1 %41, label %sw.bb44.sw.epilog_crit_edge, label %if.end51

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end51:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #15
  %conv52 = trunc i32 %39 to i8
  %n2 = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 14
  %42 = ptrtoint ptr %n2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv52, ptr %n2, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end6
  %43 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %opt, align 4
  %45 = add i32 %44, -42949673
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42949672, i32 %45)
  %46 = icmp ult i32 %45, -42949672
  br i1 %46, label %sw.bb53.sw.epilog_crit_edge, label %if.end60

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end60:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #15
  %mul61 = mul nuw i32 %44, 100
  %t3 = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 22
  %47 = ptrtoint ptr %t3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul61, ptr %t3, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end6
  %48 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 715827, i32 %49)
  %cmp63 = icmp ugt i32 %49, 715827
  br i1 %cmp63, label %sw.bb62.sw.epilog_crit_edge, label %if.end66

sw.bb62.sw.epilog_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end66:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #15
  %mul68 = mul nuw i32 %49, 6000
  %idle = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 23
  %50 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul68, ptr %idle, align 4
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end6
  %51 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp70 = icmp ugt i32 %52, 2
  br i1 %cmp70, label %sw.bb69.sw.epilog_crit_edge, label %if.end73

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end73:                                         ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #15
  %conv74 = trunc i32 %52 to i8
  %backoff = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 13
  %53 = ptrtoint ptr %backoff to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv74, ptr %backoff, align 1
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool76.not = icmp eq i32 %55, 0
  %conv77 = select i1 %tobool76.not, i8 8, i8 -128
  %modulus78 = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 7
  %56 = ptrtoint ptr %modulus78 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv77, ptr %modulus78, align 2
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool80.not = icmp ne i32 %58, 0
  %conv82 = zext i1 %tobool80.not to i8
  %pidincl = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 8
  %59 = ptrtoint ptr %pidincl to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv82, ptr %pidincl, align 1
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool84.not = icmp ne i32 %61, 0
  %conv86 = zext i1 %tobool84.not to i8
  %iamdigi = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 5
  %62 = ptrtoint ptr %iamdigi to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv86, ptr %iamdigi, align 4
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end6
  %63 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %opt, align 4
  %65 = add i32 %64, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65520, i32 %65)
  %66 = icmp ult i32 %65, -65520
  br i1 %66, label %sw.bb87.sw.epilog_crit_edge, label %if.end94

sw.bb87.sw.epilog_crit_edge:                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end94:                                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #15
  %conv95 = trunc i32 %64 to i16
  %paclen = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 25
  %67 = ptrtoint ptr %paclen to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv95, ptr %paclen, align 4
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end6
  %68 = call i32 @llvm.umin.i32(i32 %optlen, i32 15)
  %69 = call ptr @memset(ptr %devname, i32 0, i32 16)
  %call102 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %devname, [2 x i32] %optval.coerce, i32 noundef %68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %sw.bb96.sw.epilog_crit_edge

sw.bb96.sw.epilog_crit_edge:                      ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end105:                                        ; preds = %sw.bb96
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %70 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %71)
  %cmp107 = icmp eq i16 %71, 5
  br i1 %cmp107, label %land.lhs.true, label %if.end105.if.end116_crit_edge

if.end105.if.end116_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

land.lhs.true:                                    ; preds = %if.end105
  %72 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp109.not = icmp eq i32 %73, 1
  br i1 %cmp109.not, label %lor.lhs.false111, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false111:                                 ; preds = %land.lhs.true
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %74 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %75)
  %cmp113 = icmp eq i8 %75, 10
  br i1 %cmp113, label %lor.lhs.false111.sw.epilog_crit_edge, label %lor.lhs.false111.if.end116_crit_edge

lor.lhs.false111.if.end116_crit_edge:             ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

lor.lhs.false111.sw.epilog_crit_edge:             ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end116:                                        ; preds = %lor.lhs.false111.if.end116_crit_edge, %if.end105.if.end116_crit_edge
  call void @rtnl_lock() #13
  %call118 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %devname) #13
  %tobool119.not = icmp eq ptr %call118, null
  br i1 %tobool119.not, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  call void @rtnl_unlock() #13
  br label %sw.epilog

if.end121:                                        ; preds = %if.end116
  %ax25_ptr.i = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 81
  %76 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ax25_ptr.i, align 4
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 4
  %78 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %ax25_dev, align 4
  %tobool124.not = icmp eq ptr %77, null
  br i1 %tobool124.not, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  call void @rtnl_unlock() #13
  br label %sw.epilog

if.end126:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  call void @ax25_fillin_cb(ptr noundef %14, ptr noundef nonnull %77)
  call void @rtnl_unlock() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end126, %if.then125, %if.then120, %lor.lhs.false111.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb96.sw.epilog_crit_edge, %if.end94, %sw.bb87.sw.epilog_crit_edge, %sw.bb83, %sw.bb79, %sw.bb75, %if.end73, %sw.bb69.sw.epilog_crit_edge, %if.end66, %sw.bb62.sw.epilog_crit_edge, %if.end60, %sw.bb53.sw.epilog_crit_edge, %if.end51, %sw.bb44.sw.epilog_crit_edge, %if.end42, %sw.bb35.sw.epilog_crit_edge, %if.end33, %sw.bb26.sw.epilog_crit_edge, %if.end24, %if.else.sw.epilog_crit_edge, %if.then10.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  %res.0 = phi i32 [ 0, %if.end126 ], [ -19, %if.then125 ], [ -19, %if.then120 ], [ 0, %if.end94 ], [ 0, %sw.bb83 ], [ 0, %sw.bb79 ], [ 0, %sw.bb75 ], [ 0, %if.end73 ], [ 0, %if.end66 ], [ 0, %if.end60 ], [ 0, %if.end51 ], [ 0, %if.end42 ], [ 0, %if.end33 ], [ 0, %if.end24 ], [ -22, %if.then10.sw.epilog_crit_edge ], [ -22, %if.else.sw.epilog_crit_edge ], [ -22, %sw.bb26.sw.epilog_crit_edge ], [ -22, %sw.bb35.sw.epilog_crit_edge ], [ -22, %sw.bb44.sw.epilog_crit_edge ], [ -22, %sw.bb53.sw.epilog_crit_edge ], [ -22, %sw.bb62.sw.epilog_crit_edge ], [ -22, %sw.bb69.sw.epilog_crit_edge ], [ -22, %sw.bb87.sw.epilog_crit_edge ], [ -14, %sw.bb96.sw.epilog_crit_edge ], [ -99, %lor.lhs.false111.sw.epilog_crit_edge ], [ -99, %land.lhs.true.sw.epilog_crit_edge ], [ -92, %if.end6.sw.epilog_crit_edge ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11.i.i.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %sw.epilog ], [ -92, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %devname) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %devname = alloca [16 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %devname) #13
  %2 = call ptr @memset(ptr %devname, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %level)
  %cmp.not = icmp eq i32 %level, 257
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 714) #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !106
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #13, !srcloc !115
  %asmresult = extractvalue { i32, i32 } %7, 0
  %asmresult2 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp ne i32 %asmresult, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult2)
  %cmp6 = icmp slt i32 %asmresult2, 1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = tail call i32 @llvm.umin.i32(i32 %asmresult2, i32 4)
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cb.i, align 8
  %11 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %optname, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 5, label %sw.bb13
    i32 3, label %sw.bb15
    i32 4, label %sw.bb17
    i32 9, label %sw.bb19
    i32 6, label %sw.bb21
    i32 7, label %sw.bb23
    i32 8, label %sw.bb27
    i32 12, label %sw.bb29
    i32 10, label %sw.bb31
    i32 25, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %window = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 32
  %12 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %window, align 4
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 20
  %15 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t1, align 4
  %div = udiv i32 %16, 100
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %val, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %t2 = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 21
  %18 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t2, align 4
  %div14 = udiv i32 %19, 100
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div14, ptr %val, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %n2 = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 14
  %21 = ptrtoint ptr %n2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %n2, align 4
  %conv16 = zext i8 %22 to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv16, ptr %val, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %t3 = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 22
  %24 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t3, align 4
  %div18 = udiv i32 %25, 100
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div18, ptr %val, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %idle = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 23
  %27 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idle, align 4
  %div20 = udiv i32 %28, 6000
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div20, ptr %val, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %backoff = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 13
  %30 = ptrtoint ptr %backoff to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %backoff, align 1
  %conv22 = zext i8 %31 to i32
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv22, ptr %val, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 7
  %33 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %modulus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %34)
  %cmp25 = icmp eq i8 %34, -128
  %conv26 = zext i1 %cmp25 to i32
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv26, ptr %val, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %pidincl = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 8
  %36 = ptrtoint ptr %pidincl to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pidincl, align 1
  %conv28 = zext i8 %37 to i32
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv28, ptr %val, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %iamdigi = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 5
  %39 = ptrtoint ptr %iamdigi to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %iamdigi, align 4
  %conv30 = zext i8 %40 to i32
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv30, ptr %val, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %paclen = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 25
  %42 = ptrtoint ptr %paclen to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %paclen, align 4
  %conv32 = zext i16 %43 to i32
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv32, ptr %val, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end8
  %ax25_dev34 = getelementptr inbounds %struct.ax25_cb, ptr %10, i32 0, i32 4
  %45 = ptrtoint ptr %ax25_dev34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ax25_dev34, align 4
  %cmp35.not = icmp eq ptr %46, null
  br i1 %cmp35.not, label %sw.bb33.if.else_crit_edge, label %land.lhs.true

sw.bb33.if.else_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb33
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %cmp37.not = icmp eq ptr %48, null
  br i1 %cmp37.not, label %land.lhs.true.if.else_crit_edge, label %if.then39

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = call i32 @strlcpy(ptr noundef nonnull %devname, ptr noundef nonnull %48, i32 noundef 16) #13
  %call44 = call i32 @strlen(ptr noundef nonnull %devname) #19
  %add = add i32 %call44, 1
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb33.if.else_crit_edge
  %49 = ptrtoint ptr %devname to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %devname, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.else, %if.then39, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb12, %sw.bb
  %length.1 = phi i32 [ %8, %sw.bb31 ], [ %8, %sw.bb29 ], [ %8, %sw.bb27 ], [ %8, %sw.bb23 ], [ %8, %sw.bb21 ], [ %8, %sw.bb19 ], [ %8, %sw.bb17 ], [ %8, %sw.bb15 ], [ %8, %sw.bb13 ], [ %8, %sw.bb12 ], [ %8, %sw.bb ], [ %add, %if.then39 ], [ 1, %if.else ]
  %valptr.0 = phi ptr [ %val, %sw.bb31 ], [ %val, %sw.bb29 ], [ %val, %sw.bb27 ], [ %val, %sw.bb23 ], [ %val, %sw.bb21 ], [ %val, %sw.bb19 ], [ %val, %sw.bb17 ], [ %val, %sw.bb15 ], [ %val, %sw.bb13 ], [ %val, %sw.bb12 ], [ %val, %sw.bb ], [ %devname, %if.then39 ], [ %devname, %if.else ]
  call void @release_sock(ptr noundef %1) #13
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 791) #13
  %50 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i92 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i92 to ptr
  %cpu_domain.i.i93 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i93) #7, !srcloc !106
  %and.i94 = and i32 %52, -13
  %or.i95 = or i32 %and.i94, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i95) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %53 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %length.1, i32 -1226833921) #13, !srcloc !116
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #13, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool57.not = icmp eq i32 %53, 0
  br i1 %tobool57.not, label %if.end8.i.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1)
  %cmp9.i.i = icmp slt i32 %length.1, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !98

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef nonnull %valptr.0, i32 noundef %length.1, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %54 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %length.1, i32 -1226833920) #18, !srcloc !113
  %asmresult.i.i = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %valptr.0, i32 noundef %length.1) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %valptr.0, i32 noundef %length.1) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %length.1, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %length.1, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool61.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool61.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %sw.default ], [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %devname) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %sax = alloca %struct.sockaddr_ax25, align 4
  %dtmp = alloca %struct.ax25_digi, align 1
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sax) #13
  %4 = call ptr @memset(ptr %sax, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %dtmp) #13
  %5 = call ptr @memset(ptr %dtmp, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %err, align 4, !annotation !114
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_namelen, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_flags, align 4
  %and = and i32 %10, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup135_crit_edge

entry.cleanup135_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup135

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #13
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb.i, align 8
  %13 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -99, ptr %err, align 4
  br label %out

if.end4:                                          ; preds = %if.end
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 66
  %18 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sk_shutdown, align 2
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not = icmp eq i8 %20, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %21 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %call9 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %24, i32 noundef 0) #13
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -32, ptr %err, align 4
  br label %out

if.end10:                                         ; preds = %if.end4
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %12, i32 0, i32 4
  %26 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ax25_dev, align 4
  %cmp = icmp eq ptr %27, null
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -101, ptr %err, align 4
  br label %out

if.end13:                                         ; preds = %if.end10
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %len)
  %cmp15 = icmp ult i32 %32, %len
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -90, ptr %err, align 4
  br label %out

if.end18:                                         ; preds = %if.end13
  %cmp19.not = icmp eq ptr %1, null
  br i1 %cmp19.not, label %if.else82, label %if.then21

if.then21:                                        ; preds = %if.end18
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %35)
  %cmp23.not = icmp eq i16 %35, 3
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -22, ptr %err, align 4
  br label %out

if.end26:                                         ; preds = %if.then21
  %37 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %8, label %if.then32 [
    i32 16, label %if.end26.if.end40_crit_edge
    i32 72, label %if.end26.if.end40_crit_edge223
  ]

if.end26.if.end40_crit_edge223:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then32:                                        ; preds = %if.end26
  %38 = add i32 %8, -73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %38)
  %39 = icmp ult i32 %38, -15
  br i1 %39, label %if.then37, label %if.then32.land.lhs.true_crit_edge

if.then32.land.lhs.true_crit_edge:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -22, ptr %err, align 4
  br label %out

if.end40:                                         ; preds = %if.end26.if.end40_crit_edge, %if.end26.if.end40_crit_edge223
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp41 = icmp ugt i32 %8, 16
  br i1 %cmp41, label %if.end40.land.lhs.true_crit_edge, label %if.end40.if.end67_crit_edge

if.end40.if.end67_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end40.land.lhs.true_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end40.land.lhs.true_crit_edge, %if.then32.land.lhs.true_crit_edge
  %sax25_ndigis = getelementptr inbounds %struct.sockaddr_ax25, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sax25_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp43.not = icmp eq i32 %42, 0
  br i1 %cmp43.not, label %land.lhs.true.if.end67_crit_edge, label %if.then45

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then45:                                        ; preds = %land.lhs.true
  %43 = add i32 %42, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %43)
  %44 = icmp ult i32 %43, -8
  br i1 %44, label %if.then45.cleanup_crit_edge, label %lor.lhs.false53

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false53:                                  ; preds = %if.then45
  %mul = mul nuw nsw i32 %42, 7
  %add = add nuw nsw i32 %mul, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp55 = icmp ult i32 %8, %add
  br i1 %cmp55, label %lor.lhs.false53.cleanup_crit_edge, label %if.end58

lor.lhs.false53.cleanup_crit_edge:                ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false53
  %conv60 = trunc i32 %42 to i8
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %dtmp, i32 0, i32 2
  %45 = ptrtoint ptr %ndigi to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv60, ptr %ndigi, align 1
  %46 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sax25_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp62221 = icmp sgt i32 %47, 0
  br i1 %cmp62221, label %if.end58.while.body_crit_edge, label %if.end58.cleanup.thread_crit_edge

if.end58.cleanup.thread_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end58.while.body_crit_edge
  %ct.0222 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end58.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.ax25_digi, ptr %dtmp, i32 0, i32 1, i32 %ct.0222
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx64 = getelementptr [8 x %struct.ax25_address], ptr %dtmp, i32 0, i32 %ct.0222
  %arrayidx65 = getelementptr %struct.full_sockaddr_ax25, ptr %1, i32 0, i32 1, i32 %ct.0222
  %49 = call ptr @memcpy(ptr %arrayidx64, ptr %arrayidx65, i32 7)
  %inc = add nuw nsw i32 %ct.0222, 1
  %50 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sax25_ndigis, align 4
  %cmp62 = icmp slt i32 %inc, %51
  br i1 %cmp62, label %while.body.while.body_crit_edge, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.thread:                                   ; preds = %while.body.cleanup.thread_crit_edge, %if.end58.cleanup.thread_crit_edge
  %lastrepeat = getelementptr inbounds %struct.ax25_digi, ptr %dtmp, i32 0, i32 3
  %52 = ptrtoint ptr %lastrepeat to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %lastrepeat, align 1
  br label %if.end67

cleanup:                                          ; preds = %lor.lhs.false53.cleanup_crit_edge, %if.then45.cleanup_crit_edge
  %53 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -22, ptr %err, align 4
  br label %out

if.end67:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end67_crit_edge, %if.end40.if.end67_crit_edge
  %54 = call ptr @memcpy(ptr %sax, ptr %1, i32 16)
  %sk_type = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %55 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %56)
  %cmp69 = icmp eq i16 %56, 5
  br i1 %cmp69, label %land.lhs.true71, label %if.end67.if.end75_crit_edge

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

land.lhs.true71:                                  ; preds = %if.end67
  %dest_addr = getelementptr inbounds %struct.ax25_cb, ptr %12, i32 0, i32 2
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 1
  %call72 = call i32 @ax25cmp(ptr noundef %dest_addr, ptr noundef %sax25_call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.if.end75_crit_edge, label %if.then74

land.lhs.true71.if.end75_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -106, ptr %err, align 4
  br label %out

if.end75:                                         ; preds = %land.lhs.true71.if.end75_crit_edge, %if.end67.if.end75_crit_edge
  %sax25_ndigis76 = getelementptr inbounds %struct.sockaddr_ax25, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %sax25_ndigis76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sax25_ndigis76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp77 = icmp eq i32 %59, 0
  %.dtmp = select i1 %cmp77, ptr null, ptr %dtmp
  br label %if.end91

if.else82:                                        ; preds = %if.end18
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %60 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp84.not = icmp eq i8 %61, 1
  br i1 %cmp84.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -107, ptr %err, align 4
  br label %out

if.end87:                                         ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %sax to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 3, ptr %sax, align 4
  %sax25_call89 = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 1
  %dest_addr90 = getelementptr inbounds %struct.ax25_cb, ptr %12, i32 0, i32 2
  %64 = call ptr @memcpy(ptr %sax25_call89, ptr %dest_addr90, i32 7)
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %12, i32 0, i32 3
  %65 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %digipeat, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end87, %if.end75
  %dp.0 = phi ptr [ %66, %if.end87 ], [ %.dtmp, %if.end75 ]
  %67 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ax25_dev, align 4
  %dev93 = getelementptr inbounds %struct.ax25_dev, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev93, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 19
  %71 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %hard_header_len, align 2
  %conv94 = zext i16 %72 to i32
  %add95 = add i32 %conv94, %len
  %73 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_flags, align 4
  %and97 = and i32 %74, 64
  %call98 = call ptr @sock_alloc_send_skb(ptr noundef %3, i32 noundef %add95, i32 noundef %and97, ptr noundef nonnull %err) #13
  %cmp99 = icmp eq ptr %call98, null
  br i1 %cmp99, label %if.end91.out_crit_edge, label %if.end102

if.end91.out_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end102:                                        ; preds = %if.end91
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 19
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 %conv94
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 16
  %77 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %78, i32 %conv94
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call103 = call ptr @skb_put(ptr noundef nonnull %call98, i32 noundef %len) #13
  %call104 = call fastcc i32 @memcpy_from_msg(ptr noundef %call103, ptr noundef %msg, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.then106

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -14, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call98, i32 noundef 0) #13
  br label %out

if.end107:                                        ; preds = %if.end102
  %80 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 18
  %82 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 15, i32 0, i32 20
  %84 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i, ptr %network_header.i, align 4
  %pidincl = getelementptr inbounds %struct.ax25_cb, ptr %12, i32 0, i32 8
  %85 = ptrtoint ptr %pidincl to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pidincl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool108.not = icmp eq i8 %86, 0
  br i1 %tobool108.not, label %if.then109, label %if.end107.if.end112_crit_edge

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 46
  %87 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sk_protocol, align 4
  %conv110 = trunc i16 %88 to i8
  %call111 = call ptr @skb_push(ptr noundef nonnull %call98, i32 noundef 1) #13
  %89 = ptrtoint ptr %call111 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv110, ptr %call111, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end107.if.end112_crit_edge
  %sk_type113 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %90 = ptrtoint ptr %sk_type113 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %sk_type113, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %91)
  %cmp115 = icmp eq i16 %91, 5
  br i1 %cmp115, label %if.then117, label %if.end126

if.then117:                                       ; preds = %if.end112
  %skc_state119 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %92 = ptrtoint ptr %skc_state119 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load volatile i8, ptr %skc_state119, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp121.not = icmp eq i8 %93, 1
  br i1 %cmp121.not, label %if.end124, label %if.then123

if.then123:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call98, i32 noundef 0) #13
  %94 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -107, ptr %err, align 4
  br label %out

if.end124:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  %paclen = getelementptr inbounds %struct.ax25_cb, ptr %12, i32 0, i32 25
  %95 = ptrtoint ptr %paclen to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %paclen, align 4
  %conv125 = zext i16 %96 to i32
  call void @ax25_output(ptr noundef %12, i32 noundef %conv125, ptr noundef nonnull %call98) #13
  %97 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %len, ptr %err, align 4
  br label %out

if.end126:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %call127 = call i32 @ax25_addr_size(ptr noundef %dp.0) #13
  %add128 = add i32 %call127, 1
  %call129 = call ptr @skb_push(ptr noundef nonnull %call98, i32 noundef %add128) #13
  %98 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data.i, align 4
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %12, i32 0, i32 1
  %sax25_call130 = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 1
  %call131 = call i32 @ax25_addr_build(ptr noundef %99, ptr noundef %source_addr, ptr noundef %sax25_call130, ptr noundef %dp.0, i32 noundef 1, i32 noundef 8) #13
  %100 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i, align 4
  %102 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call98, i32 0, i32 15, i32 0, i32 19
  %104 = trunc i32 %call131 to i16
  %conv1.i = add i16 %conv.i.i, %104
  %105 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %conv.i216 = zext i16 %conv1.i to i32
  %add.ptr.i217 = getelementptr i8, ptr %103, i32 %conv.i216
  %106 = ptrtoint ptr %add.ptr.i217 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %add.ptr.i217, align 1
  %107 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ax25_dev, align 4
  %dev134 = getelementptr inbounds %struct.ax25_dev, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev134, align 4
  call void @ax25_queue_xmit(ptr noundef nonnull %call98, ptr noundef %110) #13
  %111 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %len, ptr %err, align 4
  br label %out

out:                                              ; preds = %if.end126, %if.end124, %if.then123, %if.then106, %if.end91.out_crit_edge, %if.then86, %if.then74, %cleanup, %if.then37, %if.then25, %if.then17, %if.then12, %if.then7, %if.then3
  call void @release_sock(ptr noundef %3) #13
  %112 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %err, align 4
  br label %cleanup135

cleanup135:                                       ; preds = %out, %entry.cleanup135_crit_edge
  %retval.0 = phi i32 [ %113, %out ], [ -22, %entry.cleanup135_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %dtmp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sax) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %err = alloca i32, align 4
  %digi = alloca %struct.ax25_digi, align 1
  %src = alloca %struct.ax25_address, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %3 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %4)
  %cmp = icmp eq i16 %4, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp4.not = icmp eq i8 %6, 1
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -107, ptr %err, align 4
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and = and i32 %flags, -65
  %and6 = and i32 %flags, 64
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and, i32 noundef %and6, ptr noundef nonnull %err) #13
  %cmp7 = icmp eq ptr %call, null
  br i1 %cmp7, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.end
  %cb.i = getelementptr inbounds %struct.ax25_sock, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb.i, align 8
  %pidincl = getelementptr inbounds %struct.ax25_cb, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %pidincl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pidincl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then12, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 1) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %size)
  %cmp15 = icmp ugt i32 %18, %size
  br i1 %cmp15, label %if.then17, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %19 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_flags, align 4
  %or = or i32 %20, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %copied.0 = phi i32 [ %size, %if.then17 ], [ %18, %if.end14.if.end18_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #13
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg, align 8
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %if.end18.if.end36_crit_edge, label %if.then21

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then21:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %digi) #13
  %23 = call ptr @memset(ptr %digi, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %src) #13
  %24 = call ptr @memset(ptr %src, i32 255, i32 7)
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mac_header.i, align 2
  %conv.i68 = zext i16 %28 to i32
  %add.ptr.i = getelementptr i8, ptr %26, i32 %conv.i68
  %29 = call ptr @memset(ptr %22, i32 0, i32 72)
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 1
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %32 = xor i32 %sub.ptr.rhs.cast, -1
  %sub = add i32 %32, %sub.ptr.lhs.cast
  %call24 = call ptr @ax25_addr_parse(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %src, ptr noundef null, ptr noundef nonnull %digi, ptr noundef null, ptr noundef null) #13
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 3, ptr %22, align 4
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 2
  %34 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ndigi, align 1
  %conv25 = zext i8 %35 to i32
  %sax25_ndigis = getelementptr inbounds %struct.sockaddr_ax25, ptr %22, i32 0, i32 2
  %36 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv25, ptr %sax25_ndigis, align 4
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %22, i32 0, i32 1
  %37 = call ptr @memcpy(ptr %sax25_call, ptr %src, i32 7)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp27.not = icmp eq i8 %35, 0
  br i1 %cmp27.not, label %if.then21.if.end35_crit_edge, label %for.cond.preheader

if.then21.if.end35_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.cond.preheader:                               ; preds = %if.then21
  %38 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ndigi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp3270.not = icmp eq i8 %39, 0
  br i1 %cmp3270.not, label %for.cond.preheader.if.end35_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end35_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ct.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.full_sockaddr_ax25, ptr %22, i32 0, i32 1, i32 %ct.071
  %arrayidx34 = getelementptr [8 x %struct.ax25_address], ptr %digi, i32 0, i32 %ct.071
  %40 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx34, i32 7)
  %inc = add nuw nsw i32 %ct.071, 1
  %41 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ndigi, align 1
  %conv31 = zext i8 %42 to i32
  %cmp32 = icmp ult i32 %inc, %conv31
  br i1 %cmp32, label %for.body.for.body_crit_edge, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end35:                                         ; preds = %for.body.if.end35_crit_edge, %for.cond.preheader.if.end35_crit_edge, %if.then21.if.end35_crit_edge
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %43 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 72, ptr %msg_namelen, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %src) #13
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %digi) #13
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end18.if.end36_crit_edge
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #13
  %44 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %copied.0, ptr %err, align 4
  br label %out

out:                                              ; preds = %if.end36, %if.end.out_crit_edge, %if.then
  call void @release_sock(ptr noundef %1) #13
  %45 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_calculate_t1(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_findbyuid([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_addr_ax25dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_rt_autobind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_establish_data_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_establish_data_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sock_error(ptr noundef %sk) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !98

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #13, !srcloc !118
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !119
  %sub = sub i32 0, %asmresult.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_uid_ioctl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_rt_ioctl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_display_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_fwd_ioctl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dama_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then27.i.i.i, !prof !98

land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_sockptr_offset.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %copy_from_sockptr_offset.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #18, !srcloc !111
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !98

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !106
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !108
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !98

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ], [ %size, %if.then27.i.i.i ], [ %size, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memcpy_from_msg(ptr noundef %data, ptr noundef %msg, i32 noundef %len) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %entry
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !98

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %len, i1 noundef zeroext false) #13
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %data, i32 noundef %len, ptr noundef %msg_iter) #13
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %len)
  %cmp.i = icmp eq i32 %retval.0.i.i, %len
  br i1 %cmp.i, label %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge, label %if.end.i, !prof !98

copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge: ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_iter_full.exit

if.end.i:                                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i) #13
  br label %copy_from_iter_full.exit

copy_from_iter_full.exit:                         ; preds = %if.end.i, %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge
  %cond = phi i32 [ 0, %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge ], [ -14, %if.end.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_output(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_addr_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_addr_build(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_queue_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_addr_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ax25_info_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_hlist_start(ptr noundef nonnull @ax25_list, i64 noundef %1) #13
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_info_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_list_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ax25_info_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_hlist_next(ptr noundef %v, ptr noundef nonnull @ax25_list, ptr noundef %pos) #13
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_info_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #13
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 4
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  %1 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ax25_dev, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.false ], [ @.str.16, %entry.cond.end_crit_edge ]
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 1
  %call = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %source_addr) #13
  %iamdigi = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 5
  %5 = ptrtoint ptr %iamdigi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iamdigi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %cond3 = select i1 %tobool.not, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, ptr noundef %v, ptr noundef %cond, ptr noundef %call, ptr noundef nonnull %cond3) #13
  %dest_addr = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 2
  %call5 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %dest_addr) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.19, ptr noundef %call5) #13
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 3
  %7 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %digipeat, align 4
  %cmp6.not88 = icmp eq ptr %8, null
  br i1 %cmp6.not88, label %cond.end.for.end_crit_edge, label %cond.end.land.rhs_crit_edge

cond.end.land.rhs_crit_edge:                      ; preds = %cond.end
  br label %land.rhs

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %cond.end.land.rhs_crit_edge
  %9 = phi ptr [ %17, %for.body.land.rhs_crit_edge ], [ %8, %cond.end.land.rhs_crit_edge ]
  %k.089 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %cond.end.land.rhs_crit_edge ]
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ndigi, align 1
  %conv9 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %k.089, i32 %conv9)
  %cmp10 = icmp ult i32 %k.089, %conv9
  br i1 %cmp10, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr [8 x %struct.ax25_address], ptr %9, i32 0, i32 %k.089
  %call14 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %arrayidx) #13
  %12 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %digipeat, align 4
  %arrayidx16 = getelementptr %struct.ax25_digi, ptr %13, i32 0, i32 1, i32 %k.089
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, ptr noundef %call14, ptr noundef nonnull %cond19) #13
  %inc = add nuw nsw i32 %k.089, 1
  %16 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %digipeat, align 4
  %cmp6.not = icmp eq ptr %17, null
  br i1 %cmp6.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %cond.end.for.end_crit_edge
  %state = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 6
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state, align 1
  %conv20 = zext i8 %19 to i32
  %vs = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 9
  %20 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vs, align 4
  %conv21 = zext i16 %21 to i32
  %vr = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 10
  %22 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vr, align 2
  %conv22 = zext i16 %23 to i32
  %va = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 11
  %24 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %va, align 4
  %conv23 = zext i16 %25 to i32
  %t1timer = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 16
  %call24 = call i32 @ax25_display_timer(ptr noundef %t1timer) #13
  %div = udiv i32 %call24, 100
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 20
  %26 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t1, align 4
  %div25 = udiv i32 %27, 100
  %t2timer = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 17
  %call26 = call i32 @ax25_display_timer(ptr noundef %t2timer) #13
  %div27 = udiv i32 %call26, 100
  %t2 = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 21
  %28 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t2, align 4
  %div28 = udiv i32 %29, 100
  %t3timer = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 18
  %call29 = call i32 @ax25_display_timer(ptr noundef %t3timer) #13
  %div30 = udiv i32 %call29, 100
  %t3 = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 22
  %30 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %t3, align 4
  %div31 = udiv i32 %31, 100
  %idletimer = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 19
  %call32 = call i32 @ax25_display_timer(ptr noundef %idletimer) #13
  %div33 = udiv i32 %call32, 6000
  %idle = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 23
  %32 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idle, align 4
  %div34 = udiv i32 %33, 6000
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 15
  %34 = ptrtoint ptr %n2count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %n2count, align 1
  %conv35 = zext i8 %35 to i32
  %n2 = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 14
  %36 = ptrtoint ptr %n2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %n2, align 4
  %conv36 = zext i8 %37 to i32
  %rtt = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 24
  %38 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rtt, align 4
  %div37 = udiv i32 %39, 100
  %window = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 32
  %40 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %window, align 4
  %conv38 = zext i8 %41 to i32
  %paclen = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 25
  %42 = ptrtoint ptr %paclen to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %paclen, align 4
  %conv39 = zext i16 %43 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %div, i32 noundef %div25, i32 noundef %div27, i32 noundef %div28, i32 noundef %div30, i32 noundef %div31, i32 noundef %div33, i32 noundef %div34, i32 noundef %conv35, i32 noundef %conv36, i32 noundef %div37, i32 noundef %conv38, i32 noundef %conv39) #13
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %v, i32 0, i32 35
  %44 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk, align 4
  %cmp40.not = icmp eq ptr %45, null
  br i1 %cmp40.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %45, i32 0, i32 23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #13
  %46 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %47, -1
  %48 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sk, align 4
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  %50 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %sk_backlog.i, align 4
  %52 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk, align 4
  %call47 = call i32 @sock_i_ino(ptr noundef %53) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.22, i32 noundef %sub.i, i32 noundef %51, i32 noundef %call47) #13
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.23) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax2asc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp.not = icmp eq i16 %5, 3
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %event, label %if.end5.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ax25_dev_device_up(ptr noundef %1) #13
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5
  %ax25_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 81
  %7 = ptrtoint ptr %ax25_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ax25_ptr.i.i, align 4
  %cmp.i12 = icmp eq ptr %8, null
  br i1 %cmp.i12, label %sw.bb6.ax25_kill_by_device.exit_crit_edge, label %if.end.i

sw.bb6.ax25_kill_by_device.exit_crit_edge:        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_kill_by_device.exit

if.end.i:                                         ; preds = %sw.bb6
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %dev12.i = getelementptr inbounds %struct.ax25_dev, ptr %8, i32 0, i32 1
  %dev_tracker.i = getelementptr inbounds %struct.ax25_dev, ptr %8, i32 0, i32 2
  %refcount.i.i = getelementptr inbounds %struct.ax25_dev, ptr %8, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end.i
  %s.0.in.i = phi ptr [ @ax25_list, %if.end.i ], [ %s.0.in.i.be, %for.cond.i.backedge ]
  %9 = ptrtoint ptr %s.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %s.0.i = load ptr, ptr %s.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %s.0.i, null
  br i1 %tobool2.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ax25_dev3.i = getelementptr inbounds %struct.ax25_cb, ptr %s.0.i, i32 0, i32 4
  %10 = ptrtoint ptr %ax25_dev3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ax25_dev3.i, align 4
  %cmp4.i = icmp eq ptr %11, %8
  br i1 %cmp4.i, label %if.then5.i, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.then.i54.i, %if.then10.i.i.i.i53.i, %if.end5.i.i.i.i52.i.for.cond.i.backedge_crit_edge, %if.then8.i, %for.body.i.for.cond.i.backedge_crit_edge
  %s.0.in.i.be = phi ptr [ %s.0.i, %for.body.i.for.cond.i.backedge_crit_edge ], [ @ax25_list, %if.then.i54.i ], [ @ax25_list, %if.then10.i.i.i.i53.i ], [ @ax25_list, %if.end5.i.i.i.i52.i.for.cond.i.backedge_crit_edge ], [ @ax25_list, %if.then8.i ]
  br label %for.cond.i

if.then5.i:                                       ; preds = %for.body.i
  %ax25_dev3.i.le = getelementptr inbounds %struct.ax25_cb, ptr %s.0.i, i32 0, i32 4
  %sk6.i = getelementptr inbounds %struct.ax25_cb, ptr %s.0.i, i32 0, i32 35
  %12 = ptrtoint ptr %sk6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk6.i, align 4
  %tobool7.not.i = icmp eq ptr %13, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %14 = ptrtoint ptr %ax25_dev3.i.le to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ax25_dev3.i.le, align 4
  tail call void @ax25_disconnect(ptr noundef nonnull %s.0.i, i32 noundef 101) #13
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_list_lock) #13
  br label %for.cond.i.backedge

if.end10.i:                                       ; preds = %if.then5.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !96
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end10.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !97

if.end10.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end10.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end10.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end10.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_list_lock) #13
  tail call void @lock_sock_nested(ptr noundef nonnull %13, i32 noundef 0) #13
  %17 = ptrtoint ptr %ax25_dev3.i.le to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ax25_dev3.i.le, align 4
  %18 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev12.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %sock_hold.exit.i.dev_put_track.exit.i_crit_edge, label %do.body1.i.i.i

sock_hold.exit.i.dev_put_track.exit.i_crit_edge:  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put_track.exit.i

do.body1.i.i.i:                                   ; preds = %sock_hold.exit.i
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #13
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !102
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i.i.i = add i32 %32, -1
  store i32 %add13.i.i.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !103
  %and.i.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !97

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #13, !srcloc !104
  br label %dev_put_track.exit.i

dev_put_track.exit.i:                             ; preds = %dev_put.exit.i.i, %sock_hold.exit.i.dev_put_track.exit.i_crit_edge
  %call.i.i.i.i.i.i45.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %dev_put_track.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i46.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i46.i, label %if.end5.i.i.i.i.i.ax25_dev_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.ax25_dev_put.exit.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ax25_dev_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #13
  br label %ax25_dev_put.exit.i

if.then.i.i:                                      ; preds = %dev_put_track.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  tail call void @kfree(ptr noundef nonnull %8) #13
  br label %ax25_dev_put.exit.i

ax25_dev_put.exit.i:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ax25_dev_put.exit.i_crit_edge
  tail call void @ax25_disconnect(ptr noundef nonnull %s.0.i, i32 noundef 101) #13
  tail call void @release_sock(ptr noundef nonnull %13) #13
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_list_lock) #13
  %call.i.i.i.i.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #13
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #13, !srcloc !100
  %asmresult.i.i.i.i.i.i.i49.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i49.i)
  %cmp.i.i.i.i50.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i49.i, 1
  br i1 %cmp.i.i.i.i50.i, label %if.then.i54.i, label %if.end5.i.i.i.i52.i

if.end5.i.i.i.i52.i:                              ; preds = %ax25_dev_put.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49.i)
  %.not.i.i.i.i51.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i49.i, 0
  br i1 %.not.i.i.i.i51.i, label %if.end5.i.i.i.i52.i.for.cond.i.backedge_crit_edge, label %if.then10.i.i.i.i53.i, !prof !98

if.end5.i.i.i.i52.i.for.cond.i.backedge_crit_edge: ; preds = %if.end5.i.i.i.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.backedge

if.then10.i.i.i.i53.i:                            ; preds = %if.end5.i.i.i.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #13
  br label %for.cond.i.backedge

if.then.i54.i:                                    ; preds = %ax25_dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  tail call void @sk_free(ptr noundef nonnull %13) #13
  br label %for.cond.i.backedge

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_list_lock) #13
  br label %ax25_kill_by_device.exit

ax25_kill_by_device.exit:                         ; preds = %for.end.i, %sw.bb6.ax25_kill_by_device.exit_crit_edge
  tail call void @ax25_rt_device_down(ptr noundef %1) #13
  tail call void @ax25_dev_device_down(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %ax25_kill_by_device.exit, %sw.bb, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dev_device_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_rt_device_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dev_device_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_kiss_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @ax25_list, !1, !"ax25_list", i1 false, i1 false}
!1 = !{!"../net/ax25/af_ax25.c", i32 50, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ax25/af_ax25.c", i32 51, i32 1}
!4 = !{ptr @ax25_list_lock, !3, !"ax25_list_lock", i1 false, i1 false}
!5 = !{ptr @__ksymtab_ax25_find_cb, !6, !"__ksymtab_ax25_find_cb", i1 false, i1 false}
!6 = !{!"../net/ax25/af_ax25.c", i32 251, i32 1}
!7 = !{ptr @ax25_destroy_socket.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/ax25/af_ax25.c", i32 340, i32 4}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_ax25__496_2015_ax25_init6, !11, !"__initcall__kmod_ax25__496_2015_ax25_init6", i1 false, i1 false}
!11 = !{!"../net/ax25/af_ax25.c", i32 2015, i32 1}
!12 = !{ptr @__UNIQUE_ID_author497, !13, !"__UNIQUE_ID_author497", i1 false, i1 false}
!13 = !{!"../net/ax25/af_ax25.c", i32 2018, i32 1}
!14 = !{ptr @__UNIQUE_ID_description498, !15, !"__UNIQUE_ID_description498", i1 false, i1 false}
!15 = !{!"../net/ax25/af_ax25.c", i32 2019, i32 1}
!16 = !{ptr @__UNIQUE_ID_file499, !17, !"__UNIQUE_ID_file499", i1 false, i1 false}
!17 = !{!"../net/ax25/af_ax25.c", i32 2020, i32 1}
!18 = !{ptr @__UNIQUE_ID_license500, !17, !"__UNIQUE_ID_license500", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_alias501, !20, !"__UNIQUE_ID_alias501", i1 false, i1 false}
!20 = !{!"../net/ax25/af_ax25.c", i32 2021, i32 1}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ax25/af_ax25.c", i32 2025, i32 20}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ax25/af_ax25.c", i32 2026, i32 20}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/ax25/af_ax25.c", i32 2027, i32 20}
!27 = !{ptr @__exitcall_ax25_exit, !28, !"__exitcall_ax25_exit", i1 false, i1 false}
!28 = !{!"../net/ax25/af_ax25.c", i32 2040, i32 1}
!29 = !{ptr @skb_queue_head_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ax25_family_ops, !33, !"ax25_family_ops", i1 false, i1 false}
!33 = !{!"../net/ax25/af_ax25.c", i32 1957, i32 38}
!34 = !{ptr @ax25_proto_ops, !35, !"ax25_proto_ops", i1 false, i1 false}
!35 = !{!"../net/ax25/af_ax25.c", i32 1963, i32 31}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/ax25/af_ax25.c", i32 1087, i32 24}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ax25/af_ax25.c", i32 1248, i32 3}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ax25_connect._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @ax25_connect._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/net/sock.h", i32 2024, i32 2}
!46 = distinct !{null, !47, !"warned", i1 false, i1 false}
!47 = !{!"../net/ax25/af_ax25.c", i32 1822, i32 15}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ax25/af_ax25.c", i32 1824, i32 5}
!50 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ax25_ioctl._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ax25_ioctl._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!60 = !{ptr @ax25_info_seqops, !61, !"ax25_info_seqops", i1 false, i1 false}
!61 = !{!"../net/ax25/af_ax25.c", i32 1949, i32 36}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ax25/af_ax25.c", i32 1912, i32 18}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ax25/af_ax25.c", i32 1914, i32 30}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/ax25/af_ax25.c", i32 1916, i32 21}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ax25/af_ax25.c", i32 1916, i32 25}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ax25/af_ax25.c", i32 1917, i32 18}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/ax25/af_ax25.c", i32 1920, i32 19}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ax25/af_ax25.c", i32 1925, i32 18}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ax25/af_ax25.c", i32 1939, i32 19}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ax25/af_ax25.c", i32 1944, i32 17}
!80 = !{ptr @ax25_dev_notifier, !81, !"ax25_dev_notifier", i1 false, i1 false}
!81 = !{!"../net/ax25/af_ax25.c", i32 1993, i32 30}
!82 = !{ptr @ax25_packet_type, !83, !"ax25_packet_type", i1 false, i1 false}
!83 = !{!"../net/ax25/af_ax25.c", i32 1988, i32 27}
!84 = !{ptr @ax25_proto, !85, !"ax25_proto", i1 false, i1 false}
!85 = !{!"../net/ax25/af_ax25.c", i32 820, i32 21}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2148423399, i64 2148423431, i64 2148423460, i64 2148423494, i64 2148423525, i64 2148423548}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148511424}
!100 = !{i64 2148425864, i64 2148425896, i64 2148425925, i64 2148425959, i64 2148425990, i64 2148426013}
!101 = !{i64 2149377467}
!102 = !{i64 825569, i64 825630}
!103 = !{i64 828301}
!104 = !{i64 828586}
!105 = !{i64 2156755525}
!106 = !{i64 4749424}
!107 = !{i64 4749621}
!108 = !{i64 2152234854}
!109 = !{i64 2157480495, i64 2157480775, i64 2157481109, i64 2157481443}
!110 = !{i64 2157489376, i64 2157489656, i64 2157489990, i64 2157490324}
!111 = !{i64 2152257930, i64 2152257955}
!112 = !{i64 2157501051, i64 2157501331, i64 2157501665, i64 2157501999}
!113 = !{i64 2152258611, i64 2152258636}
!114 = !{!"auto-init"}
!115 = !{i64 2157450949, i64 2157451229, i64 2157451563, i64 2157451897}
!116 = !{i64 2157462458, i64 2157462738, i64 2157463072, i64 2157463406}
!117 = !{i64 2156808247}
!118 = !{i64 928637, i64 928654, i64 928678, i64 928704, i64 928722}
!119 = !{i64 2156808590}
