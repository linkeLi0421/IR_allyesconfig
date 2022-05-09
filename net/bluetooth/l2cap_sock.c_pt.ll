; ModuleID = '/llk/IR_all_yes/net/bluetooth/l2cap_sock.c_pt.bc'
source_filename = "../net/bluetooth/l2cap_sock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+l2cap_is_socket\22, \22a\22\09"
module asm "\09.weak\09__crc_l2cap_is_socket\09\09\09\09"
module asm "\09.long\09__crc_l2cap_is_socket\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l2cap_is_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22l2cap_is_socket\22\09\09\09\09\09"
module asm "__kstrtabns_l2cap_is_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.127, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.127 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.l2cap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.l2cap_pinfo = type { %struct.bt_sock, ptr, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
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
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.sockaddr_l2 = type { i16, i16, %struct.bdaddr_t, i16, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.146, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.146 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.l2cap_conn = type { ptr, ptr, i32, i32, i8, i8, i8, i8, %struct.delayed_work, ptr, i32, i8, %struct.mutex, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.list_head, %struct.mutex, %struct.kref, %struct.list_head }
%struct.bt_security = type { i8, i8 }
%struct.bt_power = type { i8 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.l2cap_options = type { i16, i16, i16, i8, i8, i8, i16 }
%struct.l2cap_conninfo = type { i16, [3 x i8] }
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

@l2cap_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 31, ptr null, ptr @l2cap_sock_release, ptr @l2cap_sock_bind, ptr @l2cap_sock_connect, ptr @sock_no_socketpair, ptr @l2cap_sock_accept, ptr @l2cap_sock_getname, ptr @bt_sock_poll, ptr @bt_sock_ioctl, ptr @sock_gettstamp, ptr @l2cap_sock_listen, ptr @l2cap_sock_shutdown, ptr @l2cap_sock_setsockopt, ptr @l2cap_sock_getsockopt, ptr null, ptr @l2cap_sock_sendmsg, ptr @l2cap_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_l2cap_is_socket = external dso_local constant [0 x i8], align 1
@__kstrtabns_l2cap_is_socket = external dso_local constant [0 x i8], align 1
@__ksymtab_l2cap_is_socket = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l2cap_is_socket to i32), ptr @__kstrtab_l2cap_is_socket, ptr @__kstrtabns_l2cap_is_socket }, section "___ksymtab+l2cap_is_socket", align 4
@l2cap_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 992, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr null, [32 x i8] c"L2CAP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@l2cap_sock_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 31, ptr @l2cap_sock_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"L2CAP socket registration failed\0A\00", [62 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"l2cap\00", [26 x i8] zeroinitializer }, align 32
@l2cap_sk_list = internal global { %struct.bt_sock_list, [44 x i8] } { %struct.bt_sock_list { %struct.hlist_head zeroinitializer, %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 3, i8 0, i32 0, i32 0 } }, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create L2CAP proc file\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"L2CAP socket layer initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@l2cap_sock_release.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l2cap_sock_release\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/bluetooth/l2cap_sock.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sock %p, sk %p\0A\00", [16 x i8] zeroinitializer }, align 32
@l2cap_sock_kill.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l2cap_sock_kill\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sk %p state %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BT_CONNECTED\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BT_OPEN\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BT_BOUND\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_LISTEN\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_CONNECT\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT_CONNECT2\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CONFIG\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_DISCONN\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CLOSED\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid state\00", [18 x i8] zeroinitializer }, align 32
@l2cap_sock_bind.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.20, ptr @.str.6, ptr @.str.21, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l2cap_sock_bind\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sk %p\0A\00", [25 x i8] zeroinitializer }, align 32
@l2cap_sock_connect.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.6, ptr @.str.21, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l2cap_sock_connect\00", [45 x i8] zeroinitializer }, align 32
@l2cap_sock_accept.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.23, ptr @.str.6, ptr @.str.24, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l2cap_sock_accept\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sk %p timeo %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@l2cap_sock_accept.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.23, ptr @.str.6, ptr @.str.25, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"new socket %p\0A\00", [17 x i8] zeroinitializer }, align 32
@l2cap_sock_getname.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.26, ptr @.str.6, ptr @.str.7, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l2cap_sock_getname\00", [45 x i8] zeroinitializer }, align 32
@l2cap_sock_listen.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l2cap_sock_listen\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sk %p backlog %d\0A\00", [46 x i8] zeroinitializer }, align 32
@enable_ecred = external dso_local local_unnamed_addr global i8, align 1
@disable_ertm = external dso_local local_unnamed_addr global i8, align 1
@l2cap_sock_shutdown.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.29, ptr @.str.6, ptr @.str.30, i8 1, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l2cap_sock_shutdown\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sock %p, sk %p, how %d\0A\00", [40 x i8] zeroinitializer }, align 32
@l2cap_sock_shutdown.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.29, ptr @.str.6, ptr @.str.31, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Handling sock shutdown\0A\00", [40 x i8] zeroinitializer }, align 32
@l2cap_sock_shutdown.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.29, ptr @.str.6, ptr @.str.32, i8 1, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chan %p state %s\0A\00", [46 x i8] zeroinitializer }, align 32
@l2cap_sock_shutdown.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.29, ptr @.str.6, ptr @.str.33, i8 1, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Sock shutdown complete err: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__l2cap_wait_ack.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.34, ptr @.str.6, ptr @.str.35, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__l2cap_wait_ack\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Waiting for %d ACKs, timeout %04d ms\0A\00", [58 x i8] zeroinitializer }, align 32
@l2cap_sock_setsockopt.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.21, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"l2cap_sock_setsockopt\00", [42 x i8] zeroinitializer }, align 32
@l2cap_sock_setsockopt.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.39, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sk->sk_state %u\0A\00", [47 x i8] zeroinitializer }, align 32
@l2cap_sock_setsockopt.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.40, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mode %u\0A\00", [23 x i8] zeroinitializer }, align 32
@l2cap_sock_setsockopt.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.41, i8 1, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mode 0x%2.2x\0A\00", [18 x i8] zeroinitializer }, align 32
@l2cap_sock_setsockopt_old.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.42, ptr @.str.6, ptr @.str.21, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"l2cap_sock_setsockopt_old\00", [38 x i8] zeroinitializer }, align 32
@l2cap_sock_setsockopt_old.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.42, ptr @.str.6, ptr @.str.41, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@l2cap_sock_getsockopt.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.46, ptr @.str.6, ptr @.str.21, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"l2cap_sock_getsockopt\00", [42 x i8] zeroinitializer }, align 32
@l2cap_sock_getsockopt_old.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.47, ptr @.str.6, ptr @.str.21, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"l2cap_sock_getsockopt_old\00", [38 x i8] zeroinitializer }, align 32
@l2cap_sock_getsockopt_old.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.47, ptr @.str.6, ptr @.str.41, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@l2cap_sock_sendmsg.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.7, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l2cap_sock_sendmsg\00", [45 x i8] zeroinitializer }, align 32
@l2cap_sock_create.__UNIQUE_ID_ddebug580 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.49, ptr @.str.6, ptr @.str.50, i8 1, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l2cap_sock_create\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sock %p\0A\00", [23 x i8] zeroinitializer }, align 32
@l2cap_sock_destruct.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.51, ptr @.str.6, ptr @.str.21, i8 1, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l2cap_sock_destruct\00", [44 x i8] zeroinitializer }, align 32
@l2cap_sock_init.__UNIQUE_ID_ddebug579 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.52, ptr @.str.6, ptr @.str.21, i8 1, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l2cap_sock_init\00", [16 x i8] zeroinitializer }, align 32
@l2cap_chan_ops = internal constant { %struct.l2cap_ops, [36 x i8] } { %struct.l2cap_ops { ptr @.str.53, ptr @l2cap_sock_new_connection_cb, ptr @l2cap_sock_recv_cb, ptr @l2cap_sock_teardown_cb, ptr @l2cap_sock_close_cb, ptr @l2cap_sock_state_change_cb, ptr @l2cap_sock_ready_cb, ptr @l2cap_sock_defer_cb, ptr @l2cap_sock_resume_cb, ptr @l2cap_sock_suspend_cb, ptr @l2cap_sock_set_shutdown_cb, ptr @l2cap_sock_get_sndtimeo_cb, ptr @l2cap_sock_get_peer_pid_cb, ptr @l2cap_sock_alloc_skb_cb, ptr @l2cap_sock_filter }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"L2CAP Socket Interface\00", [41 x i8] zeroinitializer }, align 32
@l2cap_sock_new_connection_cb.__UNIQUE_ID_ddebug574 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.54, ptr @.str.6, ptr @.str.55, i8 1, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"l2cap_sock_new_connection_cb\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"backlog full %d\0A\00", [47 x i8] zeroinitializer }, align 32
@l2cap_sock_teardown_cb.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.32, i8 1, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l2cap_sock_teardown_cb\00", [41 x i8] zeroinitializer }, align 32
@l2cap_sock_cleanup_listen.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.57, ptr @.str.6, ptr @.str.58, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"l2cap_sock_cleanup_listen\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parent %p state %s\0A\00", [44 x i8] zeroinitializer }, align 32
@l2cap_sock_cleanup_listen.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.57, ptr @.str.6, ptr @.str.59, i8 1, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"child chan %p state %s\0A\00", [40 x i8] zeroinitializer }, align 32
@l2cap_sock_ready_cb.__UNIQUE_ID_ddebug576 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.60, ptr @.str.6, ptr @.str.61, i8 1, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l2cap_sock_ready_cb\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sk %p, parent %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l2cap_sk_list.lock\00", [45 x i8] zeroinitializer }, align 32
@switch.table.l2cap_sock_shutdown = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [60 x i8] zeroinitializer }, align 32
@switch.table.l2cap_sock_kill = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [60 x i8] zeroinitializer }, align 32
@switch.table.l2cap_sock_getsockopt_old = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 6, i32 38, i32 102], [16 x i8] zeroinitializer }, align 32
@switch.table.l2cap_sock_teardown_cb = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [60 x i8] zeroinitializer }, align 32
@switch.table.l2cap_sock_cleanup_listen = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [60 x i8] zeroinitializer }, align 32
@switch.table.l2cap_sock_cleanup_listen.63 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 768]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 3, i64 4, i64 128, i64 129]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 274]
@__sancov_gen_cov_switch_values.70 = internal global [10 x i64] [i64 8, i64 32, i64 4, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 15]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 274]
@__sancov_gen_cov_switch_values.74 = internal global [11 x i64] [i64 9, i64 32, i64 4, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 3, i64 4, i64 128, i64 129]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.80 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 9]
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"l2cap_sock_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1906, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"l2cap_proto\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1839, i32 21 }
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"l2cap_sock_family_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1927, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1945, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1949, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"l2cap_sk_list\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 41, i32 28 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1952, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1957, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1413, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1251, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 239, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 241, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 243, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 245, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 247, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 249, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 251, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 253, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 255, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant [37 x i8] c"../include/net/bluetooth/bluetooth.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 258, i32 9 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 89, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 204, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 358, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 395, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 409, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 293, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1312, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1329, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1338, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1402, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1271, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 910, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1110, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1127, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1133, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 750, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 230, i32 6 }
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 214, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 156, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 581, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 462, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1153, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1884, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1744, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1777, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [15 x i8] c"l2cap_chan_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1724, i32 31 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1725, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1469, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1555, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1439, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1446, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1643, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [30 x i8] c"../net/bluetooth/l2cap_sock.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 42, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant [33 x i8] c"switch.table.l2cap_sock_shutdown\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [29 x i8] c"switch.table.l2cap_sock_kill\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [39 x i8] c"switch.table.l2cap_sock_getsockopt_old\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [36 x i8] c"switch.table.l2cap_sock_teardown_cb\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [39 x i8] c"switch.table.l2cap_sock_cleanup_listen\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [42 x i8] c"switch.table.l2cap_sock_cleanup_listen.63\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @__ksymtab_l2cap_is_socket, ptr @l2cap_sock_ops, ptr @l2cap_proto, ptr @l2cap_sock_family_ops, ptr @.str, ptr @.str.1, ptr @l2cap_sk_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @l2cap_chan_ops, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @switch.table.l2cap_sock_shutdown, ptr @switch.table.l2cap_sock_kill, ptr @switch.table.l2cap_sock_getsockopt_old, ptr @switch.table.l2cap_sock_teardown_cb, ptr @switch.table.l2cap_sock_cleanup_listen, ptr @switch.table.l2cap_sock_cleanup_listen.63], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2cap_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2cap_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2cap_sock_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2cap_sk_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2cap_chan_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.l2cap_sock_shutdown to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.l2cap_sock_kill to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.l2cap_sock_getsockopt_old to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.l2cap_sock_teardown_cb to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.l2cap_sock_cleanup_listen to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.l2cap_sock_cleanup_listen.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @l2cap_is_socket(ptr noundef readonly %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, @l2cap_sock_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l2cap_init_sockets() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @l2cap_proto, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bt_sock_register(i32 noundef 0, ptr noundef nonnull @l2cap_sock_family_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str) #13
  br label %error

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @bt_procfs_init(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1, ptr noundef nonnull @l2cap_sk_list, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #13
  tail call void @bt_sock_unregister(i32 noundef 0) #13
  br label %error

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.3) #13
  br label %cleanup

error:                                            ; preds = %if.then7, %if.then3
  %err.0 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ]
  tail call void @proto_unregister(ptr noundef nonnull @l2cap_proto) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_register(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_procfs_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @l2cap_cleanup_sockets() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bt_procfs_cleanup(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1) #13
  tail call void @bt_sock_unregister(i32 noundef 0) #13
  tail call void @proto_unregister(ptr noundef nonnull @l2cap_proto) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_procfs_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_release(ptr noundef %sock) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_release.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_release, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_release.__UNIQUE_ID_ddebug571, ptr noundef nonnull @.str.7, ptr noundef %sock, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bt_sock_unlink(ptr noundef nonnull @l2cap_sk_list, ptr noundef nonnull %1) #13
  %call7 = tail call i32 @l2cap_sock_shutdown(ptr noundef %sock, i32 noundef 2)
  %chan8 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan8, align 8
  tail call void @l2cap_chan_hold(ptr noundef %3) #13
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %5) #13
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
  %6 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %or.i.i.i = or i32 %8, 1
  store i32 %or.i.i.i, ptr %6, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %9 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sk_socket.i.i, align 8
  %10 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %10, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  tail call fastcc void @l2cap_sock_kill(ptr noundef nonnull %1)
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  tail call void @l2cap_chan_put(ptr noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_bind(ptr nocapture noundef readonly %sock, ptr noundef readonly %addr, i32 noundef %alen) #4 align 64 {
entry:
  %la = alloca %struct.sockaddr_l2, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %la) #13
  %4 = call ptr @memset(ptr %la, i32 255, i32 14)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_bind.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_bind, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_bind.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.21, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %addr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alen)
  %cmp = icmp ult i32 %alen, 2
  %or.cond = or i1 %tobool5.not, %cmp
  br i1 %or.cond, label %do.end.cleanup112_crit_edge, label %lor.lhs.false6

do.end.cleanup112_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

lor.lhs.false6:                                   ; preds = %do.end
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %6)
  %cmp7.not = icmp eq i16 %6, 31
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false6.cleanup112_crit_edge

lor.lhs.false6.cleanup112_crit_edge:              ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.end10:                                         ; preds = %lor.lhs.false6
  %7 = tail call i32 @llvm.umin.i32(i32 %alen, i32 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %8 = icmp ugt i32 %7, 13
  %9 = sub nuw nsw i32 14, %7
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %la, i32 %7
  %12 = call ptr @memset(ptr %11, i32 0, i32 %10)
  %13 = call ptr @memcpy(ptr %la, ptr %addr, i32 %7)
  %l2_cid = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 3
  %14 = ptrtoint ptr %l2_cid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %l2_cid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool15.not = icmp eq i16 %15, 0
  br i1 %tobool15.not, label %if.end10.if.end19_crit_edge, label %land.lhs.true

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %l2_psm = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 1
  %16 = ptrtoint ptr %l2_psm to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %l2_psm, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool17.not = icmp eq i16 %17, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.cleanup112_crit_edge

land.lhs.true.cleanup112_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %l2_bdaddr_type = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 4
  %18 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %l2_bdaddr_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %switch.i = icmp ult i8 %19, 3
  br i1 %switch.i, label %if.end22, label %if.end19.cleanup112_crit_edge

if.end19.cleanup112_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.end22:                                         ; preds = %if.end19
  %type.off.i = add nsw i8 %19, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i144 = icmp ult i8 %type.off.i, 2
  br i1 %switch.i144, label %if.then25, label %if.end22.if.end36_crit_edge

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then25:                                        ; preds = %if.end22
  %20 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %if.then25.cleanup112_crit_edge [
    i16 0, label %if.then25.if.end36_crit_edge
    i16 1024, label %if.then25.if.end36_crit_edge157
  ]

if.then25.if.end36_crit_edge157:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then25.cleanup112_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.end36:                                         ; preds = %if.then25.if.end36_crit_edge, %if.then25.if.end36_crit_edge157, %if.end22.if.end36_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp38.not = icmp eq i8 %22, 2
  br i1 %cmp38.not, label %if.end41, label %if.end36.done_crit_edge

if.end36.done_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end41:                                         ; preds = %if.end36
  %l2_psm42 = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 1
  %23 = ptrtoint ptr %l2_psm42 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %l2_psm42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool43.not = icmp eq i16 %24, 0
  br i1 %tobool43.not, label %if.end41.if.end57_crit_edge, label %if.then44

if.end41.if.end57_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then44:                                        ; preds = %if.end41
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %l2_bdaddr_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp48 = icmp eq i8 %27, 0
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.then44
  %28 = and i16 %25, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp.not.i = icmp eq i16 %28, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then50.done_crit_edge

if.then50.done_crit_edge:                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end.i:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_const_cmp2(i16 4097, i16 %25)
  %cmp3.i = icmp ult i16 %25, 4097
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i.if.end57_crit_edge

if.end.i.if.end57_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

land.lhs.true.i:                                  ; preds = %if.end.i
  %call.i = tail call zeroext i1 @capable(i32 noundef 10) #13
  br i1 %call.i, label %land.lhs.true.i.if.end57_crit_edge, label %land.lhs.true.i.done_crit_edge

land.lhs.true.i.done_crit_edge:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

land.lhs.true.i.if.end57_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.else:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %25)
  %cmp.i = icmp ugt i16 %25, 255
  br i1 %cmp.i, label %if.else.done_crit_edge, label %if.end.i147

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end.i147:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %25)
  %cmp3.i146 = icmp ult i16 %25, 128
  br i1 %cmp3.i146, label %land.lhs.true.i149, label %if.end.i147.if.end57_crit_edge

if.end.i147.if.end57_crit_edge:                   ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

land.lhs.true.i149:                               ; preds = %if.end.i147
  %call.i148 = tail call zeroext i1 @capable(i32 noundef 10) #13
  br i1 %call.i148, label %land.lhs.true.i149.if.end57_crit_edge, label %land.lhs.true.i149.done_crit_edge

land.lhs.true.i149.done_crit_edge:                ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

land.lhs.true.i149.if.end57_crit_edge:            ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true.i149.if.end57_crit_edge, %if.end.i147.if.end57_crit_edge, %land.lhs.true.i.if.end57_crit_edge, %if.end.i.if.end57_crit_edge, %if.end41.if.end57_crit_edge
  %src = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 8
  %l2_bdaddr = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %src, ptr %l2_bdaddr, i32 6)
  %30 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %l2_bdaddr_type, align 2
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %src_type to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %src_type, align 2
  %33 = ptrtoint ptr %l2_cid to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %l2_cid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool60.not = icmp eq i16 %34, 0
  br i1 %tobool60.not, label %if.else64, label %if.then61

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %call63 = tail call i32 @l2cap_add_scid(ptr noundef %3, i16 noundef zeroext %35) #13
  br label %if.end68

