; ModuleID = '/llk/IR_all_yes/net/sunrpc/svcauth_unix.c_pt.bc'
source_filename = "../net/sunrpc/svcauth_unix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+unix_domain_find\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_domain_find\09\09\09\09"
module asm "\09.long\09__crc_unix_domain_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_domain_find:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_domain_find\22\09\09\09\09\09"
module asm "__kstrtabns_unix_domain_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svcauth_unix_purge\22, \22a\22\09"
module asm "\09.weak\09__crc_svcauth_unix_purge\09\09\09\09"
module asm "\09.long\09__crc_svcauth_unix_purge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svcauth_unix_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22svcauth_unix_purge\22\09\09\09\09\09"
module asm "__kstrtabns_svcauth_unix_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svcauth_unix_set_client\22, \22a\22\09"
module asm "\09.weak\09__crc_svcauth_unix_set_client\09\09\09\09"
module asm "\09.long\09__crc_svcauth_unix_set_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svcauth_unix_set_client:\09\09\09\09\09"
module asm "\09.asciz \09\22svcauth_unix_set_client\22\09\09\09\09\09"
module asm "__kstrtabns_svcauth_unix_set_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.151, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.151 = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.auth_domain = type { %struct.kref, %struct.hlist_node, ptr, ptr, %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.130 }
%union.anon.130 = type { ptr, [124 x i8] }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.unix_gid = type { %struct.cache_head, %struct.kuid_t, ptr, %struct.callback_head }
%struct.ip_map = type { %struct.cache_head, [8 x i8], %struct.in6_addr, ptr, %struct.callback_head }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%union.anon.152 = type { %struct.sockaddr_in6 }

@svcauth_unix = dso_local global { %struct.auth_ops, [36 x i8] } { %struct.auth_ops { ptr @.str.1, ptr null, i32 1, ptr @svcauth_unix_accept, ptr @svcauth_unix_release, ptr @svcauth_unix_domain_release, ptr @svcauth_unix_set_client }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_unix_domain_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_domain_find = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_domain_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_domain_find to i32), ptr @__kstrtab_unix_domain_find, ptr @__kstrtabns_unix_domain_find }, section "___ksymtab_gpl+unix_domain_find", align 4
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_svcauth_unix_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_svcauth_unix_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_svcauth_unix_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svcauth_unix_purge to i32), ptr @__kstrtab_svcauth_unix_purge, ptr @__kstrtabns_svcauth_unix_purge }, section "___ksymtab_gpl+svcauth_unix_purge", align 4
@unix_gid_cache_template = internal constant { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 256, ptr null, %struct.spinlock zeroinitializer, ptr @.str.7, ptr @unix_gid_put, ptr @unix_gid_upcall, ptr @unix_gid_request, ptr @unix_gid_parse, ptr @unix_gid_show, ptr null, ptr @unix_gid_alloc, ptr null, ptr @unix_gid_match, ptr @unix_gid_init, ptr @unix_gid_update, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.151 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_svcauth_unix_set_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_svcauth_unix_set_client = external dso_local constant [0 x i8], align 1
@__ksymtab_svcauth_unix_set_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svcauth_unix_set_client to i32), ptr @__kstrtab_svcauth_unix_set_client, ptr @__kstrtabns_svcauth_unix_set_client }, section "___ksymtab_gpl+svcauth_unix_set_client", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@svcauth_null = dso_local global { %struct.auth_ops, [36 x i8] } { %struct.auth_ops { ptr @.str, ptr null, i32 0, ptr @svcauth_null_accept, ptr @svcauth_null_release, ptr null, ptr @svcauth_unix_set_client }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unix\00", [27 x i8] zeroinitializer }, align 32
@ip_map_cache_template = internal constant { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 256, ptr null, %struct.spinlock zeroinitializer, ptr @.str.20, ptr @ip_map_put, ptr @ip_map_upcall, ptr @ip_map_request, ptr @ip_map_parse, ptr @ip_map_show, ptr null, ptr @ip_map_alloc, ptr null, ptr @ip_map_match, ptr @ip_map_init, ptr @update, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.151 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"auth.unix.gid\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"#uid cnt: gids...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %d:\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@svcauth_null_accept._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"svc: bad null cred\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"svcauth_null_accept\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/sunrpc/svcauth_unix.c\00", [38 x i8] zeroinitializer }, align 32
@svcauth_null_accept._entry_ptr = internal global ptr @svcauth_null_accept._entry, section ".printk_index", align 4
@svcauth_null_accept._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.16, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"svc: bad null verf\0A\00", [44 x i8] zeroinitializer }, align 32
@svcauth_null_accept._entry_ptr.19 = internal global ptr @svcauth_null_accept._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"auth.unix.ip\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI6\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"-no-domain-\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"#class IP domain\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s %pI4 %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s %pI6 %s\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967186, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967186, i64 4294967294]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 4294967188, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"svcauth_unix\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 866, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"unix_gid_cache_template\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 574, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 782, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"svcauth_null\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 781, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 867, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"ip_map_cache_template\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 876, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 45, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 695, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 723, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 577, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 469, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 557, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 567, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 569, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 570, i32 16 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 742, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 747, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 879, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 164, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 166, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 264, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 267, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 279, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [29 x i8] c"../net/sunrpc/svcauth_unix.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 282, i32 17 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab_svcauth_unix_purge, ptr @__ksymtab_svcauth_unix_set_client, ptr @__ksymtab_unix_domain_find, ptr @svcauth_null_accept._entry, ptr @svcauth_null_accept._entry.17, ptr @svcauth_null_accept._entry_ptr, ptr @svcauth_null_accept._entry_ptr.19, ptr @svcauth_unix, ptr @unix_gid_cache_template, ptr @.str, ptr @svcauth_null, ptr @.str.1, ptr @ip_map_cache_template, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcauth_unix to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_gid_cache_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcauth_null to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_map_cache_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcauth_null_accept._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcauth_null_accept._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @unix_domain_find(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @auth_domain_find(ptr noundef %name) #16
  %tobool.not46 = icmp eq ptr %call, null
  br i1 %tobool.not46, label %entry.if.end7_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end7_crit_edge:                          ; preds = %entry
  br label %if.end7

if.then:                                          ; preds = %if.end20
  %cmp.not = icmp eq ptr %call24, %call7.i
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i = getelementptr inbounds %struct.auth_domain, ptr %call7.i, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @svcauth_unix_domain_release_rcu) #16
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %rv.0.lcssa55 = phi ptr [ %call24, %if.then2 ], [ %call24, %if.then.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  %flavour = getelementptr inbounds %struct.auth_domain, ptr %rv.0.lcssa55, i32 0, i32 3
  %0 = ptrtoint ptr %flavour to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flavour, align 4
  %cmp4.not = icmp eq ptr %1, @svcauth_unix
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @auth_domain_put(ptr noundef nonnull %rv.0.lcssa55) #16
  br label %cleanup

if.end7:                                          ; preds = %if.end20.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 28) #19
  %cmp9 = icmp eq ptr %call7.i, null
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #16
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %call7.i, align 8
  %call13 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #16
  %name15 = getelementptr inbounds %struct.auth_domain, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %name15, align 4
  %cmp18 = icmp eq ptr %call13, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %flavour22 = getelementptr inbounds %struct.auth_domain, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %flavour22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @svcauth_unix, ptr %flavour22, align 8
  %call24 = tail call ptr @auth_domain_lookup(ptr noundef %name, ptr noundef nonnull %call7.i) #16
  %tobool.not = icmp eq ptr %call24, null
  br i1 %tobool.not, label %if.end20.if.end7_crit_edge, label %if.then

if.end20.if.end7_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

cleanup:                                          ; preds = %if.then19, %if.end7.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ null, %if.then19 ], [ %rv.0.lcssa55, %if.end.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svcauth_unix_domain_release(ptr noundef %dom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr inbounds %struct.auth_domain, ptr %dom, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @svcauth_unix_domain_release_rcu) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svcauth_unix_purge(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %ip_map_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %ip_map_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip_map_cache, align 4
  tail call void @cache_purge(ptr noundef %2) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !80
  %8 = tail call i32 @llvm.read_register.i32(metadata !69) #16
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svcauth_unix_info_release(ptr nocapture noundef readonly %xpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %xpt_auth_cache = getelementptr inbounds %struct.svc_xprt, ptr %xpt, i32 0, i32 11
  %0 = ptrtoint ptr %xpt_auth_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xpt_auth_cache, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %xpt, i32 0, i32 19
  %2 = ptrtoint ptr %xpt_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpt_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %4 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %ip_map_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %ip_map_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip_map_cache, align 4
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #16
  %7 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.i = icmp ult i32 %8, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %6, i32 0, i32 18
  %11 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp1.i = icmp slt i64 %10, %12
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %nextcheck.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %6, i32 0, i32 5
  %14 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #16, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !83

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !84
  tail call void %15(ptr noundef %ref.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cache_put(ptr noundef %h, ptr nocapture noundef %cd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %ref = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #16
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 1
  %2 = ptrtoint ptr %expiry_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %expiry_time, align 8
  %nextcheck = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 18
  %4 = ptrtoint ptr %nextcheck to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nextcheck, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp1 = icmp slt i64 %3, %5
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %nextcheck to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %3, ptr %nextcheck, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cache_put = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 5
  %7 = ptrtoint ptr %cache_put to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache_put, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #16, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #16
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !84
  tail call void %8(ptr noundef %ref) #16
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unix_gid_cache_create(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call ptr @cache_create_net(ptr noundef nonnull @unix_gid_cache_template, ptr noundef %net) #16
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @cache_register_net(ptr noundef %call1, ptr noundef %net) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @cache_destroy_net(ptr noundef %call1, ptr noundef %net) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %unix_gid_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %unix_gid_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %unix_gid_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call4, %if.then5 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_create_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_register_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_destroy_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unix_gid_cache_destroy(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %unix_gid_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %unix_gid_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unix_gid_cache, align 4
  store ptr null, ptr %unix_gid_cache, align 4
  tail call void @cache_purge(ptr noundef %2) #16
  tail call void @cache_unregister_net(ptr noundef %2, ptr noundef %net) #16
  tail call void @cache_destroy_net(ptr noundef %2, ptr noundef %net) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_unregister_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svcauth_unix_set_client(ptr noundef %rqstp) #0 align 64 {
entry:
  %ug.i.i = alloca %struct.unix_gid, align 8
  %ip.i = alloca %struct.ip_map, align 8
  %boot.i.i.i = alloca %struct.timespec64, align 8
  %sin6_storage = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6_storage) #16
  %rq_cred = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = call ptr @memset(ptr %sin6_storage, i32 255, i32 28)
  %1 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rq_xprt, align 8
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %xpt_net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xpt_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %5 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5)
  %rq_addr = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %6 = ptrtoint ptr %rq_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rq_addr, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %do.body [
    i16 2, label %sw.bb
    i16 10, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6_storage, i32 0, i32 3, i32 0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6_storage, i32 0, i32 3, i32 0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6_storage, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6_storage, i32 0, i32 3
  %sin_addr = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sin_addr, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %12, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %11, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65535, ptr %10, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %9, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcauth_unix.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 679, 0\0A.popsection", ""() #16, !srcloc !85
  unreachable

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %sin6.0 = phi ptr [ %sin6_storage, %sw.bb ], [ %rq_addr, %entry.sw.epilog_crit_edge ]
  %rq_client = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %19 = ptrtoint ptr %rq_client to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rq_client, align 8
  %rq_proc = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 30
  %20 = ptrtoint ptr %rq_proc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rq_proc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %sw.epilog.out_crit_edge, label %if.end

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %sw.epilog
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %22 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %rq_auth_stat, align 4
  %xpt_flags.i = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 5
  %23 = ptrtoint ptr %xpt_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %xpt_flags.i, align 4
  %25 = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.if.end14_crit_edge, label %if.then.i

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then.i:                                        ; preds = %if.end
  %xpt_lock.i = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %xpt_lock.i) #16
  %xpt_auth_cache.i = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 11
  %26 = ptrtoint ptr %xpt_auth_cache.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xpt_auth_cache.i, align 4
  %cmp.not.i = icmp eq ptr %27, null
  br i1 %cmp.not.i, label %ip_map_cached_get.exit, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  %28 = ptrtoint ptr %xpt_net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xpt_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %30 = load i32, ptr @sunrpc_net_id, align 4
  %call2.i = tail call fastcc ptr @net_generic(ptr noundef %29, i32 noundef %30) #16
  %ip_map_cache.i = getelementptr inbounds %struct.sunrpc_net, ptr %call2.i, i32 0, i32 1
  %31 = ptrtoint ptr %ip_map_cache.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ip_map_cache.i, align 4
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %27, i32 0, i32 1
  %33 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %expiry_time.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i.i.i) #16
  %35 = call ptr @memset(ptr %boot.i.i.i, i32 255, i32 16)
  call void @getboottime64(ptr noundef nonnull %boot.i.i.i) #16
  %call.i.i.i = call i64 @ktime_get_real_seconds() #16
  %36 = ptrtoint ptr %boot.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %boot.i.i.i, align 8
  %sub.i.i.i = sub i64 %call.i.i.i, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i.i.i) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %sub.i.i.i)
  %cmp.i.i85 = icmp slt i64 %34, %sub.i.i.i
  br i1 %cmp.i.i85, label %if.then1.i.if.then4.i_crit_edge, label %if.end.i.i

if.then1.i.if.then4.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i

if.end.i.i:                                       ; preds = %if.then1.i
  %flags.i.i = getelementptr inbounds %struct.cache_head, ptr %27, i32 0, i32 4
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %cache_is_expired.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

cache_is_expired.exit.i:                          ; preds = %if.end.i.i
  %flush_time.i.i = getelementptr inbounds %struct.cache_detail, ptr %32, i32 0, i32 16
  %40 = ptrtoint ptr %flush_time.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %flush_time.i.i, align 8
  %last_refresh.i.i = getelementptr inbounds %struct.cache_head, ptr %27, i32 0, i32 2
  %42 = ptrtoint ptr %last_refresh.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %last_refresh.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp4.i.not.i = icmp slt i64 %41, %43
  br i1 %cmp4.i.not.i, label %cache_is_expired.exit.i.if.end.i_crit_edge, label %cache_is_expired.exit.i.if.then4.i_crit_edge

cache_is_expired.exit.i.if.then4.i_crit_edge:     ; preds = %cache_is_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i

cache_is_expired.exit.i.if.end.i_crit_edge:       ; preds = %cache_is_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then4.i:                                       ; preds = %cache_is_expired.exit.i.if.then4.i_crit_edge, %if.then1.i.if.then4.i_crit_edge
  %44 = ptrtoint ptr %xpt_auth_cache.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %xpt_auth_cache.i, align 4
  call void @_raw_spin_unlock(ptr noundef %xpt_lock.i) #16
  %45 = ptrtoint ptr %ip_map_cache.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ip_map_cache.i, align 4
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #16
  %47 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp.i26.i = icmp ult i32 %48, 3
  br i1 %cmp.i26.i, label %land.lhs.true.i.i, label %if.then4.i.if.end.i28.i_crit_edge

if.then4.i.if.end.i28.i_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i28.i

land.lhs.true.i.i:                                ; preds = %if.then4.i
  %49 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %46, i32 0, i32 18
  %51 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %52)
  %cmp1.i.i = icmp slt i64 %50, %52
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i28.i_crit_edge

land.lhs.true.i.i.if.end.i28.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i28.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %50, ptr %nextcheck.i.i, align 8
  br label %if.end.i28.i

if.end.i28.i:                                     ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i28.i_crit_edge, %if.then4.i.if.end.i28.i_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %46, i32 0, i32 5
  %54 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #16
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #16, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !83

if.end5.i.i.i.i.i.i.if.end14_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #16
  br label %if.end14

if.then.i.i.i:                                    ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !84
  call void %55(ptr noundef %ref.i.i) #16
  br label %if.end14

if.end.i:                                         ; preds = %cache_is_expired.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %ref.i29.i = getelementptr inbounds %struct.cache_head, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i30.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i29.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %ref.i29.i, i32 1, i32 3, i32 1) #16
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i29.i, ptr %ref.i29.i, i32 1, ptr elementtype(i32) %ref.i29.i) #16, !srcloc !86
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !87

