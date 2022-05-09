; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_flowlabel.c_pt.bc'
source_filename = "../net/ipv6/ip6_flowlabel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ipv6_flowlabel_exclusive\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_flowlabel_exclusive\09\09\09\09"
module asm "\09.long\09__crc_ipv6_flowlabel_exclusive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_flowlabel_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_flowlabel_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_flowlabel_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__fl6_sock_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc___fl6_sock_lookup\09\09\09\09"
module asm "\09.long\09__crc___fl6_sock_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fl6_sock_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__fl6_sock_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___fl6_sock_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fl6_merge_options\22, \22a\22\09"
module asm "\09.weak\09__crc_fl6_merge_options\09\09\09\09"
module asm "\09.long\09__crc_fl6_merge_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fl6_merge_options:\09\09\09\09\09"
module asm "\09.asciz \09\22fl6_merge_options\22\09\09\09\09\09"
module asm "__kstrtabns_fl6_merge_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon.19, %union.anon.21, %union.anon.22, i16, i8, i8, i32, %union.anon.24, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { i32 }
%union.anon.22 = type { i32 }
%union.anon.24 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.76 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.77, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.78, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.79, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.77 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.78 = type { ptr }
%union.anon.79 = type { ptr }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.62 }
%union.anon.62 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.146, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_fl_socklist = type { ptr, ptr, %struct.callback_head }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.2, i32, i32, ptr }
%union.anon.2 = type { ptr }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.in6_flowlabel_req = type { %struct.in6_addr, i32, i8, i8, i16, i16, i16, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.28, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.25, %union.anon.26 }
%union.anon.25 = type { ptr }
%union.anon.26 = type { i64 }
%union.anon.28 = type { ptr }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.60, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.72, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.72 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.121, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5 }
%union.anon.5 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.121 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.80 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.80 = type { %struct.callback_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.127, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.128, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.129, ptr, %struct.address_space, %struct.list_head, %union.anon.130, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.127 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.128 = type { %struct.callback_head }
%union.anon.129 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.130 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ip6fl_iter_state = type { %struct.seq_net_private, ptr, i32 }
%struct.seq_net_private = type { ptr, ptr }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"((ipv6_flowlabel_exclusive).work).work\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/ipv6/ip6_flowlabel.c:57\00", [36 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_exclusive = dso_local global { { { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, [48 x i8] } { { { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work } { { { %struct.atomic_t, { ptr } } } zeroinitializer, i32 100, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @ipv6_flowlabel_exclusive, i64 16), ptr getelementptr (i8, ptr @ipv6_flowlabel_exclusive, i64 16) }, ptr @jump_label_update_timeout, %struct.lockdep_map { ptr getelementptr (i8, ptr @ipv6_flowlabel_exclusive, i64 12), [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.1, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_ipv6_flowlabel_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_flowlabel_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_flowlabel_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_flowlabel_exclusive to i32), ptr @__kstrtab_ipv6_flowlabel_exclusive, ptr @__kstrtabns_ipv6_flowlabel_exclusive }, section "___ksymtab+ipv6_flowlabel_exclusive", align 4
@__fl6_sock_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/ipv6/ip6_flowlabel.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__fl6_sock_lookup.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab___fl6_sock_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___fl6_sock_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___fl6_sock_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fl6_sock_lookup to i32), ptr @__kstrtab___fl6_sock_lookup, ptr @__kstrtabns___fl6_sock_lookup }, section "___ksymtab_gpl+__fl6_sock_lookup", align 4
@ip6_sk_fl_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.3 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@fl6_free_socklist.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_fl6_merge_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_fl6_merge_options = external dso_local constant [0 x i8], align 1
@__ksymtab_fl6_merge_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fl6_merge_options to i32), ptr @__kstrtab_fl6_merge_options, ptr @__kstrtabns_fl6_merge_options }, section "___ksymtab_gpl+fl6_merge_options", align 4
@ipv6_flowlabel_opt_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6_fl_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.3 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_opt_get.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6_flowlabel_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip6_flowlabel_proc_init, ptr null, ptr @ip6_flowlabel_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ip6_fl_gc_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @ip6_fl_gc, i32 0, %struct.lockdep_map { ptr @.str.29, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6_sk_fl_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip6_fl_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_put.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_flowlabel_renew.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_flowlabel_renew.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fl_ht = internal global { [256 x ptr], [256 x i8] } zeroinitializer, align 32
@__fl_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__fl_lookup.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_flowlabel_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016Can not set IPV6_FL_F_REFLECT if flowlabel_consistency sysctl is enable\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipv6_flowlabel_get\00", [45 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_get._entry_ptr = internal global ptr @ipv6_flowlabel_get._entry, section ".printk_index", align 4
@ipv6_flowlabel_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_flowlabel_get.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fl_size = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@mem_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mem_check.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip6_flowlabel\00", [18 x i8] zeroinitializer }, align 32
@ip6fl_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ip6fl_seq_start, ptr @ip6fl_seq_stop, ptr @ip6fl_seq_next, ptr @ip6fl_seq_show }, [16 x i8] zeroinitializer }, align 32
@ip6fl_get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6fl_get_first.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6fl_get_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6fl_get_next.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6fl_get_next.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6fl_get_next.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Label S Owner  Users  Linger Expires  Dst                              Opt\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%05X %-1d %-6d %-6d %-6ld %-8ld %pi6 %-4d\0A\00", [53 x i8] zeroinitializer }, align 32
@ip6_fl_purge.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/ipv6/ip6_flowlabel.c:47\00", [36 x i8] zeroinitializer }, align 32
@ip6_fl_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 255]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"ipv6_flowlabel_exclusive\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 57, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 267, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"ip6_sk_fl_lock\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 290, i32 16 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"ip6_fl_lock\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"ip6_flowlabel_net_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 894, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"ip6_fl_gc_timer\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 749, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 760, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 55, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 51, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 230, i32 6 }
@___asan_gen_.82 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 214, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 156, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"fl_ht\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 44, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 620, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [8 x i8] c"fl_size\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 43, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 868, i32 7 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"ip6fl_seq_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 859, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 838, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 842, i32 7 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [28 x i8] c"../net/ipv6/ip6_flowlabel.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 47, i32 8 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab___fl6_sock_lookup, ptr @__ksymtab_fl6_merge_options, ptr @__ksymtab_ipv6_flowlabel_exclusive, ptr @ipv6_flowlabel_get._entry, ptr @ipv6_flowlabel_get._entry_ptr, ptr @.str, ptr @.str.1, ptr @ipv6_flowlabel_exclusive, ptr @.str.3, ptr @.str.4, ptr @ip6_sk_fl_lock, ptr @.str.6, ptr @ip6_fl_lock, ptr @ip6_flowlabel_net_ops, ptr @ip6_fl_gc_timer, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @fl_ht, ptr @.str.18, ptr @.str.19, ptr @fl_size, ptr @.str.22, ptr @ip6fl_seq_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_flowlabel_exclusive to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_sk_fl_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_fl_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_flowlabel_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_fl_gc_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_ht to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_flowlabel_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6fl_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @jump_label_update_timeout(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__fl6_sock_lookup(ptr noundef %sk, i32 noundef %label) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %and = and i32 %label, 1048575
  tail call fastcc void @local_bh_disable() #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %inet6_sk.exit.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

inet6_sk.exit.rcu_read_lock_bh.exit_crit_edge:    ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %inet6_sk.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %inet6_sk.exit.rcu_read_lock_bh.exit_crit_edge
  %ipv6_fl_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 17
  %4 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ipv6_fl_list, align 4
  %call2 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end8_crit_edge

rcu_read_lock_bh.exit.do.end8_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @__fl6_sock_lookup.__warned, align 1
  br i1 %.b44, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__fl6_sock_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 267, ptr noundef nonnull @.str.4) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock_bh.exit.do.end8_crit_edge
  %cmp.not64 = icmp eq ptr %5, null
  br i1 %cmp.not64, label %do.end8.for.end_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %do.end32.for.body_crit_edge, %do.end8.for.body_crit_edge
  %sfl.065 = phi ptr [ %14, %do.end32.for.body_crit_edge ], [ %5, %do.end8.for.body_crit_edge ]
  %fl10 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %sfl.065, i32 0, i32 1
  %6 = ptrtoint ptr %fl10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fl10, align 4
  %label11 = getelementptr inbounds %struct.ip6_flowlabel, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %label11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %label11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and)
  %cmp12 = icmp eq i32 %9, %and
  br i1 %cmp12, label %land.lhs.true13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true13:                                  ; preds = %for.body
  %users = getelementptr inbounds %struct.ip6_flowlabel, ptr %7, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 0, i32 1, ptr elementtype(i32) %users) #10, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true13.for.inc_crit_edge, label %if.then15

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then15:                                        ; preds = %land.lhs.true13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.ip6_flowlabel, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %lastuse, align 4
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i45, label %if.then15.cleanup34_crit_edge, label %land.lhs.true.i48

if.then15.cleanup34_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

land.lhs.true.i48:                                ; preds = %if.then15
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.cleanup34_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.cleanup34_crit_edge:            ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.cleanup34_crit_edge, label %land.lhs.true2.i50.cleanup34.sink.split_crit_edge

land.lhs.true2.i50.cleanup34.sink.split_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34.sink.split

land.lhs.true2.i50.cleanup34_crit_edge:           ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %sfl.065 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %sfl.065, align 4
  %call22 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.inc.do.end32_crit_edge

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

land.lhs.true24:                                  ; preds = %for.inc
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b4243 = load i1, ptr @__fl6_sock_lookup.__warned.5, align 1
  br i1 %.b4243, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__fl6_sock_lookup.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 267, ptr noundef nonnull @.str.4) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %for.inc.do.end32_crit_edge
  %cmp.not = icmp eq ptr %14, null
  br i1 %cmp.not, label %do.end32.for.end_crit_edge, label %do.end32.for.body_crit_edge

do.end32.for.body_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end32.for.end_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.end32.for.end_crit_edge, %do.end8.for.end_crit_edge
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i52, label %for.end.cleanup34_crit_edge, label %land.lhs.true.i55

for.end.cleanup34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

land.lhs.true.i55:                                ; preds = %for.end
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.cleanup34_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.cleanup34_crit_edge:            ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.cleanup34_crit_edge, label %land.lhs.true2.i57.cleanup34.sink.split_crit_edge

land.lhs.true2.i57.cleanup34.sink.split_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34.sink.split

land.lhs.true2.i57.cleanup34_crit_edge:           ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

cleanup34.sink.split:                             ; preds = %land.lhs.true2.i57.cleanup34.sink.split_crit_edge, %land.lhs.true2.i50.cleanup34.sink.split_crit_edge
  %retval.2.ph = phi ptr [ %7, %land.lhs.true2.i50.cleanup34.sink.split_crit_edge ], [ null, %land.lhs.true2.i57.cleanup34.sink.split_crit_edge ]
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup34.sink.split, %land.lhs.true2.i57.cleanup34_crit_edge, %land.lhs.true.i55.cleanup34_crit_edge, %for.end.cleanup34_crit_edge, %land.lhs.true2.i50.cleanup34_crit_edge, %land.lhs.true.i48.cleanup34_crit_edge, %if.then15.cleanup34_crit_edge
  %retval.2 = phi ptr [ %7, %land.lhs.true2.i50.cleanup34_crit_edge ], [ %7, %land.lhs.true.i48.cleanup34_crit_edge ], [ %7, %if.then15.cleanup34_crit_edge ], [ null, %for.end.cleanup34_crit_edge ], [ null, %land.lhs.true.i55.cleanup34_crit_edge ], [ null, %land.lhs.true2.i57.cleanup34_crit_edge ], [ %retval.2.ph, %cleanup34.sink.split ]
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  tail call fastcc void @local_bh_enable() #10
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock_bh() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map)
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fl6_free_socklist(ptr noundef %sk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %ipv6_fl_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 17
  %4 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ipv6_fl_list, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %inet6_sk.exit.cleanup_crit_edge, label %inet6_sk.exit.while.cond_crit_edge

inet6_sk.exit.while.cond_crit_edge:               ; preds = %inet6_sk.exit
  br label %while.cond

inet6_sk.exit.cleanup_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond:                                       ; preds = %while.body, %inet6_sk.exit.while.cond_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #10
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @ip6_sk_fl_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %land.lhs.true, label %while.cond.do.end12_crit_edge

while.cond.do.end12_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true:                                    ; preds = %while.cond
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @fl6_free_socklist.__warned, align 1
  br i1 %.b31, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fl6_free_socklist.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 291, ptr noundef nonnull @.str.6) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %while.cond.do.end12_crit_edge
  %6 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipv6_fl_list, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ipv6_fl_list, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #10
  %fl = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fl, align 4
  tail call fastcc void @fl_release(ptr noundef %12)
  %rcu = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %7, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %while.cond

while.end:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %inet6_sk.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fl_release(ptr noundef %fl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 9
  %1 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %lastuse, align 4
  %users = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #10, !srcloc !106
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %lastuse to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lastuse, align 4
  %linger = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 5
  %5 = ptrtoint ptr %linger to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %linger, align 4
  %add = add i32 %6, %4
  %expires = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 10
  %7 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %expires, align 4
  %sub = sub i32 %8, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %expires, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %expires, align 4
  %opt = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 4
  %12 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %opt, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %share = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 7
  %14 = ptrtoint ptr %share to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %share, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp5 = icmp eq i8 %15, 1
  br i1 %cmp5, label %if.then7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %opt, align 4
  tail call void @kfree(ptr noundef nonnull %13) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @ip6_fl_gc_timer, i32 0, i32 0, i32 1), align 4
  %tobool.not.i.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.not, label %if.end11.if.then17_crit_edge, label %lor.lhs.false