if.else64:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %l2_psm42 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %l2_psm42, align 2
  %call67 = call i32 @l2cap_add_psm(ptr noundef %3, ptr noundef %l2_bdaddr, i16 noundef zeroext %37) #13
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.then61
  %err.1 = phi i32 [ %call63, %if.then61 ], [ %call67, %if.else64 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp69 = icmp slt i32 %err.1, 0
  br i1 %cmp69, label %if.end68.done_crit_edge, label %if.end72

if.end68.done_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end72:                                         ; preds = %if.end68
  %chan_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 18
  %38 = ptrtoint ptr %chan_type to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %chan_type, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %39, label %if.end72.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb80
    i8 1, label %sw.bb93
    i8 4, label %sw.bb95
  ]

if.end72.sw.epilog_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end72
  %41 = ptrtoint ptr %l2_psm42 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %l2_psm42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8448, i16 %42)
  %cmp76 = icmp eq i16 %42, 8448
  br i1 %cmp76, label %if.then78, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then78:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %sec_level = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %43 = ptrtoint ptr %sec_level to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %sec_level, align 1
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end72
  %44 = ptrtoint ptr %l2_psm42 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %l2_psm42, align 2
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %45, label %sw.bb80.sw.epilog_crit_edge [
    i16 256, label %sw.bb80.if.then90_crit_edge
    i16 768, label %sw.bb80.if.then90_crit_edge158
  ]

sw.bb80.if.then90_crit_edge158:                   ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then90

sw.bb80.if.then90_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then90

sw.bb80.sw.epilog_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then90:                                        ; preds = %sw.bb80.if.then90_crit_edge, %sw.bb80.if.then90_crit_edge158
  %sec_level91 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %47 = ptrtoint ptr %sec_level91 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %sec_level91, align 1
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %sec_level94 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %48 = ptrtoint ptr %sec_level94 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %sec_level94, align 1
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  call void @_set_bit(i32 noundef 10, ptr noundef %flags) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb95, %sw.bb93, %if.then90, %sw.bb80.sw.epilog_crit_edge, %if.then78, %sw.bb.sw.epilog_crit_edge, %if.end72.sw.epilog_crit_edge
  %psm96 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 10
  %49 = ptrtoint ptr %psm96 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %psm96, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool98.not = icmp eq i16 %50, 0
  br i1 %tobool98.not, label %sw.epilog.if.end109_crit_edge, label %land.lhs.true99

sw.epilog.if.end109_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

land.lhs.true99:                                  ; preds = %sw.epilog
  %51 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %src_type, align 2
  %type.off.i152 = add i8 %52, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i152)
  %switch.i153 = icmp ult i8 %type.off.i152, 2
  br i1 %switch.i153, label %land.lhs.true103, label %land.lhs.true99.if.end109_crit_edge

land.lhs.true99.if.end109_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

land.lhs.true103:                                 ; preds = %land.lhs.true99
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %54)
  %cmp105.not = icmp eq i8 %54, -127
  br i1 %cmp105.not, label %land.lhs.true103.if.end109_crit_edge, label %if.then107

land.lhs.true103.if.end109_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then107:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -128, ptr %mode, align 2
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %land.lhs.true103.if.end109_crit_edge, %land.lhs.true99.if.end109_crit_edge, %sw.epilog.if.end109_crit_edge
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %state, align 4
  %57 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %57)
  store volatile i8 3, ptr %skc_state, align 2
  br label %done

done:                                             ; preds = %if.end109, %if.end68.done_crit_edge, %land.lhs.true.i149.done_crit_edge, %if.else.done_crit_edge, %land.lhs.true.i.done_crit_edge, %if.then50.done_crit_edge, %if.end36.done_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end68.done_crit_edge ], [ %err.1, %if.end109 ], [ -77, %if.end36.done_crit_edge ], [ -13, %land.lhs.true.i149.done_crit_edge ], [ -22, %if.else.done_crit_edge ], [ -13, %land.lhs.true.i.done_crit_edge ], [ -22, %if.then50.done_crit_edge ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup112

cleanup112:                                       ; preds = %done, %if.then25.cleanup112_crit_edge, %if.end19.cleanup112_crit_edge, %land.lhs.true.cleanup112_crit_edge, %lor.lhs.false6.cleanup112_crit_edge, %do.end.cleanup112_crit_edge
  %retval.0 = phi i32 [ %err.2, %done ], [ -22, %lor.lhs.false6.cleanup112_crit_edge ], [ -22, %do.end.cleanup112_crit_edge ], [ -22, %land.lhs.true.cleanup112_crit_edge ], [ -22, %if.end19.cleanup112_crit_edge ], [ -22, %if.then25.cleanup112_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %la) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_connect(ptr nocapture noundef readonly %sock, ptr noundef readonly %addr, i32 noundef %alen, i32 noundef %flags) #4 align 64 {
entry:
  %la = alloca %struct.sockaddr_l2, align 2
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %la) #13
  %4 = call ptr @memset(ptr %la, i32 255, i32 14)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_connect.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_connect, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_connect.__UNIQUE_ID_ddebug531, ptr noundef nonnull @.str.21, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %5 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  tail call void @release_sock(ptr noundef %1) #13
  br i1 %tobool.i.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %tobool10.not = icmp eq ptr %addr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alen)
  %cmp = icmp ult i32 %alen, 2
  %or.cond = or i1 %tobool10.not, %cmp
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %lor.lhs.false11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end9
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %10)
  %cmp12.not = icmp eq i16 %10, 31
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %11 = tail call i32 @llvm.umin.i32(i32 %alen, i32 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %11)
  %12 = icmp ugt i32 %11, 13
  %13 = sub nuw nsw i32 14, %11
  %14 = select i1 %12, i32 0, i32 %13
  %15 = getelementptr i8, ptr %la, i32 %11
  %16 = call ptr @memset(ptr %15, i32 0, i32 %14)
  %17 = call ptr @memcpy(ptr %la, ptr %addr, i32 %11)
  %l2_cid = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 3
  %18 = ptrtoint ptr %l2_cid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %l2_cid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool20.not = icmp eq i16 %19, 0
  br i1 %tobool20.not, label %if.end15.if.end24_crit_edge, label %land.lhs.true

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %l2_psm = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 1
  %20 = ptrtoint ptr %l2_psm to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %l2_psm, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool22.not = icmp eq i16 %21, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %l2_bdaddr_type = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 4
  %22 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %l2_bdaddr_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %switch.i = icmp ult i8 %23, 3
  br i1 %switch.i, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %src_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp29 = icmp eq i8 %25, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end27.land.lhs.true59_crit_edge

if.end27.land.lhs.true59_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true59

land.lhs.true31:                                  ; preds = %if.end27
  %src = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 8
  %26 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %src, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool37.not = icmp ne i32 %bcmp, 0
  %type.off.i = add nsw i8 %23, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i133 = icmp ult i8 %type.off.i, 2
  %or.cond143 = select i1 %tobool37.not, i1 %switch.i133, i1 false
  br i1 %or.cond143, label %if.then42, label %if.end54

if.then42:                                        ; preds = %land.lhs.true31
  %scid = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 13
  %27 = ptrtoint ptr %scid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %scid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %28)
  %cmp44.not = icmp eq i16 %28, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %19)
  %cmp49.not = icmp eq i16 %19, 1024
  %or.cond144 = select i1 %cmp44.not, i1 %cmp49.not, i1 false
  br i1 %or.cond144, label %if.then68.thread, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then68.thread:                                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %src_type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %src_type, align 2
  br label %if.end79

if.end54:                                         ; preds = %land.lhs.true31
  %30 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %src_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp57.not = icmp eq i8 %.pr, 0
  br i1 %cmp57.not, label %if.end65, label %if.end54.land.lhs.true59_crit_edge

if.end54.land.lhs.true59_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end54.land.lhs.true59_crit_edge, %if.end27.land.lhs.true59_crit_edge
  %31 = phi i8 [ %.pr, %if.end54.land.lhs.true59_crit_edge ], [ %25, %if.end27.land.lhs.true59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp62 = icmp eq i8 %23, 0
  br i1 %cmp62, label %land.lhs.true59.cleanup_crit_edge, label %land.lhs.true59.if.then68_crit_edge

land.lhs.true59.if.then68_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end65:                                         ; preds = %if.end54
  br i1 %switch.i133, label %if.end65.if.then68_crit_edge, label %if.end65.if.end92_crit_edge

if.end65.if.end92_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.end65.if.then68_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

if.then68:                                        ; preds = %if.end65.if.then68_crit_edge, %land.lhs.true59.if.then68_crit_edge
  %32 = phi i8 [ 0, %if.end65.if.then68_crit_edge ], [ %31, %land.lhs.true59.if.then68_crit_edge ]
  %33 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %19, label %if.then68.cleanup_crit_edge [
    i16 0, label %if.then68.if.end79_crit_edge
    i16 1024, label %if.then68.if.end79_crit_edge151
  ]

if.then68.if.end79_crit_edge151:                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then68.if.end79_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end79:                                         ; preds = %if.then68.if.end79_crit_edge, %if.then68.if.end79_crit_edge151, %if.then68.thread
  %34 = phi i8 [ %32, %if.then68.if.end79_crit_edge ], [ %32, %if.then68.if.end79_crit_edge151 ], [ 1, %if.then68.thread ]
  %psm = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %psm to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %psm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool81.not = icmp ne i16 %36, 0
  %type.off.i136 = add i8 %34, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i136)
  %switch.i137 = icmp ult i8 %type.off.i136, 2
  %or.cond145 = select i1 %tobool81.not, i1 %switch.i137, i1 false
  br i1 %or.cond145, label %land.lhs.true86, label %if.end79.if.end92_crit_edge

if.end79.if.end92_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

land.lhs.true86:                                  ; preds = %if.end79
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %38)
  %cmp88.not = icmp eq i8 %38, -127
  br i1 %cmp88.not, label %land.lhs.true86.if.end92_crit_edge, label %if.then90

land.lhs.true86.if.end92_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then90:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -128, ptr %mode, align 2
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %land.lhs.true86.if.end92_crit_edge, %if.end79.if.end92_crit_edge, %if.end65.if.end92_crit_edge
  tail call fastcc void @l2cap_sock_init_pid(ptr noundef %1)
  %l2_psm93 = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 1
  %40 = ptrtoint ptr %l2_psm93 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %l2_psm93, align 2
  %42 = ptrtoint ptr %l2_cid to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %l2_cid, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %l2_bdaddr = getelementptr inbounds %struct.sockaddr_l2, ptr %la, i32 0, i32 2
  %45 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %l2_bdaddr_type, align 2
  %call96 = call i32 @l2cap_chan_connect(ptr noundef %3, i16 noundef zeroext %41, i16 noundef zeroext %44, ptr noundef %l2_bdaddr, i8 noundef zeroext %46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end99:                                         ; preds = %if.end92
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool100.not = icmp eq i32 %and, 0
  br i1 %tobool100.not, label %cond.false.i, label %if.end99.sock_sndtimeo.exit_crit_edge

if.end99.sock_sndtimeo.exit_crit_edge:            ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %47 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end99.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %48, %cond.false.i ], [ 0, %if.end99.sock_sndtimeo.exit_crit_edge ]
  %call102 = call i32 @bt_sock_wait_state(ptr noundef %1, i32 noundef 1, i32 noundef %cond.i) #13
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %sock_sndtimeo.exit, %if.end92.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %land.lhs.true59.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call102, %sock_sndtimeo.exit ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.then42.cleanup_crit_edge ], [ -22, %land.lhs.true59.cleanup_crit_edge ], [ -22, %if.then68.cleanup_crit_edge ], [ %call96, %if.end92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %la) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #4 align 64 {
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !161) #13
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
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 2) #13
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 62
  %15 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %16, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_accept.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_accept, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_accept.__UNIQUE_ID_ddebug535, ptr noundef nonnull @.str.24, ptr noundef %14, i32 noundef %cond.i) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %sock_rcvtimeo.exit
  %17 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 8
  call void @add_wait_queue_exclusive(ptr noundef %19, ptr noundef nonnull %wait) #13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %20 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp.not82 = icmp eq i8 %21, 4
  br i1 %cmp.not82, label %do.end.if.end15_crit_edge, label %do.end.while.end.thread_crit_edge

do.end.while.end.thread_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.thread

do.end.if.end15_crit_edge:                        ; preds = %do.end
  br label %if.end15

if.end15:                                         ; preds = %if.end29.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %timeo.083 = phi i32 [ %call30, %if.end29.if.end15_crit_edge ], [ %cond.i, %do.end.if.end15_crit_edge ]
  %call16 = call ptr @bt_accept_dequeue(ptr noundef %14, ptr noundef %newsock) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end19, label %if.end34

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.083)
  %tobool20.not = icmp eq i32 %timeo.083, 0
  br i1 %tobool20.not, label %if.end19.while.end.thread_crit_edge, label %if.end22

if.end19.while.end.thread_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.thread

if.end22:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end22.if.then27_crit_edge, !prof !172

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then27

signal_pending.exit:                              ; preds = %if.end22
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool26.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool26.not, label %if.end29, label %signal_pending.exit.if.then27_crit_edge

signal_pending.exit.if.then27_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then27

if.then27:                                        ; preds = %signal_pending.exit.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.083)
  %cmp.i = icmp eq i32 %timeo.083, 2147483647
  %cond.i70 = select i1 %cmp.i, i32 -512, i32 -4
  br label %while.end.thread

if.end29:                                         ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %14) #13
  %call30 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeo.083) #13
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 2) #13
  %31 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state, align 2
  %cmp.not = icmp eq i8 %32, 4
  br i1 %cmp.not, label %if.end29.if.end15_crit_edge, label %if.end29.while.end.thread_crit_edge

if.end29.while.end.thread_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.thread

if.end29.if.end15_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

while.end.thread:                                 ; preds = %if.end29.while.end.thread_crit_edge, %if.then27, %if.end19.while.end.thread_crit_edge, %do.end.while.end.thread_crit_edge
  %err.0.ph = phi i32 [ %cond.i70, %if.then27 ], [ -77, %do.end.while.end.thread_crit_edge ], [ -11, %if.end19.while.end.thread_crit_edge ], [ -77, %if.end29.while.end.thread_crit_edge ]
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %17, align 8
  call void @remove_wait_queue(ptr noundef %34, ptr noundef nonnull %wait) #13
  br label %done

if.end34:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %17, align 8
  call void @remove_wait_queue(ptr noundef %36, ptr noundef nonnull %wait) #13
  %37 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %newsock, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_accept.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_accept, %if.then47)) #13
          to label %done [label %if.then47], !srcloc !171

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_accept.__UNIQUE_ID_ddebug536, ptr noundef nonnull @.str.25, ptr noundef nonnull %call16) #13
  br label %done

done:                                             ; preds = %if.then47, %if.end34, %while.end.thread
  %err.077 = phi i32 [ %err.0.ph, %while.end.thread ], [ 0, %if.then47 ], [ 0, %if.end34 ]
  call void @release_sock(ptr noundef %14) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %err.077
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_getname(ptr noundef %sock, ptr noundef writeonly %addr, i32 noundef %peer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_getname.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_getname, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_getname.__UNIQUE_ID_ddebug537, ptr noundef nonnull @.str.7, ptr noundef %sock, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool5.not = icmp eq i32 %peer, 0
  br i1 %tobool5.not, label %if.else.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %land.lhs.true.if.then28_crit_edge, label %land.lhs.true7

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

land.lhs.true7:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp11.not = icmp eq i8 %7, 5
  br i1 %cmp11.not, label %land.lhs.true7.if.then28_crit_edge, label %land.lhs.true13

land.lhs.true7.if.then28_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp17.not = icmp eq i8 %9, 6
  br i1 %cmp17.not, label %land.lhs.true13.if.then28_crit_edge, label %land.lhs.true19

land.lhs.true13.if.then28_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp23.not = icmp eq i8 %11, 7
  br i1 %cmp23.not, label %land.lhs.true19.if.then28_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true19.if.then28_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true19.if.then28_crit_edge, %land.lhs.true13.if.then28_crit_edge, %land.lhs.true7.if.then28_crit_edge, %land.lhs.true.if.then28_crit_edge
  %12 = getelementptr inbounds i8, ptr %addr, i32 2
  %13 = call ptr @memset(ptr %12, i32 0, i32 12)
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 31, ptr %addr, align 2
  %psm.c63 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %psm.c63 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %psm.c63, align 4
  %l2_psm.c64 = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 1
  %17 = ptrtoint ptr %l2_psm.c64 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %l2_psm.c64, align 2
  %l2_bdaddr = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 2
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 6
  %18 = call ptr @memcpy(ptr %l2_bdaddr, ptr %dst, i32 6)
  %dcid = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 12
  %19 = ptrtoint ptr %dcid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dcid, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %l2_cid = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 3
  %22 = ptrtoint ptr %l2_cid to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %l2_cid, align 2
  %dst_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 7
  br label %cleanup.sink.split

if.else.critedge:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %23 = getelementptr inbounds i8, ptr %addr, i32 2
  %24 = call ptr @memset(ptr %23, i32 0, i32 12)
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 31, ptr %addr, align 2
  %psm.c65 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %psm.c65 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %psm.c65, align 4
  %l2_psm.c66 = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 1
  %28 = ptrtoint ptr %l2_psm.c66 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %l2_psm.c66, align 2
  %l2_bdaddr29 = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 2
  %src = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 8
  %29 = call ptr @memcpy(ptr %l2_bdaddr29, ptr %src, i32 6)
  %scid = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 13
  %30 = ptrtoint ptr %scid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %scid, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %l2_cid30 = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 3
  %33 = ptrtoint ptr %l2_cid30 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %l2_cid30, align 2
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.critedge, %if.then28
  %.sink.in = phi ptr [ %dst_type, %if.then28 ], [ %src_type, %if.else.critedge ]
  %34 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %34)
  %.sink = load i8, ptr %.sink.in, align 1
  %l2_bdaddr_type = getelementptr inbounds %struct.sockaddr_l2, ptr %addr, i32 0, i32 4
  %35 = ptrtoint ptr %l2_bdaddr_type to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink, ptr %l2_bdaddr_type, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true19.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %land.lhs.true19.cleanup_crit_edge ], [ 14, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_poll(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_listen.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_listen, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_listen.__UNIQUE_ID_ddebug534, ptr noundef nonnull @.str.28, ptr noundef %1, i32 noundef %backlog) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.not = icmp eq i8 %5, 3
  br i1 %cmp.not, label %if.end7, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end7:                                          ; preds = %do.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_type, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %7, label %if.end7.done_crit_edge [
    i16 5, label %if.end7.if.end16_crit_edge
    i16 1, label %if.end7.if.end16_crit_edge42
  ]

if.end7.if.end16_crit_edge42:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end16:                                         ; preds = %if.end7.if.end16_crit_edge, %if.end7.if.end16_crit_edge42
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %10, label %if.end16.done_crit_edge [
    i8 0, label %if.end16.sw.epilog_crit_edge
    i8 -128, label %if.end16.sw.epilog_crit_edge43
    i8 -127, label %sw.bb18
    i8 3, label %if.end16.sw.bb22_crit_edge
    i8 4, label %if.end16.sw.bb22_crit_edge44
  ]

if.end16.sw.bb22_crit_edge44:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb22

if.end16.sw.bb22_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb22

if.end16.sw.epilog_crit_edge43:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end16.done_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb18:                                          ; preds = %if.end16
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @enable_ecred to i32))
  %12 = load i8, ptr @enable_ecred, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp eq i8 %12, 0
  br i1 %tobool19.not, label %sw.bb18.done_crit_edge, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb18.done_crit_edge:                           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb22:                                          ; preds = %if.end16.sw.bb22_crit_edge, %if.end16.sw.bb22_crit_edge44
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_ertm to i32))
  %13 = load i8, ptr @disable_ertm, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  br i1 %tobool23.not, label %sw.bb22.sw.epilog_crit_edge, label %sw.bb22.done_crit_edge

sw.bb22.done_crit_edge:                           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge43
  tail call fastcc void @l2cap_sock_init_pid(ptr noundef %1)
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %14 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %15 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sk_ack_backlog, align 4
  %nesting = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nesting, i32 noundef 4) #13
  %16 = ptrtoint ptr %nesting to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 2, ptr %nesting, align 4
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %state, align 4
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %18)
  store volatile i8 4, ptr %skc_state, align 2
  br label %done