if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %58 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i.i.i31.i = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i.i.i31.i, label %if.else.i.i.i.i.i.i.if.end14.thread_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !83

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end14.thread_crit_edge:    ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i29.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %if.end14.thread

if.end14.thread:                                  ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end14.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %xpt_lock.i) #16
  br label %if.end18

ip_map_cached_get.exit:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %xpt_lock.i) #16
  br label %if.end14

if.end14:                                         ; preds = %ip_map_cached_get.exit, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %ip_map_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 1
  %59 = ptrtoint ptr %ip_map_cache to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ip_map_cache, align 4
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 7
  %61 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rq_server, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %pg_class = getelementptr inbounds %struct.svc_program, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %pg_class to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pg_class, align 4
  %sin6_addr12 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ip.i) #16
  %67 = call ptr @memset(ptr %ip.i, i32 255, i32 72)
  %m_class.i = getelementptr inbounds %struct.ip_map, ptr %ip.i, i32 0, i32 1
  %call.i = call ptr @strcpy(ptr noundef %m_class.i, ptr noundef %66) #20
  %m_addr.i = getelementptr inbounds %struct.ip_map, ptr %ip.i, i32 0, i32 2
  %68 = call ptr @memcpy(ptr %m_addr.i, ptr %sin6_addr12, i32 16)
  %call.i.i86 = call i64 @hashlen_string(ptr noundef null, ptr noundef %66) #21
  %conv.i.i = trunc i64 %call.i.i86 to i32
  %69 = ptrtoint ptr %sin6_addr12 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sin6_addr12, align 4
  %arrayidx2.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sin6.0, i32 0, i32 3, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx2.i.i.i, align 4
  %xor.i.i.i = xor i32 %72, %70
  %arrayidx4.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sin6.0, i32 0, i32 3, i32 0, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor5.i.i.i = xor i32 %xor.i.i.i, %74
  %arrayidx7.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sin6.0, i32 0, i32 3, i32 0, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx7.i.i.i, align 4
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %76
  %mul.i.i.i.i = mul i32 %xor8.i.i.i, 1640531527
  %shr.i8.i = xor i32 %mul.i.i.i.i, %conv.i.i
  %xor.i = lshr i32 %shr.i8.i, 24
  %call3.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %60, ptr noundef nonnull %ip.i, i32 noundef %xor.i) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ip.i) #16
  %cmp15 = icmp eq ptr %call3.i, null
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %if.end14.if.end18_crit_edge, %if.end14.thread
  %ipm.0144 = phi ptr [ %27, %if.end14.thread ], [ %call3.i, %if.end14.if.end18_crit_edge ]
  %ip_map_cache19 = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 1
  %77 = ptrtoint ptr %ip_map_cache19 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ip_map_cache19, align 4
  %rq_chandle = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  %call20 = call i32 @cache_check(ptr noundef %78, ptr noundef nonnull %ipm.0144, ptr noundef %rq_chandle) #16
  %79 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call20, label %do.body22 [
    i32 -110, label %if.end18.cleanup_crit_edge
    i32 -11, label %sw.bb29
    i32 -2, label %sw.bb30
    i32 0, label %sw.bb31
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcauth_unix.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 697, 0\0A.popsection", ""() #16, !srcloc !88
  unreachable

sw.bb29:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb30:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb31:                                          ; preds = %if.end18
  %m_client = getelementptr inbounds %struct.ip_map, ptr %ipm.0144, i32 0, i32 3
  %80 = ptrtoint ptr %m_client to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %m_client, align 8
  %82 = ptrtoint ptr %rq_client to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %rq_client, align 8
  %call.i.i.i.i.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %81, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %81, i32 1, i32 3, i32 1) #16
  %83 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #16, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %sw.bb31.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !87

sw.bb31.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.bb31
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %84 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %.not.i.i.i.i = icmp sgt i32 %84, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !83

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %sw.bb31.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %sw.bb31.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %81, i32 noundef %.sink.i.i.i.i) #16
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %85 = ptrtoint ptr %xpt_flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %xpt_flags.i, align 4
  %87 = and i32 %86, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i89 = icmp eq i32 %87, 0
  br i1 %tobool.not.i89, label %kref_get.exit.if.then6.i_crit_edge, label %if.then.i92

kref_get.exit.if.then6.i_crit_edge:               ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6.i

if.then.i92:                                      ; preds = %kref_get.exit
  %xpt_lock.i90 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 10
  call void @_raw_spin_lock(ptr noundef %xpt_lock.i90) #16
  %xpt_auth_cache.i91 = getelementptr inbounds %struct.svc_xprt, ptr %2, i32 0, i32 11
  %88 = ptrtoint ptr %xpt_auth_cache.i91 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %xpt_auth_cache.i91, align 4
  %cmp.i = icmp eq ptr %89, null
  br i1 %cmp.i, label %if.end4.i.thread148, label %if.end4.i