if.end11.if.then17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end11
  %18 = load i32, ptr getelementptr inbounds (%struct.timer_list, ptr @ip6_fl_gc_timer, i32 0, i32 1), align 4
  %sub14 = sub i32 %11, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp15 = icmp slt i32 %sub14, 0
  br i1 %cmp15, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end11.if.then17_crit_edge
  %call18 = tail call i32 @mod_timer(ptr noundef nonnull @ip6_fl_gc_timer, i32 noundef %11) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %lor.lhs.false.if.end20_crit_edge, %entry.if.end20_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @fl6_merge_options(ptr noundef writeonly %opt_space, ptr nocapture noundef readonly %fl, ptr noundef readonly %fopt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %opt = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 4
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opt, align 4
  %tobool.not = icmp eq ptr %fopt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %fopt, i32 0, i32 2
  %2 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %opt_flen, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hopopt, align 4
  %hopopt4 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 4
  %6 = ptrtoint ptr %hopopt4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %hopopt4, align 4
  %dst0opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %dst0opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst0opt, align 4
  %dst0opt5 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 5
  %9 = ptrtoint ptr %dst0opt5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dst0opt5, align 4
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srcrt, align 4
  %srcrt6 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 6
  %12 = ptrtoint ptr %srcrt6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %srcrt6, align 4
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %opt_nflen, align 2
  %opt_nflen7 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 3
  %15 = ptrtoint ptr %opt_nflen7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %opt_nflen7, align 2
  br label %if.end18

if.else:                                          ; preds = %if.end
  %opt_nflen8 = getelementptr inbounds %struct.ipv6_txoptions, ptr %fopt, i32 0, i32 3
  %16 = ptrtoint ptr %opt_nflen8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %opt_nflen8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp10 = icmp eq i16 %17, 0
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %opt_nflen17 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 3
  %18 = call ptr @memset(ptr %opt_nflen17, i32 0, i32 14)
  br label %if.end18

if.end18:                                         ; preds = %if.end13, %if.then3
  %dst1opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %fopt, i32 0, i32 7
  %19 = ptrtoint ptr %dst1opt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst1opt, align 4
  %dst1opt19 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 7
  %21 = ptrtoint ptr %dst1opt19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %dst1opt19, align 4
  %22 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %opt_flen, align 4
  %opt_flen21 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 2
  %24 = ptrtoint ptr %opt_flen21 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %opt_flen21, align 4
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %fopt, i32 0, i32 1
  %25 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tot_len, align 4
  %tot_len22 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 1
  %27 = ptrtoint ptr %tot_len22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tot_len22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %opt_space, %if.end18 ], [ %1, %lor.lhs.false.cleanup_crit_edge ], [ %1, %entry.cleanup_crit_edge ], [ %fopt, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_flowlabel_opt_get(ptr noundef %sk, ptr nocapture noundef writeonly %freq, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rcv_flowinfo = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 13
  %4 = ptrtoint ptr %rcv_flowinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rcv_flowinfo, align 4
  %and1 = and i32 %5, 1048575
  %flr_label = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 1
  %6 = ptrtoint ptr %flr_label to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and1, ptr %flr_label, align 4
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %repflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %7 = ptrtoint ptr %repflow to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %repflow, align 2
  %8 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flow_label = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  %9 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flow_label, align 4
  %flr_label4 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 1
  %11 = ptrtoint ptr %flr_label4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flr_label4, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call fastcc void @local_bh_disable() #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end5.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.end5.rcu_read_lock_bh.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.end5.rcu_read_lock_bh.exit_crit_edge
  %ipv6_fl_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 17
  %12 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ipv6_fl_list, align 4
  %call7 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end16_crit_edge

rcu_read_lock_bh.exit.do.end16_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b69 = load i1, ptr @ipv6_flowlabel_opt_get.__warned, align 1
  br i1 %.b69, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_flowlabel_opt_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 520, ptr noundef nonnull @.str.4) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %rcu_read_lock_bh.exit.do.end16_crit_edge
  %cmp.not85 = icmp eq ptr %13, null
  br i1 %cmp.not85, label %do.end16.for.end_crit_edge, label %for.body.lr.ph

do.end16.for.end_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end16
  %flow_label18 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end47.for.body_crit_edge, %for.body.lr.ph
  %sfl.086 = phi ptr [ %13, %for.body.lr.ph ], [ %41, %do.end47.for.body_crit_edge ]
  %fl = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %sfl.086, i32 0, i32 1
  %14 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fl, align 4
  %label = getelementptr inbounds %struct.ip6_flowlabel, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %label, align 4
  %18 = ptrtoint ptr %flow_label18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flow_label18, align 4
  %and19 = and i32 %19, 1048575
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and19)
  %cmp20 = icmp eq i32 %17, %and19
  br i1 %cmp20, label %if.then21, label %for.inc

if.then21:                                        ; preds = %for.body
  %fl.le = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %sfl.086, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  %20 = ptrtoint ptr %fl.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fl.le, align 4
  %label23 = getelementptr inbounds %struct.ip6_flowlabel, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %label23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %label23, align 4
  %flr_label24 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 1
  %24 = ptrtoint ptr %flr_label24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flr_label24, align 4
  %25 = load ptr, ptr %fl.le, align 4
  %dst = getelementptr inbounds %struct.ip6_flowlabel, ptr %25, i32 0, i32 3
  %26 = call ptr @memcpy(ptr %freq, ptr %dst, i32 16)
  %27 = load ptr, ptr %fl.le, align 4
  %share = getelementptr inbounds %struct.ip6_flowlabel, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %share to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %share, align 4
  %flr_share = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 3
  %30 = ptrtoint ptr %flr_share to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %flr_share, align 1
  %31 = load ptr, ptr %fl.le, align 4
  %expires = getelementptr inbounds %struct.ip6_flowlabel, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %33, %34
  %div = udiv i32 %sub, 100
  %conv = trunc i32 %div to i16
  %flr_expires = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 5
  %35 = ptrtoint ptr %flr_expires to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %flr_expires, align 4
  %36 = load ptr, ptr %fl.le, align 4
  %linger = getelementptr inbounds %struct.ip6_flowlabel, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %linger to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %linger, align 4
  %div29 = udiv i32 %38, 100
  %conv30 = trunc i32 %div29 to i16
  %flr_linger = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 6
  %39 = ptrtoint ptr %flr_linger to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv30, ptr %flr_linger, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  %call.i70 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i70, label %if.then21.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i73

if.then21.rcu_read_unlock_bh.exit_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i73:                                ; preds = %if.then21
  %call1.i71 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i75

land.lhs.true.i73.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i75:                               ; preds = %land.lhs.true.i73
  %.b4.i74 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i74, label %land.lhs.true2.i75.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i76

land.lhs.true2.i75.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

if.then.i76:                                      ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i76, %land.lhs.true2.i75.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i73.rcu_read_unlock_bh.exit_crit_edge, %if.then21.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  tail call fastcc void @local_bh_enable() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %40 = ptrtoint ptr %sfl.086 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %sfl.086, align 4
  %call37 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %for.inc.do.end47_crit_edge

for.inc.do.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

land.lhs.true39:                                  ; preds = %for.inc
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true39.do.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %.b6768 = load i1, ptr @ipv6_flowlabel_opt_get.__warned.7, align 1
  br i1 %.b6768, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_flowlabel_opt_get.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 520, ptr noundef nonnull @.str.4) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true39.do.end47_crit_edge, %for.inc.do.end47_crit_edge
  %cmp.not = icmp eq ptr %41, null
  br i1 %cmp.not, label %do.end47.for.end_crit_edge, label %do.end47.for.body_crit_edge

do.end47.for.body_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end47.for.end_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.end47.for.end_crit_edge, %do.end16.for.end_crit_edge
  %call.i77 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i77, label %for.end.rcu_read_unlock_bh.exit84_crit_edge, label %land.lhs.true.i80

for.end.rcu_read_unlock_bh.exit84_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit84

land.lhs.true.i80:                                ; preds = %for.end
  %call1.i78 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80.rcu_read_unlock_bh.exit84_crit_edge, label %land.lhs.true2.i82

land.lhs.true.i80.rcu_read_unlock_bh.exit84_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit84

land.lhs.true2.i82:                               ; preds = %land.lhs.true.i80
  %.b4.i81 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i81, label %land.lhs.true2.i82.rcu_read_unlock_bh.exit84_crit_edge, label %if.then.i83

land.lhs.true2.i82.rcu_read_unlock_bh.exit84_crit_edge: ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit84

if.then.i83:                                      ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock_bh.exit84

rcu_read_unlock_bh.exit84:                        ; preds = %if.then.i83, %land.lhs.true2.i82.rcu_read_unlock_bh.exit84_crit_edge, %land.lhs.true.i80.rcu_read_unlock_bh.exit84_crit_edge, %for.end.rcu_read_unlock_bh.exit84_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  tail call fastcc void @local_bh_enable() #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock_bh.exit84, %rcu_read_unlock_bh.exit, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %rcu_read_unlock_bh.exit ], [ -2, %rcu_read_unlock_bh.exit84 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_flowlabel_opt(ptr noundef %sk, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #1 align 64 {
entry:
  %msg.i.i = alloca %struct.msghdr, align 8
  %flowi6.i.i = alloca %struct.flowi6, align 8
  %ipc6.i.i = alloca %struct.ipcm6_cookie, align 8
  %freq = alloca %struct.in6_flowlabel_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freq) #10
  %0 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 1
  %1 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 2
  %2 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 3
  %3 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 4
  %4 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 5
  %5 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %freq, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %optlen)
  %cmp = icmp ult i32 %optlen, 32
  %6 = call ptr @memset(ptr %freq, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %7 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #10
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 32, i32 -1226833920) #13, !srcloc !108
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !109

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %freq, i32 noundef 32) #10
  %9 = call i32 @llvm.read_register.i32(metadata !92) #10
  %and.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !110
  %and.i.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #10, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %freq, ptr noundef %7, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end2_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !109

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end2_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i3.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 32, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 32, %res.0.i.i.i3.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %freq, i32 %sub.i.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i3.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = call ptr @memcpy(ptr %freq, ptr %7, i32 32)
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end2_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.end2.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb4
    i8 0, label %sw.bb6
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end2
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %18 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sw.bb.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

sw.bb.inet6_sk.exit.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %19 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %sw.bb.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %20, %cond.true.i.i ], [ null, %sw.bb.inet6_sk.exit.i_crit_edge ]
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %3, align 2
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.then.i

if.then.i:                                        ; preds = %inet6_sk.exit.i
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %24 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sk_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %25)
  %cmp.not.i = icmp eq i16 %25, 6
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %repflow.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %repflow.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %repflow.i, align 2
  %27 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool4.not.i = icmp eq i16 %27, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %flow_label.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %flow_label.i, align 4
  %bf.clear9.i = and i16 %bf.load.i, -8193
  %29 = ptrtoint ptr %repflow.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %bf.clear9.i, ptr %repflow.i, align 2
  br label %cleanup

if.end10.i:                                       ; preds = %inet6_sk.exit.i
  call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #10
  %ipv6_fl_list.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end10.i
  %sflp.0.i = phi ptr [ %ipv6_fl_list.i, %if.end10.i ], [ %31, %for.body.i.for.cond.i_crit_edge ]
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @ip6_sk_fl_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i, label %for.cond.i.do.end.i_crit_edge

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true15.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %.b62.i = load i1, ptr @ipv6_flowlabel_put.__warned, align 1
  br i1 %.b62.i, label %land.lhs.true15.i.do.end.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end.i_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_flowlabel_put.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 560, ptr noundef nonnull @.str.6) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %land.lhs.true15.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.cond.i.do.end.i_crit_edge
  %30 = ptrtoint ptr %sflp.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sflp.0.i, align 4
  %cmp19.not.i = icmp eq ptr %31, null
  br i1 %cmp19.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %do.end.i
  %fl.i = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %fl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fl.i, align 4
  %label.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %label.i, align 4
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %0, align 4
  %cmp21.i = icmp eq i32 %35, %37
  br i1 %cmp21.i, label %found.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.end.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #10
  br label %cleanup

found.i:                                          ; preds = %for.body.i
  %fl.i.le = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %31, i32 0, i32 1
  %flow_label26.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %flow_label26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flow_label26.i, align 4
  %and27.i = and i32 %39, 1048575
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and27.i)
  %cmp28.i = icmp eq i32 %35, %and27.i
  br i1 %cmp28.i, label %if.then30.i, label %found.i.if.end33.i_crit_edge

found.i.if.end33.i_crit_edge:                     ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then30.i:                                      ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #12
  %and32.i = and i32 %39, -1048576
  %40 = ptrtoint ptr %flow_label26.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and32.i, ptr %flow_label26.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %found.i.if.end33.i_crit_edge
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %31, align 4
  %43 = ptrtoint ptr %sflp.0.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %sflp.0.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #10
  %44 = ptrtoint ptr %fl.i.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fl.i.le, align 4
  call fastcc void @fl_release(ptr noundef %45) #10
  %rcu.i = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %31, i32 0, i32 2
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.end2
  %skc_state.i.i.i19 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %46 = ptrtoint ptr %skc_state.i.i.i19 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load volatile i8, ptr %skc_state.i.i.i19, align 2
  %conv.i.i.i20 = zext i8 %47 to i32
  %shl.i.i.i21 = shl nuw i32 1, %conv.i.i.i20
  %and.i.i.i22 = and i32 %shl.i.i.i21, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i22)
  %tobool.i.not.i.i23 = icmp eq i32 %and.i.i.i22, 0
  br i1 %tobool.i.not.i.i23, label %sw.bb4.inet6_sk.exit.i28_crit_edge, label %cond.true.i.i25

sw.bb4.inet6_sk.exit.i28_crit_edge:               ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i28

cond.true.i.i25:                                  ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i24 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %48 = ptrtoint ptr %pinet6.i.i24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pinet6.i.i24, align 8
  br label %inet6_sk.exit.i28

inet6_sk.exit.i28:                                ; preds = %cond.true.i.i25, %sw.bb4.inet6_sk.exit.i28_crit_edge
  %cond.i.i26 = phi ptr [ %49, %cond.true.i.i25 ], [ null, %sw.bb4.inet6_sk.exit.i28_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %50 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skc_net.i.i, align 4
  call fastcc void @local_bh_disable() #10
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #10
  %call.i.i27 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i27, label %inet6_sk.exit.i28.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true.i.i

inet6_sk.exit.i28.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %inet6_sk.exit.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit.i

land.lhs.true.i.i:                                ; preds = %inet6_sk.exit.i28
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %if.then.i.i29

land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit.i

if.then.i.i29:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock_bh.exit.i

rcu_read_lock_bh.exit.i:                          ; preds = %if.then.i.i29, %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, %inet6_sk.exit.i28.rcu_read_lock_bh.exit.i_crit_edge
  %ipv6_fl_list.i30 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i26, i32 0, i32 17
  %52 = ptrtoint ptr %ipv6_fl_list.i30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %ipv6_fl_list.i30, align 4
  %call3.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i31 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32, label %rcu_read_lock_bh.exit.i.do.end9.i_crit_edge

rcu_read_lock_bh.exit.i.do.end9.i_crit_edge:      ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

land.lhs.true.i32:                                ; preds = %rcu_read_lock_bh.exit.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i32.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i32.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i32
  %.b73.i = load i1, ptr @ipv6_flowlabel_renew.__warned, align 1
  br i1 %.b73.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i33

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

if.then.i33:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_flowlabel_renew.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 585, ptr noundef nonnull @.str.4) #10
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i33, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i32.do.end9.i_crit_edge, %rcu_read_lock_bh.exit.i.do.end9.i_crit_edge
  %cmp.not90.i = icmp eq ptr %53, null
  br i1 %cmp.not90.i, label %do.end9.i.for.end.i39_crit_edge, label %do.end9.i.for.body.i37_crit_edge

do.end9.i.for.body.i37_crit_edge:                 ; preds = %do.end9.i
  br label %for.body.i37

do.end9.i.for.end.i39_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i39

for.body.i37:                                     ; preds = %do.end32.i.for.body.i37_crit_edge, %do.end9.i.for.body.i37_crit_edge
  %sfl.091.i = phi ptr [ %65, %do.end32.i.for.body.i37_crit_edge ], [ %53, %do.end9.i.for.body.i37_crit_edge ]
  %fl.i35 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %sfl.091.i, i32 0, i32 1
  %54 = ptrtoint ptr %fl.i35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fl.i35, align 4
  %label.i36 = getelementptr inbounds %struct.ip6_flowlabel, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %label.i36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %label.i36, align 4
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp11.i = icmp eq i32 %57, %59
  br i1 %cmp11.i, label %if.then12.i, label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i37
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %5, align 2
  %conv.i = zext i16 %61 to i32
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %4, align 4
  %conv14.i = zext i16 %63 to i32
  %call15.i = call fastcc i32 @fl6_renew(ptr noundef %55, i32 noundef %conv.i, i32 noundef %conv14.i) #10
  %call.i74.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i74.i, label %if.then12.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true.i77.i