done:                                             ; preds = %sw.epilog, %sw.bb22.done_crit_edge, %sw.bb18.done_crit_edge, %if.end16.done_crit_edge, %if.end7.done_crit_edge, %do.end.done_crit_edge
  %err.0 = phi i32 [ 0, %sw.epilog ], [ -77, %do.end.done_crit_edge ], [ -22, %if.end7.done_crit_edge ], [ -95, %sw.bb18.done_crit_edge ], [ -95, %sw.bb22.done_crit_edge ], [ -95, %if.end16.done_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_shutdown(ptr noundef %sock, i32 noundef %how) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_shutdown.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_shutdown, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_shutdown.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.30, ptr noundef %sock, ptr noundef %1, i32 noundef %how) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %inc = add i32 %how, 1
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sk_shutdown, align 2
  %conv = zext i8 %3 to i32
  %and = and i32 %inc, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %inc)
  %cmp = icmp eq i32 %and, %inc
  br i1 %cmp, label %if.end6.land.lhs.true114_crit_edge, label %do.body10

if.end6.land.lhs.true114_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true114

do.body10:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_shutdown.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_shutdown, %if.then22)) #13
          to label %do.end25 [label %if.then22], !srcloc !171

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_shutdown.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.31) #13
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !174
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end25.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !175

do.end25.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end25
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end25.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end25.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %chan26 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %chan26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan26, align 8
  tail call void @l2cap_chan_hold(ptr noundef %7) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_shutdown.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_shutdown, %if.then39)) #13
          to label %do.end44 [label %if.then39], !srcloc !171

if.then39:                                        ; preds = %sock_hold.exit
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 4
  %switch.tableidx = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 9
  br i1 %10, label %switch.lookup, label %if.then39.state_to_string.exit_crit_edge

if.then39.state_to_string.exit_crit_edge:         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %state_to_string.exit

switch.lookup:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.l2cap_sock_shutdown, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state_to_string.exit

state_to_string.exit:                             ; preds = %switch.lookup, %if.then39.state_to_string.exit_crit_edge
  %retval.0.i201 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.19, %if.then39.state_to_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_shutdown.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.32, ptr noundef %7, ptr noundef nonnull %retval.0.i201) #13
  br label %do.end44

do.end44:                                         ; preds = %state_to_string.exit, %sock_hold.exit
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 17
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp46 = icmp eq i8 %14, 3
  br i1 %cmp46, label %land.lhs.true, label %do.end44.if.end65_crit_edge

do.end44.if.end65_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

land.lhs.true:                                    ; preds = %do.end44
  %unacked_frames = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 53
  %15 = ptrtoint ptr %unacked_frames to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %unacked_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp49.not = icmp eq i16 %16, 0
  br i1 %cmp49.not, label %land.lhs.true.if.end65_crit_edge, label %land.lhs.true51

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

land.lhs.true51:                                  ; preds = %land.lhs.true
  %state52 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %state52 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %state52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp54 = icmp eq i8 %18, 1
  br i1 %cmp54, label %if.then56, label %land.lhs.true51.if.end65_crit_edge

land.lhs.true51.if.end65_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then56:                                        ; preds = %land.lhs.true51
  %call57 = tail call fastcc i32 @__l2cap_wait_ack(ptr noundef nonnull %1, ptr noundef %7)
  %19 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sk_shutdown, align 2
  %conv59 = zext i8 %20 to i32
  %and60 = and i32 %inc, %conv59
  call void @__sanitizer_cov_trace_cmp4(i32 %and60, i32 %inc)
  %cmp61 = icmp eq i32 %and60, %inc
  br i1 %cmp61, label %if.then56.shutdown_matched_crit_edge, label %if.then56.if.end65_crit_edge

if.then56.if.end65_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then56.shutdown_matched_crit_edge:             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %shutdown_matched

if.end65:                                         ; preds = %if.then56.if.end65_crit_edge, %land.lhs.true51.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %do.end44.if.end65_crit_edge
  %err.0 = phi i32 [ %call57, %if.then56.if.end65_crit_edge ], [ 0, %land.lhs.true51.if.end65_crit_edge ], [ 0, %land.lhs.true.if.end65_crit_edge ], [ 0, %do.end44.if.end65_crit_edge ]
  %and66 = and i32 %inc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end84_crit_edge, label %land.lhs.true68

if.end65.if.end84_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

land.lhs.true68:                                  ; preds = %if.end65
  %21 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sk_shutdown, align 2
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool72.not = icmp eq i8 %23, 0
  br i1 %tobool72.not, label %if.then73, label %land.lhs.true68.if.end84_crit_edge

land.lhs.true68.if.end84_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then73:                                        ; preds = %land.lhs.true68
  %or = or i8 %22, 1
  %24 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or, ptr %sk_shutdown, align 2
  %conv78 = zext i8 %or to i32
  %and79 = and i32 %inc, %conv78
  call void @__sanitizer_cov_trace_cmp4(i32 %and79, i32 %inc)
  %cmp80 = icmp eq i32 %and79, %inc
  br i1 %cmp80, label %if.then73.shutdown_matched_crit_edge, label %if.then73.if.end84_crit_edge

if.then73.if.end84_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then73.shutdown_matched_crit_edge:             ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %shutdown_matched

if.end84:                                         ; preds = %if.then73.if.end84_crit_edge, %land.lhs.true68.if.end84_crit_edge, %if.end65.if.end84_crit_edge
  %25 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sk_shutdown, align 2
  %27 = or i8 %26, 2
  store i8 %27, ptr %sk_shutdown, align 2
  tail call void @release_sock(ptr noundef nonnull %1) #13
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #13
  %28 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %29) #13
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %tobool90.not = icmp eq ptr %31, null
  br i1 %tobool90.not, label %if.end96.critedge, label %if.then91

if.then91:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %call92 = tail call ptr @l2cap_conn_get(ptr noundef nonnull %31) #13
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  %chan_lock = getelementptr inbounds %struct.l2cap_conn, ptr %31, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %chan_lock, i32 noundef 0) #13
  %call.i.i.i205 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #13
  %32 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %33) #13
  tail call void @l2cap_chan_close(ptr noundef %7, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  tail call void @mutex_unlock(ptr noundef %chan_lock) #13
  tail call void @l2cap_conn_put(ptr noundef nonnull %31) #13
  br label %if.end100

if.end96.critedge:                                ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  %call.i.i.i210 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #13
  %34 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %35) #13
  tail call void @l2cap_chan_close(ptr noundef %7, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %if.end100

if.end100:                                        ; preds = %if.end96.critedge, %if.then91
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  %36 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not = icmp eq i32 %39, 0
  br i1 %tobool.i.not, label %if.end100.shutdown_matched_crit_edge, label %land.lhs.true103

if.end100.shutdown_matched_crit_edge:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %shutdown_matched

land.lhs.true103:                                 ; preds = %if.end100
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 48
  %40 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sk_lingertime, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool104.not = icmp eq i32 %41, 0
  br i1 %tobool104.not, label %land.lhs.true103.shutdown_matched_crit_edge, label %land.lhs.true105

land.lhs.true103.shutdown_matched_crit_edge:      ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  br label %shutdown_matched

land.lhs.true105:                                 ; preds = %land.lhs.true103
  %42 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and107 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.then109, label %land.lhs.true105.shutdown_matched_crit_edge

land.lhs.true105.shutdown_matched_crit_edge:      ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #15
  br label %shutdown_matched

if.then109:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #15
  %call111 = tail call i32 @bt_sock_wait_state(ptr noundef nonnull %1, i32 noundef 9, i32 noundef %41) #13
  br label %shutdown_matched

shutdown_matched:                                 ; preds = %if.then109, %land.lhs.true105.shutdown_matched_crit_edge, %land.lhs.true103.shutdown_matched_crit_edge, %if.end100.shutdown_matched_crit_edge, %if.then73.shutdown_matched_crit_edge, %if.then56.shutdown_matched_crit_edge
  %err.1 = phi i32 [ %call57, %if.then56.shutdown_matched_crit_edge ], [ %err.0, %land.lhs.true105.shutdown_matched_crit_edge ], [ %call111, %if.then109 ], [ %err.0, %land.lhs.true103.shutdown_matched_crit_edge ], [ %err.0, %if.end100.shutdown_matched_crit_edge ], [ %err.0, %if.then73.shutdown_matched_crit_edge ]
  tail call void @l2cap_chan_put(ptr noundef %7) #13
  %call.i.i.i.i.i.i213 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !177
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %shutdown_matched
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i214 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i214, label %if.end5.i.i.i.i.shutdown_already_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.shutdown_already_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shutdown_already

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %shutdown_already

if.then.i:                                        ; preds = %shutdown_matched
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  tail call void @sk_free(ptr noundef nonnull %1) #13
  br label %shutdown_already

shutdown_already:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.shutdown_already_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool113.not = icmp eq i32 %err.1, 0
  br i1 %tobool113.not, label %shutdown_already.land.lhs.true114_crit_edge, label %shutdown_already.if.end118_crit_edge

shutdown_already.if.end118_crit_edge:             ; preds = %shutdown_already
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

shutdown_already.land.lhs.true114_crit_edge:      ; preds = %shutdown_already
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true114

land.lhs.true114:                                 ; preds = %shutdown_already.land.lhs.true114_crit_edge, %if.end6.land.lhs.true114_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %49 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %50
  br label %if.end118

if.end118:                                        ; preds = %land.lhs.true114, %shutdown_already.if.end118_crit_edge
  %err.3 = phi i32 [ %err.1, %shutdown_already.if.end118_crit_edge ], [ %sub, %land.lhs.true114 ]
  tail call void @release_sock(ptr noundef nonnull %1) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_shutdown.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_shutdown, %if.then131)) #13
          to label %cleanup [label %if.then131], !srcloc !171

if.then131:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_shutdown.__UNIQUE_ID_ddebug570, ptr noundef nonnull @.str.33, i32 noundef %err.3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %if.end118, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %err.3, %if.then131 ], [ %err.3, %if.end118 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #4 align 64 {
entry:
  %sec = alloca %struct.bt_security, align 1
  %pwr = alloca %struct.bt_power, align 1
  %opt = alloca i32, align 4
  %mtu = alloca i16, align 2
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sec) #13
  %4 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %sec, align 1, !annotation !179
  %5 = getelementptr inbounds %struct.bt_security, ptr %sec, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !179
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr) #13
  %7 = ptrtoint ptr %pwr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %pwr, align 1, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #13
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %opt, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mtu) #13
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %mtu, align 2, !annotation !179
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #13
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %mode, align 1, !annotation !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_setsockopt, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.21, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %11 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %level, label %do.end.cleanup_crit_edge [
    i32 6, label %if.then5
    i32 274, label %if.end10
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call fastcc i32 @l2cap_sock_setsockopt_old(ptr noundef %sock, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen)
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %optname, label %if.end10.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 7, label %sw.bb82
    i32 8, label %sw.bb108
    i32 9, label %sw.bb136
    i32 10, label %sw.bb166
    i32 12, label %sw.bb198
    i32 13, label %sw.bb202
    i32 15, label %sw.bb237
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  %chan_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 18
  %13 = ptrtoint ptr %chan_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chan_type, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %14, label %sw.bb.sw.epilog_crit_edge [
    i8 3, label %sw.bb.if.end23_crit_edge
    i8 4, label %sw.bb.if.end23_crit_edge536
    i8 1, label %sw.bb.if.end23_crit_edge537
  ]

sw.bb.if.end23_crit_edge537:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

sw.bb.if.end23_crit_edge536:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

sw.bb.if.end23_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end23:                                         ; preds = %sw.bb.if.end23_crit_edge, %sw.bb.if.end23_crit_edge536, %sw.bb.if.end23_crit_edge537
  %16 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %sec, align 1
  %17 = tail call i32 @llvm.umin.i32(i32 %optlen, i32 2)
  %call28 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %sec, [2 x i32] %optval.coerce, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.sw.epilog_crit_edge

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end31:                                         ; preds = %if.end23
  %18 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sec, align 1
  %20 = add i8 %19, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %20)
  %21 = icmp ult i8 %20, -4
  br i1 %21, label %if.end31.sw.epilog_crit_edge, label %if.end41

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end41:                                         ; preds = %if.end31
  %sec_level = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %22 = ptrtoint ptr %sec_level to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %19, ptr %sec_level, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %tobool44.not = icmp eq ptr %24, null
  br i1 %tobool44.not, label %if.end41.sw.epilog_crit_edge, label %if.end46

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end46:                                         ; preds = %if.end41
  %scid = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 13
  %25 = ptrtoint ptr %scid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %scid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %26)
  %cmp49 = icmp eq i16 %26, 4
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end46
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %call53 = call i32 @smp_conn_security(ptr noundef %28, i8 noundef zeroext %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then51.sw.epilog_crit_edge

if.then51.sw.epilog_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end56:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  call void @_set_bit(i32 noundef 9, ptr noundef %flags) #13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %29)
  store volatile i8 7, ptr %skc_state, align 2
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 7, ptr %state, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end46
  %skc_state58 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state58 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp60 = icmp eq i8 %32, 6
  br i1 %cmp60, label %land.lhs.true62, label %if.else.lor.lhs.false66_crit_edge

if.else.lor.lhs.false66_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false66

land.lhs.true62:                                  ; preds = %if.else
  %flags63 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags63, align 4
  %and1.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool65.not = icmp eq i32 %and1.i, 0
  br i1 %tobool65.not, label %land.lhs.true62.lor.lhs.false66_crit_edge, label %land.lhs.true62.if.then72_crit_edge

land.lhs.true62.if.then72_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then72

land.lhs.true62.lor.lhs.false66_crit_edge:        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %land.lhs.true62.lor.lhs.false66_crit_edge, %if.else.lor.lhs.false66_crit_edge
  %35 = ptrtoint ptr %skc_state58 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp70 = icmp eq i8 %36, 1
  br i1 %cmp70, label %lor.lhs.false66.if.then72_crit_edge, label %lor.lhs.false66.sw.epilog_crit_edge

lor.lhs.false66.sw.epilog_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false66.if.then72_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false66.if.then72_crit_edge, %land.lhs.true62.if.then72_crit_edge
  %call73 = call i32 @l2cap_chan_check_security(ptr noundef %3, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %flags76 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  call void @_set_bit(i32 noundef 1, ptr noundef %flags76) #13
  br label %sw.epilog

if.else77:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %37 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk_state_change, align 4
  call void %38(ptr noundef %1) #13
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end10
  %skc_state84 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %skc_state84 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state84, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp86.not = icmp eq i8 %40, 3
  br i1 %cmp86.not, label %sw.bb82.if.end95_crit_edge, label %land.lhs.true88

sw.bb82.if.end95_crit_edge:                       ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

land.lhs.true88:                                  ; preds = %sw.bb82
  %41 = ptrtoint ptr %skc_state84 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load volatile i8, ptr %skc_state84, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %42)
  %cmp92.not = icmp eq i8 %42, 4
  br i1 %cmp92.not, label %land.lhs.true88.if.end95_crit_edge, label %land.lhs.true88.sw.epilog_crit_edge

land.lhs.true88.sw.epilog_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true88.if.end95_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.end95:                                         ; preds = %land.lhs.true88.if.end95_crit_edge, %sw.bb82.if.end95_crit_edge
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %43 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %if.end95
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %43, i32 4, i32 -1226833920) #17, !srcloc !180
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !172

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #13
  %45 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !181
  %and.i.i.i.i.i.i = and i32 %47, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %43, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #13, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end99thread-pre-split, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !172

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i518 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i518
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %48 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i518)
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %43, align 1
  %51 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %opt, align 4
  br label %if.end99

if.end99thread-pre-split:                         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %opt, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end99thread-pre-split, %if.end.i.i
  %53 = phi i32 [ %.pr, %if.end99thread-pre-split ], [ %50, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool100.not = icmp eq i32 %53, 0
  %flags105 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  br i1 %tobool100.not, label %if.else104, label %if.then101

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 0, ptr noundef %flags105) #13
  %flags103 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  call void @_set_bit(i32 noundef 6, ptr noundef %flags103) #13
  br label %sw.epilog

if.else104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags105) #13
  %flags106 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags106) #13
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end10
  %src.coerce.fca.0.extract.i.i457 = extractvalue [2 x i32] %optval.coerce, 0
  %54 = inttoptr i32 %src.coerce.fca.0.extract.i.i457 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i458 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i458)
  %bf.cast.i.i.i459 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i458, 0
  br i1 %bf.cast.i.i.i459, label %if.end.i.i482, label %if.end59.i.i.i.i464

if.end59.i.i.i.i464:                              ; preds = %sw.bb108
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #13
  %call.i.i.i.i465 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i465, label %if.end59.i.i.i.i464.if.then11.i.i.i.i481_crit_edge, label %land.lhs.true.i.i.i.i468

if.end59.i.i.i.i464.if.then11.i.i.i.i481_crit_edge: ; preds = %if.end59.i.i.i.i464
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i481

land.lhs.true.i.i.i.i468:                         ; preds = %if.end59.i.i.i.i464
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %54, i32 4, i32 -1226833920) #17, !srcloc !180
  %asmresult.i.i.i.i466 = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i466)
  %cmp.i6.i.i.i467 = icmp eq i32 %asmresult.i.i.i.i466, 0
  br i1 %cmp.i6.i.i.i467, label %if.end.i.i.i.i478, label %land.lhs.true.i.i.i.i468.if.then11.i.i.i.i481_crit_edge, !prof !172

land.lhs.true.i.i.i.i468.if.then11.i.i.i.i481_crit_edge: ; preds = %land.lhs.true.i.i.i.i468
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i481

if.end.i.i.i.i478:                                ; preds = %land.lhs.true.i.i.i.i468
  %call.i.i.i.i.i469 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #13
  %56 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i.i.i.i470 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i.i.i470 to ptr
  %cpu_domain.i.i.i.i.i.i.i471 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i471) #7, !srcloc !181
  %and.i.i.i.i.i.i472 = and i32 %58, -13
  %or.i.i.i.i.i.i473 = or i32 %and.i.i.i.i.i.i472, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i473) #13, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %call1.i.i.i.i.i474 = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %54, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #13, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i474)
  %tobool4.not.i.i.i.i477 = icmp eq i32 %call1.i.i.i.i.i474, 0
  br i1 %tobool4.not.i.i.i.i477, label %if.end112thread-pre-split, label %if.end.i.i.i.i478.if.then11.i.i.i.i481_crit_edge, !prof !172

if.end.i.i.i.i478.if.then11.i.i.i.i481_crit_edge: ; preds = %if.end.i.i.i.i478
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i481

if.then11.i.i.i.i481:                             ; preds = %if.end.i.i.i.i478.if.then11.i.i.i.i481_crit_edge, %land.lhs.true.i.i.i.i468.if.then11.i.i.i.i481_crit_edge, %if.end59.i.i.i.i464.if.then11.i.i.i.i481_crit_edge
  %res.0.i.i.i.i476523 = phi i32 [ %call1.i.i.i.i.i474, %if.end.i.i.i.i478.if.then11.i.i.i.i481_crit_edge ], [ 4, %if.end59.i.i.i.i464.if.then11.i.i.i.i481_crit_edge ], [ 4, %land.lhs.true.i.i.i.i468.if.then11.i.i.i.i481_crit_edge ]
  %sub.i.i.i.i479 = sub i32 4, %res.0.i.i.i.i476523
  %add.ptr.i.i.i.i480 = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i479
  %59 = call ptr @memset(ptr %add.ptr.i.i.i.i480, i32 0, i32 %res.0.i.i.i.i476523)
  br label %sw.epilog

if.end.i.i482:                                    ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %54, align 1
  %62 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %opt, align 4
  br label %if.end112