if.end4.i.thread148:                              ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #18
  %90 = ptrtoint ptr %xpt_auth_cache.i91 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %ipm.0144, ptr %xpt_auth_cache.i91, align 4
  call void @_raw_spin_unlock(ptr noundef %xpt_lock.i90) #16
  br label %ip_map_cached_put.exit

if.end4.i:                                        ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock(ptr noundef %xpt_lock.i90) #16
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i, %kref_get.exit.if.then6.i_crit_edge
  %91 = ptrtoint ptr %xpt_net to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %xpt_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %93 = load i32, ptr @sunrpc_net_id, align 4
  %call7.i = call fastcc ptr @net_generic(ptr noundef %92, i32 noundef %93) #16
  %ip_map_cache.i96 = getelementptr inbounds %struct.sunrpc_net, ptr %call7.i, i32 0, i32 1
  %94 = ptrtoint ptr %ip_map_cache.i96 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ip_map_cache.i96, align 4
  %ref.i.i97 = getelementptr inbounds %struct.cache_head, ptr %ipm.0144, i32 0, i32 3
  %call.i.i.i.i.i.i98 = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i97, i32 noundef 4) #16
  %96 = ptrtoint ptr %ref.i.i97 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %ref.i.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %97)
  %cmp.i.i99 = icmp ult i32 %97, 3
  br i1 %cmp.i.i99, label %land.lhs.true.i.i103, label %if.then6.i.if.end.i.i109_crit_edge

if.then6.i.if.end.i.i109_crit_edge:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i109

land.lhs.true.i.i103:                             ; preds = %if.then6.i
  %expiry_time.i.i100 = getelementptr inbounds %struct.cache_head, ptr %ipm.0144, i32 0, i32 1
  %98 = ptrtoint ptr %expiry_time.i.i100 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %expiry_time.i.i100, align 8
  %nextcheck.i.i101 = getelementptr inbounds %struct.cache_detail, ptr %95, i32 0, i32 18
  %100 = ptrtoint ptr %nextcheck.i.i101 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %nextcheck.i.i101, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %101)
  %cmp1.i.i102 = icmp slt i64 %99, %101
  br i1 %cmp1.i.i102, label %if.then.i.i104, label %land.lhs.true.i.i103.if.end.i.i109_crit_edge

land.lhs.true.i.i103.if.end.i.i109_crit_edge:     ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i109

if.then.i.i104:                                   ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #18
  %102 = ptrtoint ptr %nextcheck.i.i101 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %99, ptr %nextcheck.i.i101, align 8
  br label %if.end.i.i109

if.end.i.i109:                                    ; preds = %if.then.i.i104, %land.lhs.true.i.i103.if.end.i.i109_crit_edge, %if.then6.i.if.end.i.i109_crit_edge
  %cache_put.i.i105 = getelementptr inbounds %struct.cache_detail, ptr %95, i32 0, i32 5
  %103 = ptrtoint ptr %cache_put.i.i105 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cache_put.i.i105, align 4
  %call.i.i.i.i.i.i.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i97, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @llvm.prefetch.p0(ptr %ref.i.i97, i32 1, i32 3, i32 1) #16
  %105 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i97, ptr %ref.i.i97, i32 1, ptr elementtype(i32) %ref.i.i97) #16, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i.i107 = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i107)
  %cmp.i.i.i.i.i.i108 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i107, 1
  br i1 %cmp.i.i.i.i.i.i108, label %if.then.i.i.i113, label %if.end5.i.i.i.i.i.i111

if.end5.i.i.i.i.i.i111:                           ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i107)
  %.not.i.i.i.i.i.i110 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i107, 0
  br i1 %.not.i.i.i.i.i.i110, label %if.end5.i.i.i.i.i.i111.ip_map_cached_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i112, !prof !83

if.end5.i.i.i.i.i.i111.ip_map_cached_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip_map_cached_put.exit

if.then10.i.i.i.i.i.i112:                         ; preds = %if.end5.i.i.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %ref.i.i97, i32 noundef 3) #16
  br label %ip_map_cached_put.exit

if.then.i.i.i113:                                 ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !84
  call void %104(ptr noundef %ref.i.i97) #16
  br label %ip_map_cached_put.exit

ip_map_cached_put.exit:                           ; preds = %if.then.i.i.i113, %if.then10.i.i.i.i.i.i112, %if.end5.i.i.i.i.i.i111.ip_map_cached_put.exit_crit_edge, %if.end4.i.thread148
  %106 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %106)
  %.unpack = load i32, ptr %rq_cred, align 4
  %107 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %108 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rq_xprt, align 8
  %xpt_net.i114 = getelementptr inbounds %struct.svc_xprt, ptr %109, i32 0, i32 19
  %110 = ptrtoint ptr %xpt_net.i114 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %xpt_net.i114, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %112 = load i32, ptr @sunrpc_net_id, align 4
  %call.i115 = call fastcc ptr @net_generic(ptr noundef %111, i32 noundef %112) #16
  %unix_gid_cache.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i115, i32 0, i32 2
  %113 = ptrtoint ptr %unix_gid_cache.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %unix_gid_cache.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ug.i.i) #16
  %115 = call ptr @memset(ptr %ug.i.i, i32 255, i32 48)
  %uid1.i.i = getelementptr inbounds %struct.unix_gid, ptr %ug.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %uid1.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %.unpack, ptr %uid1.i.i, align 8
  %call.i.i.i116 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %107) #16
  %mul.i.i.i.i.i = mul i32 %call.i.i.i116, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 24
  %call3.i.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %114, ptr noundef nonnull %ug.i.i, i32 noundef %shr.i.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ug.i.i) #16
  %tobool.not.i117 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i117, label %ip_map_cached_put.exit.unix_gid_find.exit_crit_edge, label %if.end.i118

ip_map_cached_put.exit.unix_gid_find.exit_crit_edge: ; preds = %ip_map_cached_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_gid_find.exit

if.end.i118:                                      ; preds = %ip_map_cached_put.exit
  %117 = ptrtoint ptr %unix_gid_cache.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %unix_gid_cache.i, align 4
  %call5.i = call i32 @cache_check(ptr noundef %118, ptr noundef nonnull %call3.i.i, ptr noundef %rq_chandle) #16
  %119 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call5.i, label %sw.default.i [
    i32 -2, label %if.end.i118.unix_gid_find.exit_crit_edge
    i32 -110, label %sw.bb7.i
    i32 0, label %sw.bb9.i
  ]

if.end.i118.unix_gid_find.exit_crit_edge:         ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_gid_find.exit

sw.bb7.i:                                         ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_gid_find.exit

sw.bb9.i:                                         ; preds = %if.end.i118
  %gi10.i = getelementptr inbounds %struct.unix_gid, ptr %call3.i.i, i32 0, i32 2
  %120 = ptrtoint ptr %gi10.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %gi10.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %121, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %121, i32 1, i32 3, i32 1) #16
  %122 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #16, !srcloc !89
  %123 = ptrtoint ptr %unix_gid_cache.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %unix_gid_cache.i, align 4
  %ref.i.i119 = getelementptr inbounds %struct.cache_head, ptr %call3.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i120 = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i119, i32 noundef 4) #16
  %125 = ptrtoint ptr %ref.i.i119 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %ref.i.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %126)
  %cmp.i.i121 = icmp ult i32 %126, 3
  br i1 %cmp.i.i121, label %land.lhs.true.i.i125, label %sw.bb9.i.if.end.i.i131_crit_edge

sw.bb9.i.if.end.i.i131_crit_edge:                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i131

land.lhs.true.i.i125:                             ; preds = %sw.bb9.i
  %expiry_time.i.i122 = getelementptr inbounds %struct.cache_head, ptr %call3.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %expiry_time.i.i122 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %expiry_time.i.i122, align 8
  %nextcheck.i.i123 = getelementptr inbounds %struct.cache_detail, ptr %124, i32 0, i32 18
  %129 = ptrtoint ptr %nextcheck.i.i123 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %nextcheck.i.i123, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %128, i64 %130)
  %cmp1.i.i124 = icmp slt i64 %128, %130
  br i1 %cmp1.i.i124, label %if.then.i.i126, label %land.lhs.true.i.i125.if.end.i.i131_crit_edge

land.lhs.true.i.i125.if.end.i.i131_crit_edge:     ; preds = %land.lhs.true.i.i125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i131

if.then.i.i126:                                   ; preds = %land.lhs.true.i.i125
  call void @__sanitizer_cov_trace_pc() #18
  %131 = ptrtoint ptr %nextcheck.i.i123 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %128, ptr %nextcheck.i.i123, align 8
  br label %if.end.i.i131

if.end.i.i131:                                    ; preds = %if.then.i.i126, %land.lhs.true.i.i125.if.end.i.i131_crit_edge, %sw.bb9.i.if.end.i.i131_crit_edge
  %cache_put.i.i127 = getelementptr inbounds %struct.cache_detail, ptr %124, i32 0, i32 5
  %132 = ptrtoint ptr %cache_put.i.i127 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cache_put.i.i127, align 4
  %call.i.i.i.i.i.i.i.i128 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i119, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @llvm.prefetch.p0(ptr %ref.i.i119, i32 1, i32 3, i32 1) #16
  %134 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i119, ptr %ref.i.i119, i32 1, ptr elementtype(i32) %ref.i.i119) #16, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i.i129 = extractvalue { i32, i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i129)
  %cmp.i.i.i.i.i.i130 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i129, 1
  br i1 %cmp.i.i.i.i.i.i130, label %if.then.i.i.i135, label %if.end5.i.i.i.i.i.i133

if.end5.i.i.i.i.i.i133:                           ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i129)
  %.not.i.i.i.i.i.i132 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i129, 0
  br i1 %.not.i.i.i.i.i.i132, label %if.end5.i.i.i.i.i.i133.unix_gid_find.exit_crit_edge, label %if.then10.i.i.i.i.i.i134, !prof !83

if.end5.i.i.i.i.i.i133.unix_gid_find.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_gid_find.exit

if.then10.i.i.i.i.i.i134:                         ; preds = %if.end5.i.i.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %ref.i.i119, i32 noundef 3) #16
  br label %unix_gid_find.exit

if.then.i.i.i135:                                 ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !84
  call void %133(ptr noundef %ref.i.i119) #16
  br label %unix_gid_find.exit

sw.default.i:                                     ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_gid_find.exit