if.then12.i.rcu_read_unlock_bh.exit.i_crit_edge:  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true.i77.i:                              ; preds = %if.then12.i
  %call1.i75.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75.i)
  %tobool.not.i76.i = icmp eq i32 %call1.i75.i, 0
  br i1 %tobool.not.i76.i, label %land.lhs.true.i77.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true2.i79.i

land.lhs.true.i77.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true2.i79.i:                             ; preds = %land.lhs.true.i77.i
  %.b4.i78.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i78.i, label %land.lhs.true2.i79.i.rcu_read_unlock_bh.exit.i_crit_edge, label %if.then.i80.i

land.lhs.true2.i79.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit.i

if.then.i80.i:                                    ; preds = %land.lhs.true2.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock_bh.exit.i

rcu_read_unlock_bh.exit.i:                        ; preds = %if.then.i80.i, %land.lhs.true2.i79.i.rcu_read_unlock_bh.exit.i_crit_edge, %land.lhs.true.i77.i.rcu_read_unlock_bh.exit.i_crit_edge, %if.then12.i.rcu_read_unlock_bh.exit.i_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  call fastcc void @local_bh_enable() #10
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i37
  %64 = ptrtoint ptr %sfl.091.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %sfl.091.i, align 4
  %call22.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true24.i, label %for.inc.i.do.end32.i_crit_edge

for.inc.i.do.end32.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

land.lhs.true24.i:                                ; preds = %for.inc.i
  %call25.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true24.i.do.end32.i_crit_edge, label %land.lhs.true27.i

land.lhs.true24.i.do.end32.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

land.lhs.true27.i:                                ; preds = %land.lhs.true24.i
  %.b7172.i = load i1, ptr @ipv6_flowlabel_renew.__warned.16, align 1
  br i1 %.b7172.i, label %land.lhs.true27.i.do.end32.i_crit_edge, label %if.then29.i

land.lhs.true27.i.do.end32.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

if.then29.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_flowlabel_renew.__warned.16, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 585, ptr noundef nonnull @.str.4) #10
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then29.i, %land.lhs.true27.i.do.end32.i_crit_edge, %land.lhs.true24.i.do.end32.i_crit_edge, %for.inc.i.do.end32.i_crit_edge
  %cmp.not.i38 = icmp eq ptr %65, null
  br i1 %cmp.not.i38, label %do.end32.i.for.end.i39_crit_edge, label %do.end32.i.for.body.i37_crit_edge

do.end32.i.for.body.i37_crit_edge:                ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i37

do.end32.i.for.end.i39_crit_edge:                 ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i39

for.end.i39:                                      ; preds = %do.end32.i.for.end.i39_crit_edge, %do.end9.i.for.end.i39_crit_edge
  %call.i81.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i81.i, label %for.end.i39.rcu_read_unlock_bh.exit88.i_crit_edge, label %land.lhs.true.i84.i

for.end.i39.rcu_read_unlock_bh.exit88.i_crit_edge: ; preds = %for.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit88.i

land.lhs.true.i84.i:                              ; preds = %for.end.i39
  %call1.i82.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82.i)
  %tobool.not.i83.i = icmp eq i32 %call1.i82.i, 0
  br i1 %tobool.not.i83.i, label %land.lhs.true.i84.i.rcu_read_unlock_bh.exit88.i_crit_edge, label %land.lhs.true2.i86.i

land.lhs.true.i84.i.rcu_read_unlock_bh.exit88.i_crit_edge: ; preds = %land.lhs.true.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit88.i

land.lhs.true2.i86.i:                             ; preds = %land.lhs.true.i84.i
  %.b4.i85.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i85.i, label %land.lhs.true2.i86.i.rcu_read_unlock_bh.exit88.i_crit_edge, label %if.then.i87.i

land.lhs.true2.i86.i.rcu_read_unlock_bh.exit88.i_crit_edge: ; preds = %land.lhs.true2.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit88.i

if.then.i87.i:                                    ; preds = %land.lhs.true2.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock_bh.exit88.i

rcu_read_unlock_bh.exit88.i:                      ; preds = %if.then.i87.i, %land.lhs.true2.i86.i.rcu_read_unlock_bh.exit88.i_crit_edge, %land.lhs.true.i84.i.rcu_read_unlock_bh.exit88.i_crit_edge, %for.end.i39.rcu_read_unlock_bh.exit88.i_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  call fastcc void @local_bh_enable() #10
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp35.i = icmp eq i8 %67, 0
  br i1 %cmp35.i, label %land.lhs.true37.i, label %rcu_read_unlock_bh.exit88.i.cleanup_crit_edge

rcu_read_unlock_bh.exit88.i.cleanup_crit_edge:    ; preds = %rcu_read_unlock_bh.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true37.i:                                ; preds = %rcu_read_unlock_bh.exit88.i
  %user_ns.i = getelementptr inbounds %struct.net, ptr %51, i32 0, i32 11
  %68 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %user_ns.i, align 4
  %call38.i = call zeroext i1 @ns_capable(ptr noundef %69, i32 noundef 12) #10
  br i1 %call38.i, label %if.then40.i, label %land.lhs.true37.i.cleanup_crit_edge

land.lhs.true37.i.cleanup_crit_edge:              ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40.i:                                      ; preds = %land.lhs.true37.i
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %0, align 4
  %call43.i = call fastcc ptr @fl_lookup(ptr noundef %51, i32 noundef %71) #10
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %if.then40.i.cleanup_crit_edge, label %cleanup.i

if.then40.i.cleanup_crit_edge:                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.i:                                        ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %5, align 2
  %conv47.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %4, align 4
  %conv49.i = zext i16 %75 to i32
  %call50.i = call fastcc i32 @fl6_renew(ptr noundef nonnull %call43.i, i32 noundef %conv47.i, i32 noundef %conv49.i) #10
  call fastcc void @fl_release(ptr noundef nonnull %call43.i) #10
  br label %cleanup

sw.bb6:                                           ; preds = %if.end2
  %skc_state.i.i.i40 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %76 = ptrtoint ptr %skc_state.i.i.i40 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load volatile i8, ptr %skc_state.i.i.i40, align 2
  %conv.i.i.i41 = zext i8 %77 to i32
  %shl.i.i.i42 = shl nuw i32 1, %conv.i.i.i41
  %and.i.i.i43 = and i32 %shl.i.i.i42, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i43)
  %tobool.i.not.i.i44 = icmp eq i32 %and.i.i.i43, 0
  br i1 %tobool.i.not.i.i44, label %sw.bb6.inet6_sk.exit.i51_crit_edge, label %cond.true.i.i46

sw.bb6.inet6_sk.exit.i51_crit_edge:               ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i51

cond.true.i.i46:                                  ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i45 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %78 = ptrtoint ptr %pinet6.i.i45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pinet6.i.i45, align 8
  br label %inet6_sk.exit.i51

inet6_sk.exit.i51:                                ; preds = %cond.true.i.i46, %sw.bb6.inet6_sk.exit.i51_crit_edge
  %cond.i.i47 = phi ptr [ %79, %cond.true.i.i46 ], [ null, %sw.bb6.inet6_sk.exit.i51_crit_edge ]
  %skc_net.i.i48 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %80 = ptrtoint ptr %skc_net.i.i48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skc_net.i.i48, align 4
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %3, align 2
  %84 = and i16 %83, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool.not.i50 = icmp eq i16 %84, 0
  br i1 %tobool.not.i50, label %if.end16.i, label %if.then.i52

if.then.i52:                                      ; preds = %inet6_sk.exit.i51
  %flowlabel_consistency.i = getelementptr inbounds %struct.net, ptr %81, i32 0, i32 36, i32 1, i32 16
  %85 = ptrtoint ptr %flowlabel_consistency.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flowlabel_consistency.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool2.not.i = icmp eq i8 %86, 0
  br i1 %tobool2.not.i, label %if.end11.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i52
  %call4.i53 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i53)
  %tobool5.not.i54 = icmp eq i32 %call4.i53, 0
  br i1 %tobool5.not.i54, label %do.body.i.cleanup_crit_edge, label %do.end.i55

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i55:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end11.i:                                       ; preds = %if.then.i52
  %sk_protocol.i56 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %87 = ptrtoint ptr %sk_protocol.i56 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sk_protocol.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %88)
  %cmp.not.i57 = icmp eq i16 %88, 6
  br i1 %cmp.not.i57, label %if.end15.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %repflow.i58 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i47, i32 0, i32 10
  %89 = ptrtoint ptr %repflow.i58 to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load.i59 = load i16, ptr %repflow.i58, align 2
  %bf.set.i = or i16 %bf.load.i59, 8192
  store i16 %bf.set.i, ptr %repflow.i58, align 2
  br label %cleanup

if.end16.i:                                       ; preds = %inet6_sk.exit.i51
  %90 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %91)
  %tobool18.not.i = icmp ult i32 %91, 1048576
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i
  %flowlabel_state_ranges.i = getelementptr inbounds %struct.net, ptr %81, i32 0, i32 36, i32 1, i32 27
  %92 = ptrtoint ptr %flowlabel_state_ranges.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flowlabel_state_ranges.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool24.not.i = icmp eq i8 %93, 0
  %and26.i = and i32 %91, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond.i, label %if.end29.i, label %if.end20.i.cleanup_crit_edge

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29.i:                                       ; preds = %if.end20.i
  %sub.i.i = add i32 %optlen, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 65536
  br i1 %cmp.i.i, label %if.end29.i.cleanup_crit_edge, label %if.end.i.i62

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i62:                                     ; preds = %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3520, i32 noundef 64) #15
  %tobool.not.i.i61 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i61, label %if.end.i.i62.cleanup_crit_edge, label %if.end2.i.i

if.end.i.i62.cleanup_crit_edge:                   ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i.i:                                      ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end2.i.i.if.end39.i.i_crit_edge

if.end2.i.i.if.end39.i.i_crit_edge:               ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

if.then4.i.i:                                     ; preds = %if.end2.i.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #10
  %95 = call ptr @memset(ptr %msg.i.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %flowi6.i.i) #10
  %96 = call ptr @memset(ptr %flowi6.i.i, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ipc6.i.i) #10
  %97 = call ptr @memset(ptr %ipc6.i.i, i32 255, i32 32)
  %add.i.i = add nuw nsw i32 %optlen, 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #16
  %opt.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 4
  %98 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call9.i.i.i, ptr %opt.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.then4.i.i.cleanup.thread.i.i_crit_edge, label %if.end9.i.i

if.then4.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

if.end9.i.i:                                      ; preds = %if.then4.i.i
  %99 = call ptr @memset(ptr %call9.i.i.i, i32 0, i32 36)
  %tot_len.i.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %call9.i.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add.i.i, ptr %tot_len.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.ipv6_txoptions, ptr %call9.i.i.i, i32 1
  %add.ptr2.i.i.i = getelementptr i8, ptr %7, i32 32
  br i1 %bf.cast.i.i.i, label %if.end.i130.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end9.i.i
  call void @__check_object_size(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #10
  %call.i.i.i.i.i63 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i.i63, label %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i.i
  %101 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr2.i.i.i, i32 %sub.i.i, i32 -1226833920) #13, !srcloc !108
  %asmresult.i.i.i.i255.i = extractvalue { i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i255.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i255.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !109

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #10
  %102 = call i32 @llvm.read_register.i32(metadata !92) #10
  %and.i.i.i.i.i.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 4
  %104 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #6, !srcloc !110
  %and.i.i.i.i.i.i.i = and i32 %104, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #10, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr2.i.i.i, i32 noundef %sub.i.i) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #10, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end17.i.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !109

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.if.end17.i.i_crit_edge:          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i135.i.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ %sub.i.i, %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ %sub.i.i, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i129.i.i = sub i32 %sub.i.i, %res.0.i.i.i135.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub.i.i.i129.i.i
  %105 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i135.i.i)
  br label %cleanup.thread.i.i

if.end.i130.i.i:                                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i.i, i32 %sub.i.i)
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end.i130.i.i, %if.end.i.i.i.i.i.if.end17.i.i_crit_edge
  %msg_controllen.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 5
  %107 = ptrtoint ptr %msg_controllen.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %sub.i.i, ptr %msg_controllen.i.i, align 8
  %108 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %opt.i.i, align 4
  %add.ptr19.i.i = getelementptr %struct.ipv6_txoptions, ptr %109, i32 1
  %110 = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr19.i.i, ptr %110, align 8
  %112 = call ptr @memset(ptr %flowi6.i.i, i32 0, i32 88)
  %opt21.i.i = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6.i.i, i32 0, i32 5
  %113 = ptrtoint ptr %opt21.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %109, ptr %opt21.i.i, align 8
  %call22.i.i = call i32 @ip6_datagram_send_ctl(ptr noundef %81, ptr noundef %sk, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %flowi6.i.i, ptr noundef nonnull %ipc6.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %if.end17.i.i.cleanup.thread.i.i_crit_edge

if.end17.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

if.end25.i.i:                                     ; preds = %if.end17.i.i
  %114 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %opt.i.i, align 4
  %opt_flen.i.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %opt_flen.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %opt_flen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool27.not.i.i = icmp eq i16 %117, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %if.end25.i.i.cleanup.thread.i.i_crit_edge

if.end25.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

if.end29.i.i:                                     ; preds = %if.end25.i.i
  %opt_nflen.i.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %115, i32 0, i32 3
  %118 = ptrtoint ptr %opt_nflen.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %opt_nflen.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp31.i.i = icmp eq i16 %119, 0
  br i1 %cmp31.i.i, label %if.then33.i.i, label %if.end29.i.i.cleanup.i.i_crit_edge

if.end29.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.then33.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %115) #10
  %120 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %opt.i.i, align 4
  br label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %if.end25.i.i.cleanup.thread.i.i_crit_edge, %if.end17.i.i.cleanup.thread.i.i_crit_edge, %if.then11.i.i.i.i.i, %if.then4.i.i.cleanup.thread.i.i_crit_edge
  %err.0.ph.i.i = phi i32 [ -22, %if.end25.i.i.cleanup.thread.i.i_crit_edge ], [ %call22.i.i, %if.end17.i.i.cleanup.thread.i.i_crit_edge ], [ -12, %if.then4.i.i.cleanup.thread.i.i_crit_edge ], [ -14, %if.then11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6.i.i) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %flowi6.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  br label %if.then80.i.i

cleanup.i.i:                                      ; preds = %if.then33.i.i, %if.end29.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6.i.i) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %flowi6.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #10
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %cleanup.i.i, %if.end2.i.i.if.end39.i.i_crit_edge
  %fl_net.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 11
  %121 = ptrtoint ptr %fl_net.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %81, ptr %fl_net.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %122 = load volatile i32, ptr @jiffies, align 128
  %expires.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 10
  %123 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %expires.i.i, align 8
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %5, align 2
  %conv40.i.i = zext i16 %125 to i32
  %126 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %4, align 4
  %conv41.i.i = zext i16 %127 to i32
  %call42.i.i = call fastcc i32 @fl6_renew(ptr noundef nonnull %call7.i.i.i.i, i32 noundef %conv40.i.i, i32 noundef %conv41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end45.i.i, label %if.end39.i.i.if.then80.i.i_crit_edge

if.end39.i.i.if.then80.i.i_crit_edge:             ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80.i.i

if.end45.i.i:                                     ; preds = %if.end39.i.i
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %2, align 1
  %share.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %share.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %share.i.i, align 4
  %call.i.i256.i = call i32 @__ipv6_addr_type(ptr noundef nonnull %freq) #10
  %and.i.i257.i = and i32 %call.i.i256.i, 65535
  %and.i.i = and i32 %call.i.i256.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i257.i)
  %cmp48.i.i = icmp eq i32 %and.i.i257.i, 0
  %or.cond.i.i = or i1 %tobool47.not.i.i, %cmp48.i.i
  br i1 %or.cond.i.i, label %if.end45.i.i.if.then80.i.i_crit_edge, label %if.end51.i.i