if.end112thread-pre-split:                        ; preds = %if.end.i.i.i.i478
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr534 = load i32, ptr %opt, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112thread-pre-split, %if.end.i.i482
  %64 = phi i32 [ %.pr534, %if.end112thread-pre-split ], [ %61, %if.end.i.i482 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp113 = icmp ugt i32 %64, 1
  br i1 %cmp113, label %if.end112.sw.epilog_crit_edge, label %if.end116

if.end112.sw.epilog_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end116:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp117 = icmp eq i32 %64, 0
  br i1 %cmp117, label %if.then119, label %if.then131

if.then119:                                       ; preds = %if.end116
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %tobool121.not = icmp eq ptr %66, null
  br i1 %tobool121.not, label %if.then119.sw.epilog_crit_edge, label %lor.lhs.false122

if.then119.sw.epilog_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false122:                                 ; preds = %if.then119
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %68, i32 0, i32 65
  %69 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hdev, align 4
  %arrayidx124 = getelementptr %struct.hci_dev, ptr %70, i32 0, i32 21, i32 0, i32 6
  %71 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx124, align 2
  %73 = and i8 %72, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool126.not = icmp eq i8 %73, 0
  br i1 %tobool126.not, label %lor.lhs.false122.sw.epilog_crit_edge, label %if.else133

lor.lhs.false122.sw.epilog_crit_edge:             ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then131:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %flags132 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  call void @_set_bit(i32 noundef 3, ptr noundef %flags132) #13
  br label %sw.epilog

if.else133:                                       ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #15
  %flags134 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags134) #13
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end10
  %chan_type137 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 18
  %74 = ptrtoint ptr %chan_type137 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %chan_type137, align 1
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %75, label %sw.bb136.sw.epilog_crit_edge [
    i8 3, label %sw.bb136.if.end147_crit_edge
    i8 1, label %sw.bb136.if.end147_crit_edge538
  ]

sw.bb136.if.end147_crit_edge538:                  ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

sw.bb136.if.end147_crit_edge:                     ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

sw.bb136.sw.epilog_crit_edge:                     ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end147:                                        ; preds = %sw.bb136.if.end147_crit_edge, %sw.bb136.if.end147_crit_edge538
  %77 = ptrtoint ptr %pwr to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %pwr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %78 = icmp ne i32 %optlen, 0
  %79 = zext i1 %78 to i32
  %call155 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %pwr, [2 x i32] %optval.coerce, i32 noundef %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end147.sw.epilog_crit_edge

if.end147.sw.epilog_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end158:                                        ; preds = %if.end147
  %80 = ptrtoint ptr %pwr to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pwr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool160.not = icmp eq i8 %81, 0
  %flags164 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  br i1 %tobool160.not, label %if.else163, label %if.then161

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 1, ptr noundef %flags164) #13
  br label %sw.epilog

if.else163:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags164) #13
  br label %sw.epilog

sw.bb166:                                         ; preds = %if.end10
  %src.coerce.fca.0.extract.i.i485 = extractvalue [2 x i32] %optval.coerce, 0
  %82 = inttoptr i32 %src.coerce.fca.0.extract.i.i485 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i486 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i486)
  %bf.cast.i.i.i487 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i486, 0
  br i1 %bf.cast.i.i.i487, label %if.end.i.i510, label %if.end59.i.i.i.i492

if.end59.i.i.i.i492:                              ; preds = %sw.bb166
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #13
  %call.i.i.i.i493 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i493, label %if.end59.i.i.i.i492.if.then11.i.i.i.i509_crit_edge, label %land.lhs.true.i.i.i.i496

if.end59.i.i.i.i492.if.then11.i.i.i.i509_crit_edge: ; preds = %if.end59.i.i.i.i492
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i509

land.lhs.true.i.i.i.i496:                         ; preds = %if.end59.i.i.i.i492
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %82, i32 4, i32 -1226833920) #17, !srcloc !180
  %asmresult.i.i.i.i494 = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i494)
  %cmp.i6.i.i.i495 = icmp eq i32 %asmresult.i.i.i.i494, 0
  br i1 %cmp.i6.i.i.i495, label %if.end.i.i.i.i506, label %land.lhs.true.i.i.i.i496.if.then11.i.i.i.i509_crit_edge, !prof !172

land.lhs.true.i.i.i.i496.if.then11.i.i.i.i509_crit_edge: ; preds = %land.lhs.true.i.i.i.i496
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i509

if.end.i.i.i.i506:                                ; preds = %land.lhs.true.i.i.i.i496
  %call.i.i.i.i.i497 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #13
  %84 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i.i.i.i498 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i.i.i.i498 to ptr
  %cpu_domain.i.i.i.i.i.i.i499 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 4
  %86 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i499) #7, !srcloc !181
  %and.i.i.i.i.i.i500 = and i32 %86, -13
  %or.i.i.i.i.i.i501 = or i32 %and.i.i.i.i.i.i500, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i501) #13, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %call1.i.i.i.i.i502 = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %82, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #13, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i502)
  %tobool4.not.i.i.i.i505 = icmp eq i32 %call1.i.i.i.i.i502, 0
  br i1 %tobool4.not.i.i.i.i505, label %if.end170thread-pre-split, label %if.end.i.i.i.i506.if.then11.i.i.i.i509_crit_edge, !prof !172

if.end.i.i.i.i506.if.then11.i.i.i.i509_crit_edge: ; preds = %if.end.i.i.i.i506
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i509

if.then11.i.i.i.i509:                             ; preds = %if.end.i.i.i.i506.if.then11.i.i.i.i509_crit_edge, %land.lhs.true.i.i.i.i496.if.then11.i.i.i.i509_crit_edge, %if.end59.i.i.i.i492.if.then11.i.i.i.i509_crit_edge
  %res.0.i.i.i.i504528 = phi i32 [ %call1.i.i.i.i.i502, %if.end.i.i.i.i506.if.then11.i.i.i.i509_crit_edge ], [ 4, %if.end59.i.i.i.i492.if.then11.i.i.i.i509_crit_edge ], [ 4, %land.lhs.true.i.i.i.i496.if.then11.i.i.i.i509_crit_edge ]
  %sub.i.i.i.i507 = sub i32 4, %res.0.i.i.i.i504528
  %add.ptr.i.i.i.i508 = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i507
  %87 = call ptr @memset(ptr %add.ptr.i.i.i.i508, i32 0, i32 %res.0.i.i.i.i504528)
  br label %sw.epilog

if.end.i.i510:                                    ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %82, align 1
  %90 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %opt, align 4
  br label %if.end170

if.end170thread-pre-split:                        ; preds = %if.end.i.i.i.i506
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr535 = load i32, ptr %opt, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.end170thread-pre-split, %if.end.i.i510
  %92 = phi i32 [ %.pr535, %if.end170thread-pre-split ], [ %89, %if.end.i.i510 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp171 = icmp ugt i32 %92, 2
  br i1 %cmp171, label %if.end170.sw.epilog_crit_edge, label %if.end174

if.end170.sw.epilog_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end174:                                        ; preds = %if.end170
  %mode175 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %93 = ptrtoint ptr %mode175 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mode175, align 2
  %.off = add i8 %94, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end185, label %if.end174.sw.epilog_crit_edge

if.end174.sw.epilog_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end185:                                        ; preds = %if.end174
  %conv186 = trunc i32 %92 to i8
  %chan_policy = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 19
  %95 = ptrtoint ptr %chan_policy to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv186, ptr %chan_policy, align 4
  %skc_state188 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %96 = ptrtoint ptr %skc_state188 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load volatile i8, ptr %skc_state188, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %97)
  %cmp190 = icmp eq i8 %97, 1
  br i1 %cmp190, label %land.lhs.true192, label %if.end185.sw.epilog_crit_edge

if.end185.sw.epilog_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true192:                                 ; preds = %if.end185
  %move_role = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 45
  %98 = ptrtoint ptr %move_role to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %move_role, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp194 = icmp eq i8 %99, 0
  br i1 %cmp194, label %if.then196, label %land.lhs.true192.sw.epilog_crit_edge

land.lhs.true192.sw.epilog_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then196:                                       ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #15
  call void @l2cap_move_start(ptr noundef %3) #13
  br label %sw.epilog

sw.bb198:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  %100 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %src_type, align 2
  %type.off.i = add i8 %101, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i = icmp ult i8 %type.off.i, 2
  %. = select i1 %switch.i, i32 -1, i32 -22
  br label %sw.epilog

sw.bb202:                                         ; preds = %if.end10
  %src_type203 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  %102 = ptrtoint ptr %src_type203 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %src_type203, align 2
  %type.off.i513 = add i8 %103, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i513)
  %switch.i514 = icmp ult i8 %type.off.i513, 2
  br i1 %switch.i514, label %if.end206, label %sw.bb202.sw.epilog_crit_edge

sw.bb202.sw.epilog_crit_edge:                     ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end206:                                        ; preds = %sw.bb202
  %mode207 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %104 = ptrtoint ptr %mode207 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %mode207, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %105)
  %cmp209 = icmp eq i8 %105, -128
  br i1 %cmp209, label %land.lhs.true211, label %if.end206.if.end218_crit_edge

if.end206.if.end218_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end218

land.lhs.true211:                                 ; preds = %if.end206
  %skc_state213 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %106 = ptrtoint ptr %skc_state213 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load volatile i8, ptr %skc_state213, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp215 = icmp eq i8 %107, 1
  br i1 %cmp215, label %land.lhs.true211.sw.epilog_crit_edge, label %land.lhs.true211.if.end218_crit_edge

land.lhs.true211.if.end218_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end218

land.lhs.true211.sw.epilog_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end218:                                        ; preds = %land.lhs.true211.if.end218_crit_edge, %if.end206.if.end218_crit_edge
  %call219 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %mtu, [2 x i32] %optval.coerce, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.end218.sw.epilog_crit_edge

if.end218.sw.epilog_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end222:                                        ; preds = %if.end218
  %108 = ptrtoint ptr %mode207 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %mode207, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %109)
  %cmp225 = icmp eq i8 %109, -127
  br i1 %cmp225, label %land.lhs.true227, label %if.end222.if.else235_crit_edge

if.end222.if.else235_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else235

land.lhs.true227:                                 ; preds = %if.end222
  %skc_state229 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %110 = ptrtoint ptr %skc_state229 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load volatile i8, ptr %skc_state229, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %cmp231 = icmp eq i8 %111, 1
  br i1 %cmp231, label %if.then233, label %land.lhs.true227.if.else235_crit_edge

land.lhs.true227.if.else235_crit_edge:            ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else235

if.then233:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %mtu, align 2
  %call234 = call i32 @l2cap_chan_reconfigure(ptr noundef %3, i16 noundef zeroext %113) #13
  br label %sw.epilog

if.else235:                                       ; preds = %land.lhs.true227.if.else235_crit_edge, %if.end222.if.else235_crit_edge
  %114 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %mtu, align 2
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 14
  %116 = ptrtoint ptr %imtu to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %imtu, align 4
  br label %sw.epilog

sw.bb237:                                         ; preds = %if.end10
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @enable_ecred to i32))
  %117 = load i8, ptr @enable_ecred, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool238.not = icmp eq i8 %117, 0
  br i1 %tobool238.not, label %sw.bb237.sw.epilog_crit_edge, label %do.body241

sw.bb237.sw.epilog_crit_edge:                     ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body241:                                       ; preds = %sw.bb237
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_setsockopt, %if.then253)) #13
          to label %do.end259 [label %if.then253], !srcloc !171

if.then253:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #15
  %skc_state255 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %118 = ptrtoint ptr %skc_state255 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load volatile i8, ptr %skc_state255, align 2
  %conv256 = zext i8 %119 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug558, ptr noundef nonnull @.str.39, i32 noundef %conv256) #13
  br label %do.end259

do.end259:                                        ; preds = %if.then253, %do.body241
  %skc_state261 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %120 = ptrtoint ptr %skc_state261 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load volatile i8, ptr %skc_state261, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %121)
  %cmp263.not = icmp eq i8 %121, 3
  br i1 %cmp263.not, label %if.end266, label %do.end259.sw.epilog_crit_edge

do.end259.sw.epilog_crit_edge:                    ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end266:                                        ; preds = %do.end259
  %chan_type267 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 18
  %122 = ptrtoint ptr %chan_type267 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %chan_type267, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %123)
  %cmp269.not = icmp eq i8 %123, 3
  br i1 %cmp269.not, label %if.end272, label %if.end266.sw.epilog_crit_edge

if.end266.sw.epilog_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end272:                                        ; preds = %if.end266
  %call273 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %mode, [2 x i32] %optval.coerce, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %do.body277, label %if.end272.sw.epilog_crit_edge

if.end272.sw.epilog_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body277:                                       ; preds = %if.end272
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_setsockopt, %if.then289)) #13
          to label %do.end293 [label %if.then289], !srcloc !171

if.then289:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %mode, align 1
  %conv290 = zext i8 %125 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug559, ptr noundef nonnull @.str.40, i32 noundef %conv290) #13
  br label %do.end293

do.end293:                                        ; preds = %if.then289, %do.body277
  %126 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %mode, align 1
  %call294 = call fastcc i32 @l2cap_set_mode(ptr noundef %3, i8 noundef zeroext %127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %do.body298, label %do.end293.sw.epilog_crit_edge

do.end293.sw.epilog_crit_edge:                    ; preds = %do.end293
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body298:                                       ; preds = %do.end293
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_setsockopt, %if.then310)) #13
          to label %sw.epilog [label %if.then310], !srcloc !171

if.then310:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #15
  %mode311 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %128 = ptrtoint ptr %mode311 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %mode311, align 2
  %conv312 = zext i8 %129 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug560, ptr noundef nonnull @.str.41, i32 noundef %conv312) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then310, %do.body298, %do.end293.sw.epilog_crit_edge, %if.end272.sw.epilog_crit_edge, %if.end266.sw.epilog_crit_edge, %do.end259.sw.epilog_crit_edge, %sw.bb237.sw.epilog_crit_edge, %if.else235, %if.then233, %if.end218.sw.epilog_crit_edge, %land.lhs.true211.sw.epilog_crit_edge, %sw.bb202.sw.epilog_crit_edge, %sw.bb198, %if.then196, %land.lhs.true192.sw.epilog_crit_edge, %if.end185.sw.epilog_crit_edge, %if.end174.sw.epilog_crit_edge, %if.end170.sw.epilog_crit_edge, %if.then11.i.i.i.i509, %if.else163, %if.then161, %if.end147.sw.epilog_crit_edge, %sw.bb136.sw.epilog_crit_edge, %if.else133, %if.then131, %lor.lhs.false122.sw.epilog_crit_edge, %if.then119.sw.epilog_crit_edge, %if.end112.sw.epilog_crit_edge, %if.then11.i.i.i.i481, %if.else104, %if.then101, %if.then11.i.i.i.i, %land.lhs.true88.sw.epilog_crit_edge, %if.else77, %if.then75, %lor.lhs.false66.sw.epilog_crit_edge, %if.end56, %if.then51.sw.epilog_crit_edge, %if.end41.sw.epilog_crit_edge, %if.end31.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call294, %do.end293.sw.epilog_crit_edge ], [ 0, %if.then310 ], [ %call234, %if.then233 ], [ 0, %if.else235 ], [ 0, %if.then196 ], [ 0, %land.lhs.true192.sw.epilog_crit_edge ], [ 0, %if.end185.sw.epilog_crit_edge ], [ 0, %if.then161 ], [ 0, %if.else163 ], [ 0, %if.then131 ], [ 0, %if.else133 ], [ 0, %if.then101 ], [ 0, %if.else104 ], [ 0, %if.end56 ], [ 0, %if.else77 ], [ 0, %if.then75 ], [ 0, %if.end41.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -14, %if.end23.sw.epilog_crit_edge ], [ -22, %if.end31.sw.epilog_crit_edge ], [ -22, %if.then51.sw.epilog_crit_edge ], [ -22, %lor.lhs.false66.sw.epilog_crit_edge ], [ -22, %land.lhs.true88.sw.epilog_crit_edge ], [ -22, %if.end112.sw.epilog_crit_edge ], [ -22, %lor.lhs.false122.sw.epilog_crit_edge ], [ -22, %if.then119.sw.epilog_crit_edge ], [ -22, %sw.bb136.sw.epilog_crit_edge ], [ -14, %if.end147.sw.epilog_crit_edge ], [ -22, %if.end170.sw.epilog_crit_edge ], [ -95, %if.end174.sw.epilog_crit_edge ], [ %., %sw.bb198 ], [ -22, %sw.bb202.sw.epilog_crit_edge ], [ -106, %land.lhs.true211.sw.epilog_crit_edge ], [ -14, %if.end218.sw.epilog_crit_edge ], [ -92, %sw.bb237.sw.epilog_crit_edge ], [ -22, %do.end259.sw.epilog_crit_edge ], [ -22, %if.end266.sw.epilog_crit_edge ], [ -14, %if.end272.sw.epilog_crit_edge ], [ -92, %if.end10.sw.epilog_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i.i481 ], [ -14, %if.then11.i.i.i.i509 ], [ 0, %do.body298 ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %err.0, %sw.epilog ], [ -92, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mtu) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sec) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #4 align 64 {
entry:
  %sec = alloca %struct.bt_security, align 2
  %pwr = alloca %struct.bt_power, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sec) #13
  %4 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %sec, align 2, !annotation !179
  %5 = getelementptr inbounds %struct.bt_security, ptr %sec, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !179
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr) #13
  %7 = ptrtoint ptr %pwr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %pwr, align 1, !annotation !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_getsockopt.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_getsockopt, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_getsockopt.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.21, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %level, label %do.end.cleanup_crit_edge [
    i32 6, label %if.then5
    i32 274, label %if.end10
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call fastcc i32 @l2cap_sock_getsockopt_old(ptr noundef %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen)
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 589) #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !181
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #13, !srcloc !184
  %asmresult = extractvalue { i32, i32 } %12, 0
  %asmresult13 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool15.not = icmp eq i32 %asmresult, 0
  br i1 %tobool15.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %13 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %optname, label %if.end17.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 7, label %sw.bb52
    i32 8, label %sw.bb82
    i32 9, label %sw.bb103
    i32 10, label %sw.bb133
    i32 12, label %sw.bb153
    i32 13, label %sw.bb182
    i32 14, label %sw.bb205
    i32 15, label %sw.bb234
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end17
  %chan_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %chan_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chan_type, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %15, label %sw.bb.sw.epilog_crit_edge [
    i8 3, label %sw.bb.if.end30_crit_edge
    i8 4, label %sw.bb.if.end30_crit_edge389
    i8 1, label %sw.bb.if.end30_crit_edge390
  ]

sw.bb.if.end30_crit_edge390:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

sw.bb.if.end30_crit_edge389:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

sw.bb.if.end30_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb.if.end30_crit_edge, %sw.bb.if.end30_crit_edge389, %sw.bb.if.end30_crit_edge390
  %17 = ptrtoint ptr %sec to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %sec, align 2
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %tobool31.not = icmp eq ptr %19, null
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end30
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %sec_level = getelementptr inbounds %struct.hci_conn, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sec_level, align 4
  %24 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %sec, align 2
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp36 = icmp eq i8 %26, 1
  br i1 %cmp36, label %if.then38, label %if.then32.if.end44_crit_edge

if.then32.if.end44_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %enc_key_size = getelementptr inbounds %struct.hci_conn, ptr %21, i32 0, i32 27
  %27 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enc_key_size, align 1
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %5, align 1
  br label %if.end44

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %sec_level42 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %30 = ptrtoint ptr %sec_level42 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sec_level42, align 1
  %32 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %sec, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then38, %if.then32.if.end44_crit_edge
  %33 = tail call i32 @llvm.umin.i32(i32 %asmresult13, i32 2)
  call void @__check_object_size(ptr noundef nonnull %sec, i32 noundef %33, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end44.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end44.copy_to_user.exit_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end44
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %33, i32 -1226833920) #17, !srcloc !185
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sec, i32 noundef %33) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %sec, i32 noundef %33) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end44.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %33, %if.end44.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %33, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool49.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select331 = select i1 %tobool49.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end17
  %skc_state54 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %skc_state54 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state54, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp56.not = icmp eq i8 %36, 3
  br i1 %cmp56.not, label %sw.bb52.if.end65_crit_edge, label %land.lhs.true58

sw.bb52.if.end65_crit_edge:                       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

land.lhs.true58:                                  ; preds = %sw.bb52
  %37 = ptrtoint ptr %skc_state54 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %skc_state54, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %38)
  %cmp62.not = icmp eq i8 %38, 4
  br i1 %cmp62.not, label %land.lhs.true58.if.end65_crit_edge, label %land.lhs.true58.sw.epilog_crit_edge