unix_gid_find.exit:                               ; preds = %sw.default.i, %if.then.i.i.i135, %if.then10.i.i.i.i.i.i134, %if.end5.i.i.i.i.i.i133.unix_gid_find.exit_crit_edge, %sw.bb7.i, %if.end.i118.unix_gid_find.exit_crit_edge, %ip_map_cached_put.exit.unix_gid_find.exit_crit_edge
  %retval.0.i136 = phi ptr [ inttoptr (i32 -11 to ptr), %sw.default.i ], [ inttoptr (i32 -108 to ptr), %sw.bb7.i ], [ inttoptr (i32 -11 to ptr), %ip_map_cached_put.exit.unix_gid_find.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.i118.unix_gid_find.exit_crit_edge ], [ %121, %if.end5.i.i.i.i.i.i133.unix_gid_find.exit_crit_edge ], [ %121, %if.then10.i.i.i.i.i.i134 ], [ %121, %if.then.i.i.i135 ]
  %135 = ptrtoint ptr %retval.0.i136 to i32
  %136 = zext i32 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %135, label %do.body41 [
    i32 -11, label %unix_gid_find.exit.cleanup_crit_edge
    i32 -108, label %sw.bb39
    i32 -2, label %unix_gid_find.exit.out_crit_edge
  ]

unix_gid_find.exit.out_crit_edge:                 ; preds = %unix_gid_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

unix_gid_find.exit.cleanup_crit_edge:             ; preds = %unix_gid_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb39:                                          ; preds = %unix_gid_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body41:                                        ; preds = %unix_gid_find.exit
  %cr_group_info = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 2
  %137 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cr_group_info, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %138, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !90
  call void @llvm.prefetch.p0(ptr %138, i32 1, i32 3, i32 1) #16
  %139 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %138, ptr %138, i32 1, ptr elementtype(i32) %138) #16, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %139, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then43, label %do.body41.do.end47_crit_edge

do.body41.do.end47_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

if.then43:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  %140 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cr_group_info, align 4
  call void @groups_free(ptr noundef %141) #16
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body41.do.end47_crit_edge
  %142 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %retval.0.i136, ptr %cr_group_info, align 4
  br label %out

out:                                              ; preds = %do.end47, %unix_gid_find.exit.out_crit_edge, %sw.epilog.out_crit_edge
  %rq_auth_stat50 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %143 = ptrtoint ptr %rq_auth_stat50 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %rq_auth_stat50, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.bb39, %unix_gid_find.exit.cleanup_crit_edge, %sw.bb30, %sw.bb29, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %out ], [ 7, %sw.bb39 ], [ 8, %sw.bb30 ], [ 6, %sw.bb29 ], [ 8, %if.end14.cleanup_crit_edge ], [ 7, %if.end18.cleanup_crit_edge ], [ 6, %unix_gid_find.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6_storage) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svcauth_null_accept(ptr nocapture noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %rq_cred = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp = icmp ult i32 %1, 12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  store ptr %incdec.ptr.i, ptr %rq_arg, align 4
  %6 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len, align 4
  %sub.i = add i32 %7, -4
  store i32 %sub.i, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %8 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.end, !prof !83

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #22
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %9 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rq_auth_stat, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %incdec.ptr.i61 = getelementptr i32, ptr %3, i32 2
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i, align 4
  %12 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr.i61, ptr %rq_arg, align 4
  %sub.i63 = add i32 %7, -8
  %13 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i63, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15.not = icmp eq i32 %11, 0
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end13.do.body19_crit_edge

if.end13.do.body19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19

lor.lhs.false:                                    ; preds = %if.end13
  %incdec.ptr.i64 = getelementptr i32, ptr %3, i32 3
  %14 = ptrtoint ptr %incdec.ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i61, align 4
  %16 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr.i64, ptr %rq_arg, align 4
  %sub.i66 = add i32 %7, -12
  %17 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i66, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17.not = icmp eq i32 %15, 0
  br i1 %cmp17.not, label %if.end38, label %lor.lhs.false.do.body19_crit_edge

lor.lhs.false.do.body19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body19

do.body19:                                        ; preds = %lor.lhs.false.do.body19_crit_edge, %if.end13.do.body19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %18 = load i32, ptr @rpc_debug, align 4
  %and20 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end36_crit_edge, label %do.end31, !prof !83

do.body19.do.end36_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

do.end31:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #22
  br label %do.end36

do.end36:                                         ; preds = %do.end31, %do.body19.do.end36_crit_edge
  %rq_auth_stat37 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %19 = ptrtoint ptr %rq_auth_stat37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %rq_auth_stat37, align 4
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %rq_cred to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %rq_cred, align 4
  %cr_gid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %cr_gid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %cr_gid, align 4
  %call41 = tail call ptr @groups_alloc(i32 noundef 0) #16
  %cr_group_info = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 2
  %22 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call41, ptr %cr_group_info, align 4
  %cmp43 = icmp eq ptr %call41, null
  br i1 %cmp43, label %if.end38.cleanup_crit_edge, label %if.end45

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rq_res, align 4
  %iov_len.i67 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %iov_len.i67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iov_len.i67, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %26
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %add.ptr.i, align 4
  %28 = load i32, ptr %iov_len.i67, align 4
  %add.i = add i32 %28, 4
  store i32 %add.i, ptr %iov_len.i67, align 4
  %29 = load ptr, ptr %rq_res, align 4
  %add.ptr.i69 = getelementptr i8, ptr %29, i32 %add.i
  %30 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %add.ptr.i69, align 4
  %31 = load i32, ptr %iov_len.i67, align 4
  %add.i70 = add i32 %31, 4
  store i32 %add.i70, ptr %iov_len.i67, align 4
  %cr_flavor = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %32 = ptrtoint ptr %cr_flavor to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %cr_flavor, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end38.cleanup_crit_edge, %do.end36, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %do.end12 ], [ 8, %do.end36 ], [ 5, %if.end45 ], [ 1, %entry.cleanup_crit_edge ], [ 7, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svcauth_null_release(ptr nocapture noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_client = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %0 = ptrtoint ptr %rq_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_client, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @auth_domain_put(ptr noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %rq_client to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rq_client, align 8
  %cr_group_info = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cr_group_info, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.body:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #16, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then7, label %do.body.if.end11_crit_edge

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cr_group_info, align 4
  tail call void @groups_free(ptr noundef %7) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.body.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %8 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cr_group_info, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svcauth_unix_accept(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %rq_cred = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  %sub = add i32 %1, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_arg, align 4
  %4 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len, align 4
  %incdec.ptr.i101 = getelementptr i32, ptr %3, i32 2
  store ptr %incdec.ptr.i101, ptr %rq_arg, align 4
  %sub.i103 = add i32 %5, -8
  store i32 %sub.i103, ptr %iov_len, align 4
  %incdec.ptr.i104 = getelementptr i32, ptr %3, i32 3
  %6 = ptrtoint ptr %incdec.ptr.i101 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i101, align 4
  store ptr %incdec.ptr.i104, ptr %rq_arg, align 4
  %sub.i106 = add i32 %5, -12
  store i32 %sub.i106, ptr %iov_len, align 4
  %add = add i32 %7, 3
  %shr = lshr i32 %add, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %add)
  %cmp5 = icmp ugt i32 %add, 259
  br i1 %cmp5, label %if.end.badcred_crit_edge, label %lor.lhs.false

if.end.badcred_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %badcred

lor.lhs.false:                                    ; preds = %if.end
  %8 = add nsw i32 %7, 15
  %mul = and i32 %8, -4
  %sub7 = sub nsw i32 %sub, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %lor.lhs.false.badcred_crit_edge, label %if.end10

lor.lhs.false.badcred_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %badcred

if.end10:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr i32, ptr %incdec.ptr.i104, i32 %shr
  %9 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %rq_arg, align 4
  %mul12 = and i32 %add, -4
  %10 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iov_len, align 4
  %sub14 = sub i32 %11, %mul12
  store i32 %sub14, ptr %iov_len, align 4
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %12 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end10.cond.end_crit_edge, label %land.lhs.true

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end10
  %xpt_cred = getelementptr inbounds %struct.svc_xprt, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %xpt_cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xpt_cred, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %user_ns = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %if.end10.cond.end_crit_edge
  %cond = phi ptr [ %17, %cond.true ], [ @init_user_ns, %land.lhs.true.cond.end_crit_edge ], [ @init_user_ns, %if.end10.cond.end_crit_edge ]
  %incdec.ptr.i107 = getelementptr i32, ptr %add.ptr, i32 1
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr.i107, ptr %rq_arg, align 4
  %21 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iov_len, align 4
  %sub.i109 = add i32 %22, -4
  store i32 %sub.i109, ptr %iov_len, align 4
  %call20 = tail call i32 @make_kuid(ptr noundef %cond, i32 noundef %19) #16
  %23 = ptrtoint ptr %rq_cred to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call20, ptr %rq_cred, align 4
  %cr_gid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i110 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  store ptr %incdec.ptr.i110, ptr %rq_arg, align 4
  %28 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iov_len, align 4
  %sub.i112 = add i32 %29, -4
  store i32 %sub.i112, ptr %iov_len, align 4
  %call23 = tail call i32 @make_kgid(ptr noundef %cond, i32 noundef %27) #16
  %30 = ptrtoint ptr %cr_gid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call23, ptr %cr_gid, align 4
  %31 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i113 = getelementptr i32, ptr %32, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  store ptr %incdec.ptr.i113, ptr %rq_arg, align 4
  %35 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iov_len, align 4
  %sub.i115 = add i32 %36, -4
  store i32 %sub.i115, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %34)
  %cmp26 = icmp ugt i32 %34, 16
  br i1 %cmp26, label %cond.end.badcred_crit_edge, label %lor.lhs.false27

cond.end.badcred_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %badcred

lor.lhs.false27:                                  ; preds = %cond.end
  %add28.neg = mul nsw i32 %34, -4
  %mul29.neg = add nsw i32 %sub7, -8
  %sub30 = add nsw i32 %mul29.neg, %add28.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp31 = icmp slt i32 %sub30, 0
  br i1 %cmp31, label %lor.lhs.false27.badcred_crit_edge, label %if.end33

lor.lhs.false27.badcred_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #18
  br label %badcred

if.end33:                                         ; preds = %lor.lhs.false27
  %call34 = tail call ptr @groups_alloc(i32 noundef %34) #16
  %cr_group_info = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 2
  %37 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call34, ptr %cr_group_info, align 4
  %cmp36 = icmp eq ptr %call34, null
  br i1 %cmp36, label %if.end33.cleanup_crit_edge, label %for.cond.preheader

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp39129.not = icmp eq i32 %34, 0
  br i1 %cmp39129.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0130 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %38 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i116 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  store ptr %incdec.ptr.i116, ptr %rq_arg, align 4
  %42 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iov_len, align 4
  %sub.i118 = add i32 %43, -4
  store i32 %sub.i118, ptr %iov_len, align 4
  %call41 = tail call i32 @make_kgid(ptr noundef %cond, i32 noundef %41) #16
  %44 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cr_group_info, align 4
  %arrayidx44 = getelementptr %struct.group_info, ptr %45, i32 0, i32 2, i32 %i.0130
  %46 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call41, ptr %arrayidx44, align 4
  %inc = add nuw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, %34
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %47 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cr_group_info, align 4
  tail call void @groups_sort(ptr noundef %48) #16
  %49 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i119 = getelementptr i32, ptr %50, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  store ptr %incdec.ptr.i119, ptr %rq_arg, align 4
  %53 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iov_len, align 4
  %sub.i121 = add i32 %54, -4
  store i32 %sub.i121, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp47.not = icmp eq i32 %52, 0
  br i1 %cmp47.not, label %lor.lhs.false48, label %for.end.if.then51_crit_edge

for.end.if.then51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51

lor.lhs.false48:                                  ; preds = %for.end
  %incdec.ptr.i122 = getelementptr i32, ptr %50, i32 2
  %55 = ptrtoint ptr %incdec.ptr.i119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %incdec.ptr.i119, align 4
  %57 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %incdec.ptr.i122, ptr %rq_arg, align 4
  %sub.i124 = add i32 %54, -8
  %58 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub.i124, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp50.not = icmp eq i32 %56, 0
  br i1 %cmp50.not, label %if.end52, label %lor.lhs.false48.if.then51_crit_edge

lor.lhs.false48.if.then51_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false48.if.then51_crit_edge, %for.end.if.then51_crit_edge
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %59 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %rq_auth_stat, align 4
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rq_res, align 4
  %iov_len.i125 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %iov_len.i125 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iov_len.i125, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 %63
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %add.ptr.i, align 4
  %65 = load i32, ptr %iov_len.i125, align 4
  %add.i = add i32 %65, 4
  store i32 %add.i, ptr %iov_len.i125, align 4
  %66 = load ptr, ptr %rq_res, align 4
  %add.ptr.i127 = getelementptr i8, ptr %66, i32 %add.i
  %67 = ptrtoint ptr %add.ptr.i127 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %add.ptr.i127, align 4
  %68 = load i32, ptr %iov_len.i125, align 4
  %add.i128 = add i32 %68, 4
  store i32 %add.i128, ptr %iov_len.i125, align 4
  %cr_flavor = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %69 = ptrtoint ptr %cr_flavor to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %cr_flavor, align 4
  br label %cleanup

badcred:                                          ; preds = %lor.lhs.false27.badcred_crit_edge, %cond.end.badcred_crit_edge, %lor.lhs.false.badcred_crit_edge, %if.end.badcred_crit_edge
  %rq_auth_stat54 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %70 = ptrtoint ptr %rq_auth_stat54 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %rq_auth_stat54, align 4
  br label %cleanup

cleanup:                                          ; preds = %badcred, %if.end52, %if.then51, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %badcred ], [ 8, %if.then51 ], [ 5, %if.end52 ], [ 1, %entry.cleanup_crit_edge ], [ 7, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svcauth_unix_release(ptr nocapture noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_client = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %0 = ptrtoint ptr %rq_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_client, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @auth_domain_put(ptr noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %rq_client to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rq_client, align 8
  %cr_group_info = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cr_group_info, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.body:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #16, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then7, label %do.body.if.end11_crit_edge

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cr_group_info, align 4
  tail call void @groups_free(ptr noundef %7) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.body.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %8 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cr_group_info, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_map_cache_create(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call ptr @cache_create_net(ptr noundef nonnull @ip_map_cache_template, ptr noundef %net) #16
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @cache_register_net(ptr noundef %call1, ptr noundef %net) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @cache_destroy_net(ptr noundef %call1, ptr noundef %net) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %ip_map_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %ip_map_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %ip_map_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call4, %if.then5 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_map_cache_destroy(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %ip_map_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %ip_map_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip_map_cache, align 4
  store ptr null, ptr %ip_map_cache, align 4
  tail call void @cache_purge(ptr noundef %2) #16
  tail call void @cache_unregister_net(ptr noundef %2, ptr noundef %net) #16
  tail call void @cache_destroy_net(ptr noundef %2, ptr noundef %net) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svcauth_unix_domain_release_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -20
  %name = getelementptr i8, ptr %head, i32 -8
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %1) #16
  tail call void @kfree(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unix_gid_put(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -24
  %flags = getelementptr i8, ptr %kref, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %land.lhs.true

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body11

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %do.body, label %land.lhs.true.do.body11_crit_edge

land.lhs.true.do.body11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body11

do.body:                                          ; preds = %land.lhs.true
  %gi = getelementptr i8, ptr %kref, i32 12
  %5 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gi, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #16, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then8, label %do.body.do.body11_crit_edge

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body11

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gi, align 4
  tail call void @groups_free(ptr noundef %9) #16
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %do.body.do.body11_crit_edge, %land.lhs.true.do.body11_crit_edge, %entry.do.body11_crit_edge
  %tobool12.not = icmp eq ptr %add.ptr, null
  br i1 %tobool12.not, label %do.body11.if.end17_crit_edge, label %do.end16

do.body11.if.end17_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  %rcu = getelementptr i8, ptr %kref, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 40 to ptr)) #16
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %do.body11.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_gid_upcall(ptr noundef %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef %cd, ptr noundef %h) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unix_gid_request(ptr nocapture noundef readnone %cd, ptr nocapture noundef readonly %h, ptr noundef %bpp, ptr noundef %blen) #0 align 64 {
entry:
  %tuid = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tuid) #16
  %uid = getelementptr inbounds %struct.unix_gid, ptr %h, i32 0, i32 1
  %0 = call ptr @memset(ptr %tuid, i32 255, i32 20)
  %1 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack = load i32, ptr %uid, align 8
  %2 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %2) #16
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tuid, i32 noundef 20, ptr noundef nonnull @.str.8, i32 noundef %call)
  call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef nonnull %tuid) #16
  %3 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bpp, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 -1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tuid) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_gid_parse(ptr noundef %cd, ptr noundef %mesg, i32 noundef %mlen) #0 align 64 {