if.end45.i.i.if.then80.i.i_crit_edge:             ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80.i.i

if.end51.i.i:                                     ; preds = %if.end45.i.i
  %dst.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 3
  %131 = call ptr @memcpy(ptr %dst.i.i, ptr %freq, i32 16)
  %users.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 2
  %call.i.i.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  %132 = ptrtoint ptr %users.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 1, ptr %users.i.i, align 8
  %133 = ptrtoint ptr %share.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %share.i.i, align 4
  %135 = zext i8 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %134, label %if.end51.i.i.if.then80.i.i_crit_edge [
    i8 1, label %if.end51.i.i.sw.epilog.i.i_crit_edge
    i8 -1, label %if.end51.i.i.sw.epilog.i.i_crit_edge124
    i8 2, label %sw.bb55.i.i
    i8 3, label %sw.bb58.i.i
  ]

if.end51.i.i.sw.epilog.i.i_crit_edge124:          ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

if.end51.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

if.end51.i.i.if.then80.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80.i.i

sw.bb55.i.i:                                      ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = call i32 @llvm.read_register.i32(metadata !92) #10
  %and.i131.i.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i131.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %task.i.i, align 8
  %call57.i.i = call ptr @get_task_pid(ptr noundef %139, i32 noundef 0) #10
  %owner.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 8
  %140 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call57.i.i, ptr %owner.i.i, align 8
  br label %sw.epilog.i.i

sw.bb58.i.i:                                      ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %owner59.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 8
  %141 = call i32 @llvm.read_register.i32(metadata !92) #10
  %and.i132.i.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i132.i.i to ptr
  %task61.i.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %task61.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %task61.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 99
  %145 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cred.i.i, align 16
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %146, i32 0, i32 8
  %147 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %euid.i.i, align 4
  %149 = ptrtoint ptr %owner59.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %owner59.i.i, align 8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb58.i.i, %sw.bb55.i.i, %if.end51.i.i.sw.epilog.i.i_crit_edge, %if.end51.i.i.sw.epilog.i.i_crit_edge124
  %150 = ptrtoint ptr %share.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %share.i.i, align 4
  %.off.i.i.i = add i8 %151, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i.i.i)
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %sw.epilog.i.i.do.body72.i.i_crit_edge, label %lor.lhs.false64.i.i

sw.epilog.i.i.do.body72.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72.i.i

lor.lhs.false64.i.i:                              ; preds = %sw.epilog.i.i
  %opt65.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 4
  %152 = ptrtoint ptr %opt65.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %opt65.i.i, align 4
  %tobool66.not.i.i = icmp eq ptr %153, null
  br i1 %tobool66.not.i.i, label %lor.lhs.false64.i.i.if.end33.i66_crit_edge, label %lor.lhs.false64.i.i.do.body72.i.i_crit_edge

lor.lhs.false64.i.i.do.body72.i.i_crit_edge:      ; preds = %lor.lhs.false64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72.i.i

lor.lhs.false64.i.i.if.end33.i66_crit_edge:       ; preds = %lor.lhs.false64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i66

do.body72.i.i:                                    ; preds = %lor.lhs.false64.i.i.do.body72.i.i_crit_edge, %sw.epilog.i.i.do.body72.i.i_crit_edge
  %154 = ptrtoint ptr %skc_net.i.i48 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %skc_net.i.i48, align 4
  %flowlabel_has_excl.i.i = getelementptr inbounds %struct.net, ptr %155, i32 0, i32 36, i32 17
  %156 = ptrtoint ptr %flowlabel_has_excl.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store volatile i8 1, ptr %flowlabel_has_excl.i.i, align 4
  call void @static_key_slow_inc(ptr noundef nonnull @ipv6_flowlabel_exclusive) #10
  br label %if.end33.i66

if.then80.i.i:                                    ; preds = %if.end51.i.i.if.then80.i.i_crit_edge, %if.end45.i.i.if.then80.i.i_crit_edge, %if.end39.i.i.if.then80.i.i_crit_edge, %cleanup.thread.i.i
  %err.1.ph.i.i = phi i32 [ %err.0.ph.i.i, %cleanup.thread.i.i ], [ -22, %if.end51.i.i.if.then80.i.i_crit_edge ], [ -22, %if.end45.i.i.if.then80.i.i_crit_edge ], [ -1, %if.end39.i.i.if.then80.i.i_crit_edge ]
  %opt81.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 4
  %157 = ptrtoint ptr %opt81.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %opt81.i.i, align 4
  call void @kfree(ptr noundef %158) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

if.end33.i66:                                     ; preds = %do.body72.i.i, %lor.lhs.false64.i.i.if.end33.i66_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %159 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %159, i32 noundef 3264, i32 noundef 16) #15
  %160 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool36.not.i = icmp eq i32 %161, 0
  br i1 %tobool36.not.i, label %if.end33.i66.if.end151.i_crit_edge, label %if.then37.i

if.end33.i66.if.end151.i_crit_edge:               ; preds = %if.end33.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151.i

if.then37.i:                                      ; preds = %if.end33.i66
  call fastcc void @local_bh_disable() #10
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #10
  %call.i.i67 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i67, label %if.then37.i.rcu_read_lock_bh.exit.i76_crit_edge, label %land.lhs.true.i.i69

if.then37.i.rcu_read_lock_bh.exit.i76_crit_edge:  ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit.i76

land.lhs.true.i.i69:                              ; preds = %if.then37.i
  %call1.i.i68 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i68)
  %tobool.not.i258.i = icmp eq i32 %call1.i.i68, 0
  br i1 %tobool.not.i258.i, label %land.lhs.true.i.i69.rcu_read_lock_bh.exit.i76_crit_edge, label %land.lhs.true2.i.i71

land.lhs.true.i.i69.rcu_read_lock_bh.exit.i76_crit_edge: ; preds = %land.lhs.true.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit.i76

land.lhs.true2.i.i71:                             ; preds = %land.lhs.true.i.i69
  %.b4.i.i70 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i70, label %land.lhs.true2.i.i71.rcu_read_lock_bh.exit.i76_crit_edge, label %if.then.i.i72

land.lhs.true2.i.i71.rcu_read_lock_bh.exit.i76_crit_edge: ; preds = %land.lhs.true2.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit.i76

if.then.i.i72:                                    ; preds = %land.lhs.true2.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock_bh.exit.i76

rcu_read_lock_bh.exit.i76:                        ; preds = %if.then.i.i72, %land.lhs.true2.i.i71.rcu_read_lock_bh.exit.i76_crit_edge, %land.lhs.true.i.i69.rcu_read_lock_bh.exit.i76_crit_edge, %if.then37.i.rcu_read_lock_bh.exit.i76_crit_edge
  %ipv6_fl_list.i73 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i47, i32 0, i32 17
  %162 = ptrtoint ptr %ipv6_fl_list.i73 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile ptr, ptr %ipv6_fl_list.i73, align 4
  %call43.i74 = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i74)
  %tobool44.not.i75 = icmp eq i32 %call43.i74, 0
  br i1 %tobool44.not.i75, label %land.lhs.true45.i, label %rcu_read_lock_bh.exit.i76.do.end53.i_crit_edge

rcu_read_lock_bh.exit.i76.do.end53.i_crit_edge:   ; preds = %rcu_read_lock_bh.exit.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53.i

land.lhs.true45.i:                                ; preds = %rcu_read_lock_bh.exit.i76
  %call46.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true45.i.do.end53.i_crit_edge, label %land.lhs.true48.i

land.lhs.true45.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53.i

land.lhs.true48.i:                                ; preds = %land.lhs.true45.i
  %.b253.i = load i1, ptr @ipv6_flowlabel_get.__warned, align 1
  br i1 %.b253.i, label %land.lhs.true48.i.do.end53.i_crit_edge, label %if.then50.i

land.lhs.true48.i.do.end53.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53.i

if.then50.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_flowlabel_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.4) #10
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.then50.i, %land.lhs.true48.i.do.end53.i_crit_edge, %land.lhs.true45.i.do.end53.i_crit_edge, %rcu_read_lock_bh.exit.i76.do.end53.i_crit_edge
  %cmp55.not287.i = icmp eq ptr %163, null
  br i1 %cmp55.not287.i, label %do.end53.i.for.end.i80_crit_edge, label %do.end53.i.for.body.i78_crit_edge

do.end53.i.for.body.i78_crit_edge:                ; preds = %do.end53.i
  br label %for.body.i78

do.end53.i.for.end.i80_crit_edge:                 ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i80

for.body.i78:                                     ; preds = %do.end88.i.for.body.i78_crit_edge, %do.end53.i.for.body.i78_crit_edge
  %sfl.0288.i = phi ptr [ %175, %do.end88.i.for.body.i78_crit_edge ], [ %163, %do.end53.i.for.body.i78_crit_edge ]
  %fl57.i = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %sfl.0288.i, i32 0, i32 1
  %164 = ptrtoint ptr %fl57.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %fl57.i, align 4
  %label.i77 = getelementptr inbounds %struct.ip6_flowlabel, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %label.i77 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %label.i77, align 4
  %168 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %169)
  %cmp59.i = icmp eq i32 %167, %169
  br i1 %cmp59.i, label %if.then61.i, label %for.inc.i79

if.then61.i:                                      ; preds = %for.body.i78
  %170 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %3, align 2
  %172 = and i16 %171, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %172)
  %tobool65.not.i = icmp eq i16 %172, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @rcu_read_unlock_bh() #10
  br label %if.end.i270.i

if.end67.i:                                       ; preds = %if.then61.i
  %users.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %165, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %173 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 0, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %173, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end67.i.for.end.i80_crit_edge, label %do.end11.i.i.i.i.i

if.end67.i.for.end.i80_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i80

do.end11.i.i.i.i.i:                               ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  br label %for.end.i80

for.inc.i79:                                      ; preds = %for.body.i78
  %174 = ptrtoint ptr %sfl.0288.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile ptr, ptr %sfl.0288.i, align 4
  %call78.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %land.lhs.true80.i, label %for.inc.i79.do.end88.i_crit_edge

for.inc.i79.do.end88.i_crit_edge:                 ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end88.i

land.lhs.true80.i:                                ; preds = %for.inc.i79
  %call81.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %land.lhs.true80.i.do.end88.i_crit_edge, label %land.lhs.true83.i

land.lhs.true80.i.do.end88.i_crit_edge:           ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end88.i

land.lhs.true83.i:                                ; preds = %land.lhs.true80.i
  %.b250252.i = load i1, ptr @ipv6_flowlabel_get.__warned.20, align 1
  br i1 %.b250252.i, label %land.lhs.true83.i.do.end88.i_crit_edge, label %if.then85.i

land.lhs.true83.i.do.end88.i_crit_edge:           ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end88.i

if.then85.i:                                      ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_flowlabel_get.__warned.20, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.4) #10
  br label %do.end88.i

do.end88.i:                                       ; preds = %if.then85.i, %land.lhs.true83.i.do.end88.i_crit_edge, %land.lhs.true80.i.do.end88.i_crit_edge, %for.inc.i79.do.end88.i_crit_edge
  %cmp55.not.i = icmp eq ptr %175, null
  br i1 %cmp55.not.i, label %do.end88.i.for.end.i80_crit_edge, label %do.end88.i.for.body.i78_crit_edge

do.end88.i.for.body.i78_crit_edge:                ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i78

do.end88.i.for.end.i80_crit_edge:                 ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i80

for.end.i80:                                      ; preds = %do.end88.i.for.end.i80_crit_edge, %do.end11.i.i.i.i.i, %if.end67.i.for.end.i80_crit_edge, %do.end53.i.for.end.i80_crit_edge
  %fl1.0.i = phi ptr [ null, %do.end53.i.for.end.i80_crit_edge ], [ null, %if.end67.i.for.end.i80_crit_edge ], [ %165, %do.end11.i.i.i.i.i ], [ null, %do.end88.i.for.end.i80_crit_edge ]
  %call.i259.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i259.i, label %for.end.i80.rcu_read_unlock_bh.exit.i81_crit_edge, label %land.lhs.true.i262.i

for.end.i80.rcu_read_unlock_bh.exit.i81_crit_edge: ; preds = %for.end.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit.i81

land.lhs.true.i262.i:                             ; preds = %for.end.i80
  %call1.i260.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i260.i)
  %tobool.not.i261.i = icmp eq i32 %call1.i260.i, 0
  br i1 %tobool.not.i261.i, label %land.lhs.true.i262.i.rcu_read_unlock_bh.exit.i81_crit_edge, label %land.lhs.true2.i264.i

land.lhs.true.i262.i.rcu_read_unlock_bh.exit.i81_crit_edge: ; preds = %land.lhs.true.i262.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit.i81

land.lhs.true2.i264.i:                            ; preds = %land.lhs.true.i262.i
  %.b4.i263.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i263.i, label %land.lhs.true2.i264.i.rcu_read_unlock_bh.exit.i81_crit_edge, label %if.then.i265.i

land.lhs.true2.i264.i.rcu_read_unlock_bh.exit.i81_crit_edge: ; preds = %land.lhs.true2.i264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit.i81

if.then.i265.i:                                   ; preds = %land.lhs.true2.i264.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock_bh.exit.i81

rcu_read_unlock_bh.exit.i81:                      ; preds = %if.then.i265.i, %land.lhs.true2.i264.i.rcu_read_unlock_bh.exit.i81_crit_edge, %land.lhs.true.i262.i.rcu_read_unlock_bh.exit.i81_crit_edge, %for.end.i80.rcu_read_unlock_bh.exit.i81_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  call fastcc void @local_bh_enable() #10
  %tobool90.not.i = icmp eq ptr %fl1.0.i, null
  br i1 %tobool90.not.i, label %if.end94.i, label %rcu_read_unlock_bh.exit.i81.recheck.i_crit_edge

rcu_read_unlock_bh.exit.i81.recheck.i_crit_edge:  ; preds = %rcu_read_unlock_bh.exit.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %recheck.i

if.end94.i:                                       ; preds = %rcu_read_unlock_bh.exit.i81
  %176 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %0, align 4
  %call93.i = call fastcc ptr @fl_lookup(ptr noundef %81, i32 noundef %177) #10
  %tobool95.not.i = icmp eq ptr %call93.i, null
  br i1 %tobool95.not.i, label %if.end94.i.if.end151.i_crit_edge, label %if.end94.i.recheck.i_crit_edge

if.end94.i.recheck.i_crit_edge:                   ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %recheck.i

if.end94.i.if.end151.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151.i

recheck.i:                                        ; preds = %if.end165.i.recheck.i_crit_edge, %if.end94.i.recheck.i_crit_edge, %rcu_read_unlock_bh.exit.i81.recheck.i_crit_edge
  %fl1.2.i = phi ptr [ %call93.i, %if.end94.i.recheck.i_crit_edge ], [ %call167.i, %if.end165.i.recheck.i_crit_edge ], [ %fl1.0.i, %rcu_read_unlock_bh.exit.i81.recheck.i_crit_edge ]
  %178 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %3, align 2
  %180 = and i16 %179, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %tobool100.not.i = icmp eq i16 %180, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %recheck.i.release.i_crit_edge