land.lhs.true58.sw.epilog_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true58.if.end65_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true58.if.end65_crit_edge, %sw.bb52.if.end65_crit_edge
  %flags = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %40, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 626) #13
  %41 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i333 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i333 to ptr
  %cpu_domain.i.i334 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i334) #7, !srcloc !181
  %and.i335 = and i32 %43, -13
  %or.i336 = or i32 %and.i335, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i336) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %and1.i, i32 -1226833921) #13, !srcloc !186
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool79.not = icmp eq i32 %44, 0
  %spec.select = select i1 %tobool79.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %flags87 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  %45 = ptrtoint ptr %flags87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags87, align 4
  %shr.i = lshr i32 %46, 3
  %and1.i337 = and i32 %shr.i, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 633) #13
  %47 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i338 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i338 to ptr
  %cpu_domain.i.i339 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i339) #7, !srcloc !181
  %and.i340 = and i32 %49, -13
  %or.i341 = or i32 %and.i340, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i341) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %and1.i337, i32 -1226833921) #13, !srcloc !187
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool100.not = icmp eq i32 %50, 0
  %spec.select325 = select i1 %tobool100.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end17
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %51 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sk_type, align 2
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %52, label %sw.bb103.sw.epilog_crit_edge [
    i16 5, label %sw.bb103.if.end118_crit_edge
    i16 1, label %sw.bb103.if.end118_crit_edge391
    i16 3, label %sw.bb103.if.end118_crit_edge392
  ]

sw.bb103.if.end118_crit_edge392:                  ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

sw.bb103.if.end118_crit_edge391:                  ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

sw.bb103.if.end118_crit_edge:                     ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

sw.bb103.sw.epilog_crit_edge:                     ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end118:                                        ; preds = %sw.bb103.if.end118_crit_edge, %sw.bb103.if.end118_crit_edge391, %sw.bb103.if.end118_crit_edge392
  %flags119 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  %54 = ptrtoint ptr %flags119 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags119, align 4
  %56 = trunc i32 %55 to i8
  %57 = lshr i8 %56, 1
  %conv121 = and i8 %57, 1
  %58 = ptrtoint ptr %pwr to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv121, ptr %pwr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult13)
  %cmp123 = icmp ne i32 %asmresult13, 0
  %. = zext i1 %cmp123 to i32
  call void @__check_object_size(ptr noundef nonnull %pwr, i32 noundef %., i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #13
  %call.i.i352 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i352, label %if.end118.copy_to_user.exit361_crit_edge, label %if.end.i.i356

if.end118.copy_to_user.exit361_crit_edge:         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit361

if.end.i.i356:                                    ; preds = %if.end118
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %., i32 -1226833920) #17, !srcloc !185
  %asmresult.i.i354 = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i354)
  %cmp.i6.i355 = icmp eq i32 %asmresult.i.i354, 0
  br i1 %cmp.i6.i355, label %if.then2.i.i359, label %if.end.i.i356.copy_to_user.exit361_crit_edge

if.end.i.i356.copy_to_user.exit361_crit_edge:     ; preds = %if.end.i.i356
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit361

if.then2.i.i359:                                  ; preds = %if.end.i.i356
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i357 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pwr, i32 noundef %.) #13
  %call.i12.i.i358 = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %pwr, i32 noundef %.) #13
  br label %copy_to_user.exit361

copy_to_user.exit361:                             ; preds = %if.then2.i.i359, %if.end.i.i356.copy_to_user.exit361_crit_edge, %if.end118.copy_to_user.exit361_crit_edge
  %n.addr.0.i360 = phi i32 [ %., %if.end118.copy_to_user.exit361_crit_edge ], [ %call.i12.i.i358, %if.then2.i.i359 ], [ %., %if.end.i.i356.copy_to_user.exit361_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i360)
  %tobool130.not = icmp eq i32 %n.addr.0.i360, 0
  %spec.select332 = select i1 %tobool130.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %chan_policy = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 19
  %60 = ptrtoint ptr %chan_policy to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %chan_policy, align 4
  %conv138 = zext i8 %61 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 654) #13
  %62 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i362 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i362 to ptr
  %cpu_domain.i.i363 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 4
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i363) #7, !srcloc !181
  %and.i364 = and i32 %64, -13
  %or.i365 = or i32 %and.i364, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i365) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %65 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %conv138, i32 -1226833921) #13, !srcloc !188
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool150.not = icmp eq i32 %65, 0
  %spec.select326 = select i1 %tobool150.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end17
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  %66 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %src_type, align 2
  %type.off.i = add i8 %67, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i = icmp ult i8 %type.off.i, 2
  br i1 %switch.i, label %if.end156, label %sw.bb153.sw.epilog_crit_edge

sw.bb153.sw.epilog_crit_edge:                     ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end156:                                        ; preds = %sw.bb153
  %skc_state158 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %68 = ptrtoint ptr %skc_state158 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load volatile i8, ptr %skc_state158, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp160.not = icmp eq i8 %69, 1
  br i1 %cmp160.not, label %if.end163, label %if.end156.sw.epilog_crit_edge

if.end156.sw.epilog_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end163:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  %omtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 15
  %70 = ptrtoint ptr %omtu to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %omtu, align 2
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 669) #13
  %72 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i366 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i366 to ptr
  %cpu_domain.i.i367 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 4
  %74 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i367) #7, !srcloc !181
  %and.i368 = and i32 %74, -13
  %or.i369 = or i32 %and.i368, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i369) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %75 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i16 %71, i32 -1226833921) #13, !srcloc !189
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool179.not = icmp eq i32 %75, 0
  %spec.select327 = select i1 %tobool179.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb182:                                         ; preds = %if.end17
  %src_type183 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  %76 = ptrtoint ptr %src_type183 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %src_type183, align 2
  %type.off.i382 = add i8 %77, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i382)
  %switch.i383 = icmp ult i8 %type.off.i382, 2
  br i1 %switch.i383, label %if.end186, label %sw.bb182.sw.epilog_crit_edge

sw.bb182.sw.epilog_crit_edge:                     ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end186:                                        ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #15
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 14
  %78 = ptrtoint ptr %imtu to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %imtu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 679) #13
  %80 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i370 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i370 to ptr
  %cpu_domain.i.i371 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 4
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i371) #7, !srcloc !181
  %and.i372 = and i32 %82, -13
  %or.i373 = or i32 %and.i372, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i373) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %83 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i16 %79, i32 -1226833921) #13, !srcloc !190
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool202.not = icmp eq i32 %83, 0
  %spec.select328 = select i1 %tobool202.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb205:                                         ; preds = %if.end17
  %skc_state207 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %skc_state207 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load volatile i8, ptr %skc_state207, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %85)
  %cmp209.not = icmp eq i8 %85, 1
  br i1 %cmp209.not, label %if.end212, label %sw.bb205.sw.epilog_crit_edge

sw.bb205.sw.epilog_crit_edge:                     ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end212:                                        ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call215 = tail call i32 @hci_conn_get_phy(ptr noundef %89) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 691) #13
  %90 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i374 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i374 to ptr
  %cpu_domain.i.i375 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 4
  %92 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i375) #7, !srcloc !181
  %and.i376 = and i32 %92, -13
  %or.i377 = or i32 %and.i376, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i377) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %93 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %call215, i32 -1226833921) #13, !srcloc !191
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool231.not = icmp eq i32 %93, 0
  %spec.select329 = select i1 %tobool231.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb234:                                         ; preds = %if.end17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @enable_ecred to i32))
  %94 = load i8, ptr @enable_ecred, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool235.not = icmp eq i8 %94, 0
  br i1 %tobool235.not, label %sw.bb234.sw.epilog_crit_edge, label %if.end237

sw.bb234.sw.epilog_crit_edge:                     ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end237:                                        ; preds = %sw.bb234
  %chan_type238 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 18
  %95 = ptrtoint ptr %chan_type238 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %chan_type238, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %96)
  %cmp240.not = icmp eq i8 %96, 3
  br i1 %cmp240.not, label %if.end243, label %if.end237.sw.epilog_crit_edge

if.end237.sw.epilog_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end243:                                        ; preds = %if.end237
  %mode.i = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %97 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %mode.i, align 2
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %98, label %if.end243.sw.epilog_crit_edge [
    i8 0, label %if.end243.if.end248_crit_edge
    i8 3, label %sw.bb1.i
    i8 4, label %sw.bb2.i
    i8 -128, label %sw.bb3.i
    i8 -127, label %sw.bb4.i
  ]

if.end243.if.end248_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

if.end243.sw.epilog_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

sw.bb2.i:                                         ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

sw.bb3.i:                                         ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

sw.bb4.i:                                         ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

if.end248:                                        ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end243.if.end248_crit_edge
  %retval.0.i384.ph = phi i8 [ %98, %if.end243.if.end248_crit_edge ], [ 1, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 3, %sw.bb3.i ], [ 4, %sw.bb4.i ]
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 712) #13
  %100 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i378 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i378 to ptr
  %cpu_domain.i.i379 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 4
  %102 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i379) #7, !srcloc !181
  %and.i380 = and i32 %102, -13
  %or.i381 = or i32 %and.i380, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i381) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %103 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %retval.0.i384.ph, i32 -1226833921) #13, !srcloc !192
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool265.not = icmp eq i32 %103, 0
  %spec.select330 = select i1 %tobool265.not, i32 0, i32 -14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end248, %if.end243.sw.epilog_crit_edge, %if.end237.sw.epilog_crit_edge, %sw.bb234.sw.epilog_crit_edge, %if.end212, %sw.bb205.sw.epilog_crit_edge, %if.end186, %sw.bb182.sw.epilog_crit_edge, %if.end163, %if.end156.sw.epilog_crit_edge, %sw.bb153.sw.epilog_crit_edge, %sw.bb133, %copy_to_user.exit361, %sw.bb103.sw.epilog_crit_edge, %sw.bb82, %if.end65, %land.lhs.true58.sw.epilog_crit_edge, %copy_to_user.exit, %sw.bb.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %land.lhs.true58.sw.epilog_crit_edge ], [ %spec.select, %if.end65 ], [ %spec.select325, %sw.bb82 ], [ -22, %sw.bb103.sw.epilog_crit_edge ], [ %spec.select326, %sw.bb133 ], [ -22, %sw.bb153.sw.epilog_crit_edge ], [ -107, %if.end156.sw.epilog_crit_edge ], [ %spec.select327, %if.end163 ], [ -22, %sw.bb182.sw.epilog_crit_edge ], [ %spec.select328, %if.end186 ], [ -107, %sw.bb205.sw.epilog_crit_edge ], [ %spec.select329, %if.end212 ], [ -92, %sw.bb234.sw.epilog_crit_edge ], [ -22, %if.end237.sw.epilog_crit_edge ], [ %spec.select330, %if.end248 ], [ -92, %if.end17.sw.epilog_crit_edge ], [ %spec.select331, %copy_to_user.exit ], [ %spec.select332, %copy_to_user.exit361 ], [ -22, %if.end243.sw.epilog_crit_edge ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end10.cleanup_crit_edge, %if.then5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %err.0, %sw.epilog ], [ -92, %do.end.cleanup_crit_edge ], [ -14, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sec) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_sendmsg.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_sendmsg, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_sendmsg.__UNIQUE_ID_ddebug561, ptr noundef nonnull @.str.7, ptr noundef %sock, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.if.end8_crit_edge, label %sock_error.exit, !prof !172

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

sock_error.exit:                                  ; preds = %do.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #13, !srcloc !194
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  %sub.i = sub i32 0, %asmresult.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool6.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool6.not, label %sock_error.exit.if.end8_crit_edge, label %sock_error.exit.cleanup_crit_edge

sock_error.exit.cleanup_crit_edge:                ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sock_error.exit.if.end8_crit_edge:                ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %sock_error.exit.if.end8_crit_edge, %do.end.if.end8_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.not = icmp eq i8 %10, 1
  br i1 %cmp.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %11 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_flags, align 4
  %call16 = tail call i32 @bt_sock_wait_ready(ptr noundef %1, i32 noundef %12) #13
  tail call void @release_sock(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #13
  %13 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %14) #13
  %call20 = tail call i32 @l2cap_chan_send(ptr noundef %3, ptr noundef %msg, i32 noundef %len) #13
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %sock_error.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ %sub.i, %sock_error.exit.cleanup_crit_edge ], [ -95, %if.end8.cleanup_crit_edge ], [ -107, %if.end11.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp eq i8 %3, 6
  br i1 %cmp, label %land.lhs.true, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %flags3 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags3, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.end27_crit_edge, label %if.then

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then:                                          ; preds = %land.lhs.true
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 8
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %9)
  %cmp5 = icmp eq i8 %9, -127
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 1, ptr %skc_state, align 2
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %state, align 4
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 8
  tail call void @__l2cap_ecred_conn_rsp_defer(ptr noundef %13) #13
  br label %done

if.else:                                          ; preds = %if.then
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %src_type, align 2
  %type.off.i = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i = icmp ult i8 %type.off.i, 2
  br i1 %switch.i, label %if.then14, label %if.else20

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %16)
  store volatile i8 1, ptr %skc_state, align 2
  %state18 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %state18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %state18, align 4
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 8
  tail call void @__l2cap_le_connect_rsp_defer(ptr noundef %19) #13
  br label %done

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store volatile i8 7, ptr %skc_state, align 2
  %state24 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 5
  %21 = ptrtoint ptr %state24 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 7, ptr %state24, align 4
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 8
  tail call void @__l2cap_connect_rsp_defer(ptr noundef %23) #13
  br label %done

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %entry.if.end27_crit_edge
  tail call void @release_sock(ptr noundef %1) #13
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp29 = icmp eq i16 %25, 1
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = tail call i32 @bt_sock_stream_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #13
  br label %if.end35

if.else33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = tail call i32 @bt_sock_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #13
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then31
  %err.0 = phi i32 [ %call32, %if.then31 ], [ %call34, %if.else33 ]
  %chan36 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %chan36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan36, align 8
  %mode37 = getelementptr inbounds %struct.l2cap_chan, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %mode37 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mode37, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp39.not = icmp eq i8 %29, 3
  br i1 %cmp39.not, label %if.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %30 = ptrtoint ptr %chan36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan36, align 8
  %conn_state = getelementptr inbounds %struct.l2cap_chan, ptr %31, i32 0, i32 39
  %32 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %conn_state, align 4
  %34 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool45.not = icmp eq i32 %34, 0
  br i1 %tobool45.not, label %if.end42.done_crit_edge, label %if.end47

if.end42.done_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end47:                                         ; preds = %if.end42
  %rx_busy_skb = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %rx_busy_skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_busy_skb, align 4
  %tobool48.not = icmp eq ptr %36, null
  br i1 %tobool48.not, label %if.end47.if.end57_crit_edge, label %if.then49

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then49:                                        ; preds = %if.end47
  %call51 = tail call i32 @__sock_queue_rcv_skb(ptr noundef %1, ptr noundef nonnull %36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.then49.done_crit_edge

if.then49.done_crit_edge:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %rx_busy_skb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rx_busy_skb, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end47.if.end57_crit_edge
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #13
  %38 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %40 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sk_rcvbuf, align 8
  %shr = ashr i32 %41, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %shr)
  %cmp59.not = icmp sgt i32 %39, %shr
  br i1 %cmp59.not, label %if.end57.done_crit_edge, label %if.then61

if.end57.done_crit_edge:                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %chan36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chan36, align 8
  tail call void @l2cap_chan_busy(ptr noundef %43, i32 noundef 0) #13
  br label %done

done:                                             ; preds = %if.then61, %if.end57.done_crit_edge, %if.then49.done_crit_edge, %if.end42.done_crit_edge, %if.else20, %if.then14, %if.then7
  %err.1 = phi i32 [ %err.0, %if.then49.done_crit_edge ], [ %err.0, %if.then61 ], [ %err.0, %if.end57.done_crit_edge ], [ %err.0, %if.end42.done_crit_edge ], [ 0, %if.then14 ], [ 0, %if.else20 ], [ 0, %if.then7 ]
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %done ], [ %err.0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l2cap_sock_kill(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_kill.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_kill, %if.then5)) #13
          to label %do.end [label %if.then5], !srcloc !171

if.then5:                                         ; preds = %do.body
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 9
  br i1 %8, label %switch.lookup, label %if.then5.state_to_string.exit_crit_edge

if.then5.state_to_string.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %state_to_string.exit

switch.lookup:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.l2cap_sock_kill, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state_to_string.exit

state_to_string.exit:                             ; preds = %switch.lookup, %if.then5.state_to_string.exit_crit_edge
  %retval.0.i14 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.19, %if.then5.state_to_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_kill.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.9, ptr noundef %sk, ptr noundef nonnull %retval.0.i14) #13
  br label %do.end

do.end:                                           ; preds = %state_to_string.exit, %do.body
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %sk, i32 0, i32 1
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 8
  tail call void @l2cap_chan_put(ptr noundef %12) #13
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %0, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !177
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %return

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  tail call void @sk_free(ptr noundef %sk) #13
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_add_scid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_add_psm(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l2cap_sock_init_pid(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.l2cap_pinfo, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 8
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %3)
  %cmp.not = icmp eq i8 %3, -127
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_peer_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %sk_peer_lock) #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.get_pid.exit_crit_edge, label %if.then.i

if.end.get_pid.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #13, !srcloc !174
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !175

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %.sink.i.i.i.i) #13
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %if.end.get_pid.exit_crit_edge
  %sk_peer_pid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 60
  %14 = ptrtoint ptr %sk_peer_pid to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %sk_peer_pid, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_peer_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %get_pid.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_connect(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_wait_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bt_accept_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__l2cap_wait_ack(ptr noundef %sk, ptr nocapture noundef readonly %chan) #4 align 64 {
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !161) #13
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 1000
  %14 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 8
  call void @add_wait_queue(ptr noundef %16, ptr noundef nonnull %wait) #13
  br label %__here

__here:                                           ; preds = %entry
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@__l2cap_wait_ack, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %20, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  %unacked_frames = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 53
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 5
  br label %do.body66

do.body66:                                        ; preds = %land.rhs191.do.body66_crit_edge, %__here
  %timeo.0 = phi i32 [ 20, %__here ], [ %call95, %land.rhs191.do.body66_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__l2cap_wait_ack.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__l2cap_wait_ack, %if.then77)) #13
          to label %do.end83 [label %if.then77], !srcloc !171

if.then77:                                        ; preds = %do.body66
  %22 = ptrtoint ptr %unacked_frames to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %unacked_frames, align 4
  %conv = zext i16 %23 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then77.cond.end_crit_edge, label %cond.false

if.then77.cond.end_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub79 = sub i32 %add, %25
  %call80 = call i32 @jiffies_to_msecs(i32 noundef %sub79) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then77.cond.end_crit_edge
  %cond = phi i32 [ %call80, %cond.false ], [ 0, %if.then77.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__l2cap_wait_ack.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %cond) #13
  br label %do.end83

do.end83:                                         ; preds = %cond.end, %do.body66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0)
  %tobool84.not = icmp eq i32 %timeo.0, 0
  %spec.select = select i1 %tobool84.not, i32 20, i32 %timeo.0
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %do.end83.if.then92_crit_edge, !prof !172

do.end83.if.then92_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then92

signal_pending.exit:                              ; preds = %do.end83
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %and1.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool91.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool91.not, label %if.end94, label %signal_pending.exit.if.then92_crit_edge

signal_pending.exit.if.then92_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then92

if.then92:                                        ; preds = %signal_pending.exit.if.then92_crit_edge, %do.end83.if.then92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %spec.select)
  %cmp.i = icmp eq i32 %spec.select, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  br label %__here248

if.end94:                                         ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %sk) #13
  %call95 = call i32 @schedule_timeout(i32 noundef %spec.select) #13
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #13
  br label %__here147

__here147:                                        ; preds = %if.end94
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change151 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change151 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@__l2cap_wait_ack, %__here147) to i32), ptr %task_state_change151, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %38, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  %40 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i298 = icmp eq i32 %41, 0
  br i1 %tobool.not.i298, label %__here147.if.end180_crit_edge, label %sock_error.exit, !prof !172

__here147.if.end180_crit_edge:                    ; preds = %__here147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end180