entry:
  %buf.i125 = alloca [50 x i8], align 1
  %ep.i126 = alloca ptr, align 4
  %buf.i113 = alloca [50 x i8], align 1
  %ep.i114 = alloca ptr, align 4
  %buf.i.i = alloca [50 x i8], align 1
  %ll.i.i = alloca i64, align 8
  %boot.i = alloca %struct.timespec64, align 8
  %buf.i = alloca [50 x i8], align 1
  %ep.i = alloca ptr, align 4
  %mesg.addr = alloca ptr, align 4
  %ug = alloca %struct.unix_gid, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mesg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mesg, ptr %mesg.addr, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ug) #16
  %1 = call ptr @memset(ptr %ug, i32 255, i32 48)
  %sub = add i32 %mlen, -1
  %arrayidx = getelementptr i8, ptr %mesg, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.not = icmp eq i8 %3, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup84_crit_edge

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #16
  %5 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i) #16
  %6 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i, align 4, !annotation !93
  %call.i = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i, i32 noundef 50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %7 = icmp slt i32 %call.i, 1
  br i1 %7, label %if.end.get_int.exit.thread_crit_edge, label %if.end3.i

if.end.get_int.exit.thread_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_int.exit.thread

if.end3.i:                                        ; preds = %if.end
  %call5.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i, ptr noundef nonnull %ep.i, i32 noundef 0) #16
  %8 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end5, label %if.end3.i.get_int.exit.thread_crit_edge

if.end3.i.get_int.exit.thread_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_int.exit.thread

get_int.exit.thread:                              ; preds = %if.end3.i.get_int.exit.thread_crit_edge, %if.end.get_int.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #16
  br label %cleanup84

if.end5:                                          ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #16
  %12 = call i32 @llvm.read_register.i32(metadata !69) #16
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns, align 4
  %call9 = call i32 @make_kuid(ptr noundef %19, i32 noundef %call5.i) #16
  %uid10 = getelementptr inbounds %struct.unix_gid, ptr %ug, i32 0, i32 1
  %20 = ptrtoint ptr %uid10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call9, ptr %uid10, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #16
  %21 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i) #16
  %22 = call ptr @memset(ptr %buf.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ll.i.i) #16
  %23 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %ll.i.i, align 8, !annotation !93
  %call.i.i109 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i.i, i32 noundef 50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i109)
  %24 = icmp slt i32 %call.i.i109, 1
  br i1 %24, label %if.end5.get_time.exit.thread.i_crit_edge, label %if.end3.i.i

if.end5.get_time.exit.thread.i_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_time.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end5
  %call5.i.i = call i32 @kstrtoll(ptr noundef nonnull %buf.i.i, i32 noundef 0, ptr noundef nonnull %ll.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i111, label %if.end3.i.i.get_time.exit.thread.i_crit_edge

if.end3.i.i.get_time.exit.thread.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_time.exit.thread.i

get_time.exit.thread.i:                           ; preds = %if.end3.i.i.get_time.exit.thread.i_crit_edge, %if.end5.get_time.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #16
  br label %get_expiry.exit.thread

if.end.i111:                                      ; preds = %if.end3.i.i
  %25 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ll.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp.i110 = icmp slt i64 %26, 0
  br i1 %cmp.i110, label %if.end.i111.get_expiry.exit.thread_crit_edge, label %get_expiry.exit

if.end.i111.get_expiry.exit.thread_crit_edge:     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_expiry.exit.thread

get_expiry.exit.thread:                           ; preds = %if.end.i111.get_expiry.exit.thread_crit_edge, %get_time.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #16
  br label %cleanup84

get_expiry.exit:                                  ; preds = %if.end.i111
  call void @getboottime64(ptr noundef nonnull %boot.i) #16
  %27 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %boot.i, align 8
  %sub.i = sub i64 %26, %28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp12 = icmp eq i64 %26, %28
  br i1 %cmp12, label %get_expiry.exit.cleanup84_crit_edge, label %if.end15

get_expiry.exit.cleanup84_crit_edge:              ; preds = %get_expiry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

if.end15:                                         ; preds = %get_expiry.exit
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i113) #16
  %29 = call ptr @memset(ptr %buf.i113, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i114) #16
  %30 = ptrtoint ptr %ep.i114 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i114, align 4, !annotation !93
  %call.i115 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i113, i32 noundef 50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i115)
  %31 = icmp slt i32 %call.i115, 1
  br i1 %31, label %if.end15.get_int.exit124.thread_crit_edge, label %if.end3.i121