recheck.i.release.i_crit_edge:                    ; preds = %recheck.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release.i

if.end102.i:                                      ; preds = %recheck.i
  %share.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl1.2.i, i32 0, i32 7
  %181 = ptrtoint ptr %share.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %share.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %182)
  %cmp104.i = icmp eq i8 %182, 1
  br i1 %cmp104.i, label %if.end102.i.release.i_crit_edge, label %lor.lhs.false.i

if.end102.i.release.i_crit_edge:                  ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release.i

lor.lhs.false.i:                                  ; preds = %if.end102.i
  %183 = ptrtoint ptr %share.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %share.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %182, i8 %184)
  %cmp110.not.i = icmp eq i8 %182, %184
  br i1 %cmp110.not.i, label %lor.lhs.false112.i, label %lor.lhs.false.i.release.i_crit_edge

lor.lhs.false.i.release.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release.i

lor.lhs.false112.i:                               ; preds = %lor.lhs.false.i
  %185 = zext i8 %182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %182, label %lor.lhs.false112.i.if.end132.i_crit_edge [
    i8 2, label %land.lhs.true117.i
    i8 3, label %land.lhs.true126.i
  ]

lor.lhs.false112.i.if.end132.i_crit_edge:         ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132.i

land.lhs.true117.i:                               ; preds = %lor.lhs.false112.i
  %owner.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl1.2.i, i32 0, i32 8
  %186 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %owner.i, align 4
  %owner118.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 8
  %188 = ptrtoint ptr %owner118.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %owner118.i, align 8
  %cmp119.not.i = icmp eq ptr %187, %189
  br i1 %cmp119.not.i, label %land.lhs.true117.i.if.end132.i_crit_edge, label %land.lhs.true117.i.release.i_crit_edge

land.lhs.true117.i.release.i_crit_edge:           ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release.i

land.lhs.true117.i.if.end132.i_crit_edge:         ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132.i

land.lhs.true126.i:                               ; preds = %lor.lhs.false112.i
  %owner127.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl1.2.i, i32 0, i32 8
  %owner128.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 8
  %190 = ptrtoint ptr %owner127.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %.unpack.i = load i32, ptr %owner127.i, align 4
  %191 = ptrtoint ptr %owner128.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %.unpack251.i = load i32, ptr %owner128.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack251.i)
  %cmp.i266.i = icmp eq i32 %.unpack.i, %.unpack251.i
  br i1 %cmp.i266.i, label %land.lhs.true126.i.if.end132.i_crit_edge, label %land.lhs.true126.i.release.i_crit_edge

land.lhs.true126.i.release.i_crit_edge:           ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release.i

land.lhs.true126.i.if.end132.i_crit_edge:         ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132.i

if.end132.i:                                      ; preds = %land.lhs.true126.i.if.end132.i_crit_edge, %land.lhs.true117.i.if.end132.i_crit_edge, %lor.lhs.false112.i.if.end132.i_crit_edge
  %tobool133.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool133.not.i, label %if.end132.i.release.i_crit_edge, label %if.end135.i

if.end132.i.release.i_crit_edge:                  ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release.i

if.end135.i:                                      ; preds = %if.end132.i
  %linger.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 5
  %192 = ptrtoint ptr %linger.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %linger.i, align 8
  %linger136.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl1.2.i, i32 0, i32 5
  %194 = ptrtoint ptr %linger136.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %linger136.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %195)
  %cmp137.i = icmp ugt i32 %193, %195
  br i1 %cmp137.i, label %if.then139.i, label %if.end135.i.if.end142.i_crit_edge

if.end135.i.if.end142.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142.i

if.then139.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %linger136.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %193, ptr %linger136.i, align 4
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then139.i, %if.end135.i.if.end142.i_crit_edge
  %197 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %expires.i.i, align 8
  %expires143.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl1.2.i, i32 0, i32 10
  %199 = ptrtoint ptr %expires143.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %expires143.i, align 4
  %sub.i = sub i32 %198, %200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp144.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp144.i, label %if.then146.i, label %if.end142.i.if.end149.i_crit_edge

if.end142.i.if.end149.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149.i

if.then146.i:                                     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %expires143.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %198, ptr %expires143.i, align 4
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then146.i, %if.end142.i.if.end149.i_crit_edge
  call fastcc void @fl_link(ptr noundef %cond.i.i47, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %fl1.2.i) #10
  call fastcc void @fl_free(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

release.i:                                        ; preds = %if.end132.i.release.i_crit_edge, %land.lhs.true126.i.release.i_crit_edge, %land.lhs.true117.i.release.i_crit_edge, %lor.lhs.false.i.release.i_crit_edge, %if.end102.i.release.i_crit_edge, %recheck.i.release.i_crit_edge
  %err.1.i = phi i32 [ -1, %if.end102.i.release.i_crit_edge ], [ -12, %if.end132.i.release.i_crit_edge ], [ -1, %land.lhs.true126.i.release.i_crit_edge ], [ -1, %land.lhs.true117.i.release.i_crit_edge ], [ -1, %lor.lhs.false.i.release.i_crit_edge ], [ -17, %recheck.i.release.i_crit_edge ]
  call fastcc void @fl_release(ptr noundef nonnull %fl1.2.i) #10
  br label %if.end.i270.i

if.end151.i:                                      ; preds = %if.end94.i.if.end151.i_crit_edge, %if.end33.i66.if.end151.i_crit_edge
  %202 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %3, align 2
  %204 = and i16 %203, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %204)
  %tobool155.not.i = icmp eq i16 %204, 0
  br i1 %tobool155.not.i, label %if.end151.i.if.end.i270.i_crit_edge, label %if.end157.i

if.end151.i.if.end.i270.i_crit_edge:              ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i270.i

if.end157.i:                                      ; preds = %if.end151.i
  %tobool158.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool158.not.i, label %if.end157.i.if.end.i270.i_crit_edge, label %if.end160.i

if.end157.i.if.end.i270.i_crit_edge:              ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i270.i

if.end160.i:                                      ; preds = %if.end157.i
  %call161.i = call fastcc i32 @mem_check(ptr noundef %sk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %cmp162.not.i = icmp eq i32 %call161.i, 0
  br i1 %cmp162.not.i, label %if.end165.i, label %if.end160.i.if.end.i270.i_crit_edge

if.end160.i.if.end.i270.i_crit_edge:              ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i270.i

if.end165.i:                                      ; preds = %if.end160.i
  %205 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %0, align 4
  %call167.i = call fastcc ptr @fl_intern(ptr noundef %81, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %206) #10
  %tobool168.not.i = icmp eq ptr %call167.i, null
  br i1 %tobool168.not.i, label %if.end170.i, label %if.end165.i.recheck.i_crit_edge

if.end165.i.recheck.i_crit_edge:                  ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %recheck.i

if.end170.i:                                      ; preds = %if.end165.i
  %207 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool172.not.i = icmp eq i32 %208, 0
  br i1 %tobool172.not.i, label %if.then173.i, label %if.end170.i.if.end179.i_crit_edge

if.end170.i.if.end179.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179.i

if.then173.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #12
  %label174.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 1
  call fastcc void @copy_to_sockptr_offset([2 x i32] %optval.coerce, ptr noundef %label174.i) #10
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.then173.i, %if.end170.i.if.end179.i_crit_edge
  call fastcc void @fl_link(ptr noundef %cond.i.i47, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

if.end.i270.i:                                    ; preds = %if.end160.i.if.end.i270.i_crit_edge, %if.end157.i.if.end.i270.i_crit_edge, %if.end151.i.if.end.i270.i_crit_edge, %release.i, %if.then66.i
  %err.2.i = phi i32 [ -2, %if.end151.i.if.end.i270.i_crit_edge ], [ -12, %if.end157.i.if.end.i270.i_crit_edge ], [ %err.1.i, %release.i ], [ %call161.i, %if.end160.i.if.end.i270.i_crit_edge ], [ -17, %if.then66.i ]
  %209 = ptrtoint ptr %share.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %share.i.i, align 4
  %.off.i.i268.i = add i8 %210, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i.i268.i)
  %switch.i.i269.i = icmp ult i8 %.off.i.i268.i, 3
  br i1 %switch.i.i269.i, label %if.end.i270.i.if.then2.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i270.i.if.then2.i.i_crit_edge:             ; preds = %if.end.i270.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i270.i
  %opt.i271.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 4
  %211 = ptrtoint ptr %opt.i271.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %opt.i271.i, align 4
  %tobool1.not.i.i = icmp eq ptr %212, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.fl_free.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then2.i.i_crit_edge

lor.lhs.false.i.i.if.then2.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i.i

lor.lhs.false.i.i.fl_free.exit.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fl_free.exit.i

if.then2.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then2.i.i_crit_edge, %if.end.i270.i.if.then2.i.i_crit_edge
  %213 = load i32, ptr getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 1), align 4
  call void @__static_key_slow_dec_deferred(ptr noundef nonnull @ipv6_flowlabel_exclusive, ptr noundef getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 2), i32 noundef %213) #10
  br label %fl_free.exit.i

fl_free.exit.i:                                   ; preds = %if.then2.i.i, %lor.lhs.false.i.i.fl_free.exit.i_crit_edge
  %rcu.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call7.i.i.i.i, i32 0, i32 6
  call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @fl_free_rcu) #10
  call void @kfree(ptr noundef %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fl_free.exit.i, %if.end179.i, %if.end149.i, %if.then80.i.i, %if.end.i.i62.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end15.i, %if.end11.i.cleanup_crit_edge, %do.end.i55, %do.body.i.cleanup_crit_edge, %cleanup.i, %if.then40.i.cleanup_crit_edge, %land.lhs.true37.i.cleanup_crit_edge, %rcu_read_unlock_bh.exit88.i.cleanup_crit_edge, %rcu_read_unlock_bh.exit.i, %if.end33.i, %for.end.i, %if.end6.i, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ 0, %if.end6.i ], [ 0, %if.end33.i ], [ -3, %for.end.i ], [ -92, %if.then.i.cleanup_crit_edge ], [ -3, %if.end.i.cleanup_crit_edge ], [ %call15.i, %rcu_read_unlock_bh.exit.i ], [ %call50.i, %cleanup.i ], [ -3, %land.lhs.true37.i.cleanup_crit_edge ], [ -3, %rcu_read_unlock_bh.exit88.i.cleanup_crit_edge ], [ -3, %if.then40.i.cleanup_crit_edge ], [ 0, %if.end15.i ], [ %err.2.i, %fl_free.exit.i ], [ 0, %if.end149.i ], [ 0, %if.end179.i ], [ -1, %do.end.i55 ], [ -1, %do.body.i.cleanup_crit_edge ], [ -92, %if.end11.i.cleanup_crit_edge ], [ -22, %if.end16.i.cleanup_crit_edge ], [ -34, %if.end20.i.cleanup_crit_edge ], [ -12, %if.end.i.i62.cleanup_crit_edge ], [ -22, %if.end29.i.cleanup_crit_edge ], [ %err.1.ph.i.i, %if.then80.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freq) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_flowlabel_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6_flowlabel_net_ops) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip6_flowlabel_cleanup() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__static_key_deferred_flush(ptr noundef nonnull @ipv6_flowlabel_exclusive, ptr noundef getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 2)) #10
  %call = tail call i32 @del_timer(ptr noundef nonnull @ip6_fl_gc_timer) #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_flowlabel_net_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__static_key_deferred_flush(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #0

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
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl6_renew(ptr nocapture noundef %fl, i32 noundef %linger, i32 noundef %expires) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %linger)
  %cmp.i = icmp ult i32 %linger, 6
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %linger)
  %cmp1.i = icmp ugt i32 %linger, 150
  br i1 %cmp1.i, label %land.lhs.true.i, label %check_linger.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %call.i = tail call zeroext i1 @capable(i32 noundef 12) #10
  %mul.i = mul i32 %linger, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not = icmp ne i32 %mul.i, 0
  %0 = and i1 %tobool.not, %call.i
  br i1 %0, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

check_linger.exit:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.old = mul nuw nsw i32 %linger, 100
  br label %if.end

if.end:                                           ; preds = %check_linger.exit, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i53 = phi i32 [ %mul.i.old, %check_linger.exit ], [ 600, %entry.if.end_crit_edge ], [ %mul.i, %land.lhs.true.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %expires)
  %cmp.i39 = icmp ult i32 %expires, 6
  br i1 %cmp.i39, label %if.end.if.end4_crit_edge, label %if.end.i41

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i41:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %expires)
  %cmp1.i40 = icmp ugt i32 %expires, 150
  br i1 %cmp1.i40, label %land.lhs.true.i43, label %check_linger.exit47

land.lhs.true.i43:                                ; preds = %if.end.i41
  %call.i42 = tail call zeroext i1 @capable(i32 noundef 12) #10
  %mul.i44 = mul i32 %expires, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i44)
  %tobool2.not = icmp ne i32 %mul.i44, 0
  %1 = and i1 %tobool2.not, %call.i42
  br i1 %1, label %land.lhs.true.i43.if.end4_crit_edge, label %land.lhs.true.i43.return_crit_edge

land.lhs.true.i43.return_crit_edge:               ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i43.if.end4_crit_edge:              ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

check_linger.exit47:                              ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i44.old = mul nuw nsw i32 %expires, 100
  br label %if.end4

if.end4:                                          ; preds = %check_linger.exit47, %land.lhs.true.i43.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %retval.0.i4659 = phi i32 [ %mul.i44.old, %check_linger.exit47 ], [ 600, %if.end.if.end4_crit_edge ], [ %mul.i44, %land.lhs.true.i43.if.end4_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 9
  %3 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %lastuse, align 4
  %linger5 = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 5
  %4 = ptrtoint ptr %linger5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %linger5, align 4
  %sub = sub i32 %5, %retval.0.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %linger5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i53, ptr %linger5, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %7 = ptrtoint ptr %linger5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %linger5, align 4
  %sub10 = sub i32 %retval.0.i4659, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp11 = icmp slt i32 %sub10, 0
  %spec.select = select i1 %cmp11, i32 %8, i32 %retval.0.i4659
  %expires15 = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 10
  %9 = ptrtoint ptr %expires15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expires15, align 4
  %add = add i32 %spec.select, %2
  %sub17 = sub i32 %10, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18 = icmp slt i32 %sub17, 0
  br i1 %cmp18, label %if.then19, label %if.end8.if.end23_crit_edge

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %expires15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %expires15, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end8.if.end23_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  br label %return

return:                                           ; preds = %if.end23, %land.lhs.true.i43.return_crit_edge, %land.lhs.true.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -1, %land.lhs.true.i.return_crit_edge ], [ -1, %land.lhs.true.i43.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fl_lookup(ptr noundef readnone %net, i32 noundef %label) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %and.i = and i32 %label, 255
  %arrayidx.i = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %and.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i4 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6, label %rcu_read_lock_bh.exit.do.end7.i_crit_edge

rcu_read_lock_bh.exit.do.end7.i_crit_edge:        ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i6:                                 ; preds = %rcu_read_lock_bh.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i6.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i6.do.end7.i_crit_edge:             ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i6
  %.b40.i = load i1, ptr @__fl_lookup.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i7

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i7:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__fl_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 78, ptr noundef nonnull @.str.4) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i7, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i6.do.end7.i_crit_edge, %rcu_read_lock_bh.exit.do.end7.i_crit_edge
  %cmp.not41.i = icmp eq ptr %1, null
  br i1 %cmp.not41.i, label %do.end7.i.if.end_crit_edge, label %do.end7.i.for.body.i_crit_edge