sock_error.exit:                                  ; preds = %__here147
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #13
  %42 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #13, !srcloc !194
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool178.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool178.not, label %sock_error.exit.if.end180_crit_edge, label %__here248.loopexit.split.loop.exit309

sock_error.exit.if.end180_crit_edge:              ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end180

if.end180:                                        ; preds = %sock_error.exit.if.end180_crit_edge, %__here147.if.end180_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub181 = sub i32 %add, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub181)
  %cmp182 = icmp slt i32 %sub181, 0
  br i1 %cmp182, label %if.end180.__here248_crit_edge, label %do.cond186

if.end180.__here248_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here248

do.cond186:                                       ; preds = %if.end180
  %44 = ptrtoint ptr %unacked_frames to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %unacked_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp189.not = icmp eq i16 %45, 0
  br i1 %cmp189.not, label %do.cond186.__here248_crit_edge, label %land.rhs191

do.cond186.__here248_crit_edge:                   ; preds = %do.cond186
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here248

land.rhs191:                                      ; preds = %do.cond186
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %state, align 4
  %cmp193 = icmp eq i8 %47, 1
  br i1 %cmp193, label %land.rhs191.do.body66_crit_edge, label %land.rhs191.__here248_crit_edge

land.rhs191.__here248_crit_edge:                  ; preds = %land.rhs191
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here248

land.rhs191.do.body66_crit_edge:                  ; preds = %land.rhs191
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body66

__here248.loopexit.split.loop.exit309:            ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #15
  %asmresult.i.i.le = extractvalue { i32, i32 } %42, 0
  %sub.i.le = sub i32 0, %asmresult.i.i.le
  br label %__here248

__here248:                                        ; preds = %__here248.loopexit.split.loop.exit309, %land.rhs191.__here248_crit_edge, %do.cond186.__here248_crit_edge, %if.end180.__here248_crit_edge, %if.then92
  %err.0 = phi i32 [ %cond.i, %if.then92 ], [ %sub.i.le, %__here248.loopexit.split.loop.exit309 ], [ -67, %if.end180.__here248_crit_edge ], [ 0, %do.cond186.__here248_crit_edge ], [ 0, %land.rhs191.__here248_crit_edge ]
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %task_state_change252 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 212
  %50 = ptrtoint ptr %task_state_change252 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 ptrtoint (ptr blockaddress(@__l2cap_wait_ack, %__here248) to i32), ptr %task_state_change252, align 4
  %51 = load ptr, ptr %task, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %51, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  %53 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %14, align 8
  call void @remove_wait_queue(ptr noundef %54, ptr noundef nonnull %wait) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_conn_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_close(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_conn_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2cap_sock_setsockopt_old(ptr nocapture noundef readonly %sock, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) unnamed_addr #4 align 64 {
entry:
  %opts = alloca %struct.l2cap_options, align 2
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %opts) #13
  %4 = call ptr @memset(ptr %opts, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #13
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %opt, align 4, !annotation !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_setsockopt_old.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_setsockopt_old, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_setsockopt_old.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.21, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %optname, label %do.end.sw.epilog112_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb77
  ]

do.end.sw.epilog112_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

sw.bb:                                            ; preds = %do.end
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %src_type, align 2
  %type.off.i = add i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i = icmp ult i8 %type.off.i, 2
  br i1 %switch.i, label %sw.bb.sw.epilog112_crit_edge, label %if.end7

sw.bb.sw.epilog112_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

if.end7:                                          ; preds = %sw.bb
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  br i1 %cmp, label %if.end7.sw.epilog112_crit_edge, label %if.end10

if.end7.sw.epilog112_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

if.end10:                                         ; preds = %if.end7
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %imtu to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %imtu, align 4
  %imtu11 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 1
  %13 = ptrtoint ptr %imtu11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %imtu11, align 2
  %omtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %omtu to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %omtu, align 2
  %16 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %opts, align 2
  %flush_to = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %flush_to to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flush_to, align 4
  %flush_to13 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 2
  %19 = ptrtoint ptr %flush_to13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flush_to13, align 2
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mode, align 2
  %mode14 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 3
  %22 = ptrtoint ptr %mode14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %mode14, align 2
  %fcs = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 26
  %23 = ptrtoint ptr %fcs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fcs, align 2
  %fcs15 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 4
  %25 = ptrtoint ptr %fcs15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %fcs15, align 1
  %max_tx = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 30
  %26 = ptrtoint ptr %max_tx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_tx, align 2
  %max_tx16 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 5
  %28 = ptrtoint ptr %max_tx16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %max_tx16, align 2
  %tx_win = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 27
  %29 = ptrtoint ptr %tx_win to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tx_win, align 4
  %txwin_size = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 6
  %31 = ptrtoint ptr %txwin_size to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %txwin_size, align 2
  %32 = tail call i32 @llvm.umin.i32(i32 %optlen, i32 12)
  %call20 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %opts, [2 x i32] %optval.coerce, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end10.sw.epilog112_crit_edge

if.end10.sw.epilog112_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

if.end23:                                         ; preds = %if.end10
  %33 = ptrtoint ptr %txwin_size to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %txwin_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %34)
  %cmp26 = icmp ugt i16 %34, 16383
  br i1 %cmp26, label %if.end23.sw.epilog112_crit_edge, label %if.end29

if.end23.sw.epilog112_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

if.end29:                                         ; preds = %if.end23
  %35 = ptrtoint ptr %imtu11 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %imtu11, align 2
  %scid.i = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 13
  %37 = ptrtoint ptr %scid.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %scid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %38)
  %cond.i = icmp eq i16 %38, 4
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %36)
  %cmp.i = icmp ult i16 %36, 23
  br i1 %cmp.i, label %sw.bb.i.sw.epilog112_crit_edge, label %sw.bb.i.if.end33_crit_edge

sw.bb.i.if.end33_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

sw.bb.i.sw.epilog112_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

sw.default.i:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %36)
  %cmp4.i = icmp ult i16 %36, 48
  br i1 %cmp4.i, label %sw.default.i.sw.epilog112_crit_edge, label %sw.default.i.if.end33_crit_edge

sw.default.i.if.end33_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

sw.default.i.sw.epilog112_crit_edge:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

if.end33:                                         ; preds = %sw.default.i.if.end33_crit_edge, %sw.bb.i.if.end33_crit_edge
  %39 = ptrtoint ptr %mode14 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mode14, align 2
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %40, label %if.end33.sw.epilog112_crit_edge [
    i8 0, label %sw.bb36
    i8 3, label %if.end33.sw.bb37_crit_edge
    i8 4, label %if.end33.sw.bb37_crit_edge166
  ]

if.end33.sw.bb37_crit_edge166:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb37

if.end33.sw.bb37_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb37

if.end33.sw.epilog112_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

sw.bb36:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %conf_state = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 38
  call void @_clear_bit(i32 noundef 7, ptr noundef %conf_state) #13
  br label %if.end44

sw.bb37:                                          ; preds = %if.end33.sw.bb37_crit_edge, %if.end33.sw.bb37_crit_edge166
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_ertm to i32))
  %42 = load i8, ptr @disable_ertm, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool38.not = icmp eq i8 %42, 0
  br i1 %tobool38.not, label %sw.bb37.if.end44_crit_edge, label %sw.bb37.sw.epilog112_crit_edge

sw.bb37.sw.epilog112_crit_edge:                   ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

sw.bb37.if.end44_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.end44:                                         ; preds = %sw.bb37.if.end44_crit_edge, %sw.bb36
  %43 = ptrtoint ptr %mode14 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mode14, align 2
  %45 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %mode, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_setsockopt_old.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_setsockopt_old, %if.then59)) #13
          to label %do.end64 [label %if.then59], !srcloc !171

if.then59:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mode, align 2
  %conv61 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_setsockopt_old.__UNIQUE_ID_ddebug552, ptr noundef nonnull @.str.41, i32 noundef %conv61) #13
  br label %do.end64

do.end64:                                         ; preds = %if.then59, %if.end44
  %48 = ptrtoint ptr %imtu11 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %imtu11, align 2
  %50 = ptrtoint ptr %imtu to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %imtu, align 4
  %51 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %opts, align 2
  %53 = ptrtoint ptr %omtu to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %omtu, align 2
  %54 = ptrtoint ptr %fcs15 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fcs15, align 1
  %56 = ptrtoint ptr %fcs to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %fcs, align 2
  %57 = ptrtoint ptr %max_tx16 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %max_tx16, align 2
  %59 = ptrtoint ptr %max_tx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %max_tx, align 2
  %60 = ptrtoint ptr %txwin_size to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %txwin_size, align 2
  %62 = ptrtoint ptr %tx_win to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %tx_win, align 4
  %63 = ptrtoint ptr %flush_to13 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flush_to13, align 2
  %65 = ptrtoint ptr %flush_to to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %flush_to, align 4
  br label %sw.epilog112

sw.bb77:                                          ; preds = %do.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %66 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %sw.bb77
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %67 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %66, i32 4, i32 -1226833920) #17, !srcloc !180
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !172

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #13
  %68 = call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !181
  %and.i.i.i.i.i.i = and i32 %70, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %66, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #13, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end81_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !172

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end81_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i163 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i163
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %71 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i163)
  br label %sw.epilog112

if.end.i.i:                                       ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %66, align 1
  %74 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %opt, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end81_crit_edge
  %75 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %opt, align 4
  %and = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool82.not = icmp eq i32 %and, 0
  br i1 %tobool82.not, label %if.end84, label %if.end81.sw.epilog112_crit_edge

if.end81.sw.epilog112_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog112

if.end84:                                         ; preds = %if.end81
  %and85 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end88_crit_edge, label %if.then87

if.end84.if.end88_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %sec_level = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %77 = ptrtoint ptr %sec_level to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %sec_level, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end84.if.end88_crit_edge
  %and89 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end93_crit_edge, label %if.then91

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %sec_level92 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %78 = ptrtoint ptr %sec_level92 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %sec_level92, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88.if.end93_crit_edge
  %and94 = and i32 %76, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end98_crit_edge, label %if.then96

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  %sec_level97 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %79 = ptrtoint ptr %sec_level97 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %sec_level97, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end93.if.end98_crit_edge
  %and99 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %flags102 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  br i1 %tobool100.not, label %if.else, label %if.then101

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 0, ptr noundef %flags102) #13
  br label %if.end103

if.else:                                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags102) #13
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then101
  %80 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %opt, align 4
  %and104 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %flags109 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  br i1 %tobool105.not, label %if.else108, label %if.then106

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 2, ptr noundef %flags109) #13
  br label %sw.epilog112

if.else108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags109) #13
  br label %sw.epilog112

sw.epilog112:                                     ; preds = %if.else108, %if.then106, %if.end81.sw.epilog112_crit_edge, %if.then11.i.i.i.i, %do.end64, %sw.bb37.sw.epilog112_crit_edge, %if.end33.sw.epilog112_crit_edge, %sw.default.i.sw.epilog112_crit_edge, %sw.bb.i.sw.epilog112_crit_edge, %if.end23.sw.epilog112_crit_edge, %if.end10.sw.epilog112_crit_edge, %if.end7.sw.epilog112_crit_edge, %sw.bb.sw.epilog112_crit_edge, %do.end.sw.epilog112_crit_edge
  %err.1 = phi i32 [ 0, %if.then106 ], [ 0, %if.else108 ], [ 0, %do.end64 ], [ -22, %sw.bb.sw.epilog112_crit_edge ], [ -22, %if.end7.sw.epilog112_crit_edge ], [ -14, %if.end10.sw.epilog112_crit_edge ], [ -22, %if.end23.sw.epilog112_crit_edge ], [ -22, %if.end81.sw.epilog112_crit_edge ], [ -92, %do.end.sw.epilog112_crit_edge ], [ -22, %if.end33.sw.epilog112_crit_edge ], [ -22, %sw.bb37.sw.epilog112_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -22, %sw.bb.i.sw.epilog112_crit_edge ], [ -22, %sw.default.i.sw.epilog112_crit_edge ]
  call void @release_sock(ptr noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opts) #13
  ret i32 %err.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #17, !srcloc !180
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !172

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !181
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !172

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

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_conn_security(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_check_security(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_move_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_reconfigure(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2cap_set_mode(ptr noundef %chan, i8 noundef zeroext %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %mode, label %entry.return_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb7
    i8 3, label %sw.bb15
    i8 4, label %sw.bb20
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 9
  %1 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %src_type, align 2
  %type.off.i = add i8 %2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i = icmp ult i8 %type.off.i, 2
  br i1 %switch.i, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %conf_state = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %conf_state) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_ertm to i32))
  %3 = load i8, ptr @disable_ertm, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %sw.bb1.return_crit_edge, label %lor.lhs.false

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %sw.bb1
  %src_type2 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 9
  %4 = ptrtoint ptr %src_type2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %src_type2, align 2
  %type.off.i33 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i33)
  %switch.i34 = icmp ult i8 %type.off.i33, 2
  br i1 %switch.i34, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_ertm to i32))
  %6 = load i8, ptr @disable_ertm, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %sw.bb7.return_crit_edge, label %lor.lhs.false9

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false9:                                   ; preds = %sw.bb7
  %src_type10 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 9
  %7 = ptrtoint ptr %src_type10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %src_type10, align 2
  %type.off.i35 = add i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i35)
  %switch.i36 = icmp ult i8 %type.off.i35, 2
  br i1 %switch.i36, label %lor.lhs.false9.return_crit_edge, label %lor.lhs.false9.sw.epilog_crit_edge

lor.lhs.false9.sw.epilog_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false9.return_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb15:                                          ; preds = %entry
  %src_type16 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 9
  %9 = ptrtoint ptr %src_type16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %src_type16, align 2
  %type.off.i37 = add i8 %10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i37)
  %switch.i38 = icmp ult i8 %type.off.i37, 2
  br i1 %switch.i38, label %sw.bb15.sw.epilog_crit_edge, label %sw.bb15.return_crit_edge

sw.bb15.return_crit_edge:                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %src_type21 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 9
  %11 = ptrtoint ptr %src_type21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %src_type21, align 2
  %type.off.i39 = add i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i39)
  %switch.i40 = icmp ult i8 %type.off.i39, 2
  br i1 %switch.i40, label %sw.bb20.sw.epilog_crit_edge, label %sw.bb20.return_crit_edge

sw.bb20.return_crit_edge:                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %lor.lhs.false9.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end
  %mode.addr.0 = phi i8 [ 0, %if.end ], [ 3, %lor.lhs.false.sw.epilog_crit_edge ], [ 4, %lor.lhs.false9.sw.epilog_crit_edge ], [ -128, %sw.bb15.sw.epilog_crit_edge ], [ -127, %sw.bb20.sw.epilog_crit_edge ]
  %mode25 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 17
  %13 = ptrtoint ptr %mode25 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %mode.addr.0, ptr %mode25, align 2
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb20.return_crit_edge, %sw.bb15.return_crit_edge, %lor.lhs.false9.return_crit_edge, %sw.bb7.return_crit_edge, %lor.lhs.false.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %lor.lhs.false9.return_crit_edge ], [ -22, %sw.bb7.return_crit_edge ], [ -22, %sw.bb15.return_crit_edge ], [ -22, %sw.bb20.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2cap_sock_getsockopt_old(ptr nocapture noundef readonly %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) unnamed_addr #4 align 64 {
entry:
  %opts = alloca %struct.l2cap_options, align 2
  %cinfo = alloca %struct.l2cap_conninfo, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %chan2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %opts) #13
  %4 = call ptr @memset(ptr %opts, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cinfo) #13
  %5 = call ptr @memset(ptr %cinfo, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_getsockopt_old.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_getsockopt_old, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_getsockopt_old.__UNIQUE_ID_ddebug538, ptr noundef nonnull @.str.21, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 464) #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !181
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #13, !srcloc !199
  %asmresult = extractvalue { i32, i32 } %9, 0
  %asmresult7 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool9.not = icmp eq i32 %asmresult, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %10 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %optname, label %if.end11.sw.epilog119_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb54
    i32 2, label %sw.bb87
  ]

if.end11.sw.epilog119_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog119

sw.bb:                                            ; preds = %if.end11
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %src_type, align 2
  %type.off.i = add i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i = icmp ult i8 %type.off.i, 2
  br i1 %switch.i, label %land.lhs.true, label %sw.bb.if.end15_crit_edge

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %sw.bb
  %scid = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %scid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %scid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %14)
  %cmp.not = icmp eq i16 %14, 4
  br i1 %cmp.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.sw.epilog119_crit_edge

land.lhs.true.sw.epilog119_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog119

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %sw.bb.if.end15_crit_edge
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mode, align 2
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %16, label %if.end15.sw.epilog119_crit_edge [
    i8 0, label %if.end15.if.end21_crit_edge
    i8 3, label %if.end15.if.end21_crit_edge194
    i8 4, label %if.end15.if.end21_crit_edge195
  ]

if.end15.if.end21_crit_edge195:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end15.if.end21_crit_edge194:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end15.sw.epilog119_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog119

if.end21:                                         ; preds = %if.end15.if.end21_crit_edge, %if.end15.if.end21_crit_edge194, %if.end15.if.end21_crit_edge195
  %18 = getelementptr inbounds i8, ptr %opts, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %18, align 2
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %imtu to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %imtu, align 4
  %imtu22 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 1
  %22 = ptrtoint ptr %imtu22 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %imtu22, align 2
  %omtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %omtu to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %omtu, align 2
  %25 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %opts, align 2
  %flush_to = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 16
  %26 = ptrtoint ptr %flush_to to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flush_to, align 4
  %flush_to24 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 2
  %28 = ptrtoint ptr %flush_to24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %flush_to24, align 2
  %mode26 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 3
  %29 = ptrtoint ptr %mode26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %16, ptr %mode26, align 2
  %fcs = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 26
  %30 = ptrtoint ptr %fcs to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fcs, align 2
  %fcs27 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 4
  %32 = ptrtoint ptr %fcs27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %fcs27, align 1
  %max_tx = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 30
  %33 = ptrtoint ptr %max_tx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_tx, align 2
  %max_tx28 = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 5
  %35 = ptrtoint ptr %max_tx28 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %max_tx28, align 2
  %tx_win = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 27
  %36 = ptrtoint ptr %tx_win to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tx_win, align 4
  %txwin_size = getelementptr inbounds %struct.l2cap_options, ptr %opts, i32 0, i32 6
  %38 = ptrtoint ptr %txwin_size to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %txwin_size, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_getsockopt_old.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_getsockopt_old, %if.then41)) #13
          to label %do.end46 [label %if.then41], !srcloc !171

if.then41:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mode, align 2
  %conv43 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_getsockopt_old.__UNIQUE_ID_ddebug539, ptr noundef nonnull @.str.41, i32 noundef %conv43) #13
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %if.end21
  %41 = tail call i32 @llvm.umin.i32(i32 %asmresult7, i32 12)
  call void @__check_object_size(ptr noundef nonnull %opts, i32 noundef %41, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %do.end46.copy_to_user.exit_crit_edge, label %if.end.i.i

do.end46.copy_to_user.exit_crit_edge:             ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %do.end46
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %41, i32 -1226833920) #17, !srcloc !185
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %opts, i32 noundef %41) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %opts, i32 noundef %41) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %do.end46.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %41, %do.end46.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %41, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool51.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select160 = select i1 %tobool51.not, i32 0, i32 -14
  br label %sw.epilog119

sw.bb54:                                          ; preds = %if.end11
  %sec_level = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %43 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sec_level, align 1
  %switch.tableidx = add i8 %44, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %45 = icmp ult i8 %switch.tableidx, 4
  br i1 %45, label %switch.lookup, label %sw.bb54.sw.epilog61_crit_edge

sw.bb54.sw.epilog61_crit_edge:                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog61

switch.lookup:                                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  %46 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.l2cap_sock_getsockopt_old, i32 0, i32 %46
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %switch.lookup, %sw.bb54.sw.epilog61_crit_edge
  %opt.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %sw.bb54.sw.epilog61_crit_edge ]
  %flags = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %49, 1
  %50 = or i32 %and1.i, %opt.0
  %51 = load volatile i32, ptr %flags, align 4
  %52 = shl i32 %51, 2
  %53 = and i32 %52, 16
  %54 = or i32 %50, %53
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 539) #13
  %55 = tail call i32 @llvm.read_register.i32(metadata !161) #13
  %and.i.i.i167 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i167 to ptr
  %cpu_domain.i.i168 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 4
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i168) #7, !srcloc !181
  %and.i169 = and i32 %57, -13
  %or.i170 = or i32 %and.i169, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i170) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  %58 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %54, i32 -1226833921) #13, !srcloc !200
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #13, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool84.not = icmp eq i32 %58, 0
  %spec.select162 = select i1 %tobool84.not, i32 0, i32 -14
  br label %sw.epilog119