if.end15.get_int.exit124.thread_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_int.exit124.thread

if.end3.i121:                                     ; preds = %if.end15
  %call5.i119 = call i32 @simple_strtol(ptr noundef nonnull %buf.i113, ptr noundef nonnull %ep.i114, i32 noundef 0) #16
  %32 = ptrtoint ptr %ep.i114 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep.i114, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i120 = icmp eq i8 %35, 0
  br i1 %tobool.not.i120, label %lor.lhs.false, label %if.end3.i121.get_int.exit124.thread_crit_edge

if.end3.i121.get_int.exit124.thread_crit_edge:    ; preds = %if.end3.i121
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_int.exit124.thread

get_int.exit124.thread:                           ; preds = %if.end3.i121.get_int.exit124.thread_crit_edge, %if.end15.get_int.exit124.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i114) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i113) #16
  br label %cleanup84

lor.lhs.false:                                    ; preds = %if.end3.i121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i114) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i113) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %call5.i119)
  %36 = icmp ugt i32 %call5.i119, 8192
  br i1 %36, label %lor.lhs.false.cleanup84_crit_edge, label %if.end24

lor.lhs.false.cleanup84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

if.end24:                                         ; preds = %lor.lhs.false
  %call25 = call ptr @groups_alloc(i32 noundef %call5.i119) #16
  %gi = getelementptr inbounds %struct.unix_gid, ptr %ug, i32 0, i32 2
  %37 = ptrtoint ptr %gi to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call25, ptr %gi, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end24.cleanup84_crit_edge, label %for.cond.preheader

if.end24.cleanup84_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

for.cond.preheader:                               ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i119)
  %cmp30155.not = icmp eq i32 %call5.i119, 0
  br i1 %cmp30155.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0156 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i125) #16
  %38 = call ptr @memset(ptr %buf.i125, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i126) #16
  %39 = ptrtoint ptr %ep.i126 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i126, align 4, !annotation !93
  %call.i127 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i125, i32 noundef 50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i127)
  %40 = icmp slt i32 %call.i127, 1
  br i1 %40, label %for.body.get_int.exit136.thread_crit_edge, label %if.end3.i133

for.body.get_int.exit136.thread_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_int.exit136.thread

if.end3.i133:                                     ; preds = %for.body
  %call5.i131 = call i32 @simple_strtol(ptr noundef nonnull %buf.i125, ptr noundef nonnull %ep.i126, i32 noundef 0) #16
  %41 = ptrtoint ptr %ep.i126 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ep.i126, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i132 = icmp eq i8 %44, 0
  br i1 %tobool.not.i132, label %if.end35, label %if.end3.i133.get_int.exit136.thread_crit_edge

if.end3.i133.get_int.exit136.thread_crit_edge:    ; preds = %if.end3.i133
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_int.exit136.thread

get_int.exit136.thread:                           ; preds = %if.end3.i133.get_int.exit136.thread_crit_edge, %for.body.get_int.exit136.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i126) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i125) #16
  br label %out

if.end35:                                         ; preds = %if.end3.i133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i126) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i125) #16
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %cred44 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 99
  %47 = ptrtoint ptr %cred44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cred44, align 16
  %user_ns45 = getelementptr inbounds %struct.cred, ptr %48, i32 0, i32 25
  %49 = ptrtoint ptr %user_ns45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %user_ns45, align 4
  %call46 = call i32 @make_kgid(ptr noundef %50, i32 noundef %call5.i131) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call46)
  %cmp.i137.not = icmp eq i32 %call46, -1
  br i1 %cmp.i137.not, label %if.end35.out_crit_edge, label %for.inc

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.inc:                                          ; preds = %if.end35
  %51 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gi, align 4
  %arrayidx54 = getelementptr %struct.group_info, ptr %52, i32 0, i32 2, i32 %i.0156
  %53 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call46, ptr %arrayidx54, align 4
  %inc = add nuw nsw i32 %i.0156, 1
  %exitcond.not = icmp eq i32 %inc, %call5.i119
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %54 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gi, align 4
  call void @groups_sort(ptr noundef %55) #16
  %.fca.0.insert100 = insertvalue [1 x i32] poison, i32 %call9, 0
  %call58 = call fastcc ptr @unix_gid_lookup(ptr noundef %cd, [1 x i32] %.fca.0.insert100)
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %for.end.out_crit_edge, label %if.then60

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then60:                                        ; preds = %for.end
  %flags = getelementptr inbounds %struct.cache_head, ptr %ug, i32 0, i32 4
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %flags, align 4
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %ug, i32 0, i32 1
  %57 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %sub.i, ptr %expiry_time, align 8
  %call.i138 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert100) #16
  %mul.i.i.i = mul i32 %call.i138, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %call66 = call ptr @sunrpc_cache_update(ptr noundef %cd, ptr noundef nonnull %ug, ptr noundef nonnull %call58, i32 noundef %shr.i.i) #16
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then60.out_crit_edge, label %if.else

if.then60.out_crit_edge:                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.else:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @cache_put(ptr noundef nonnull %call66, ptr noundef %cd)
  br label %out

out:                                              ; preds = %if.else, %if.then60.out_crit_edge, %for.end.out_crit_edge, %if.end35.out_crit_edge, %get_int.exit136.thread
  %err.1 = phi i32 [ 0, %if.else ], [ -12, %if.then60.out_crit_edge ], [ -12, %for.end.out_crit_edge ], [ -22, %get_int.exit136.thread ], [ -22, %if.end35.out_crit_edge ]
  %58 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gi, align 4
  %tobool73.not = icmp eq ptr %59, null
  br i1 %tobool73.not, label %out.cleanup84_crit_edge, label %do.body75

out.cleanup84_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

do.body75:                                        ; preds = %out
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %59, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !90
  call void @llvm.prefetch.p0(ptr nonnull %59, i32 1, i32 3, i32 1) #16
  %60 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %59, ptr nonnull %59, i32 1, ptr nonnull elementtype(i32) %59) #16, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %60, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then78, label %do.body75.cleanup84_crit_edge

do.body75.cleanup84_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

if.then78:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #18
  %61 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gi, align 4
  call void @groups_free(ptr noundef %62) #16
  br label %cleanup84

cleanup84:                                        ; preds = %if.then78, %do.body75.cleanup84_crit_edge, %out.cleanup84_crit_edge, %if.end24.cleanup84_crit_edge, %lor.lhs.false.cleanup84_crit_edge, %get_int.exit124.thread, %get_expiry.exit.cleanup84_crit_edge, %get_expiry.exit.thread, %get_int.exit.thread, %entry.cleanup84_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup84_crit_edge ], [ -22, %get_expiry.exit.cleanup84_crit_edge ], [ -22, %lor.lhs.false.cleanup84_crit_edge ], [ -12, %if.end24.cleanup84_crit_edge ], [ %err.1, %do.body75.cleanup84_crit_edge ], [ %err.1, %if.then78 ], [ %err.1, %out.cleanup84_crit_edge ], [ -22, %get_int.exit.thread ], [ -22, %get_expiry.exit.thread ], [ -22, %get_int.exit124.thread ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ug) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_gid_show(ptr noundef %m, ptr nocapture noundef readnone %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_cred, align 8
  %user_ns1 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns1, align 4
  %cmp = icmp eq ptr %h, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.10) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %gi = getelementptr inbounds %struct.unix_gid, ptr %h, i32 0, i32 2
  %11 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gi, align 4
  %ngroups = getelementptr inbounds %struct.group_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ngroups, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %glen.0 = phi i32 [ %14, %if.then5 ], [ 0, %land.lhs.true.if.end6_crit_edge ], [ 0, %if.end.if.end6_crit_edge ]
  %uid = getelementptr inbounds %struct.unix_gid, ptr %h, i32 0, i32 1
  %15 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %uid, align 8
  %16 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %16) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %call7, i32 noundef %glen.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %glen.0)
  %cmp830 = icmp sgt i32 %glen.0, 0
  br i1 %cmp830, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %gi9 = getelementptr inbounds %struct.unix_gid, ptr %h, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %gi9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gi9, align 4
  %arrayidx = getelementptr %struct.group_info, ptr %18, i32 0, i32 2, i32 %i.031
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack28 = load i32, ptr %arrayidx, align 4
  %20 = insertvalue [1 x i32] undef, i32 %.unpack28, 0
  %call11 = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %20) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef %call11) #16
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %glen.0
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @unix_gid_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 48) #19
  ret ptr %call7.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @unix_gid_match(ptr nocapture noundef readonly %corig, ptr nocapture noundef readonly %cnew) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %uid = getelementptr inbounds %struct.unix_gid, ptr %corig, i32 0, i32 1
  %uid4 = getelementptr inbounds %struct.unix_gid, ptr %cnew, i32 0, i32 1
  %0 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %uid, align 8
  %1 = ptrtoint ptr %uid4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack6 = load i32, ptr %uid4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack6)
  %cmp.i = icmp eq i32 %.unpack, %.unpack6
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @unix_gid_init(ptr nocapture noundef writeonly %cnew, ptr nocapture noundef readonly %citem) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %uid = getelementptr inbounds %struct.unix_gid, ptr %cnew, i32 0, i32 1
  %uid4 = getelementptr inbounds %struct.unix_gid, ptr %citem, i32 0, i32 1
  %0 = ptrtoint ptr %uid4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uid4, align 8
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %uid, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unix_gid_update(ptr nocapture noundef writeonly %cnew, ptr nocapture noundef readonly %citem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %gi = getelementptr inbounds %struct.unix_gid, ptr %citem, i32 0, i32 2
  %0 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gi, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #16, !srcloc !89
  %3 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gi, align 4
  %gi5 = getelementptr inbounds %struct.unix_gid, ptr %cnew, i32 0, i32 2
  %5 = ptrtoint ptr %gi5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %gi5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @unix_gid_lookup(ptr noundef %cd, [1 x i32] %uid.coerce) unnamed_addr #0 align 64 {
entry:
  %ug = alloca %struct.unix_gid, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract = extractvalue [1 x i32] %uid.coerce, 0
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ug) #16
  %0 = call ptr @memset(ptr %ug, i32 255, i32 48)
  %uid1 = getelementptr inbounds %struct.unix_gid, ptr %ug, i32 0, i32 1
  %1 = ptrtoint ptr %uid1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %uid.coerce.fca.0.extract, ptr %uid1, align 8
  %call.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %uid.coerce) #16
  %mul.i.i.i = mul i32 %call.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %call3 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %ug, i32 noundef %shr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ug) #16
  ret ptr %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qword_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_lookup_rcu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_map_put(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -24
  %flags = getelementptr i8, ptr %kref, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.then, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %m_client = getelementptr i8, ptr %kref, i32 32
  %5 = ptrtoint ptr %m_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_client, align 8
  tail call void @auth_domain_put(ptr noundef %6) #16
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %tobool7.not = icmp eq ptr %add.ptr, null
  br i1 %tobool7.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %m_rcu = getelementptr i8, ptr %kref, i32 36
  tail call void @kvfree_call_rcu(ptr noundef %m_rcu, ptr noundef nonnull inttoptr (i32 60 to ptr)) #16
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_map_upcall(ptr noundef %cd, ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunrpc_cache_pipe_upcall(ptr noundef %cd, ptr noundef %h) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_map_request(ptr nocapture noundef readnone %cd, ptr noundef %h, ptr noundef %bpp, ptr noundef %blen) #0 align 64 {
entry:
  %text_addr = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %text_addr) #16
  %0 = call ptr @memset(ptr %text_addr, i32 255, i32 40)
  %m_addr = getelementptr inbounds %struct.ip_map, ptr %h, i32 0, i32 2
  %1 = ptrtoint ptr %m_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %m_addr, align 4
  %arrayidx2.i = getelementptr %struct.ip_map, ptr %h, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %4, %2
  %arrayidx4.i = getelementptr %struct.ip_map, ptr %h, i32 0, i32 2, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %6, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.ip_map, ptr %h, i32 0, i32 2, i32 0, i32 0, i32 3
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %text_addr, i32 noundef 20, ptr noundef nonnull @.str.21, ptr noundef %arrayidx)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %text_addr, i32 noundef 40, ptr noundef nonnull @.str.22, ptr noundef %m_addr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %m_class = getelementptr inbounds %struct.ip_map, ptr %h, i32 0, i32 1
  tail call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef %m_class) #16
  call void @qword_add(ptr noundef %bpp, ptr noundef %blen, ptr noundef nonnull %text_addr) #16
  %7 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bpp, align 4
  %arrayidx8 = getelementptr i8, ptr %8, i32 -1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %arrayidx8, align 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %text_addr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_map_parse(ptr noundef %cd, ptr noundef %mesg, i32 noundef %mlen) #0 align 64 {