do.end7.i.for.body.i_crit_edge:                   ; preds = %do.end7.i
  br label %for.body.i

do.end7.i.if.end_crit_edge:                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %do.end31.i.for.body.i_crit_edge, %do.end7.i.for.body.i_crit_edge
  %fl.042.i = phi ptr [ %7, %do.end31.i.for.body.i_crit_edge ], [ %1, %do.end7.i.for.body.i_crit_edge ]
  %label9.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.042.i, i32 0, i32 1
  %2 = ptrtoint ptr %label9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %label9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %label)
  %cmp10.i = icmp eq i32 %3, %label
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %fl_net.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.042.i, i32 0, i32 11
  %4 = ptrtoint ptr %fl_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fl_net.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %net
  br i1 %cmp.i.not.i, label %land.lhs.true, label %land.lhs.true11.i.for.inc.i_crit_edge

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %fl.042.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fl.042.i, align 4
  %call21.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %for.inc.i.do.end31.i_crit_edge

for.inc.i.do.end31.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

land.lhs.true23.i:                                ; preds = %for.inc.i
  %call24.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true23.i.do.end31.i_crit_edge, label %land.lhs.true26.i

land.lhs.true23.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

land.lhs.true26.i:                                ; preds = %land.lhs.true23.i
  %.b3839.i = load i1, ptr @__fl_lookup.__warned.17, align 1
  br i1 %.b3839.i, label %land.lhs.true26.i.do.end31.i_crit_edge, label %if.then28.i

land.lhs.true26.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__fl_lookup.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 78, ptr noundef nonnull @.str.4) #10
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then28.i, %land.lhs.true26.i.do.end31.i_crit_edge, %land.lhs.true23.i.do.end31.i_crit_edge, %for.inc.i.do.end31.i_crit_edge
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %do.end31.i.if.end_crit_edge, label %do.end31.i.for.body.i_crit_edge

do.end31.i.for.body.i_crit_edge:                  ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end31.i.if.end_crit_edge:                      ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %land.lhs.true11.i
  %users = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.042.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 0, i32 1, ptr elementtype(i32) %users) #10, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.if.end_crit_edge, label %do.end11.i.i.i.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %land.lhs.true.if.end_crit_edge, %do.end31.i.if.end_crit_edge, %do.end7.i.if.end_crit_edge
  %fl.0 = phi ptr [ null, %do.end7.i.if.end_crit_edge ], [ null, %land.lhs.true.if.end_crit_edge ], [ %fl.042.i, %do.end11.i.i.i.i ], [ null, %do.end31.i.if.end_crit_edge ]
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i8, label %if.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i11

if.end.rcu_read_unlock_bh.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i11:                                ; preds = %if.end
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock_bh.exit_crit_edge, %if.end.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  tail call fastcc void @local_bh_enable() #10
  ret ptr %fl.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fl_link(ptr noundef %np, ptr noundef %sfl, ptr noundef %fl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #10
  %fl1 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %sfl, i32 0, i32 1
  %0 = ptrtoint ptr %fl1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fl, ptr %fl1, align 4
  %ipv6_fl_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %np, i32 0, i32 17
  %1 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ipv6_fl_list, align 4
  %3 = ptrtoint ptr %sfl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %sfl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !113
  %4 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %sfl, ptr %ipv6_fl_list, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fl_free(ptr noundef %fl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fl, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %share.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 7
  %0 = ptrtoint ptr %share.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %share.i, align 4
  %.off.i = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %opt = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 4
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opt, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.if.end3_crit_edge, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

lor.lhs.false.if.end3_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %4 = load i32, ptr getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 1), align 4
  tail call void @__static_key_slow_dec_deferred(ptr noundef nonnull @ipv6_flowlabel_exclusive, ptr noundef getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 2), i32 noundef %4) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %lor.lhs.false.if.end3_crit_edge
  %rcu = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @fl_free_rcu) #10
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mem_check(ptr noundef %sk) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fl_size, i32 noundef 4) #10
  %4 = load volatile i32, ptr @fl_size, align 4
  %sub = sub i32 4096, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4064, i32 %sub)
  %cmp = icmp sgt i32 %sub, 4064
  br i1 %cmp, label %inet6_sk.exit.cleanup_crit_edge, label %if.end

inet6_sk.exit.cleanup_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  tail call fastcc void @local_bh_disable() #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock_bh.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.end.rcu_read_lock_bh.exit_crit_edge
  %ipv6_fl_list = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 17
  %5 = ptrtoint ptr %ipv6_fl_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ipv6_fl_list, align 4
  %call3 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end11_crit_edge

rcu_read_lock_bh.exit.do.end11_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b54 = load i1, ptr @mem_check.__warned, align 1
  br i1 %.b54, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mem_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 479, ptr noundef nonnull @.str.4) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock_bh.exit.do.end11_crit_edge
  %cmp13.not63 = icmp eq ptr %6, null
  br i1 %cmp13.not63, label %do.end11.for.end_crit_edge, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %do.end29.for.body_crit_edge, %do.end11.for.body_crit_edge
  %sfl.065 = phi ptr [ %8, %do.end29.for.body_crit_edge ], [ %6, %do.end11.for.body_crit_edge ]
  %count.064 = phi i32 [ %inc, %do.end29.for.body_crit_edge ], [ 0, %do.end11.for.body_crit_edge ]
  %inc = add i32 %count.064, 1
  %7 = ptrtoint ptr %sfl.065 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %sfl.065, align 4
  %call19 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %for.body.do.end29_crit_edge

for.body.do.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

land.lhs.true21:                                  ; preds = %for.body
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b5253 = load i1, ptr @mem_check.__warned.21, align 1
  br i1 %.b5253, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mem_check.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 479, ptr noundef nonnull @.str.4) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true21.do.end29_crit_edge, %for.body.do.end29_crit_edge
  %cmp13.not = icmp eq ptr %8, null
  br i1 %cmp13.not, label %do.end29.for.end_crit_edge, label %do.end29.for.body_crit_edge

do.end29.for.body_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.end29.for.end_crit_edge, %do.end11.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %do.end11.for.end_crit_edge ], [ %inc, %do.end29.for.end_crit_edge ]
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i56, label %for.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i59

for.end.rcu_read_unlock_bh.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i59:                                ; preds = %for.end
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock_bh.exit_crit_edge, %for.end.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  tail call fastcc void @local_bh_enable() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp31 = icmp slt i32 %sub, 1
  br i1 %cmp31, label %rcu_read_unlock_bh.exit.cleanup_crit_edge, label %lor.lhs.false

rcu_read_unlock_bh.exit.cleanup_crit_edge:        ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count.0.lcssa)
  %cmp32 = icmp sgt i32 %count.0.lcssa, 31
  br i1 %cmp32, label %lor.lhs.false.land.lhs.true39_crit_edge, label %lor.lhs.false33

lor.lhs.false.land.lhs.true39_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true39

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %cmp34 = icmp sgt i32 %count.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %sub)
  %cmp36 = icmp ult i32 %sub, 2048
  %or.cond = select i1 %cmp34, i1 %cmp36, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub)
  %cmp38 = icmp ult i32 %sub, 1024
  %or.cond55 = select i1 %or.cond, i1 true, i1 %cmp38
  br i1 %or.cond55, label %lor.lhs.false33.land.lhs.true39_crit_edge, label %lor.lhs.false33.if.end42_crit_edge

lor.lhs.false33.if.end42_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

lor.lhs.false33.land.lhs.true39_crit_edge:        ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true39

land.lhs.true39:                                  ; preds = %lor.lhs.false33.land.lhs.true39_crit_edge, %lor.lhs.false.land.lhs.true39_crit_edge
  %call40 = tail call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call40, label %land.lhs.true39.if.end42_crit_edge, label %land.lhs.true39.cleanup_crit_edge

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true39.if.end42_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true39.if.end42_crit_edge, %lor.lhs.false33.if.end42_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %land.lhs.true39.cleanup_crit_edge, %rcu_read_unlock_bh.exit.cleanup_crit_edge, %inet6_sk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ 0, %inet6_sk.exit.cleanup_crit_edge ], [ -105, %land.lhs.true39.cleanup_crit_edge ], [ -105, %rcu_read_unlock_bh.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fl_intern(ptr noundef readnone %net, ptr noundef %fl, i32 noundef %label) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %label, 1048575
  %label1 = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 1
  %0 = ptrtoint ptr %label1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %label1, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %label)
  %cmp = icmp eq i32 %label, 0
  br i1 %cmp, label %entry.for.cond_crit_edge, label %if.else

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry.for.cond_crit_edge
  %call = tail call i32 @prandom_u32() #10
  %and2 = and i32 %call, 1048575
  %1 = ptrtoint ptr %label1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and2, ptr %label1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %for.cond.for.cond.backedge_crit_edge, label %if.then5

for.cond.for.cond.backedge_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.lhs.true11.i.for.cond.backedge_crit_edge, %for.cond.for.cond.backedge_crit_edge
  br label %for.cond

if.then5:                                         ; preds = %for.cond
  %and.i = and i32 %call, 255
  %arrayidx.i = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %and.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then5.do.end7.i_crit_edge

if.then5.do.end7.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.then5
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b40.i = load i1, ptr @__fl_lookup.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__fl_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 78, ptr noundef nonnull @.str.4) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.then5.do.end7.i_crit_edge
  %cmp.not41.i = icmp eq ptr %3, null
  br i1 %cmp.not41.i, label %do.end7.i.if.end16_crit_edge, label %do.end7.i.for.body.i_crit_edge

do.end7.i.for.body.i_crit_edge:                   ; preds = %do.end7.i
  br label %for.body.i

do.end7.i.if.end16_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

for.body.i:                                       ; preds = %do.end31.i.for.body.i_crit_edge, %do.end7.i.for.body.i_crit_edge
  %fl.042.i = phi ptr [ %9, %do.end31.i.for.body.i_crit_edge ], [ %3, %do.end7.i.for.body.i_crit_edge ]
  %label9.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.042.i, i32 0, i32 1
  %4 = ptrtoint ptr %label9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %label9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and2)
  %cmp10.i = icmp eq i32 %5, %and2
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %fl_net.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.042.i, i32 0, i32 11
  %6 = ptrtoint ptr %fl_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fl_net.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %net
  br i1 %cmp.i.not.i, label %land.lhs.true11.i.for.cond.backedge_crit_edge, label %land.lhs.true11.i.for.inc.i_crit_edge

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true11.i.for.cond.backedge_crit_edge:    ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %fl.042.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fl.042.i, align 4
  %call21.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %for.inc.i.do.end31.i_crit_edge

for.inc.i.do.end31.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

land.lhs.true23.i:                                ; preds = %for.inc.i
  %call24.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true23.i.do.end31.i_crit_edge, label %land.lhs.true26.i

land.lhs.true23.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

land.lhs.true26.i:                                ; preds = %land.lhs.true23.i
  %.b3839.i = load i1, ptr @__fl_lookup.__warned.17, align 1
  br i1 %.b3839.i, label %land.lhs.true26.i.do.end31.i_crit_edge, label %if.then28.i

land.lhs.true26.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__fl_lookup.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 78, ptr noundef nonnull @.str.4) #10
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then28.i, %land.lhs.true26.i.do.end31.i_crit_edge, %land.lhs.true23.i.do.end31.i_crit_edge, %for.inc.i.do.end31.i_crit_edge
  %cmp.not.i = icmp eq ptr %9, null
  br i1 %cmp.not.i, label %do.end31.i.if.end16_crit_edge, label %do.end31.i.for.body.i_crit_edge

do.end31.i.for.body.i_crit_edge:                  ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end31.i.if.end16_crit_edge:                    ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %label1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %label1, align 4
  %and.i74 = and i32 %11, 255
  %arrayidx.i75 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %and.i74
  %12 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i75, align 4
  %call.i76 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i80, label %if.else.do.end7.i85_crit_edge

if.else.do.end7.i85_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i85

land.lhs.true.i80:                                ; preds = %if.else
  %call2.i78 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i78)
  %tobool3.not.i79 = icmp eq i32 %call2.i78, 0
  br i1 %tobool3.not.i79, label %land.lhs.true.i80.do.end7.i85_crit_edge, label %land.lhs.true4.i82

land.lhs.true.i80.do.end7.i85_crit_edge:          ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i85

land.lhs.true4.i82:                               ; preds = %land.lhs.true.i80
  %.b40.i81 = load i1, ptr @__fl_lookup.__warned, align 1
  br i1 %.b40.i81, label %land.lhs.true4.i82.do.end7.i85_crit_edge, label %if.then.i83

land.lhs.true4.i82.do.end7.i85_crit_edge:         ; preds = %land.lhs.true4.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i85

if.then.i83:                                      ; preds = %land.lhs.true4.i82
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__fl_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 78, ptr noundef nonnull @.str.4) #10
  br label %do.end7.i85

do.end7.i85:                                      ; preds = %if.then.i83, %land.lhs.true4.i82.do.end7.i85_crit_edge, %land.lhs.true.i80.do.end7.i85_crit_edge, %if.else.do.end7.i85_crit_edge
  %cmp.not41.i84 = icmp eq ptr %13, null
  br i1 %cmp.not41.i84, label %do.end7.i85.if.end16_crit_edge, label %do.end7.i85.for.body.i89_crit_edge

do.end7.i85.for.body.i89_crit_edge:               ; preds = %do.end7.i85
  br label %for.body.i89

do.end7.i85.if.end16_crit_edge:                   ; preds = %do.end7.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

for.body.i89:                                     ; preds = %do.end31.i103.for.body.i89_crit_edge, %do.end7.i85.for.body.i89_crit_edge
  %fl.042.i86 = phi ptr [ %19, %do.end31.i103.for.body.i89_crit_edge ], [ %13, %do.end7.i85.for.body.i89_crit_edge ]
  %label9.i87 = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.042.i86, i32 0, i32 1
  %14 = ptrtoint ptr %label9.i87 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %label9.i87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp10.i88 = icmp eq i32 %15, %11
  br i1 %cmp10.i88, label %land.lhs.true11.i92, label %for.body.i89.for.inc.i95_crit_edge

for.body.i89.for.inc.i95_crit_edge:               ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i95

land.lhs.true11.i92:                              ; preds = %for.body.i89
  %fl_net.i90 = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.042.i86, i32 0, i32 11
  %16 = ptrtoint ptr %fl_net.i90 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fl_net.i90, align 4
  %cmp.i.not.i91 = icmp eq ptr %17, %net
  br i1 %cmp.i.not.i91, label %if.then14, label %land.lhs.true11.i92.for.inc.i95_crit_edge

land.lhs.true11.i92.for.inc.i95_crit_edge:        ; preds = %land.lhs.true11.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i95

for.inc.i95:                                      ; preds = %land.lhs.true11.i92.for.inc.i95_crit_edge, %for.body.i89.for.inc.i95_crit_edge
  %18 = ptrtoint ptr %fl.042.i86 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %fl.042.i86, align 4
  %call21.i93 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i93)
  %tobool22.not.i94 = icmp eq i32 %call21.i93, 0
  br i1 %tobool22.not.i94, label %land.lhs.true23.i98, label %for.inc.i95.do.end31.i103_crit_edge