sw.bb87:                                          ; preds = %if.end11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp89.not = icmp eq i8 %60, 1
  br i1 %cmp89.not, label %sw.bb87.if.end102_crit_edge, label %land.lhs.true91

sw.bb87.if.end102_crit_edge:                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

land.lhs.true91:                                  ; preds = %sw.bb87
  %61 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %62)
  %cmp95 = icmp eq i8 %62, 6
  br i1 %cmp95, label %land.lhs.true97, label %land.lhs.true91.sw.epilog119_crit_edge

land.lhs.true91.sw.epilog119_crit_edge:           ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog119

land.lhs.true97:                                  ; preds = %land.lhs.true91
  %flags98 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %flags98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags98, align 4
  %and1.i171 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i171)
  %tobool100.not = icmp eq i32 %and1.i171, 0
  br i1 %tobool100.not, label %land.lhs.true97.sw.epilog119_crit_edge, label %land.lhs.true97.if.end102_crit_edge

land.lhs.true97.if.end102_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

land.lhs.true97.sw.epilog119_crit_edge:           ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog119

if.end102:                                        ; preds = %land.lhs.true97.if.end102_crit_edge, %sw.bb87.if.end102_crit_edge
  %65 = getelementptr inbounds i8, ptr %cinfo, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %65, align 2
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %handle = getelementptr inbounds %struct.hci_conn, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %handle, align 2
  %73 = ptrtoint ptr %cinfo to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %cinfo, align 2
  %dev_class = getelementptr inbounds %struct.l2cap_conninfo, ptr %cinfo, i32 0, i32 1
  %74 = load ptr, ptr %3, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %dev_class105 = getelementptr inbounds %struct.hci_conn, ptr %76, i32 0, i32 18
  %77 = call ptr @memcpy(ptr %dev_class, ptr %dev_class105, i32 3)
  %78 = tail call i32 @llvm.umin.i32(i32 %asmresult7, i32 6)
  call void @__check_object_size(ptr noundef nonnull %cinfo, i32 noundef %78, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #13
  %call.i.i180 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i180, label %if.end102.copy_to_user.exit189_crit_edge, label %if.end.i.i184

if.end102.copy_to_user.exit189_crit_edge:         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit189

if.end.i.i184:                                    ; preds = %if.end102
  %79 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %78, i32 -1226833920) #17, !srcloc !185
  %asmresult.i.i182 = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i182)
  %cmp.i6.i183 = icmp eq i32 %asmresult.i.i182, 0
  br i1 %cmp.i6.i183, label %if.then2.i.i187, label %if.end.i.i184.copy_to_user.exit189_crit_edge

if.end.i.i184.copy_to_user.exit189_crit_edge:     ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit189

if.then2.i.i187:                                  ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i185 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cinfo, i32 noundef %78) #13
  %call.i12.i.i186 = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %cinfo, i32 noundef %78) #13
  br label %copy_to_user.exit189

copy_to_user.exit189:                             ; preds = %if.then2.i.i187, %if.end.i.i184.copy_to_user.exit189_crit_edge, %if.end102.copy_to_user.exit189_crit_edge
  %n.addr.0.i188 = phi i32 [ %78, %if.end102.copy_to_user.exit189_crit_edge ], [ %call.i12.i.i186, %if.then2.i.i187 ], [ %78, %if.end.i.i184.copy_to_user.exit189_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i188)
  %tobool115.not = icmp eq i32 %n.addr.0.i188, 0
  %spec.select161 = select i1 %tobool115.not, i32 0, i32 -14
  br label %sw.epilog119

sw.epilog119:                                     ; preds = %copy_to_user.exit189, %land.lhs.true97.sw.epilog119_crit_edge, %land.lhs.true91.sw.epilog119_crit_edge, %sw.epilog61, %copy_to_user.exit, %if.end15.sw.epilog119_crit_edge, %land.lhs.true.sw.epilog119_crit_edge, %if.end11.sw.epilog119_crit_edge
  %err.1 = phi i32 [ -22, %land.lhs.true.sw.epilog119_crit_edge ], [ -107, %land.lhs.true97.sw.epilog119_crit_edge ], [ -107, %land.lhs.true91.sw.epilog119_crit_edge ], [ -92, %if.end11.sw.epilog119_crit_edge ], [ %spec.select160, %copy_to_user.exit ], [ %spec.select161, %copy_to_user.exit189 ], [ %spec.select162, %sw.epilog61 ], [ -22, %if.end15.sw.epilog119_crit_edge ]
  call void @release_sock(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog119, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %sw.epilog119 ], [ -14, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cinfo) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opts) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_get_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_wait_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__l2cap_ecred_conn_rsp_defer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__l2cap_le_connect_rsp_defer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__l2cap_connect_rsp_defer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_stream_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_busy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_create.__UNIQUE_ID_ddebug580, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_create, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_create.__UNIQUE_ID_ddebug580, ptr noundef nonnull @.str.50, ptr noundef %sock) #13
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
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %2, label %do.end.cleanup_crit_edge [
    i16 5, label %do.end.if.end19_crit_edge
    i16 1, label %do.end.if.end19_crit_edge49
    i16 2, label %do.end.if.end19_crit_edge50
    i16 3, label %do.end.if.end19_crit_edge51
  ]

do.end.if.end19_crit_edge51:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end.if.end19_crit_edge50:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end.if.end19_crit_edge49:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %do.end.if.end19_crit_edge, %do.end.if.end19_crit_edge49, %do.end.if.end19_crit_edge50, %do.end.if.end19_crit_edge51
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp22 = icmp eq i16 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kern)
  %tobool25.not = icmp eq i32 %kern, 0
  %or.cond = and i1 %tobool25.not, %cmp22
  br i1 %or.cond, label %land.lhs.true26, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true26:                                  ; preds = %if.end19
  %call27 = tail call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call27, label %land.lhs.true26.if.end29_crit_edge, label %land.lhs.true26.cleanup_crit_edge

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true26.if.end29_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true26.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @l2cap_sock_ops, ptr %ops, align 4
  %call.i = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @l2cap_proto, i32 noundef %kern) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end29.cleanup_crit_edge, label %if.end.i

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end29
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call.i) #13
  %accept_q.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %accept_q.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %accept_q.i, ptr %accept_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %accept_q.i, ptr %prev.i.i, align 4
  %sk_destruct.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 82
  %7 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @l2cap_sock_destruct, ptr %sk_destruct.i, align 4
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 31
  %8 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4000, ptr %sk_sndtimeo.i, align 8
  %9 = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i.i.i = and i32 %11, -257
  store i32 %and.i.i.i, ptr %9, align 4
  %conv.i = trunc i32 %protocol to i16
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 46
  %12 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %sk_protocol.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 2, ptr %skc_state.i, align 2
  %call2.i = tail call ptr @l2cap_chan_create() #13
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end33

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sk_free(ptr noundef nonnull %call.i) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @l2cap_chan_hold(ptr noundef nonnull %call2.i) #13
  %chan6.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %chan6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2.i, ptr %chan6.i, align 8
  tail call fastcc void @l2cap_sock_init(ptr noundef nonnull %call.i, ptr noundef null)
  tail call void @bt_sock_link(ptr noundef nonnull @l2cap_sk_list, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then4.i, %if.end29.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -94, %do.end.cleanup_crit_edge ], [ -1, %land.lhs.true26.cleanup_crit_edge ], [ -12, %if.then4.i ], [ -12, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l2cap_sock_init(ptr noundef %sk, ptr noundef %parent) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.l2cap_pinfo, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_init.__UNIQUE_ID_ddebug579, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_init, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_init.__UNIQUE_ID_ddebug579, ptr noundef nonnull @.str.21, ptr noundef %sk) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %parent, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %chan6 = getelementptr inbounds %struct.l2cap_pinfo, ptr %parent, i32 0, i32 1
  %2 = ptrtoint ptr %chan6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan6, align 8
  %sk_type = getelementptr inbounds %struct.sock, ptr %parent, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  %sk_type7 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %sk_type7, align 2
  %flags = getelementptr inbounds %struct.bt_sock, ptr %parent, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %flags8 = getelementptr inbounds %struct.bt_sock, ptr %sk, i32 0, i32 3
  %9 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flags8, align 4
  %chan_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %chan_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chan_type, align 1
  %chan_type9 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %chan_type9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %chan_type9, align 1
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %imtu to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %imtu, align 4
  %imtu10 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %imtu10 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %imtu10, align 4
  %omtu = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 15
  %16 = ptrtoint ptr %omtu to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %omtu, align 2
  %omtu11 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %omtu11 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %omtu11, align 2
  %conf_state = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 38
  %19 = ptrtoint ptr %conf_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %conf_state, align 4
  %conf_state12 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 38
  %21 = ptrtoint ptr %conf_state12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %conf_state12, align 4
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode, align 2
  %mode13 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %mode13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %mode13, align 2
  %fcs = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 26
  %25 = ptrtoint ptr %fcs to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fcs, align 2
  %fcs14 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 26
  %27 = ptrtoint ptr %fcs14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %fcs14, align 2
  %max_tx = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 30
  %28 = ptrtoint ptr %max_tx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_tx, align 2
  %max_tx15 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 30
  %30 = ptrtoint ptr %max_tx15 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %max_tx15, align 2
  %tx_win = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 27
  %31 = ptrtoint ptr %tx_win to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tx_win, align 4
  %tx_win16 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 27
  %33 = ptrtoint ptr %tx_win16 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %tx_win16, align 4
  %tx_win_max = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 28
  %34 = ptrtoint ptr %tx_win_max to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tx_win_max, align 2
  %tx_win_max17 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 28
  %36 = ptrtoint ptr %tx_win_max17 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %tx_win_max17, align 2
  %sec_level = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 20
  %37 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sec_level, align 1
  %sec_level18 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 20
  %39 = ptrtoint ptr %sec_level18 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %sec_level18, align 1
  %flags19 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 40
  %40 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags19, align 4
  %flags20 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 40
  %42 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %flags20, align 4
  %tx_credits = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 34
  %43 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tx_credits, align 2
  %tx_credits21 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 34
  %45 = ptrtoint ptr %tx_credits21 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %tx_credits21, align 2
  %rx_credits = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 35
  %46 = ptrtoint ptr %rx_credits to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rx_credits, align 4
  %rx_credits22 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 35
  %48 = ptrtoint ptr %rx_credits22 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %rx_credits22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp = icmp eq i8 %11, 4
  br i1 %cmp, label %if.then25, label %if.then5.if.end28_crit_edge

if.then5.if.end28_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then25:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %scid = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 13
  %49 = ptrtoint ptr %scid to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %scid, align 2
  %scid26 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 13
  %51 = ptrtoint ptr %scid26 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %scid26, align 2
  %52 = load i16, ptr %scid, align 2
  %dcid = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %dcid to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %dcid, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then5.if.end28_crit_edge
  tail call void @security_sk_clone(ptr noundef nonnull %parent, ptr noundef %sk) #13
  br label %if.end49

if.else:                                          ; preds = %do.end
  %sk_type29 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %54 = ptrtoint ptr %sk_type29 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %sk_type29, align 2
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %55, label %if.else.sw.epilog_crit_edge [
    i16 3, label %sw.bb
    i16 2, label %sw.bb32
    i16 5, label %if.else.sw.bb34_crit_edge
    i16 1, label %if.else.sw.bb34_crit_edge104
  ]

if.else.sw.bb34_crit_edge104:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb34

if.else.sw.bb34_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb34

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %chan_type31 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 18
  %57 = ptrtoint ptr %chan_type31 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %chan_type31, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %chan_type33 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 18
  %58 = ptrtoint ptr %chan_type33 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %chan_type33, align 1
  %skb_msg_name = getelementptr inbounds %struct.bt_sock, ptr %sk, i32 0, i32 4
  %59 = ptrtoint ptr %skb_msg_name to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @l2cap_skb_msg_name, ptr %skb_msg_name, align 8
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.else.sw.bb34_crit_edge, %if.else.sw.bb34_crit_edge104
  %chan_type35 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 18
  %60 = ptrtoint ptr %chan_type35 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %chan_type35, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb32, %sw.bb, %if.else.sw.epilog_crit_edge
  %imtu36 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 14
  %61 = ptrtoint ptr %imtu36 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 672, ptr %imtu36, align 4
  %omtu37 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 15
  %62 = ptrtoint ptr %omtu37 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %omtu37, align 2
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_ertm to i32))
  %63 = load i8, ptr @disable_ertm, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool38.not = icmp eq i8 %63, 0
  br i1 %tobool38.not, label %land.lhs.true, label %sw.epilog.if.else46_crit_edge

sw.epilog.if.else46_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else46

land.lhs.true:                                    ; preds = %sw.epilog
  %64 = ptrtoint ptr %sk_type29 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %sk_type29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %65)
  %cmp41 = icmp eq i16 %65, 1
  br i1 %cmp41, label %if.then43, label %land.lhs.true.if.else46_crit_edge

land.lhs.true.if.else46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else46

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %mode44 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 17
  %66 = ptrtoint ptr %mode44 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %mode44, align 2
  %conf_state45 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 7, ptr noundef %conf_state45) #13
  br label %if.end48

if.else46:                                        ; preds = %land.lhs.true.if.else46_crit_edge, %sw.epilog.if.else46_crit_edge
  %mode47 = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 17
  %67 = ptrtoint ptr %mode47 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %mode47, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then43
  tail call void @l2cap_chan_set_defaults(ptr noundef %1) #13
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end28
  %flush_to = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 16
  %68 = ptrtoint ptr %flush_to to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %flush_to, align 4
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %69 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %sk, ptr %data, align 4
  %ops = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 85
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @l2cap_chan_ops, ptr %ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_destruct(ptr noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_destruct.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_destruct, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_destruct.__UNIQUE_ID_ddebug577, ptr noundef nonnull @.str.21, ptr noundef %sk) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.if.end7_crit_edge, label %if.then4

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data, align 4
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 8
  tail call void @l2cap_chan_put(ptr noundef %4) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.if.end7_crit_edge
  %rx_busy_skb = getelementptr inbounds %struct.l2cap_pinfo, ptr %sk, i32 0, i32 2
  %5 = ptrtoint ptr %rx_busy_skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_busy_skb, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #13
  %7 = ptrtoint ptr %rx_busy_skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rx_busy_skb, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #13
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_chan_create() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_clone(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_skb_msg_name(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %msg_name, ptr nocapture noundef writeonly %msg_namelen) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %msg_name, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %msg_name to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 31, ptr %msg_name, align 2
  %psm = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %3 = ptrtoint ptr %psm to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %psm, align 8
  %l2_psm = getelementptr inbounds %struct.sockaddr_l2, ptr %msg_name, i32 0, i32 1
  %5 = ptrtoint ptr %l2_psm to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %l2_psm, align 2
  %l2_bdaddr = getelementptr inbounds %struct.sockaddr_l2, ptr %msg_name, i32 0, i32 2
  %bdaddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %6 = call ptr @memcpy(ptr %l2_bdaddr, ptr %bdaddr, i32 6)
  %7 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 14, ptr %msg_namelen, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_set_defaults(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @l2cap_sock_new_connection_cb(ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp ugt i32 %3, %5
  br i1 %cmp.i, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_new_connection_cb.__UNIQUE_ID_ddebug574, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_new_connection_cb, %if.then4)) #13
          to label %do.end [label %if.then4], !srcloc !171

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_ack_backlog.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_new_connection_cb.__UNIQUE_ID_ddebug574, ptr noundef nonnull @.str.55, i32 noundef %7) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %call.i = tail call ptr @sk_alloc(ptr noundef %9, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @l2cap_proto, i32 noundef 0) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.if.then9_crit_edge, label %if.end.i

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.end.i:                                         ; preds = %if.end5
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call.i) #13
  %accept_q.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %accept_q.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %accept_q.i, ptr %accept_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %accept_q.i, ptr %prev.i.i, align 4
  %sk_destruct.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 82
  %12 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @l2cap_sock_destruct, ptr %sk_destruct.i, align 4
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 31
  %13 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4000, ptr %sk_sndtimeo.i, align 8
  %14 = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i.i.i = and i32 %16, -257
  store i32 %and.i.i.i, ptr %14, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 46
  %17 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %sk_protocol.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store volatile i8 2, ptr %skc_state.i, align 2
  %call2.i = tail call ptr @l2cap_chan_create() #13
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end10

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sk_free(ptr noundef nonnull %call.i) #13
  br label %if.then9