entry:
  %ip.i = alloca %struct.ip_map, align 8
  %buf.i.i = alloca [50 x i8], align 1
  %ll.i.i = alloca i64, align 8
  %boot.i = alloca %struct.timespec64, align 8
  %mesg.addr = alloca ptr, align 4
  %class = alloca [8 x i8], align 8
  %address = alloca %union.anon.152, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mesg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mesg, ptr %mesg.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %class) #16
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %class, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %address) #16
  %2 = getelementptr inbounds %struct.sockaddr_in6, ptr %address, i32 0, i32 2
  %3 = getelementptr inbounds %struct.sockaddr_in6, ptr %address, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sockaddr_in6, ptr %address, i32 0, i32 3, i32 0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sockaddr_in6, ptr %address, i32 0, i32 3, i32 0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sockaddr_in6, ptr %address, i32 0, i32 3, i32 0, i32 0, i32 3
  %sub = add i32 %mlen, -1
  %arrayidx = getelementptr i8, ptr %mesg, i32 %sub
  %7 = call ptr @memset(ptr %address, i32 255, i32 28)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp.not = icmp eq i8 %9, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %class, i32 noundef 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %net = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 25
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 4
  %call13 = call i32 @rpc_pton(ptr noundef %12, ptr noundef %mesg, i32 noundef %call8, ptr noundef nonnull %address, i32 noundef 28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %address, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %14, label %if.end17.cleanup_crit_edge [
    i16 2, label %if.end17.sw.epilog_crit_edge
    i16 10, label %sw.bb19
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb19:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %sin6.sroa.7.0.copyload = load i32, ptr %3, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %sin6.sroa.11.0.copyload = load i32, ptr %4, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %sin6.sroa.14.0.copyload = load i32, ptr %5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %if.end17.sw.epilog_crit_edge
  %.sink = phi ptr [ %6, %sw.bb19 ], [ %2, %if.end17.sw.epilog_crit_edge ]
  %sin6.sroa.14.0 = phi i32 [ %sin6.sroa.14.0.copyload, %sw.bb19 ], [ 65535, %if.end17.sw.epilog_crit_edge ]
  %sin6.sroa.11.0 = phi i32 [ %sin6.sroa.11.0.copyload, %sw.bb19 ], [ 0, %if.end17.sw.epilog_crit_edge ]
  %sin6.sroa.7.0 = phi i32 [ %sin6.sroa.7.0.copyload, %sw.bb19 ], [ 0, %if.end17.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %19)
  %sin6.sroa.17.0.copyload = load i32, ptr %.sink, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #16
  %20 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i) #16
  %21 = call ptr @memset(ptr %buf.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ll.i.i) #16
  %22 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %ll.i.i, align 8, !annotation !93
  %call.i.i = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i.i, i32 noundef 50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %23 = icmp slt i32 %call.i.i, 1
  br i1 %23, label %sw.epilog.get_time.exit.thread.i_crit_edge, label %if.end3.i.i

sw.epilog.get_time.exit.thread.i_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_time.exit.thread.i

if.end3.i.i:                                      ; preds = %sw.epilog
  %call5.i.i = call i32 @kstrtoll(ptr noundef nonnull %buf.i.i, i32 noundef 0, ptr noundef nonnull %ll.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end3.i.i.get_time.exit.thread.i_crit_edge

if.end3.i.i.get_time.exit.thread.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_time.exit.thread.i

get_time.exit.thread.i:                           ; preds = %if.end3.i.i.get_time.exit.thread.i_crit_edge, %sw.epilog.get_time.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #16
  br label %get_expiry.exit.thread

if.end.i:                                         ; preds = %if.end3.i.i
  %24 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ll.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp.i = icmp slt i64 %25, 0
  br i1 %cmp.i, label %if.end.i.get_expiry.exit.thread_crit_edge, label %get_expiry.exit

if.end.i.get_expiry.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_expiry.exit.thread

get_expiry.exit.thread:                           ; preds = %if.end.i.get_expiry.exit.thread_crit_edge, %get_time.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #16
  br label %cleanup

get_expiry.exit:                                  ; preds = %if.end.i
  call void @getboottime64(ptr noundef nonnull %boot.i) #16
  %26 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %boot.i, align 8
  %sub.i = sub i64 %25, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp21 = icmp eq i64 %25, %27
  br i1 %cmp21, label %get_expiry.exit.cleanup_crit_edge, label %if.end24

get_expiry.exit.cleanup_crit_edge:                ; preds = %get_expiry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %get_expiry.exit
  %call25 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end29.if.end36_crit_edge, label %if.then30

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then30:                                        ; preds = %if.end29
  %call31 = call ptr @unix_domain_find(ptr noundef %mesg)
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then30.cleanup_crit_edge, label %if.then30.if.end36_crit_edge

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %if.end29.if.end36_crit_edge
  %dom.0 = phi ptr [ %call31, %if.then30.if.end36_crit_edge ], [ null, %if.end29.if.end36_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ip.i) #16
  %28 = call ptr @memset(ptr %ip.i, i32 255, i32 72)
  %m_class.i = getelementptr inbounds %struct.ip_map, ptr %ip.i, i32 0, i32 1
  %call.i = call ptr @strcpy(ptr noundef %m_class.i, ptr noundef nonnull %class) #20
  %m_addr.i = getelementptr inbounds %struct.ip_map, ptr %ip.i, i32 0, i32 2
  %29 = ptrtoint ptr %m_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sin6.sroa.7.0, ptr %m_addr.i, align 8
  %sin6.sroa.11.8.m_addr.i.sroa_idx = getelementptr inbounds %struct.ip_map, ptr %ip.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %sin6.sroa.11.8.m_addr.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sin6.sroa.11.0, ptr %sin6.sroa.11.8.m_addr.i.sroa_idx, align 4
  %sin6.sroa.14.8.m_addr.i.sroa_idx = getelementptr inbounds %struct.ip_map, ptr %ip.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %sin6.sroa.14.8.m_addr.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sin6.sroa.14.0, ptr %sin6.sroa.14.8.m_addr.i.sroa_idx, align 8
  %sin6.sroa.17.8.m_addr.i.sroa_idx = getelementptr inbounds %struct.ip_map, ptr %ip.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %sin6.sroa.17.8.m_addr.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sin6.sroa.17.0.copyload, ptr %sin6.sroa.17.8.m_addr.i.sroa_idx, align 4
  %call.i.i73 = call i64 @hashlen_string(ptr noundef null, ptr noundef nonnull %class) #21
  %conv.i.i = trunc i64 %call.i.i73 to i32
  %xor.i.i.i = xor i32 %sin6.sroa.14.0, %sin6.sroa.17.0.copyload
  %xor5.i.i.i = xor i32 %xor.i.i.i, %sin6.sroa.11.0
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %sin6.sroa.7.0
  %mul.i.i.i.i = mul i32 %xor8.i.i.i, 1640531527
  %shr.i8.i = xor i32 %mul.i.i.i.i, %conv.i.i
  %xor.i = lshr i32 %shr.i8.i, 24
  %call3.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %ip.i, i32 noundef %xor.i) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ip.i) #16
  %tobool40.not = icmp eq ptr %call3.i, null
  br i1 %tobool40.not, label %if.end36.if.end44_crit_edge, label %if.then41

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %call42 = call fastcc i32 @__ip_map_update(ptr noundef %cd, ptr noundef nonnull %call3.i, ptr noundef %dom.0, i64 noundef %sub.i)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end36.if.end44_crit_edge
  %err.0 = phi i32 [ %call42, %if.then41 ], [ -12, %if.end36.if.end44_crit_edge ]
  %tobool45.not = icmp eq ptr %dom.0, null
  br i1 %tobool45.not, label %if.end44.if.end47_crit_edge, label %if.then46

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  call void @auth_domain_put(ptr noundef nonnull %dom.0) #16
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44.if.end47_crit_edge
  call void @cache_flush() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %get_expiry.exit.cleanup_crit_edge, %get_expiry.exit.thread, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end47 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %get_expiry.exit.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -2, %if.then30.cleanup_crit_edge ], [ -22, %get_expiry.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %address) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %class) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_map_show(ptr noundef %m, ptr nocapture noundef readnone %cd, ptr noundef %h) #0 align 64 {