for.inc.i95.do.end31.i103_crit_edge:              ; preds = %for.inc.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i103

land.lhs.true23.i98:                              ; preds = %for.inc.i95
  %call24.i96 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i96)
  %tobool25.not.i97 = icmp eq i32 %call24.i96, 0
  br i1 %tobool25.not.i97, label %land.lhs.true23.i98.do.end31.i103_crit_edge, label %land.lhs.true26.i100

land.lhs.true23.i98.do.end31.i103_crit_edge:      ; preds = %land.lhs.true23.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i103

land.lhs.true26.i100:                             ; preds = %land.lhs.true23.i98
  %.b3839.i99 = load i1, ptr @__fl_lookup.__warned.17, align 1
  br i1 %.b3839.i99, label %land.lhs.true26.i100.do.end31.i103_crit_edge, label %if.then28.i101

land.lhs.true26.i100.do.end31.i103_crit_edge:     ; preds = %land.lhs.true26.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i103

if.then28.i101:                                   ; preds = %land.lhs.true26.i100
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__fl_lookup.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 78, ptr noundef nonnull @.str.4) #10
  br label %do.end31.i103

do.end31.i103:                                    ; preds = %if.then28.i101, %land.lhs.true26.i100.do.end31.i103_crit_edge, %land.lhs.true23.i98.do.end31.i103_crit_edge, %for.inc.i95.do.end31.i103_crit_edge
  %cmp.not.i102 = icmp eq ptr %19, null
  br i1 %cmp.not.i102, label %do.end31.i103.if.end16_crit_edge, label %do.end31.i103.for.body.i89_crit_edge

do.end31.i103.for.body.i89_crit_edge:             ; preds = %do.end31.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i89

do.end31.i103.if.end16_crit_edge:                 ; preds = %do.end31.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true11.i92
  call void @__sanitizer_cov_trace_pc() #12
  %users = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.042.i86, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #10, !srcloc !114
  br label %cleanup

if.end16:                                         ; preds = %do.end31.i103.if.end16_crit_edge, %do.end7.i85.if.end16_crit_edge, %do.end31.i.if.end16_crit_edge, %do.end7.i.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 9
  %22 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %lastuse, align 4
  %23 = ptrtoint ptr %label1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %label1, align 4
  %and18 = and i32 %24, 255
  %arrayidx = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %and18
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %fl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  %28 = ptrtoint ptr %label1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %label1, align 4
  %and46 = and i32 %29, 255
  %arrayidx47 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %and46
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %fl, ptr %arrayidx47, align 4
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fl_size, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @fl_size, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fl_size, ptr nonnull @fl_size, i32 1, ptr nonnull elementtype(i32) @fl_size) #10, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14
  %retval.0 = phi ptr [ null, %if.end16 ], [ %fl.042.i86, %if.then14 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_to_sockptr_offset([2 x i32] %dst.coerce, ptr noundef %src) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %dst.coerce.fca.0.extract = extractvalue [2 x i32] %dst.coerce, 0
  %0 = inttoptr i32 %dst.coerce.fca.0.extract to ptr
  %sockptr.coerce.fca.1.extract.i = extractvalue [2 x i32] %dst.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i)
  %bf.cast.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i, 0
  %add.ptr2 = getelementptr i8, ptr %0, i32 16
  br i1 %bf.cast.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.return_crit_edge, label %if.end.i.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i.i:                                       ; preds = %if.then.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr2, i32 4, i32 -1226833920) #13, !srcloc !116
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.then2.i.i, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef 4) #10
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr2, ptr noundef %src, i32 noundef 4) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %src, align 1
  %4 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %add.ptr2, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then2.i.i, %if.end.i.i.return_crit_edge, %if.then.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__static_key_slow_dec_deferred(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_free_rcu(ptr noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %share = getelementptr i8, ptr %head, i32 8
  %0 = ptrtoint ptr %share to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %share, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %owner = getelementptr i8, ptr %head, i32 12
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 4
  tail call void @put_pid(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -36
  %opt = getelementptr i8, ptr %head, i32 -8
  %4 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opt, align 4
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_flowlabel_proc_init(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @ip6fl_seq_ops, i32 noundef 16, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6_flowlabel_net_exit(ptr noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %entry
  %i.024.i = phi i32 [ 0, %entry ], [ %inc.i, %while.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %i.024.i
  br label %while.cond.outer.i

while.cond.outer.i.loopexit:                      ; preds = %land.lhs.true8.i.while.cond.outer.i.loopexit_crit_edge, %while.body.i.while.cond.outer.i.loopexit_crit_edge
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %while.cond.outer.i.loopexit, %for.body.i
  %flp.0.ph.i = phi ptr [ %arrayidx.i, %for.body.i ], [ %1, %while.cond.outer.i.loopexit ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %fl_free.exit.i, %while.cond.outer.i
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @ip6_fl_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.cond.i.do.end.i_crit_edge

while.cond.i.do.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %while.cond.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b21.i = load i1, ptr @ip6_fl_purge.__warned, align 1
  br i1 %.b21.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip6_fl_purge.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 199, ptr noundef nonnull @.str.6) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %while.cond.i.do.end.i_crit_edge
  %0 = ptrtoint ptr %flp.0.ph.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flp.0.ph.i, align 4
  %cmp5.not.i = icmp eq ptr %1, null
  br i1 %cmp5.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %do.end.i
  %fl_net.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %fl_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fl_net.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %net
  br i1 %cmp.i.not.i, label %land.lhs.true8.i, label %while.body.i.while.cond.outer.i.loopexit_crit_edge

while.body.i.while.cond.outer.i.loopexit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.i.loopexit

land.lhs.true8.i:                                 ; preds = %while.body.i
  %users.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.i = icmp eq i32 %5, 0
  br i1 %cmp10.i, label %if.end.i.i, label %land.lhs.true8.i.while.cond.outer.i.loopexit_crit_edge

land.lhs.true8.i.while.cond.outer.i.loopexit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.i.loopexit

if.end.i.i:                                       ; preds = %land.lhs.true8.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %flp.0.ph.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %flp.0.ph.i, align 4
  %share.i.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %share.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %share.i.i.i, align 4
  %.off.i.i.i = add i8 %10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i.i.i)
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %if.end.i.i.if.then2.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then2.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %opt.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %opt.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.fl_free.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then2.i.i_crit_edge

lor.lhs.false.i.i.if.then2.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i.i

lor.lhs.false.i.i.fl_free.exit.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fl_free.exit.i

if.then2.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then2.i.i_crit_edge, %if.end.i.i.if.then2.i.i_crit_edge
  %13 = load i32, ptr getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 1), align 4
  tail call void @__static_key_slow_dec_deferred(ptr noundef nonnull @ipv6_flowlabel_exclusive, ptr noundef getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 2), i32 noundef %13) #10
  br label %fl_free.exit.i

fl_free.exit.i:                                   ; preds = %if.then2.i.i, %lor.lhs.false.i.i.fl_free.exit.i_crit_edge
  %rcu.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @fl_free_rcu) #10
  %call.i.i22.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fl_size, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @fl_size, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fl_size, ptr nonnull @fl_size, i32 1, ptr nonnull elementtype(i32) @fl_size) #10, !srcloc !117
  br label %while.cond.i

while.end.i:                                      ; preds = %do.end.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %ip6_fl_purge.exit, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ip6_fl_purge.exit:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #10
  %proc_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %15 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proc_net.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.22, ptr noundef %16) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip6fl_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %file = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %pid_ns = getelementptr inbounds %struct.ip6fl_iter_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pid_ns to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %pid_ns, align 4
  tail call fastcc void @local_bh_disable() #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not = icmp eq i64 %14, 0
  br i1 %tobool.not, label %rcu_read_lock_bh.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock_bh.exit.cond.end_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock_bh.exit
  %call.i6 = tail call fastcc ptr @ip6fl_get_first(ptr noundef %seq) #10
  %tobool.not.i7 = icmp eq ptr %call.i6, null
  br i1 %tobool.not.i7, label %cond.true.cond.end_crit_edge, label %while.cond.preheader.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

while.cond.preheader.i:                           ; preds = %cond.true
  %sub = add i64 %14, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %tobool1.not17.i = icmp eq i64 %sub, 0
  br i1 %tobool1.not17.i, label %while.cond.preheader.i.cond.end_crit_edge, label %while.cond.preheader.i.land.rhs.i_crit_edge

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

while.cond.preheader.i.cond.end_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add i64 %pos.addr.018.i, -1
  %tobool1.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool1.not.i, label %while.cond.i.cond.end_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.cond.i.cond.end_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %fl.019.i = phi ptr [ %call2.i, %while.cond.i.land.rhs.i_crit_edge ], [ %call.i6, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %pos.addr.018.i = phi i64 [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ], [ %sub, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %call2.i = tail call fastcc ptr @ip6fl_get_next(ptr noundef %seq, ptr noundef nonnull %fl.019.i) #10
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %land.rhs.i.cond.end_crit_edge, label %while.cond.i

land.rhs.i.cond.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end:                                         ; preds = %land.rhs.i.cond.end_crit_edge, %while.cond.i.cond.end_crit_edge, %while.cond.preheader.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %rcu_read_lock_bh.exit.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock_bh.exit.cond.end_crit_edge ], [ null, %cond.true.cond.end_crit_edge ], [ %call.i6, %while.cond.preheader.i.cond.end_crit_edge ], [ %call2.i, %while.cond.i.cond.end_crit_edge ], [ null, %land.rhs.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6fl_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock_bh.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, %entry.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #10
  tail call fastcc void @local_bh_enable() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip6fl_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc ptr @ip6fl_get_first(ptr noundef %seq)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc ptr @ip6fl_get_next(ptr noundef %seq, ptr noundef %v)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fl.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ]
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %fl.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6fl_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.27) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %label = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %label, align 4
  %share = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 7
  %4 = ptrtoint ptr %share to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %share, align 4
  %conv = zext i8 %5 to i32
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %5, label %if.else.cond.end14_crit_edge [
    i8 2, label %cond.true
    i8 3, label %cond.true9
  ]

if.else.cond.end14_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end14

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %owner = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 8
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 4
  %pid_ns = getelementptr inbounds %struct.ip6fl_iter_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pid_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pid_ns, align 4
  %call = tail call i32 @pid_nr_ns(ptr noundef %8, ptr noundef %10) #10
  br label %cond.end14

cond.true9:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %11 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_ns.i, align 4
  %owner11 = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 8
  %17 = ptrtoint ptr %owner11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack = load i32, ptr %owner11, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call12 = tail call i32 @from_kuid_munged(ptr noundef %16, [1 x i32] %18) #10
  br label %cond.end14

cond.end14:                                       ; preds = %cond.true9, %cond.true, %if.else.cond.end14_crit_edge
  %cond15 = phi i32 [ %call, %cond.true ], [ %call12, %cond.true9 ], [ 0, %if.else.cond.end14_crit_edge ]
  %users = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #10
  %19 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %users, align 4
  %linger = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 5
  %21 = ptrtoint ptr %linger to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %linger, align 4
  %div = udiv i32 %22, 100
  %expires = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 10
  %23 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %24, %25
  %div17 = sdiv i32 %sub, 100
  %dst = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 3
  %opt = getelementptr inbounds %struct.ip6_flowlabel, ptr %v, i32 0, i32 4
  %26 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %opt, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %cond.end14.cond.end22_crit_edge, label %cond.true18

cond.end14.cond.end22_crit_edge:                  ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end22

cond.true18:                                      ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #12
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %opt_nflen, align 2
  %conv20 = zext i16 %29 to i32
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true18, %cond.end14.cond.end22_crit_edge
  %cond23 = phi i32 [ %conv20, %cond.true18 ], [ 0, %cond.end14.cond.end22_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %conv, i32 noundef %cond15, i32 noundef %20, i32 noundef %div, i32 noundef %div17, ptr noundef %dst, i32 noundef %cond23) #10
  br label %if.end

if.end:                                           ; preds = %cond.end22, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip6fl_get_first(ptr nocapture noundef readonly %seq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bucket = getelementptr inbounds %struct.ip6fl_iter_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bucket, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc36.for.body_crit_edge, %entry
  %storemerge53 = phi i32 [ 0, %entry ], [ %inc, %for.inc36.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %storemerge53
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end10_crit_edge

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @ip6fl_get_first.__warned, align 1
  br i1 %.b48, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip6fl_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 762, ptr noundef nonnull @.str.4) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %for.body.do.end10_crit_edge
  %cmp13.not51 = icmp eq ptr %6, null
  br i1 %cmp13.not51, label %do.end10.for.inc36_crit_edge, label %do.end10.for.body14_crit_edge

do.end10.for.body14_crit_edge:                    ; preds = %do.end10
  br label %for.body14

do.end10.for.inc36_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

for.body14:                                       ; preds = %do.end34.for.body14_crit_edge, %do.end10.for.body14_crit_edge
  %fl.052 = phi ptr [ %10, %do.end34.for.body14_crit_edge ], [ %6, %do.end10.for.body14_crit_edge ]
  %fl_net = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.052, i32 0, i32 11
  %7 = ptrtoint ptr %fl_net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fl_net, align 4
  %cmp.i.not = icmp eq ptr %8, %3
  br i1 %cmp.i.not, label %for.body14.out_crit_edge, label %for.inc

for.body14.out_crit_edge:                         ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %for.body14
  %9 = ptrtoint ptr %fl.052 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %fl.052, align 4
  %call24 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %for.inc.do.end34_crit_edge

for.inc.do.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

land.lhs.true26:                                  ; preds = %for.inc
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b4647 = load i1, ptr @ip6fl_get_first.__warned.23, align 1
  br i1 %.b4647, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip6fl_get_first.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 762, ptr noundef nonnull @.str.4) #10
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %for.inc.do.end34_crit_edge
  %cmp13.not = icmp eq ptr %10, null
  br i1 %cmp13.not, label %do.end34.for.inc36_crit_edge, label %do.end34.for.body14_crit_edge

do.end34.for.body14_crit_edge:                    ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

do.end34.for.inc36_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

for.inc36:                                        ; preds = %do.end34.for.inc36_crit_edge, %do.end10.for.inc36_crit_edge
  %11 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bucket, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %bucket, align 4
  %cmp = icmp slt i32 %inc, 256
  br i1 %cmp, label %for.inc36.for.body_crit_edge, label %for.inc36.out_crit_edge

for.inc36.out_crit_edge:                          ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc36.for.body_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out:                                              ; preds = %for.inc36.out_crit_edge, %for.body14.out_crit_edge
  %fl.1 = phi ptr [ %fl.052, %for.body14.out_crit_edge ], [ null, %for.inc36.out_crit_edge ]
  ret ptr %fl.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip6fl_get_next(ptr nocapture noundef readonly %seq, ptr noundef %fl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %fl, align 4
  %call2 = tail call i32 @rcu_read_lock_bh_held() #10
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
  %.b97 = load i1, ptr @ip6fl_get_next.__warned, align 1
  br i1 %.b97, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip6fl_get_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 777, ptr noundef nonnull @.str.4) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %cmp.not104 = icmp eq ptr %5, null
  br i1 %cmp.not104, label %do.end8.try_again.preheader_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.try_again.preheader_crit_edge:            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again.preheader