if.then9:                                         ; preds = %if.then4.i, %if.end5.if.then9_crit_edge
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @l2cap_chan_hold(ptr noundef nonnull %call2.i) #13
  %chan6.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %chan6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2.i, ptr %chan6.i, align 8
  tail call void @bt_sock_reclassify_lock(ptr noundef nonnull %call.i, i32 noundef 0) #13
  tail call fastcc void @l2cap_sock_init(ptr noundef nonnull %call.i, ptr noundef %1)
  tail call void @bt_accept_enqueue(ptr noundef %1, ptr noundef nonnull %call.i, i1 noundef zeroext false) #13
  tail call void @release_sock(ptr noundef %1) #13
  %20 = ptrtoint ptr %chan6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan6.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %21, %if.end10 ], [ null, %if.then9 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_recv_cb(ptr noundef %chan, ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %rx_busy_skb = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rx_busy_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_busy_skb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 17
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 2
  %.off = add i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %call.i = tail call i32 @sk_filter_trim_cap(ptr noundef %1, ptr noundef %skb, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then6.done_crit_edge

if.then6.done_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @__sock_queue_rcv_skb(ptr noundef %1, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true14, label %if.end10.done_crit_edge

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

land.lhs.true14:                                  ; preds = %if.end10
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp17 = icmp eq i8 %7, 3
  br i1 %cmp17, label %if.then19, label %land.lhs.true14.done_crit_edge

land.lhs.true14.done_crit_edge:                   ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then19:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %rx_busy_skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %rx_busy_skb, align 4
  tail call void @l2cap_chan_busy(ptr noundef %chan, i32 noundef 1) #13
  br label %done

done:                                             ; preds = %if.then19, %land.lhs.true14.done_crit_edge, %if.end10.done_crit_edge, %if.then6.done_crit_edge, %entry.done_crit_edge
  %err.0 = phi i32 [ %call.i, %if.then6.done_crit_edge ], [ 0, %if.then19 ], [ %call11, %land.lhs.true14.done_crit_edge ], [ %call11, %if.end10.done_crit_edge ], [ -12, %entry.done_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_teardown_cb(ptr noundef %chan, i32 noundef %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_teardown_cb.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_teardown_cb, %if.then4)) #13
          to label %do.end [label %if.then4], !srcloc !171

if.then4:                                         ; preds = %do.body
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  %switch.tableidx = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 9
  br i1 %4, label %switch.lookup, label %if.then4.state_to_string.exit_crit_edge

if.then4.state_to_string.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %state_to_string.exit

switch.lookup:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.l2cap_sock_teardown_cb, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state_to_string.exit

state_to_string.exit:                             ; preds = %switch.lookup, %if.then4.state_to_string.exit_crit_edge
  %retval.0.i40 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.19, %if.then4.state_to_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_teardown_cb.__UNIQUE_ID_ddebug575, ptr noundef nonnull @.str.32, ptr noundef %chan, ptr noundef nonnull %retval.0.i40) #13
  br label %do.end

do.end:                                           ; preds = %state_to_string.exit, %do.body
  %nesting = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting, i32 noundef 4) #13
  %7 = ptrtoint ptr %nesting to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %nesting, align 4
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef %8) #13
  %parent8 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %parent8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent8, align 8
  %state9 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %state9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state9, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %12, label %sw.default [
    i8 2, label %do.end.sw.epilog_crit_edge
    i8 3, label %do.end.sw.epilog_crit_edge42
    i8 9, label %do.end.sw.epilog_crit_edge43
    i8 4, label %sw.bb11
  ]

do.end.sw.epilog_crit_edge43:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end.sw.epilog_crit_edge42:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @l2cap_sock_cleanup_listen(ptr noundef nonnull %1)
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 9, ptr %skc_state, align 2
  %15 = ptrtoint ptr %state9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %state9, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %skc_state14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store volatile i8 9, ptr %skc_state14, align 2
  %17 = ptrtoint ptr %state9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 9, ptr %state9, align 4
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %18 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %err, ptr %sk_err, align 4
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bt_accept_unlink(ptr noundef nonnull %1) #13
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 77
  %19 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_data_ready, align 8
  tail call void %20(ptr noundef nonnull %10) #13
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %21 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk_state_change, align 4
  tail call void %22(ptr noundef nonnull %1) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then17, %sw.bb11, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge42, %do.end.sw.epilog_crit_edge43
  tail call void @release_sock(ptr noundef nonnull %1) #13
  %23 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %or.i.i = or i32 %25, 256
  store i32 %or.i.i, ptr %23, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_close_cb(ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @l2cap_sock_kill(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_state_change_cb(ptr nocapture noundef readonly %chan, i32 noundef %state, i32 noundef %err) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %conv = trunc i32 %state to i8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 %conv, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %3 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %err, ptr %sk_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_ready_cb(ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %parent1 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_ready_cb.__UNIQUE_ID_ddebug576, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_ready_cb, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_ready_cb.__UNIQUE_ID_ddebug576, ptr noundef nonnull @.str.61, ptr noundef %1, ptr noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 1, ptr %skc_state, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %5 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_state_change, align 4
  tail call void %6(ptr noundef %1) #13
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end6_crit_edge, label %if.then5

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  %7 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_data_ready, align 8
  tail call void %8(ptr noundef nonnull %3) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  tail call void @release_sock(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_defer_cb(ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %parent1 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  %4 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_data_ready, align 8
  tail call void %5(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @release_sock(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_resume_cb(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 40
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 1, ptr %skc_state, align 2
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags1 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags1) #13
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_state_change, align 4
  tail call void %5(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_suspend_cb(ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_state_change, align 4
  tail call void %3(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2cap_sock_set_shutdown_cb(ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %sk_shutdown, align 2
  tail call void @release_sock(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @l2cap_sock_get_sndtimeo_cb(ptr nocapture noundef readonly %chan) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_sndtimeo, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @l2cap_sock_get_peer_pid_cb(ptr nocapture noundef readonly %chan) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %sk_peer_pid = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %sk_peer_pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_peer_pid, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @l2cap_sock_alloc_skb_cb(ptr noundef %chan, i32 noundef %hdr_len, i32 noundef %len, i32 noundef %nb) #4 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !179
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 86
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  %add = add i32 %hdr_len, 8
  %add.i = add i32 %add, %len
  %call.i = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add.i, i32 noundef %nb, ptr noundef nonnull %err) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.lhs.true.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %6, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end4.i

land.lhs.true.critedge.i:                         ; preds = %entry
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i, label %land.lhs.true.critedge.i.if.end4.i_crit_edge, label %land.lhs.true.critedge.i.bt_skb_send_alloc.exit_crit_edge

land.lhs.true.critedge.i.bt_skb_send_alloc.exit_crit_edge: ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bt_skb_send_alloc.exit

land.lhs.true.critedge.i.if.end4.i_crit_edge:     ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.end4.i:                                        ; preds = %land.lhs.true.critedge.i.if.end4.i_crit_edge, %if.then.i
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %9 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %sock_error.exit.thread.i, label %sock_error.exit.i, !prof !172

sock_error.exit.thread.i:                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %err, align 4
  br label %if.end8.i

sock_error.exit.i:                                ; preds = %if.end4.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  call void @llvm.prefetch.p0(ptr %sk_err.i.i, i32 1, i32 3, i32 1) #13
  %12 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i.i) #13, !srcloc !194
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  %sub.i.i = sub i32 0, %asmresult.i.i.i
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool6.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool6.not.i, label %sock_error.exit.i.if.end8.i_crit_edge, label %sock_error.exit.i.out.i_crit_edge

sock_error.exit.i.out.i_crit_edge:                ; preds = %sock_error.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

sock_error.exit.i.if.end8.i_crit_edge:            ; preds = %sock_error.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %sock_error.exit.i.if.end8.i_crit_edge, %sock_error.exit.thread.i
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sk_shutdown.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not.i = icmp eq i8 %15, 0
  br i1 %tobool9.not.i, label %if.end8.i.bt_skb_send_alloc.exit_crit_edge, label %if.then10.i

if.end8.i.bt_skb_send_alloc.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bt_skb_send_alloc.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -104, ptr %err, align 4
  br label %out.i

out.i:                                            ; preds = %if.then10.i, %sock_error.exit.i.out.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %call.i, i32 noundef 0) #13
  br label %bt_skb_send_alloc.exit

bt_skb_send_alloc.exit:                           ; preds = %out.i, %if.end8.i.bt_skb_send_alloc.exit_crit_edge, %land.lhs.true.critedge.i.bt_skb_send_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %out.i ], [ null, %land.lhs.true.critedge.i.bt_skb_send_alloc.exit_crit_edge ], [ %call.i, %if.end8.i.bt_skb_send_alloc.exit_crit_edge ]
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 4
  %call.i.i.i13 = call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #13
  %17 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %nesting.i, align 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %18) #13
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %bt_skb_send_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err, align 4
  %21 = inttoptr i32 %20 to ptr
  br label %cleanup

if.end:                                           ; preds = %bt_skb_send_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sk_priority = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %22 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 15, i32 0, i32 6
  %24 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %priority, align 4
  %chan2 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 3, i32 24
  %25 = ptrtoint ptr %chan2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %chan, ptr %chan2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %retval.0.i, %if.end ], [ %21, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2cap_sock_filter(ptr nocapture noundef readonly %chan, ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 17
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 2
  %.off = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @sk_filter_trim_cap(ptr noundef %3, ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_reclassify_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_accept_enqueue(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l2cap_sock_cleanup_listen(ptr noundef %parent) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_cleanup_listen.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_cleanup_listen, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %parent, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 9
  br i1 %2, label %switch.lookup, label %if.then.state_to_string.exit_crit_edge

if.then.state_to_string.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %state_to_string.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.l2cap_sock_cleanup_listen, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state_to_string.exit

state_to_string.exit:                             ; preds = %switch.lookup, %if.then.state_to_string.exit_crit_edge
  %retval.0.i40 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.19, %if.then.state_to_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_cleanup_listen.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.58, ptr noundef %parent, ptr noundef nonnull %retval.0.i40) #13
  br label %do.end

do.end:                                           ; preds = %state_to_string.exit, %entry
  %call455 = tail call ptr @bt_accept_dequeue(ptr noundef %parent, ptr noundef null) #13
  %tobool5.not56 = icmp eq ptr %call455, null
  br i1 %tobool5.not56, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %l2cap_clear_timer.exit.while.body_crit_edge, %do.end.while.body_crit_edge
  %call457 = phi ptr [ %call4, %l2cap_clear_timer.exit.while.body_crit_edge ], [ %call455, %do.end.while.body_crit_edge ]
  %chan6 = getelementptr inbounds %struct.l2cap_pinfo, ptr %call457, i32 0, i32 1
  %5 = ptrtoint ptr %chan6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan6, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2cap_sock_cleanup_listen.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2cap_sock_cleanup_listen, %if.then19)) #13
          to label %do.end24 [label %if.then19], !srcloc !171

if.then19:                                        ; preds = %while.body
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state, align 4
  %switch.tableidx59 = add i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx59)
  %9 = icmp ult i8 %switch.tableidx59, 9
  br i1 %9, label %switch.lookup58, label %if.then19.state_to_string.exit51_crit_edge

if.then19.state_to_string.exit51_crit_edge:       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %state_to_string.exit51

switch.lookup58:                                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %10 = sext i8 %switch.tableidx59 to i32
  %switch.gep60 = getelementptr inbounds [9 x ptr], ptr @switch.table.l2cap_sock_cleanup_listen.63, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load61 = load ptr, ptr %switch.gep60, align 4
  br label %state_to_string.exit51

state_to_string.exit51:                           ; preds = %switch.lookup58, %if.then19.state_to_string.exit51_crit_edge
  %retval.0.i50 = phi ptr [ %switch.load61, %switch.lookup58 ], [ @.str.19, %if.then19.state_to_string.exit51_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2cap_sock_cleanup_listen.__UNIQUE_ID_ddebug573, ptr noundef nonnull @.str.59, ptr noundef %6, ptr noundef nonnull %retval.0.i50) #13
  br label %do.end24

do.end24:                                         ; preds = %state_to_string.exit51, %while.body
  tail call void @l2cap_chan_hold(ptr noundef %6) #13
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %13) #13
  %chan_timer = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 73
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %chan_timer) #13
  br i1 %call.i, label %if.then.i, label %do.end24.l2cap_clear_timer.exit_crit_edge

do.end24.l2cap_clear_timer.exit_crit_edge:        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %l2cap_clear_timer.exit

if.then.i:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @l2cap_chan_put(ptr noundef %6) #13
  br label %l2cap_clear_timer.exit

l2cap_clear_timer.exit:                           ; preds = %if.then.i, %do.end24.l2cap_clear_timer.exit_crit_edge
  tail call void @l2cap_chan_close(ptr noundef %6, i32 noundef 104) #13
  tail call fastcc void @l2cap_sock_kill(ptr noundef nonnull %call457)
  tail call void @mutex_unlock(ptr noundef %lock.i) #13
  tail call void @l2cap_chan_put(ptr noundef %6) #13
  %call4 = tail call ptr @bt_accept_dequeue(ptr noundef %parent, ptr noundef null) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %l2cap_clear_timer.exit.while.end_crit_edge, label %l2cap_clear_timer.exit.while.body_crit_edge

l2cap_clear_timer.exit.while.body_crit_edge:      ; preds = %l2cap_clear_timer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

l2cap_clear_timer.exit.while.end_crit_edge:       ; preds = %l2cap_clear_timer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %l2cap_clear_timer.exit.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_accept_unlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !81, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !105, !106, !108, !110, !112, !113, !115, !116, !118, !120, !121, !123, !125, !127, !128, !129, !131, !132, !134, !135, !137, !139, !141, !142, !143, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__ksymtab_l2cap_is_socket, !1, !"__ksymtab_l2cap_is_socket", i1 false, i1 false}
!1 = !{!"../net/bluetooth/l2cap_sock.c", i32 54, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bluetooth/l2cap_sock.c", i32 1945, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/bluetooth/l2cap_sock.c", i32 1949, i32 34}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/l2cap_sock.c", i32 1952, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/l2cap_sock.c", i32 1957, i32 2}
!10 = !{ptr @l2cap_sock_ops, !11, !"l2cap_sock_ops", i1 false, i1 false}
!11 = !{!"../net/bluetooth/l2cap_sock.c", i32 1906, i32 31}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/l2cap_sock.c", i32 1413, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @l2cap_sock_release.__UNIQUE_ID_ddebug571, !13, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/bluetooth/l2cap_sock.c", i32 1251, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @l2cap_sock_kill.__UNIQUE_ID_ddebug562, !19, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/net/bluetooth/bluetooth.h", i32 239, i32 10}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/net/bluetooth/bluetooth.h", i32 241, i32 10}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/net/bluetooth/bluetooth.h", i32 243, i32 10}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/net/bluetooth/bluetooth.h", i32 245, i32 10}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/net/bluetooth/bluetooth.h", i32 247, i32 10}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/bluetooth/bluetooth.h", i32 249, i32 10}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/net/bluetooth/bluetooth.h", i32 251, i32 10}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/bluetooth/bluetooth.h", i32 253, i32 10}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/net/bluetooth/bluetooth.h", i32 255, i32 10}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/bluetooth/bluetooth.h", i32 258, i32 9}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bluetooth/l2cap_sock.c", i32 89, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @l2cap_sock_bind.__UNIQUE_ID_ddebug528, !43, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/bluetooth/l2cap_sock.c", i32 204, i32 2}
!48 = !{ptr @l2cap_sock_connect.__UNIQUE_ID_ddebug531, !47, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/bluetooth/l2cap_sock.c", i32 358, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @l2cap_sock_accept.__UNIQUE_ID_ddebug535, !50, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/bluetooth/l2cap_sock.c", i32 395, i32 2}
!55 = !{ptr @l2cap_sock_accept.__UNIQUE_ID_ddebug536, !54, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/bluetooth/l2cap_sock.c", i32 409, i32 2}
!58 = !{ptr @l2cap_sock_getname.__UNIQUE_ID_ddebug537, !57, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/bluetooth/l2cap_sock.c", i32 293, i32 2}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @l2cap_sock_listen.__UNIQUE_ID_ddebug534, !60, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/bluetooth/l2cap_sock.c", i32 1312, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @l2cap_sock_shutdown.__UNIQUE_ID_ddebug567, !64, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/bluetooth/l2cap_sock.c", i32 1329, i32 2}
!69 = !{ptr @l2cap_sock_shutdown.__UNIQUE_ID_ddebug568, !68, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bluetooth/l2cap_sock.c", i32 1338, i32 2}
!72 = !{ptr @l2cap_sock_shutdown.__UNIQUE_ID_ddebug569, !71, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/bluetooth/l2cap_sock.c", i32 1402, i32 2}
!75 = !{ptr @l2cap_sock_shutdown.__UNIQUE_ID_ddebug570, !74, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../net/bluetooth/l2cap_sock.c", i32 1269, i32 2}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/bluetooth/l2cap_sock.c", i32 1271, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__l2cap_wait_ack.__UNIQUE_ID_ddebug564, !79, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../net/bluetooth/l2cap_sock.c", i32 1286, i32 3}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../net/bluetooth/l2cap_sock.c", i32 1300, i32 2}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/bluetooth/l2cap_sock.c", i32 910, i32 2}
!88 = !{ptr @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug553, !87, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/bluetooth/l2cap_sock.c", i32 1110, i32 3}
!91 = !{ptr @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug558, !90, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/bluetooth/l2cap_sock.c", i32 1127, i32 3}
!94 = !{ptr @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug559, !93, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/bluetooth/l2cap_sock.c", i32 1133, i32 3}
!97 = !{ptr @l2cap_sock_setsockopt.__UNIQUE_ID_ddebug560, !96, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/bluetooth/l2cap_sock.c", i32 750, i32 2}
!100 = !{ptr @l2cap_sock_setsockopt_old.__UNIQUE_ID_ddebug549, !99, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!101 = !{ptr @l2cap_sock_setsockopt_old.__UNIQUE_ID_ddebug552, !102, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!102 = !{!"../net/bluetooth/l2cap_sock.c", i32 810, i32 3}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!105 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/bluetooth/l2cap_sock.c", i32 581, i32 2}
!112 = !{ptr @l2cap_sock_getsockopt.__UNIQUE_ID_ddebug544, !111, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/bluetooth/l2cap_sock.c", i32 462, i32 2}
!115 = !{ptr @l2cap_sock_getsockopt_old.__UNIQUE_ID_ddebug538, !114, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!116 = !{ptr @l2cap_sock_getsockopt_old.__UNIQUE_ID_ddebug539, !117, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!117 = !{!"../net/bluetooth/l2cap_sock.c", i32 504, i32 3}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/bluetooth/l2cap_sock.c", i32 1153, i32 2}
!120 = !{ptr @l2cap_sock_sendmsg.__UNIQUE_ID_ddebug561, !119, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!121 = !{ptr @l2cap_proto, !122, !"l2cap_proto", i1 false, i1 false}
!122 = !{!"../net/bluetooth/l2cap_sock.c", i32 1839, i32 21}
!123 = !{ptr @l2cap_sock_family_ops, !124, !"l2cap_sock_family_ops", i1 false, i1 false}
!124 = !{!"../net/bluetooth/l2cap_sock.c", i32 1927, i32 38}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/bluetooth/l2cap_sock.c", i32 1884, i32 2}
!127 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @l2cap_sock_create.__UNIQUE_ID_ddebug580, !126, !"__UNIQUE_ID_ddebug580", i1 false, i1 false}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/bluetooth/l2cap_sock.c", i32 1744, i32 2}
!131 = !{ptr @l2cap_sock_destruct.__UNIQUE_ID_ddebug577, !130, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/bluetooth/l2cap_sock.c", i32 1777, i32 2}
!134 = !{ptr @l2cap_sock_init.__UNIQUE_ID_ddebug579, !133, !"__UNIQUE_ID_ddebug579", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/bluetooth/l2cap_sock.c", i32 1725, i32 12}
!137 = !{ptr @l2cap_chan_ops, !138, !"l2cap_chan_ops", i1 false, i1 false}
!138 = !{!"../net/bluetooth/l2cap_sock.c", i32 1724, i32 31}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/bluetooth/l2cap_sock.c", i32 1469, i32 3}
!141 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @l2cap_sock_new_connection_cb.__UNIQUE_ID_ddebug574, !140, !"__UNIQUE_ID_ddebug574", i1 false, i1 false}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/bluetooth/l2cap_sock.c", i32 1555, i32 2}
!145 = !{ptr @l2cap_sock_teardown_cb.__UNIQUE_ID_ddebug575, !144, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/bluetooth/l2cap_sock.c", i32 1439, i32 2}
!148 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @l2cap_sock_cleanup_listen.__UNIQUE_ID_ddebug572, !147, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/bluetooth/l2cap_sock.c", i32 1446, i32 3}
!152 = !{ptr @l2cap_sock_cleanup_listen.__UNIQUE_ID_ddebug573, !151, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/bluetooth/l2cap_sock.c", i32 1643, i32 2}
!155 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @l2cap_sock_ready_cb.__UNIQUE_ID_ddebug576, !154, !"__UNIQUE_ID_ddebug576", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/bluetooth/l2cap_sock.c", i32 42, i32 10}
!159 = !{ptr @l2cap_sk_list, !160, !"l2cap_sk_list", i1 false, i1 false}
!160 = !{!"../net/bluetooth/l2cap_sock.c", i32 41, i32 28}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i64 2148994463, i64 2148994468, i64 2148994481, i64 2148994525, i64 2148994559, i64 2148994580}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i8 0, i8 2}
!174 = !{i64 2148382616, i64 2148382648, i64 2148382677, i64 2148382711, i64 2148382742, i64 2148382765}
!175 = !{!"branch_weights", i32 1, i32 2000}
!176 = !{i64 2148470641}
!177 = !{i64 2148385081, i64 2148385113, i64 2148385142, i64 2148385176, i64 2148385207, i64 2148385230}
!178 = !{i64 2149346755}
!179 = !{!"auto-init"}
!180 = !{i64 2153399648, i64 2153399673}
!181 = !{i64 5895203}
!182 = !{i64 5895400}
!183 = !{i64 2153380633}
!184 = !{i64 2158373377, i64 2158373657, i64 2158373991, i64 2158374325}
!185 = !{i64 2153400329, i64 2153400354}
!186 = !{i64 2158385067, i64 2158385347, i64 2158385681, i64 2158386015}
!187 = !{i64 2158398093, i64 2158398373, i64 2158398707, i64 2158399041}
!188 = !{i64 2158408893, i64 2158409173, i64 2158409507, i64 2158409841}
!189 = !{i64 2158415844, i64 2158416124, i64 2158416458, i64 2158416792}
!190 = !{i64 2158424731, i64 2158425011, i64 2158425345, i64 2158425679}
!191 = !{i64 2158435591, i64 2158435871, i64 2158436205, i64 2158436539}
!192 = !{i64 2158440542, i64 2158440822, i64 2158441156, i64 2158441490}
!193 = !{i64 2157797824}
!194 = !{i64 887854, i64 887871, i64 887895, i64 887921, i64 887939}
!195 = !{i64 2157798167}
!196 = !{i64 2158479538}
!197 = !{i64 2158487641}
!198 = !{i64 2158492722}
!199 = !{i64 2158343820, i64 2158344100, i64 2158344434, i64 2158344768}
!200 = !{i64 2158357687, i64 2158357967, i64 2158358301, i64 2158358635}