entry:
  %addr = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #16
  %0 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 3
  %cmp = icmp eq ptr %h, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.24) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_addr = getelementptr inbounds %struct.ip_map, ptr %h, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %addr, ptr %m_addr, i32 16)
  %flags = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %m_client = getelementptr inbounds %struct.ip_map, ptr %h, i32 0, i32 3
  %9 = ptrtoint ptr %m_client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_client, align 8
  %name = getelementptr inbounds %struct.auth_domain, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dom.0 = phi ptr [ @.str.23, %land.lhs.true.if.end6_crit_edge ], [ %12, %if.then4 ], [ @.str.23, %if.end.if.end6_crit_edge ]
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  %or.i = or i32 %16, %14
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %xor.i = xor i32 %18, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  %m_class = getelementptr inbounds %struct.ip_map, ptr %h, i32 0, i32 1
  br i1 %cmp.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, ptr noundef %m_class, ptr noundef %2, ptr noundef %dom.0) #16
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, ptr noundef %m_class, ptr noundef nonnull %addr, ptr noundef %dom.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @ip_map_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 72) #19
  ret ptr %call7.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip_map_match(ptr nocapture noundef readonly %corig, ptr nocapture noundef readonly %cnew) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %m_class = getelementptr inbounds %struct.ip_map, ptr %corig, i32 0, i32 1
  %m_class4 = getelementptr inbounds %struct.ip_map, ptr %cnew, i32 0, i32 1
  %call = tail call i32 @strcmp(ptr noundef %m_class, ptr noundef %m_class4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %m_addr = getelementptr inbounds %struct.ip_map, ptr %corig, i32 0, i32 2
  %m_addr6 = getelementptr inbounds %struct.ip_map, ptr %cnew, i32 0, i32 2
  %0 = ptrtoint ptr %m_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_addr, align 4
  %2 = ptrtoint ptr %m_addr6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_addr6, align 4
  %xor.i = xor i32 %3, %1
  %arrayidx4.i = getelementptr %struct.ip_map, ptr %corig, i32 0, i32 2, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.ip_map, ptr %cnew, i32 0, i32 2, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %7, %5
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr %struct.ip_map, ptr %corig, i32 0, i32 2, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.ip_map, ptr %cnew, i32 0, i32 2, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %11, %9
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr %struct.ip_map, ptr %corig, i32 0, i32 2, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.ip_map, ptr %cnew, i32 0, i32 2, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %15, %13
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  %phi.cast = zext i1 %cmp.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %16 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ip_map_init(ptr noundef %cnew, ptr nocapture noundef readonly %citem) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %m_class = getelementptr inbounds %struct.ip_map, ptr %cnew, i32 0, i32 1
  %m_class4 = getelementptr inbounds %struct.ip_map, ptr %citem, i32 0, i32 1
  %call = tail call ptr @strcpy(ptr noundef %m_class, ptr noundef %m_class4) #23
  %m_addr = getelementptr inbounds %struct.ip_map, ptr %cnew, i32 0, i32 2
  %m_addr6 = getelementptr inbounds %struct.ip_map, ptr %citem, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %m_addr, ptr %m_addr6, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update(ptr nocapture noundef writeonly %cnew, ptr nocapture noundef readonly %citem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %m_client = getelementptr inbounds %struct.ip_map, ptr %citem, i32 0, i32 3
  %0 = ptrtoint ptr %m_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_client, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #16, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !87

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !83

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i) #16
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %4 = ptrtoint ptr %m_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_client, align 8
  %m_client5 = getelementptr inbounds %struct.ip_map, ptr %cnew, i32 0, i32 3
  %6 = ptrtoint ptr %m_client5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %m_client5, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ip_map_update(ptr noundef %cd, ptr noundef %ipm, ptr noundef %udom, i64 noundef %expiry) unnamed_addr #0 align 64 {
entry:
  %ip = alloca %struct.ip_map, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ip) #16
  %0 = call ptr @memset(ptr %ip, i32 255, i32 72)
  %m_client = getelementptr inbounds %struct.ip_map, ptr %ip, i32 0, i32 3
  %1 = ptrtoint ptr %m_client to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %udom, ptr %m_client, align 8
  %flags = getelementptr inbounds %struct.cache_head, ptr %ip, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %tobool.not = icmp eq ptr %udom, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %ip, i32 0, i32 1
  %3 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %expiry, ptr %expiry_time, align 8
  %m_class = getelementptr inbounds %struct.ip_map, ptr %ipm, i32 0, i32 1
  %call.i = call i64 @hashlen_string(ptr noundef null, ptr noundef %m_class) #21
  %conv.i = trunc i64 %call.i to i32
  %m_addr = getelementptr inbounds %struct.ip_map, ptr %ipm, i32 0, i32 2
  %4 = ptrtoint ptr %m_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_addr, align 4
  %arrayidx2.i.i = getelementptr %struct.ip_map, ptr %ipm, i32 0, i32 2, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i.i, align 4
  %xor.i.i = xor i32 %7, %5
  %arrayidx4.i.i = getelementptr %struct.ip_map, ptr %ipm, i32 0, i32 2, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor.i.i, %9
  %arrayidx7.i.i = getelementptr %struct.ip_map, ptr %ipm, i32 0, i32 2, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i.i, align 4
  %xor8.i.i = xor i32 %xor5.i.i, %11
  %mul.i.i.i = mul i32 %xor8.i.i, 1640531527
  %shr.i17 = xor i32 %mul.i.i.i, %conv.i
  %xor = lshr i32 %shr.i17, 24
  %call7 = call ptr @sunrpc_cache_update(ptr noundef %cd, ptr noundef nonnull %ip, ptr noundef %ipm, i32 noundef %xor) #16
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %call7, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #16
  %12 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp ult i32 %13, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end10.if.end.i_crit_edge

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end10
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %call7, i32 0, i32 1
  %14 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 18
  %16 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp1.i = icmp slt i64 %15, %17
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %15, ptr %nextcheck.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end10.if.end.i_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 5
  %19 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #16, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !83

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #16
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !84
  call void %20(ptr noundef %ref.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ip) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { cold nounwind }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__ksymtab_unix_domain_find, !1, !"__ksymtab_unix_domain_find", i1 false, i1 false}
!1 = !{!"../net/sunrpc/svcauth_unix.c", i32 86, i32 1}
!2 = !{ptr @__ksymtab_svcauth_unix_purge, !3, !"__ksymtab_svcauth_unix_purge", i1 false, i1 false}
!3 = !{!"../net/sunrpc/svcauth_unix.c", i32 333, i32 1}
!4 = !{ptr @__ksymtab_svcauth_unix_set_client, !5, !"__ksymtab_svcauth_unix_set_client", i1 false, i1 false}
!5 = !{!"../net/sunrpc/svcauth_unix.c", i32 729, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/svcauth_unix.c", i32 782, i32 11}
!8 = !{ptr @svcauth_null, !9, !"svcauth_null", i1 false, i1 false}
!9 = !{!"../net/sunrpc/svcauth_unix.c", i32 781, i32 17}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sunrpc/svcauth_unix.c", i32 867, i32 11}
!12 = !{ptr @svcauth_unix, !13, !"svcauth_unix", i1 false, i1 false}
!13 = !{!"../net/sunrpc/svcauth_unix.c", i32 866, i32 17}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/sunrpc/svcauth_unix.c", i32 577, i32 11}
!27 = !{ptr @unix_gid_cache_template, !28, !"unix_gid_cache_template", i1 false, i1 false}
!28 = !{!"../net/sunrpc/svcauth_unix.c", i32 574, i32 34}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/sunrpc/svcauth_unix.c", i32 469, i32 21}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/sunrpc/svcauth_unix.c", i32 496, i32 18}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/sunrpc/svcauth_unix.c", i32 518, i32 20}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sunrpc/svcauth_unix.c", i32 557, i32 15}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/sunrpc/svcauth_unix.c", i32 567, i32 16}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/sunrpc/svcauth_unix.c", i32 569, i32 17}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sunrpc/svcauth_unix.c", i32 570, i32 16}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/sunrpc/svcauth_unix.c", i32 742, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @svcauth_null_accept._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @svcauth_null_accept._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/sunrpc/svcauth_unix.c", i32 747, i32 3}
!51 = !{ptr @svcauth_null_accept._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @svcauth_null_accept._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/sunrpc/svcauth_unix.c", i32 879, i32 11}
!55 = !{ptr @ip_map_cache_template, !56, !"ip_map_cache_template", i1 false, i1 false}
!56 = !{!"../net/sunrpc/svcauth_unix.c", i32 876, i32 34}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/sunrpc/svcauth_unix.c", i32 164, i32 27}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/sunrpc/svcauth_unix.c", i32 166, i32 27}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/sunrpc/svcauth_unix.c", i32 264, i32 14}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/sunrpc/svcauth_unix.c", i32 267, i32 15}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/sunrpc/svcauth_unix.c", i32 279, i32 17}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/sunrpc/svcauth_unix.c", i32 282, i32 17}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2149266748}
!80 = !{i64 2149267014}
!81 = !{i64 2148528765}
!82 = !{i64 2148443229, i64 2148443261, i64 2148443290, i64 2148443324, i64 2148443355, i64 2148443378}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2149574735}
!85 = !{i64 2157304953, i64 2157309504, i64 2157304990, i64 2157305046, i64 2157305080, i64 2157305104, i64 2157305145, i64 2157305166, i64 2157305194, i64 2157305228}
!86 = !{i64 2148440764, i64 2148440796, i64 2148440825, i64 2148440859, i64 2148440890, i64 2148440913}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2157310638, i64 2157311128, i64 2157310675, i64 2157310731, i64 2157310765, i64 2157310789, i64 2157310830, i64 2157310851, i64 2157310879, i64 2157310913}
!89 = !{i64 2148439234, i64 2148439260, i64 2148439289, i64 2148439323, i64 2148439354, i64 2148439377}
!90 = !{i64 2148527686}
!91 = !{i64 2148442419, i64 2148442451, i64 2148442480, i64 2148442514, i64 2148442545, i64 2148442568}
!92 = !{i64 2148527915}
!93 = !{!"auto-init"}