try_again.preheader:                              ; preds = %do.end30.try_again.preheader_crit_edge, %do.end8.try_again.preheader_crit_edge
  %bucket = getelementptr inbounds %struct.ip6fl_iter_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bucket, align 4
  %inc108 = add i32 %7, 1
  store i32 %inc108, ptr %bucket, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc108)
  %cmp32109 = icmp slt i32 %inc108, 256
  br i1 %cmp32109, label %try_again.preheader.if.then33_crit_edge, label %try_again.preheader.out_crit_edge

try_again.preheader.out_crit_edge:                ; preds = %try_again.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

try_again.preheader.if.then33_crit_edge:          ; preds = %try_again.preheader
  br label %if.then33

for.body:                                         ; preds = %do.end30.for.body_crit_edge, %do.end8.for.body_crit_edge
  %fl.addr.0105 = phi ptr [ %11, %do.end30.for.body_crit_edge ], [ %5, %do.end8.for.body_crit_edge ]
  %fl_net = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.addr.0105, i32 0, i32 11
  %8 = ptrtoint ptr %fl_net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fl_net, align 4
  %cmp.i.not = icmp eq ptr %9, %3
  br i1 %cmp.i.not, label %for.body.out_crit_edge, label %for.inc

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %for.body
  %10 = ptrtoint ptr %fl.addr.0105 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %fl.addr.0105, align 4
  %call20 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %for.inc.do.end30_crit_edge

for.inc.do.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

land.lhs.true22:                                  ; preds = %for.inc
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b9196 = load i1, ptr @ip6fl_get_next.__warned.24, align 1
  br i1 %.b9196, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip6fl_get_next.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 777, ptr noundef nonnull @.str.4) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %for.inc.do.end30_crit_edge
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %do.end30.try_again.preheader_crit_edge, label %do.end30.for.body_crit_edge

do.end30.for.body_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end30.try_again.preheader_crit_edge:           ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again.preheader

try_again.loopexit:                               ; preds = %do.end77.try_again.loopexit_crit_edge, %do.end50.try_again.loopexit_crit_edge
  %12 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bucket, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %bucket, align 4
  %cmp32 = icmp slt i32 %inc, 256
  br i1 %cmp32, label %try_again.loopexit.if.then33_crit_edge, label %try_again.loopexit.out_crit_edge

try_again.loopexit.out_crit_edge:                 ; preds = %try_again.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

try_again.loopexit.if.then33_crit_edge:           ; preds = %try_again.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.then33:                                        ; preds = %try_again.loopexit.if.then33_crit_edge, %try_again.preheader.if.then33_crit_edge
  %inc110 = phi i32 [ %inc, %try_again.loopexit.if.then33_crit_edge ], [ %inc108, %try_again.preheader.if.then33_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %inc110
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx, align 4
  %call40 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %if.then33.do.end50_crit_edge

if.then33.do.end50_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

land.lhs.true42:                                  ; preds = %if.then33
  %call43 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true42.do.end50_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %.b9295 = load i1, ptr @ip6fl_get_next.__warned.25, align 1
  br i1 %.b9295, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip6fl_get_next.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 784, ptr noundef nonnull @.str.4) #10
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true42.do.end50_crit_edge, %if.then33.do.end50_crit_edge
  %cmp53.not106 = icmp eq ptr %15, null
  br i1 %cmp53.not106, label %do.end50.try_again.loopexit_crit_edge, label %do.end50.for.body54_crit_edge

do.end50.for.body54_crit_edge:                    ; preds = %do.end50
  br label %for.body54

do.end50.try_again.loopexit_crit_edge:            ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again.loopexit

for.body54:                                       ; preds = %do.end77.for.body54_crit_edge, %do.end50.for.body54_crit_edge
  %fl.addr.1107 = phi ptr [ %19, %do.end77.for.body54_crit_edge ], [ %15, %do.end50.for.body54_crit_edge ]
  %fl_net55 = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl.addr.1107, i32 0, i32 11
  %16 = ptrtoint ptr %fl_net55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fl_net55, align 4
  %cmp.i98.not = icmp eq ptr %17, %3
  br i1 %cmp.i98.not, label %for.body54.out_crit_edge, label %for.inc60

for.body54.out_crit_edge:                         ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc60:                                        ; preds = %for.body54
  %18 = ptrtoint ptr %fl.addr.1107 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %fl.addr.1107, align 4
  %call67 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %for.inc60.do.end77_crit_edge

for.inc60.do.end77_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

land.lhs.true69:                                  ; preds = %for.inc60
  %call70 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.do.end77_crit_edge, label %land.lhs.true72

land.lhs.true69.do.end77_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %.b9394 = load i1, ptr @ip6fl_get_next.__warned.26, align 1
  br i1 %.b9394, label %land.lhs.true72.do.end77_crit_edge, label %if.then74

land.lhs.true72.do.end77_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

if.then74:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip6fl_get_next.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 784, ptr noundef nonnull @.str.4) #10
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %land.lhs.true72.do.end77_crit_edge, %land.lhs.true69.do.end77_crit_edge, %for.inc60.do.end77_crit_edge
  %cmp53.not = icmp eq ptr %19, null
  br i1 %cmp53.not, label %do.end77.try_again.loopexit_crit_edge, label %do.end77.for.body54_crit_edge

do.end77.for.body54_crit_edge:                    ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

do.end77.try_again.loopexit_crit_edge:            ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again.loopexit

out:                                              ; preds = %for.body54.out_crit_edge, %try_again.loopexit.out_crit_edge, %for.body.out_crit_edge, %try_again.preheader.out_crit_edge
  %fl.addr.2 = phi ptr [ null, %try_again.preheader.out_crit_edge ], [ %fl.addr.1107, %for.body54.out_crit_edge ], [ null, %try_again.loopexit.out_crit_edge ], [ %fl.addr.0105, %for.body.out_crit_edge ]
  ret ptr %fl.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6_fl_gc(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  tail call void @_raw_spin_lock(ptr noundef nonnull @ip6_fl_lock) #10
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %while.end.for.body_crit_edge ]
  %sched.072 = phi i32 [ 0, %entry ], [ %sched.1.ph.ph, %while.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %i.073
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %cleanup.thread, %for.body
  %sched.1.ph.ph = phi i32 [ %sched.2, %cleanup.thread ], [ %sched.072, %for.body ]
  %flp.0.ph.ph = phi ptr [ %2, %cleanup.thread ], [ %arrayidx, %for.body ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.body.while.cond.outer_crit_edge, %while.cond.outer.outer
  %flp.0.ph = phi ptr [ %flp.0.ph.ph, %while.cond.outer.outer ], [ %2, %while.body.while.cond.outer_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %while.cond.outer
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @ip6_fl_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %while.cond.do.end_crit_edge

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %while.cond
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @ip6_fl_gc.__warned, align 1
  br i1 %.b56, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip6_fl_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 162, ptr noundef nonnull @.str.6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %while.cond.do.end_crit_edge
  %1 = ptrtoint ptr %flp.0.ph to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %flp.0.ph, align 4
  %cmp5.not = icmp eq ptr %2, null
  br i1 %cmp5.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.end
  %users = getelementptr inbounds %struct.ip6_flowlabel, ptr %2, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #10
  %3 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %users, align 4
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %if.then8, label %while.body.while.cond.outer_crit_edge

while.body.while.cond.outer_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer

if.then8:                                         ; preds = %while.body
  %lastuse = getelementptr inbounds %struct.ip6_flowlabel, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %lastuse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lastuse, align 4
  %linger = getelementptr inbounds %struct.ip6_flowlabel, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %linger to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %linger, align 4
  %add = add i32 %8, %6
  %expires = getelementptr inbounds %struct.ip6_flowlabel, ptr %2, i32 0, i32 10
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expires, align 4
  %sub = sub i32 %10, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %if.then10, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %expires, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8.if.end12_crit_edge
  %12 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %expires, align 4
  %sub14 = sub i32 %0, %13
  %cmp15 = icmp sgt i32 %sub14, -1
  br i1 %cmp15, label %if.end.i, label %cleanup.thread

if.end.i:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %16 = ptrtoint ptr %flp.0.ph to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %flp.0.ph, align 4
  %share.i.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %2, i32 0, i32 7
  %17 = ptrtoint ptr %share.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %share.i.i, align 4
  %.off.i.i = add i8 %18, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 3
  br i1 %switch.i.i, label %if.end.i.if.then2.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %opt.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %2, i32 0, i32 4
  %19 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %opt.i, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then2.i_crit_edge

lor.lhs.false.i.if.then2.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %lor.lhs.false.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  %21 = load i32, ptr getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 1), align 4
  tail call void @__static_key_slow_dec_deferred(ptr noundef nonnull @ipv6_flowlabel_exclusive, ptr noundef getelementptr inbounds ({ { { %struct.atomic_t, { ptr } } }, i32, %struct.delayed_work }, ptr @ipv6_flowlabel_exclusive, i32 0, i32 2), i32 noundef %21) #10
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sched.1.ph.ph)
  %tobool18.not = icmp eq i32 %sched.1.ph.ph, 0
  %sub19 = sub i32 %13, %sched.1.ph.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19)
  %cmp20 = icmp slt i32 %sub19, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %cmp20
  %sched.2 = select i1 %or.cond, i32 %13, i32 %sched.1.ph.ph
  br label %while.cond.outer.outer

cleanup:                                          ; preds = %if.then2.i, %lor.lhs.false.i.cleanup_crit_edge
  %rcu.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %2, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @fl_free_rcu) #10
  %call.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fl_size, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @fl_size, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fl_size, ptr nonnull @fl_size, i32 1, ptr nonnull elementtype(i32) @fl_size) #10, !srcloc !117
  br label %while.cond

while.end:                                        ; preds = %do.end
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sched.1.ph.ph)
  %tobool25.not = icmp eq i32 %sched.1.ph.ph, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %for.end.if.then33_crit_edge

for.end.if.then33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

land.lhs.true26:                                  ; preds = %for.end
  %call.i.i58 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fl_size, i32 noundef 4) #10
  %23 = load volatile i32, ptr @fl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not = icmp eq i32 %23, 0
  %add30 = add i32 %0, 150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add30)
  %tobool32.not = icmp eq i32 %add30, 0
  %or.cond68 = select i1 %tobool28.not, i1 true, i1 %tobool32.not
  br i1 %or.cond68, label %land.lhs.true26.if.end35_crit_edge, label %land.lhs.true26.if.then33_crit_edge

land.lhs.true26.if.then33_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true26.if.then33_crit_edge, %for.end.if.then33_crit_edge
  %sched.567 = phi i32 [ %sched.1.ph.ph, %for.end.if.then33_crit_edge ], [ %add30, %land.lhs.true26.if.then33_crit_edge ]
  %call34 = tail call i32 @mod_timer(ptr noundef nonnull @ip6_fl_gc_timer, i32 noundef %sched.567) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true26.if.end35_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ip6_fl_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !13, !15, !16, !18, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !46, !48, !49, !51, !53, !54, !55, !56, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !75, !77, !78, !80, !81, !83, !85, !87, !89, !90}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_flowlabel.c", i32 57, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ipv6_flowlabel_exclusive, !1, !"ipv6_flowlabel_exclusive", i1 false, i1 false}
!4 = !{ptr @__ksymtab_ipv6_flowlabel_exclusive, !5, !"__ksymtab_ipv6_flowlabel_exclusive", i1 false, i1 false}
!5 = !{!"../net/ipv6/ip6_flowlabel.c", i32 58, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/ipv6/ip6_flowlabel.c", i32 267, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!11 = !{ptr @__ksymtab___fl6_sock_lookup, !12, !"__ksymtab___fl6_sock_lookup", i1 false, i1 false}
!12 = !{!"../net/ipv6/ip6_flowlabel.c", i32 279, i32 1}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/ipv6/ip6_flowlabel.c", i32 290, i32 16}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_fl6_merge_options, !17, !"__ksymtab_fl6_merge_options", i1 false, i1 false}
!17 = !{!"../net/ipv6/ip6_flowlabel.c", i32 339, i32 1}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/ipv6/ip6_flowlabel.c", i32 520, i32 2}
!20 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv6/ip6_flowlabel.c", i32 55, i32 8}
!30 = !{ptr @ip6_sk_fl_lock, !29, !"ip6_sk_fl_lock", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ipv6/ip6_flowlabel.c", i32 51, i32 8}
!33 = !{ptr @ip6_fl_lock, !32, !"ip6_fl_lock", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/ipv6/ip6_flowlabel.c", i32 560, i32 14}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/ipv6/ip6_flowlabel.c", i32 585, i32 2}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/ipv6/ip6_flowlabel.c", i32 78, i32 2}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = !{ptr @fl_ht, !50, !"fl_ht", i1 false, i1 false}
!50 = !{!"../net/ipv6/ip6_flowlabel.c", i32 44, i32 36}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv6/ip6_flowlabel.c", i32 620, i32 4}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ipv6_flowlabel_get._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ipv6_flowlabel_get._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/ipv6/ip6_flowlabel.c", i32 645, i32 3}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/ipv6/ip6_flowlabel.c", i32 447, i32 19}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/ipv6/ip6_flowlabel.c", i32 479, i32 2}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = !{ptr @fl_size, !65, !"fl_size", i1 false, i1 false}
!65 = !{!"../net/ipv6/ip6_flowlabel.c", i32 43, i32 17}
!66 = !{ptr @ip6_flowlabel_net_ops, !67, !"ip6_flowlabel_net_ops", i1 false, i1 false}
!67 = !{!"../net/ipv6/ip6_flowlabel.c", i32 894, i32 33}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ipv6/ip6_flowlabel.c", i32 868, i32 7}
!70 = !{ptr @ip6fl_seq_ops, !71, !"ip6fl_seq_ops", i1 false, i1 false}
!71 = !{!"../net/ipv6/ip6_flowlabel.c", i32 859, i32 36}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/ipv6/ip6_flowlabel.c", i32 762, i32 3}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/ipv6/ip6_flowlabel.c", i32 777, i32 2}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/ipv6/ip6_flowlabel.c", i32 784, i32 3}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/ipv6/ip6_flowlabel.c", i32 838, i32 17}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/ipv6/ip6_flowlabel.c", i32 842, i32 7}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/ipv6/ip6_flowlabel.c", i32 198, i32 16}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/ipv6/ip6_flowlabel.c", i32 47, i32 8}
!89 = !{ptr @ip6_fl_gc_timer, !88, !"ip6_fl_gc_timer", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../net/ipv6/ip6_flowlabel.c", i32 161, i32 16}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148303809}
!103 = !{i64 788632, i64 788657, i64 788679, i64 788695, i64 788707, i64 788727, i64 788751, i64 788767, i64 788779}
!104 = !{i64 2148303997}
!105 = !{i64 2148392842}
!106 = !{i64 2148307575, i64 2148307607, i64 2148307636, i64 2148307670, i64 2148307701, i64 2148307724}
!107 = !{i64 2148393071}
!108 = !{i64 2152273398, i64 2152273423}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 4768953}
!111 = !{i64 4769150}
!112 = !{i64 2152254383}
!113 = !{i64 2157199578}
!114 = !{i64 2148304390, i64 2148304416, i64 2148304445, i64 2148304479, i64 2148304510, i64 2148304533}
!115 = !{i64 2157153893}
!116 = !{i64 2152274079, i64 2152274104}
!117 = !{i64 2148306855, i64 2148306881, i64 2148306910, i64 2148306944, i64 2148306975, i64 2148306998}
