; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/svcauth_gss.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/svcauth_gss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+svcauth_gss_flavor\22, \22a\22\09"
module asm "\09.weak\09__crc_svcauth_gss_flavor\09\09\09\09"
module asm "\09.long\09__crc_svcauth_gss_flavor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svcauth_gss_flavor:\09\09\09\09\09"
module asm "\09.asciz \09\22svcauth_gss_flavor\22\09\09\09\09\09"
module asm "__kstrtabns_svcauth_gss_flavor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svcauth_gss_register_pseudoflavor\22, \22a\22\09"
module asm "\09.weak\09__crc_svcauth_gss_register_pseudoflavor\09\09\09\09"
module asm "\09.long\09__crc_svcauth_gss_register_pseudoflavor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svcauth_gss_register_pseudoflavor:\09\09\09\09\09"
module asm "\09.asciz \09\22svcauth_gss_register_pseudoflavor\22\09\09\09\09\09"
module asm "__kstrtabns_svcauth_gss_register_pseudoflavor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.127 }
%struct.atomic_t = type { i32 }
%union.anon.127 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.atomic64_t = type { i64 }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.157, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.157 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gss_domain = type { %struct.auth_domain, i32 }
%struct.auth_domain = type { %struct.kref, %struct.hlist_node, ptr, ptr, %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.130 }
%union.anon.130 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.gss_svc_data = type { %struct.rpc_gss_wire_cred, ptr, ptr }
%struct.rpc_gss_wire_cred = type { i32, i32, i32, i32, %struct.xdr_netobj }
%struct.xdr_netobj = type { i32, ptr }
%struct.rsc = type { %struct.cache_head, %struct.xdr_netobj, %struct.svc_cred, %struct.gss_svc_seq_data, ptr, %struct.callback_head }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.gss_svc_seq_data = type { i32, [4 x i32], %struct.spinlock }
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
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.gssp_upcall_data = type { %struct.xdr_netobj, %struct.gssp_in_token, %struct.xdr_netobj, %struct.xdr_netobj, %struct.rpcsec_gss_oid, %struct.svc_cred, i32, i32, i32 }
%struct.gssp_in_token = type { ptr, i32, i32 }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.rsi = type { %struct.cache_head, %struct.xdr_netobj, %struct.xdr_netobj, %struct.xdr_netobj, %struct.xdr_netobj, i32, i32, %struct.callback_head }
%struct.page = type { i32, %union.anon.2, %union.anon.125, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }
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
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, ptr, %struct.address_space, %struct.list_head, %union.anon.139, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.136 = type { i32 }
%union.anon.137 = type { %struct.callback_head }
%union.anon.138 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.139 = type { ptr }

@__kstrtab_svcauth_gss_flavor = external dso_local constant [0 x i8], align 1
@__kstrtabns_svcauth_gss_flavor = external dso_local constant [0 x i8], align 1
@__ksymtab_svcauth_gss_flavor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svcauth_gss_flavor to i32), ptr @__kstrtab_svcauth_gss_flavor, ptr @__kstrtabns_svcauth_gss_flavor }, section "___ksymtab_gpl+svcauth_gss_flavor", align 4
@svcauthops_gss = internal global { %struct.auth_ops, [36 x i8] } { %struct.auth_ops { ptr @.str.3, ptr null, i32 6, ptr @svcauth_gss_accept, ptr @svcauth_gss_release, ptr @svcauth_gss_domain_release, ptr @svcauth_gss_set_client }, [36 x i8] zeroinitializer }, align 32
@svcauth_gss_register_pseudoflavor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014svc: duplicate registration of gss pseudo flavour %s.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"svcauth_gss_register_pseudoflavor\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/sunrpc/auth_gss/svcauth_gss.c\00", [62 x i8] zeroinitializer }, align 32
@svcauth_gss_register_pseudoflavor._entry_ptr = internal global ptr @svcauth_gss_register_pseudoflavor._entry, section ".printk_index", align 4
@__kstrtab_svcauth_gss_register_pseudoflavor = external dso_local constant [0 x i8], align 1
@__kstrtabns_svcauth_gss_register_pseudoflavor = external dso_local constant [0 x i8], align 1
@__ksymtab_svcauth_gss_register_pseudoflavor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svcauth_gss_register_pseudoflavor to i32), ptr @__kstrtab_svcauth_gss_register_pseudoflavor, ptr @__kstrtabns_svcauth_gss_register_pseudoflavor }, section "___ksymtab_gpl+svcauth_gss_register_pseudoflavor", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpcsec_gss\00", [21 x i8] zeroinitializer }, align 32
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_rpcgss_svc_accept_upcall = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/rpcgss.h\00", [34 x i8] zeroinitializer }, align 32
@trace_rpcgss_svc_accept_upcall.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@gss_proxy_save_rsc.ctxhctr = internal global { %struct.atomic64_t, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_svc_seqno_large = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_svc_seqno_large.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_svc_seqno_low = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_svc_seqno_low.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_svc_seqno_seen = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_svc_seqno_seen.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_svc_unwrap_failed = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_svc_unwrap_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_svc_seqno_bad = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_svc_seqno_bad.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_svc_mic = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_svc_mic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_svc_unwrap = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_svc_unwrap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_svc_authenticate = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_svc_authenticate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@svcauth_gss_wrap_resp_integ.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rsc_cache_template = internal constant { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 1024, ptr null, %struct.spinlock zeroinitializer, ptr @.str.13, ptr @rsc_put, ptr @rsc_upcall, ptr null, ptr @rsc_parse, ptr null, ptr null, ptr @rsc_alloc, ptr null, ptr @rsc_match, ptr @rsc_init, ptr @update_rsc, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.157 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"auth.rpcsec.context\00", [44 x i8] zeroinitializer }, align 32
@update_rsc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&new->seqdata.sd_lock\00", [42 x i8] zeroinitializer }, align 32
@rsi_cache_template = internal constant { %struct.cache_detail, [56 x i8] } { %struct.cache_detail { ptr null, i32 64, ptr null, %struct.spinlock zeroinitializer, ptr @.str.17, ptr @rsi_put, ptr @rsi_upcall, ptr @rsi_request, ptr @rsi_parse, ptr null, ptr null, ptr @rsi_alloc, ptr null, ptr @rsi_match, ptr @rsi_init, ptr @update_rsi, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.157 zeroinitializer, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"auth.rpcsec.init\00", [47 x i8] zeroinitializer }, align 32
@rsi_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RPCSEC/GSS credential too large - please use gssproxy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"use-gss-proxy\00", [18 x i8] zeroinitializer }, align 32
@use_gss_proxy_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @nonseekable_open, ptr @read_gssp, ptr null, ptr @write_gssp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"svcauthops_gss\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1904, i32 24 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 852, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1905, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 45, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 695, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 723, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [33 x i8] c"../include/trace/events/rpcgss.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 260, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 108, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"ctxhctr\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1280, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 717, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"rsc_cache_template\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 561, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 564, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 420, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"rsi_cache_template\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 283, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 286, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 197, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1495, i32 24 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"use_gss_proxy_proc_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1483, i32 30 }
@___asan_gen_.102 = private constant [37 x i8] c"../net/sunrpc/auth_gss/svcauth_gss.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1470, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 230, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 214, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 174, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_svcauth_gss_flavor, ptr @__ksymtab_svcauth_gss_register_pseudoflavor, ptr @svcauth_gss_register_pseudoflavor._entry, ptr @svcauth_gss_register_pseudoflavor._entry_ptr, ptr @svcauthops_gss, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @gss_proxy_save_rsc.ctxhctr, ptr @.str.12, ptr @rsc_cache_template, ptr @.str.13, ptr @update_rsc.__key, ptr @.str.16, ptr @rsi_cache_template, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @use_gss_proxy_proc_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcauthops_gss to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcauth_gss_register_pseudoflavor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_proxy_save_rsc.ctxhctr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsc_cache_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_rsc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_cache_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_gss_proxy_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @svcauth_gss_flavor(ptr nocapture noundef readonly %dom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %pseudoflavor = getelementptr inbounds %struct.gss_domain, ptr %dom, i32 0, i32 1
  %0 = ptrtoint ptr %pseudoflavor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pseudoflavor, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @svcauth_gss_register_pseudoflavor(i32 noundef %pseudoflavor, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 32) #22
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end:                                           ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #19
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i, align 8
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #19
  %name3 = getelementptr inbounds %struct.auth_domain, ptr %call7.i, i32 0, i32 2
  %2 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %name3, align 4
  %tobool6.not = icmp eq ptr %call1, null
  br i1 %tobool6.not, label %if.end.out_free_dom_crit_edge, label %if.end8

if.end.out_free_dom_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_dom

if.end8:                                          ; preds = %if.end
  %flavour = getelementptr inbounds %struct.auth_domain, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %flavour to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @svcauthops_gss, ptr %flavour, align 8
  %pseudoflavor10 = getelementptr inbounds %struct.gss_domain, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %pseudoflavor10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pseudoflavor, ptr %pseudoflavor10, align 4
  %call12 = tail call ptr @auth_domain_lookup(ptr noundef %name, ptr noundef nonnull %call7.i) #19
  %cmp.not = icmp eq ptr %call12, %call7.i
  br i1 %cmp.not, label %if.end8.cleanup_crit_edge, label %do.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #23
  tail call void @auth_domain_put(ptr noundef %call12) #19
  %5 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name3, align 4
  tail call void @kfree(ptr noundef %6) #19
  br label %out_free_dom

out_free_dom:                                     ; preds = %do.end, %if.end.out_free_dom_crit_edge
  %stat.0 = phi i32 [ -98, %do.end ], [ -12, %if.end.out_free_dom_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #19
  br label %out

out:                                              ; preds = %out_free_dom, %entry.out_crit_edge
  %stat.1 = phi i32 [ %stat.0, %out_free_dom ], [ -12, %entry.out_crit_edge ]
  %7 = inttoptr i32 %stat.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %out ], [ %call7.i, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_svc_init_net(ptr noundef %net) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #19
  %call1.i = tail call ptr @cache_create_net(ptr noundef nonnull @rsc_cache_template, ptr noundef %net) #19
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rsc_cache_create_net.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call4.i = tail call i32 @cache_register_net(ptr noundef %call1.i, ptr noundef %net) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %rsc_cache_create_net.exit.thread, label %rsc_cache_create_net.exit.thread38

rsc_cache_create_net.exit.thread38:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @cache_destroy_net(ptr noundef %call1.i, ptr noundef %net) #19
  br label %cleanup

rsc_cache_create_net.exit.thread:                 ; preds = %if.end.i
  %rsc_cache.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %rsc_cache.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i, ptr %rsc_cache.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %2 = load i32, ptr @sunrpc_net_id, align 4
  %call.i17 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %2) #19
  %call1.i18 = tail call ptr @cache_create_net(ptr noundef nonnull @rsi_cache_template, ptr noundef %net) #19
  %cmp.i.i19 = icmp ugt ptr %call1.i18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i19, label %rsi_cache_create_net.exit, label %if.end.i23

rsc_cache_create_net.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %3 = ptrtoint ptr %call1.i to i32
  br label %cleanup

if.end.i23:                                       ; preds = %rsc_cache_create_net.exit.thread
  %call4.i21 = tail call i32 @cache_register_net(ptr noundef %call1.i18, ptr noundef %net) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i21)
  %tobool.not.i22 = icmp eq i32 %call4.i21, 0
  br i1 %tobool.not.i22, label %rsi_cache_create_net.exit.thread, label %rsi_cache_create_net.exit.thread43

rsi_cache_create_net.exit.thread43:               ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @cache_destroy_net(ptr noundef %call1.i18, ptr noundef %net) #19
  br label %out1

rsi_cache_create_net.exit.thread:                 ; preds = %if.end.i23
  %rsi_cache.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i17, i32 0, i32 4
  %4 = ptrtoint ptr %rsi_cache.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i18, ptr %rsi_cache.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %5 = load i32, ptr @sunrpc_net_id, align 4
  %call.i27 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %5) #19
  %use_gssp_proc.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i27, i32 0, i32 20
  %use_gss_proxy.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i27, i32 0, i32 17
  %6 = ptrtoint ptr %use_gss_proxy.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %use_gss_proxy.i, align 4
  %7 = ptrtoint ptr %call.i27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i27, align 4
  %call1.i28 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.19, i16 noundef zeroext -32384, ptr noundef %8, ptr noundef nonnull @use_gss_proxy_proc_ops, ptr noundef %net) #19
  %9 = ptrtoint ptr %use_gssp_proc.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i28, ptr %use_gssp_proc.i, align 4
  %tobool.not.i29 = icmp eq ptr %call1.i28, null
  br i1 %tobool.not.i29, label %out2, label %create_use_gss_proxy_proc_entry.exit.thread

rsi_cache_create_net.exit:                        ; preds = %rsc_cache_create_net.exit.thread
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %call1.i18 to i32
  br label %out1

create_use_gss_proxy_proc_entry.exit.thread:      ; preds = %rsi_cache_create_net.exit.thread
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @init_gssp_clnt(ptr noundef %call.i27) #19
  br label %cleanup

out2:                                             ; preds = %rsi_cache_create_net.exit.thread
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %11 = load i32, ptr @sunrpc_net_id, align 4
  %call.i32 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %11) #19
  %rsi_cache.i33 = getelementptr inbounds %struct.sunrpc_net, ptr %call.i32, i32 0, i32 4
  %12 = ptrtoint ptr %rsi_cache.i33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rsi_cache.i33, align 4
  store ptr null, ptr %rsi_cache.i33, align 4
  tail call void @cache_purge(ptr noundef %13) #19
  tail call void @cache_unregister_net(ptr noundef %13, ptr noundef %net) #19
  tail call void @cache_destroy_net(ptr noundef %13, ptr noundef %net) #19
  br label %out1

out1:                                             ; preds = %out2, %rsi_cache_create_net.exit, %rsi_cache_create_net.exit.thread43
  %rv.0 = phi i32 [ %10, %rsi_cache_create_net.exit ], [ -12, %out2 ], [ %call4.i21, %rsi_cache_create_net.exit.thread43 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %14 = load i32, ptr @sunrpc_net_id, align 4
  %call.i34 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %14) #19
  %rsc_cache.i35 = getelementptr inbounds %struct.sunrpc_net, ptr %call.i34, i32 0, i32 3
  %15 = ptrtoint ptr %rsc_cache.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rsc_cache.i35, align 4
  store ptr null, ptr %rsc_cache.i35, align 4
  tail call void @cache_purge(ptr noundef %16) #19
  tail call void @cache_unregister_net(ptr noundef %16, ptr noundef %net) #19
  tail call void @cache_destroy_net(ptr noundef %16, ptr noundef %net) #19
  br label %cleanup

cleanup:                                          ; preds = %out1, %create_use_gss_proxy_proc_entry.exit.thread, %rsc_cache_create_net.exit, %rsc_cache_create_net.exit.thread38
  %retval.0 = phi i32 [ %rv.0, %out1 ], [ %3, %rsc_cache_create_net.exit ], [ %call4.i, %rsc_cache_create_net.exit.thread38 ], [ 0, %create_use_gss_proxy_proc_entry.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gss_svc_shutdown_net(ptr noundef %net) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #19
  %use_gssp_proc.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 20
  %1 = ptrtoint ptr %use_gssp_proc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %use_gssp_proc.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.destroy_use_gss_proxy_proc_entry.exit_crit_edge, label %if.then.i

entry.destroy_use_gss_proxy_proc_entry.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %destroy_use_gss_proxy_proc_entry.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.19, ptr noundef %4) #19
  tail call void @clear_gssp_clnt(ptr noundef %call.i) #19
  br label %destroy_use_gss_proxy_proc_entry.exit

destroy_use_gss_proxy_proc_entry.exit:            ; preds = %if.then.i, %entry.destroy_use_gss_proxy_proc_entry.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %5 = load i32, ptr @sunrpc_net_id, align 4
  %call.i3 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %5) #19
  %rsi_cache.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i3, i32 0, i32 4
  %6 = ptrtoint ptr %rsi_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsi_cache.i, align 4
  store ptr null, ptr %rsi_cache.i, align 4
  tail call void @cache_purge(ptr noundef %7) #19
  tail call void @cache_unregister_net(ptr noundef %7, ptr noundef %net) #19
  tail call void @cache_destroy_net(ptr noundef %7, ptr noundef %net) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %8 = load i32, ptr @sunrpc_net_id, align 4
  %call.i4 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %8) #19
  %rsc_cache.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i4, i32 0, i32 3
  %9 = ptrtoint ptr %rsc_cache.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rsc_cache.i, align 4
  store ptr null, ptr %rsc_cache.i, align 4
  tail call void @cache_purge(ptr noundef %10) #19
  tail call void @cache_unregister_net(ptr noundef %10, ptr noundef %net) #19
  tail call void @cache_destroy_net(ptr noundef %10, ptr noundef %net) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_svc_init() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @svc_auth_register(i32 noundef 6, ptr noundef nonnull @svcauthops_gss) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_auth_register(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gss_svc_shutdown() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @svc_auth_unregister(i32 noundef 6) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_auth_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svcauth_gss_accept(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %rq_auth_data = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 37
  %0 = ptrtoint ptr %rq_auth_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_auth_data, align 8
  %2 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_res, align 4
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %6 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %7, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %7, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %9 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %9)
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %10 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %rq_auth_stat, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 32) #22
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.end.out.thread270_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.end.out.thread270_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread270

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %svcdata.0261 = phi ptr [ %call7.i, %if.end.if.end8_crit_edge ], [ %1, %entry.if.end8_crit_edge ]
  %12 = ptrtoint ptr %rq_auth_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %svcdata.0261, ptr %rq_auth_data, align 8
  %verf_start = getelementptr inbounds %struct.gss_svc_data, ptr %svcdata.0261, i32 0, i32 1
  %13 = ptrtoint ptr %verf_start to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %verf_start, align 4
  %rsci10 = getelementptr inbounds %struct.gss_svc_data, ptr %svcdata.0261, i32 0, i32 2
  %14 = ptrtoint ptr %rsci10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rsci10, align 4
  %15 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_arg, align 4
  %add.ptr12 = getelementptr i32, ptr %16, i32 -7
  %iov_len13 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %iov_len13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iov_len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %18)
  %cmp = icmp ult i32 %18, 20
  br i1 %cmp, label %if.end8.out.thread270_crit_edge, label %if.end15

if.end8.out.thread270_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread270

if.end15:                                         ; preds = %if.end8
  %incdec.ptr.i = getelementptr i32, ptr %16, i32 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %21 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr.i, ptr %rq_arg, align 4
  %22 = ptrtoint ptr %iov_len13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iov_len13, align 4
  %sub.i = add i32 %23, -4
  store i32 %sub.i, ptr %iov_len13, align 4
  %incdec.ptr.i226 = getelementptr i32, ptr %16, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr.i, align 4
  store ptr %incdec.ptr.i226, ptr %rq_arg, align 4
  %sub.i228 = add i32 %23, -8
  store i32 %sub.i228, ptr %iov_len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp18.not = icmp eq i32 %25, 1
  br i1 %cmp18.not, label %if.end20, label %if.end15.out.thread270_crit_edge

if.end15.out.thread270_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread270

if.end20:                                         ; preds = %if.end15
  %incdec.ptr.i229 = getelementptr i32, ptr %16, i32 3
  %26 = ptrtoint ptr %incdec.ptr.i226 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.i226, align 4
  %28 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %incdec.ptr.i229, ptr %rq_arg, align 4
  %sub.i231 = add i32 %23, -12
  %29 = ptrtoint ptr %iov_len13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.i231, ptr %iov_len13, align 4
  %gc_proc = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %svcdata.0261, i32 0, i32 1
  %30 = ptrtoint ptr %gc_proc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %gc_proc, align 4
  %31 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i232 = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  store ptr %incdec.ptr.i232, ptr %rq_arg, align 4
  %34 = load i32, ptr %iov_len13, align 4
  %sub.i234 = add i32 %34, -4
  store i32 %sub.i234, ptr %iov_len13, align 4
  %gc_seq = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %svcdata.0261, i32 0, i32 2
  %35 = ptrtoint ptr %gc_seq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %gc_seq, align 4
  %36 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i235 = getelementptr i32, ptr %36, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  store ptr %incdec.ptr.i235, ptr %rq_arg, align 4
  %39 = load i32, ptr %iov_len13, align 4
  %sub.i237 = add i32 %39, -4
  store i32 %sub.i237, ptr %iov_len13, align 4
  %gc_svc = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %svcdata.0261, i32 0, i32 3
  %40 = ptrtoint ptr %gc_svc to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %gc_svc, align 4
  %gc_ctx = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %svcdata.0261, i32 0, i32 4
  %41 = load i32, ptr %iov_len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp.i = icmp ult i32 %41, 4
  br i1 %cmp.i, label %if.end20.out.thread270_crit_edge, label %if.end.i

if.end20.out.thread270_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread270

if.end.i:                                         ; preds = %if.end20
  %42 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %43, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  store ptr %incdec.ptr.i.i, ptr %rq_arg, align 4
  %sub.i.i = add i32 %41, -4
  %46 = ptrtoint ptr %iov_len13 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i.i, ptr %iov_len13, align 4
  %47 = ptrtoint ptr %gc_ctx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %gc_ctx, align 4
  %add.i.i = add i32 %45, 3
  %and.i.i = and i32 %add.i.i, -4
  %48 = load i32, ptr %iov_len13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %and.i.i)
  %cmp4.i = icmp ult i32 %48, %and.i.i
  br i1 %cmp4.i, label %if.end.i.out.thread270_crit_edge, label %if.end27

if.end.i.out.thread270_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread270

if.end27:                                         ; preds = %if.end.i
  %49 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rq_arg, align 4
  %data.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %svcdata.0261, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %data.i, align 4
  %52 = load ptr, ptr %rq_arg, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 %and.i.i
  store ptr %add.ptr.i, ptr %rq_arg, align 4
  %53 = ptrtoint ptr %iov_len13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iov_len13, align 4
  %sub.i239 = sub i32 %54, %and.i.i
  store i32 %sub.i239, ptr %iov_len13, align 4
  %55 = ptrtoint ptr %gc_ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %gc_ctx, align 4
  %57 = add i32 %56, 23
  %add = and i32 %57, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp30.not = icmp eq i32 %20, %add
  br i1 %cmp30.not, label %if.end32, label %if.end27.out.thread270_crit_edge

if.end27.out.thread270_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread270

if.end32:                                         ; preds = %if.end27
  %58 = ptrtoint ptr %gc_proc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gc_proc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp34.not = icmp eq i32 %59, 0
  br i1 %cmp34.not, label %if.end32.if.end37_crit_edge, label %land.lhs.true

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end32
  %rq_proc = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 30
  %60 = ptrtoint ptr %rq_proc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rq_proc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp35.not = icmp eq i32 %61, 0
  br i1 %cmp35.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true.out.thread270_crit_edge

land.lhs.true.out.thread270_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread270

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %if.end32.if.end37_crit_edge
  %62 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %rq_auth_stat, align 4
  %63 = ptrtoint ptr %gc_proc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %gc_proc, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %sw.default [
    i32 1, label %if.end37.sw.bb_crit_edge
    i32 2, label %if.end37.sw.bb_crit_edge277
    i32 0, label %if.end37.sw.bb53_crit_edge
    i32 3, label %if.end37.sw.bb53_crit_edge278
  ]

if.end37.sw.bb53_crit_edge278:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb53

if.end37.sw.bb53_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb53

if.end37.sw.bb_crit_edge277:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

if.end37.sw.bb_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

sw.bb:                                            ; preds = %if.end37.sw.bb_crit_edge, %if.end37.sw.bb_crit_edge277
  %66 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rq_xprt, align 8
  %tobool41.not = icmp eq ptr %67, null
  %xpt_net44 = getelementptr inbounds %struct.svc_xprt, ptr %67, i32 0, i32 19
  %cond48.in = select i1 %tobool41.not, ptr %rq_bc_net, ptr %xpt_net44
  %68 = ptrtoint ptr %cond48.in to i32
  call void @__asan_load4_noabort(i32 %68)
  %cond48 = load ptr, ptr %cond48.in, align 4
  %call49 = tail call fastcc zeroext i1 @use_gss_proxy(ptr noundef %cond48)
  br i1 %call49, label %if.then50, label %if.else

if.then50:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %call51 = tail call fastcc i32 @svcauth_gss_proxy_init(ptr noundef %rqstp, ptr noundef nonnull %svcdata.0261)
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %call52 = tail call fastcc i32 @svcauth_gss_legacy_init(ptr noundef %rqstp, ptr noundef nonnull %svcdata.0261)
  br label %cleanup

sw.bb53:                                          ; preds = %if.end37.sw.bb53_crit_edge, %if.end37.sw.bb53_crit_edge278
  %69 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 13, ptr %rq_auth_stat, align 4
  %rsc_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 3
  %70 = ptrtoint ptr %rsc_cache to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rsc_cache, align 4
  %call56 = tail call fastcc ptr @gss_svc_searchbyctx(ptr noundef %71, ptr noundef %gc_ctx)
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %sw.bb53.out.thread270_crit_edge, label %if.end59

sw.bb53.out.thread270_crit_edge:                  ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread270

if.end59:                                         ; preds = %sw.bb53
  %call60 = tail call fastcc i32 @gss_verify_header(ptr noundef %rqstp, ptr noundef nonnull %call56, ptr noundef %add.ptr12, ptr noundef nonnull %svcdata.0261)
  %72 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call60, label %sw.epilog64 [
    i32 6, label %if.end59.if.then123_crit_edge
    i32 8, label %if.end59.out_crit_edge
  ]

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end59.if.then123_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then123

sw.default:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  %73 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %rq_auth_stat, align 4
  br label %out.thread270

sw.epilog64:                                      ; preds = %if.end59
  %74 = ptrtoint ptr %gc_proc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %gc_proc, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %75, label %sw.epilog64.if.then123_crit_edge [
    i32 3, label %sw.bb66
    i32 0, label %sw.bb78
  ]

sw.epilog64.if.then123_crit_edge:                 ; preds = %sw.epilog64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then123

sw.bb66:                                          ; preds = %sw.epilog64
  %mechctx = getelementptr inbounds %struct.rsc, ptr %call56, i32 0, i32 4
  %77 = ptrtoint ptr %mechctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mechctx, align 8
  %79 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %gc_seq, align 4
  %call68 = tail call fastcc i32 @gss_write_verf(ptr noundef %rqstp, ptr noundef %78, i32 noundef %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %sw.bb66.out_crit_edge

sw.bb66.out_crit_edge:                            ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end71:                                         ; preds = %sw.bb66
  %81 = ptrtoint ptr %rsc_cache to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rsc_cache, align 4
  tail call void @sunrpc_cache_unhash(ptr noundef %82, ptr noundef nonnull %call56) #19
  %83 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iov_len, align 4
  %85 = add i32 %84, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %85)
  %cmp75 = icmp ult i32 %85, -4097
  br i1 %cmp75, label %if.end71.if.then123_crit_edge, label %if.end77

if.end71.if.then123_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then123

if.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #21
  %86 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rq_res, align 4
  %88 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iov_len, align 4
  %add.ptr.i241 = getelementptr i8, ptr %87, i32 %89
  %90 = ptrtoint ptr %add.ptr.i241 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %add.ptr.i241, align 4
  %91 = load i32, ptr %iov_len, align 4
  %add.i242 = add i32 %91, 4
  store i32 %add.i242, ptr %iov_len, align 4
  br label %if.then123

sw.bb78:                                          ; preds = %sw.epilog64
  %92 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 14, ptr %rq_auth_stat, align 4
  %93 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rq_res, align 4
  %95 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %iov_len, align 4
  %add.ptr82 = getelementptr i8, ptr %94, i32 %96
  %97 = ptrtoint ptr %verf_start to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr82, ptr %verf_start, align 4
  %mechctx84 = getelementptr inbounds %struct.rsc, ptr %call56, i32 0, i32 4
  %98 = ptrtoint ptr %mechctx84 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mechctx84, align 8
  %100 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %gc_seq, align 4
  %call86 = tail call fastcc i32 @gss_write_verf(ptr noundef %rqstp, ptr noundef %99, i32 noundef %101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %sw.bb78.out_crit_edge

sw.bb78.out_crit_edge:                            ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end89:                                         ; preds = %sw.bb78
  %rq_cred = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11
  %cred = getelementptr inbounds %struct.rsc, ptr %call56, i32 0, i32 2
  %102 = call ptr @memcpy(ptr %rq_cred, ptr %cred, i32 32)
  %cr_group_info = getelementptr inbounds %struct.rsc, ptr %call56, i32 0, i32 2, i32 2
  %103 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cr_group_info, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %104, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %104, i32 1, i32 3, i32 1) #19
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #19, !srcloc !109
  %106 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %rq_auth_stat, align 4
  %107 = ptrtoint ptr %gc_svc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %gc_svc, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %108, label %if.end89.out_crit_edge [
    i32 1, label %if.end89.sw.epilog112_crit_edge
    i32 2, label %sw.bb94
    i32 3, label %sw.bb102
  ]

if.end89.sw.epilog112_crit_edge:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog112

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

sw.bb94:                                          ; preds = %if.end89
  %110 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rq_res, align 4
  %112 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %iov_len, align 4
  %add.ptr.i244 = getelementptr i8, ptr %111, i32 %113
  %114 = ptrtoint ptr %add.ptr.i244 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %add.ptr.i244, align 4
  %115 = load i32, ptr %iov_len, align 4
  %add.i245 = add i32 %115, 4
  store i32 %add.i245, ptr %iov_len, align 4
  %116 = load ptr, ptr %rq_res, align 4
  %add.ptr.i247 = getelementptr i8, ptr %116, i32 %add.i245
  %117 = ptrtoint ptr %add.ptr.i247 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %add.ptr.i247, align 4
  %118 = load i32, ptr %iov_len, align 4
  %add.i248 = add i32 %118, 4
  store i32 %add.i248, ptr %iov_len, align 4
  %119 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %gc_seq, align 4
  %121 = ptrtoint ptr %mechctx84 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mechctx84, align 8
  %call98 = tail call fastcc i32 @unwrap_integ_data(ptr noundef %rqstp, ptr noundef %rq_arg, i32 noundef %120, ptr noundef %122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %sw.bb94.sw.epilog112.sink.split_crit_edge, label %sw.bb94.if.then123_crit_edge

sw.bb94.if.then123_crit_edge:                     ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then123

sw.bb94.sw.epilog112.sink.split_crit_edge:        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog112.sink.split

sw.bb102:                                         ; preds = %if.end89
  %123 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rq_res, align 4
  %125 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iov_len, align 4
  %add.ptr.i250 = getelementptr i8, ptr %124, i32 %126
  %127 = ptrtoint ptr %add.ptr.i250 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %add.ptr.i250, align 4
  %128 = load i32, ptr %iov_len, align 4
  %add.i251 = add i32 %128, 4
  store i32 %add.i251, ptr %iov_len, align 4
  %129 = load ptr, ptr %rq_res, align 4
  %add.ptr.i253 = getelementptr i8, ptr %129, i32 %add.i251
  %130 = ptrtoint ptr %add.ptr.i253 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %add.ptr.i253, align 4
  %131 = load i32, ptr %iov_len, align 4
  %add.i254 = add i32 %131, 4
  store i32 %add.i254, ptr %iov_len, align 4
  %132 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %gc_seq, align 4
  %134 = ptrtoint ptr %mechctx84 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mechctx84, align 8
  %call106 = tail call fastcc i32 @unwrap_priv_data(ptr noundef %rqstp, ptr noundef %rq_arg, i32 noundef %133, ptr noundef %135)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %sw.bb102.sw.epilog112.sink.split_crit_edge, label %sw.bb102.if.then123_crit_edge

sw.bb102.if.then123_crit_edge:                    ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then123

sw.bb102.sw.epilog112.sink.split_crit_edge:       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog112.sink.split

sw.epilog112.sink.split:                          ; preds = %sw.bb102.sw.epilog112.sink.split_crit_edge, %sw.bb94.sw.epilog112.sink.split_crit_edge
  %.sink = phi i32 [ 400, %sw.bb94.sw.epilog112.sink.split_crit_edge ], [ 800, %sw.bb102.sw.epilog112.sink.split_crit_edge ]
  %rq_auth_slack110 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 39
  %136 = ptrtoint ptr %rq_auth_slack110 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %.sink, ptr %rq_auth_slack110, align 8
  br label %sw.epilog112

sw.epilog112:                                     ; preds = %sw.epilog112.sink.split, %if.end89.sw.epilog112_crit_edge
  %137 = ptrtoint ptr %rsci10 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call56, ptr %rsci10, align 4
  tail call fastcc void @cache_get(ptr noundef nonnull %call56)
  %138 = ptrtoint ptr %mechctx84 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mechctx84, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %gc_svc to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %gc_svc, align 4
  %call118 = tail call i32 @gss_svc_to_pseudoflavor(ptr noundef %141, i32 noundef 0, i32 noundef %143) #19
  %cr_flavor = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %144 = ptrtoint ptr %cr_flavor to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call118, ptr %cr_flavor, align 4
  tail call fastcc void @trace_rpcgss_svc_authenticate(ptr noundef %rqstp, ptr noundef nonnull %svcdata.0261)
  br label %if.then123

out.thread270:                                    ; preds = %sw.default, %sw.bb53.out.thread270_crit_edge, %land.lhs.true.out.thread270_crit_edge, %if.end27.out.thread270_crit_edge, %if.end.i.out.thread270_crit_edge, %if.end20.out.thread270_crit_edge, %if.end15.out.thread270_crit_edge, %if.end8.out.thread270_crit_edge, %if.end.out.thread270_crit_edge
  %145 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rq_res, align 4
  %sub.ptr.lhs.cast.i272 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i273 = ptrtoint ptr %146 to i32
  %sub.ptr.sub.i274 = sub i32 %sub.ptr.lhs.cast.i272, %sub.ptr.rhs.cast.i273
  %147 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %sub.ptr.sub.i274, ptr %iov_len, align 4
  br label %cleanup

out:                                              ; preds = %if.end89.out_crit_edge, %sw.bb78.out_crit_edge, %sw.bb66.out_crit_edge, %if.end59.out_crit_edge
  %148 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rq_res, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %149 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %150 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %sub.ptr.sub.i, ptr %iov_len, align 4
  br label %if.then123

if.then123:                                       ; preds = %out, %sw.epilog112, %sw.bb102.if.then123_crit_edge, %sw.bb94.if.then123_crit_edge, %if.end77, %if.end71.if.then123_crit_edge, %sw.epilog64.if.then123_crit_edge, %if.end59.if.then123_crit_edge
  %ret.0268 = phi i32 [ 8, %out ], [ 7, %if.end59.if.then123_crit_edge ], [ 7, %if.end71.if.then123_crit_edge ], [ 1, %sw.bb94.if.then123_crit_edge ], [ 1, %sw.bb102.if.then123_crit_edge ], [ 1, %sw.epilog64.if.then123_crit_edge ], [ 10, %if.end77 ], [ 5, %sw.epilog112 ]
  %151 = ptrtoint ptr %rsc_cache to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rsc_cache, align 4
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %call56, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #19
  %153 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %154)
  %cmp.i257 = icmp ult i32 %154, 3
  br i1 %cmp.i257, label %land.lhs.true.i, label %if.then123.if.end.i258_crit_edge

if.then123.if.end.i258_crit_edge:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i258

land.lhs.true.i:                                  ; preds = %if.then123
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %call56, i32 0, i32 1
  %155 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %152, i32 0, i32 18
  %157 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %156, i64 %158)
  %cmp1.i = icmp slt i64 %156, %158
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i258_crit_edge

land.lhs.true.i.if.end.i258_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i258

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %159 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %156, ptr %nextcheck.i, align 8
  br label %if.end.i258

if.end.i258:                                      ; preds = %if.then.i, %land.lhs.true.i.if.end.i258_crit_edge, %if.then123.if.end.i258_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %152, i32 0, i32 5
  %160 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #19
  %162 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #19, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #19
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !113
  tail call void %161(ptr noundef %ref.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %out.thread270, %if.else, %if.then50
  %retval.0 = phi i32 [ %call51, %if.then50 ], [ %call52, %if.else ], [ 8, %out.thread270 ], [ %ret.0268, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0268, %if.then10.i.i.i.i.i ], [ %ret.0268, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svcauth_gss_release(ptr noundef %rqstp) #2 align 64 {
entry:
  %integ_buf.i = alloca %struct.xdr_buf, align 4
  %mic.i = alloca %struct.xdr_netobj, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_auth_data = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 37
  %0 = ptrtoint ptr %rq_auth_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_auth_data, align 8
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %3, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %5 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %5)
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %entry.out_err_crit_edge, label %if.end

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end:                                           ; preds = %entry
  %gc_proc = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %gc_proc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gc_proc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end4, label %if.end.out_err_crit_edge

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end4:                                          ; preds = %if.end
  %verf_start = getelementptr inbounds %struct.gss_svc_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %verf_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %verf_start, align 4
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.end4.out_err_crit_edge, label %if.end7

if.end4.out_err_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end7:                                          ; preds = %if.end4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iov_len.i, align 4
  %page_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 5
  %12 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_len.i, align 4
  %add.i = add i32 %13, %11
  %iov_len2.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len2.i, align 4
  %add3.i = add i32 %add.i, %15
  %len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 8
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add3.i, ptr %len, align 4
  %gc_svc = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %gc_svc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gc_svc, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %18, label %if.end7.out_err_crit_edge [
    i32 3, label %sw.bb13
    i32 2, label %sw.bb
  ]

if.end7.out_err_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

sw.bb:                                            ; preds = %if.end7
  %20 = ptrtoint ptr %rq_auth_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq_auth_data, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %integ_buf.i) #19
  %22 = call ptr @memset(ptr %integ_buf.i, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic.i) #19
  %23 = ptrtoint ptr %mic.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %mic.i, align 4, !annotation !114
  %24 = getelementptr inbounds %struct.xdr_netobj, ptr %mic.i, i32 0, i32 1
  %verf_start.i.i = getelementptr inbounds %struct.gss_svc_data, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %verf_start.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %verf_start.i.i, align 4
  store ptr null, ptr %verf_start.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %26, i32 -1
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.svcauth_gss_wrap_resp_integ.exit_crit_edge

sw.bb.svcauth_gss_wrap_resp_integ.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %svcauth_gss_wrap_resp_integ.exit

if.end.i.i:                                       ; preds = %sw.bb
  %add.ptr2.i.i = getelementptr i32, ptr %26, i32 1
  %incdec.ptr.i.i = getelementptr i32, ptr %26, i32 2
  %29 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr2.i.i, align 4
  %add.i.i = add i32 %30, 3
  %shr.i.i = lshr i32 %add.i.i, 2
  %add.ptr3.i.i = getelementptr i32, ptr %incdec.ptr.i.i, i32 %shr.i.i
  %add.ptr4.i.i = getelementptr i32, ptr %add.ptr3.i.i, i32 2
  %31 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr4.i.i, align 4
  %33 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %add.ptr3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp5.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp5.not.i.i, label %svcauth_gss_prepare_to_wrap.exit.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iov_len.i, align 4
  %sub.i.i = add i32 %35, -8
  store i32 %sub.i.i, ptr %iov_len.i, align 4
  br label %svcauth_gss_wrap_resp_integ.exit

svcauth_gss_prepare_to_wrap.exit.i:               ; preds = %if.end.i.i
  %incdec.ptr8.i.i = getelementptr i32, ptr %add.ptr3.i.i, i32 1
  %cmp.i = icmp eq ptr %incdec.ptr8.i.i, null
  br i1 %cmp.i, label %svcauth_gss_prepare_to_wrap.exit.i.svcauth_gss_wrap_resp_integ.exit_crit_edge, label %if.end.i

svcauth_gss_prepare_to_wrap.exit.i.svcauth_gss_wrap_resp_integ.exit_crit_edge: ; preds = %svcauth_gss_prepare_to_wrap.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %svcauth_gss_wrap_resp_integ.exit

if.end.i:                                         ; preds = %svcauth_gss_prepare_to_wrap.exit.i
  %add.ptr.i = getelementptr i32, ptr %incdec.ptr8.i.i, i32 1
  %36 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rq_res, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %sub.i = sub i32 %39, %sub.ptr.sub.i
  %and.i = and i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.svcauth_gss_wrap_resp_integ.exit_crit_edge

if.end.i.svcauth_gss_wrap_resp_integ.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %svcauth_gss_wrap_resp_integ.exit

if.end2.i:                                        ; preds = %if.end.i
  %40 = ptrtoint ptr %incdec.ptr8.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i, ptr %incdec.ptr8.i.i, align 4
  %gc_seq.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %21, i32 0, i32 2
  %41 = ptrtoint ptr %gc_seq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gc_seq.i, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %add.ptr.i, align 4
  %call4.i = call i32 @xdr_buf_subsegment(ptr noundef %rq_res, ptr noundef nonnull %integ_buf.i, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end42.i, label %land.end.i

land.end.i:                                       ; preds = %if.end2.i
  %.b124.i = load i1, ptr @svcauth_gss_wrap_resp_integ.__already_done, align 1
  br i1 %.b124.i, label %land.end.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge, label %if.then12.i, !prof !112

land.end.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %svcauth_gss_wrap_resp_integ.exit.thread

if.then12.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @svcauth_gss_wrap_resp_integ.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1734, i32 noundef 9, ptr noundef null) #19
  br label %svcauth_gss_wrap_resp_integ.exit.thread

if.end42.i:                                       ; preds = %if.end2.i
  %tail.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 1
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i, align 4
  %cmp45.i = icmp eq ptr %45, null
  br i1 %cmp45.i, label %if.then46.i, label %if.end42.i.if.end65.i_crit_edge

if.end42.i.if.end65.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end65.i

if.then46.i:                                      ; preds = %if.end42.i
  %46 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iov_len.i, align 4
  %48 = add i32 %47, -3697
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %48)
  %cmp49.i = icmp ult i32 %48, -4097
  br i1 %cmp49.i, label %if.then46.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge, label %if.end51.i

if.then46.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %svcauth_gss_wrap_resp_integ.exit.thread

if.end51.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #21
  %49 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rq_res, align 4
  %add.ptr58.i = getelementptr i8, ptr %50, i32 %47
  %51 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr58.i, ptr %tail.i, align 4
  %52 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %iov_len2.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end51.i, %if.end42.i.if.end65.i_crit_edge
  %53 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i, align 4
  %55 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iov_len2.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %54, i32 %56
  %add.ptr71.i = getelementptr i8, ptr %add.ptr70.i, i32 4
  %57 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr71.i, ptr %24, align 4
  %rsci.i = getelementptr inbounds %struct.gss_svc_data, ptr %21, i32 0, i32 2
  %58 = ptrtoint ptr %rsci.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rsci.i, align 4
  %mechctx.i = getelementptr inbounds %struct.rsc, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %mechctx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mechctx.i, align 8
  %call72.i = call i32 @gss_get_mic(ptr noundef %61, ptr noundef nonnull %integ_buf.i, ptr noundef nonnull %mic.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %if.end65.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge

if.end65.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %svcauth_gss_wrap_resp_integ.exit.thread

if.end75.i:                                       ; preds = %if.end65.i
  %62 = ptrtoint ptr %mic.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mic.i, align 4
  %64 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i, align 4
  %66 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %iov_len2.i, align 4
  %add.ptr.i126.i = getelementptr i8, ptr %65, i32 %67
  %68 = ptrtoint ptr %add.ptr.i126.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %add.ptr.i126.i, align 4
  %69 = load i32, ptr %iov_len2.i, align 4
  %add.i127.i = add i32 %69, 4
  store i32 %add.i127.i, ptr %iov_len2.i, align 4
  %70 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %24, align 4
  %72 = load i32, ptr %mic.i, align 4
  %add.ptr79.i = getelementptr i8, ptr %71, i32 %72
  %add.i128.i = add i32 %72, 3
  %and.i.i = and i32 %add.i128.i, -4
  %sub83.i = sub i32 %and.i.i, %72
  %73 = call ptr @memset(ptr %add.ptr79.i, i32 0, i32 %sub83.i)
  %74 = load i32, ptr %mic.i, align 4
  %add85.i = add i32 %74, 3
  %shr.i = and i32 %add85.i, -4
  %75 = load i32, ptr %iov_len2.i, align 4
  %add87.i = add i32 %shr.i, %75
  store i32 %add87.i, ptr %iov_len2.i, align 4
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %add93.i = add i32 %77, %shr.i
  store i32 %add93.i, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add87.i)
  %cmp95.i = icmp ugt i32 %add87.i, 4096
  br i1 %cmp95.i, label %if.end75.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge, label %if.end75.i.svcauth_gss_wrap_resp_integ.exit_crit_edge

if.end75.i.svcauth_gss_wrap_resp_integ.exit_crit_edge: ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %svcauth_gss_wrap_resp_integ.exit

if.end75.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge: ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %svcauth_gss_wrap_resp_integ.exit.thread

svcauth_gss_wrap_resp_integ.exit.thread:          ; preds = %if.end75.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge, %if.end65.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge, %if.then46.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge, %if.then12.i, %land.end.i.svcauth_gss_wrap_resp_integ.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic.i) #19
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %integ_buf.i) #19
  br label %out_err

svcauth_gss_wrap_resp_integ.exit:                 ; preds = %if.end75.i.svcauth_gss_wrap_resp_integ.exit_crit_edge, %if.end.i.svcauth_gss_wrap_resp_integ.exit_crit_edge, %svcauth_gss_prepare_to_wrap.exit.i.svcauth_gss_wrap_resp_integ.exit_crit_edge, %if.then6.i.i, %sw.bb.svcauth_gss_wrap_resp_integ.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic.i) #19
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %integ_buf.i) #19
  br label %out_err

sw.bb13:                                          ; preds = %if.end7
  %78 = ptrtoint ptr %rq_auth_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rq_auth_data, align 8
  %verf_start.i.i80 = getelementptr inbounds %struct.gss_svc_data, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %verf_start.i.i80 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %verf_start.i.i80, align 4
  store ptr null, ptr %verf_start.i.i80, align 4
  %add.ptr.i.i81 = getelementptr i32, ptr %81, i32 -1
  %82 = ptrtoint ptr %add.ptr.i.i81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.not.i.i82 = icmp eq i32 %83, 0
  br i1 %cmp.not.i.i82, label %if.end.i.i90, label %sw.bb13.out_err_crit_edge

sw.bb13.out_err_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end.i.i90:                                     ; preds = %sw.bb13
  %add.ptr2.i.i83 = getelementptr i32, ptr %81, i32 1
  %incdec.ptr.i.i84 = getelementptr i32, ptr %81, i32 2
  %84 = ptrtoint ptr %add.ptr2.i.i83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr2.i.i83, align 4
  %add.i.i85 = add i32 %85, 3
  %shr.i.i86 = lshr i32 %add.i.i85, 2
  %add.ptr3.i.i87 = getelementptr i32, ptr %incdec.ptr.i.i84, i32 %shr.i.i86
  %add.ptr4.i.i88 = getelementptr i32, ptr %add.ptr3.i.i87, i32 2
  %86 = ptrtoint ptr %add.ptr4.i.i88 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr4.i.i88, align 4
  %88 = ptrtoint ptr %add.ptr3.i.i87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %add.ptr3.i.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp5.not.i.i89 = icmp eq i32 %87, 0
  br i1 %cmp5.not.i.i89, label %svcauth_gss_prepare_to_wrap.exit.i95, label %if.end.i.i90.cleanup.sink.split.i_crit_edge

if.end.i.i90.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i

svcauth_gss_prepare_to_wrap.exit.i95:             ; preds = %if.end.i.i90
  %incdec.ptr8.i.i93 = getelementptr i32, ptr %add.ptr3.i.i87, i32 1
  %cmp.i94 = icmp eq ptr %incdec.ptr8.i.i93, null
  br i1 %cmp.i94, label %svcauth_gss_prepare_to_wrap.exit.i95.out_err_crit_edge, label %if.end.i102

svcauth_gss_prepare_to_wrap.exit.i95.out_err_crit_edge: ; preds = %svcauth_gss_prepare_to_wrap.exit.i95
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end.i102:                                      ; preds = %svcauth_gss_prepare_to_wrap.exit.i95
  %incdec.ptr.i = getelementptr i32, ptr %incdec.ptr8.i.i93, i32 1
  %89 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rq_res, align 4
  %sub.ptr.lhs.cast.i96 = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.rhs.cast.i97 = ptrtoint ptr %90 to i32
  %sub.ptr.sub.i98 = sub i32 %sub.ptr.lhs.cast.i96, %sub.ptr.rhs.cast.i97
  %gc_seq.i99 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %79, i32 0, i32 2
  %91 = ptrtoint ptr %gc_seq.i99 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %gc_seq.i99, align 4
  %93 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %incdec.ptr.i, align 4
  %pages.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 3
  %94 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pages.i, align 4
  %tail.i100 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 1
  %96 = ptrtoint ptr %tail.i100 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tail.i100, align 4
  %tobool.not.i101 = icmp eq ptr %97, null
  br i1 %tobool.not.i101, label %if.end.i102.if.then51.i_crit_edge, label %if.then4.i

if.end.i102.if.then51.i_crit_edge:                ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then51.i

if.then4.i:                                       ; preds = %if.end.i102
  %98 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rq_res, align 4
  %add.ptr.i103 = getelementptr i8, ptr %99, i32 4096
  %cmp11.not.i = icmp uge ptr %97, %add.ptr.i103
  %cmp20.i = icmp ult ptr %97, %99
  %or.cond.i = or i1 %cmp20.i, %cmp11.not.i
  br i1 %or.cond.i, label %if.then4.i.out_err_crit_edge, label %if.end22.i

if.then4.i.out_err_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end22.i:                                       ; preds = %if.then4.i
  %100 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iov_len2.i, align 4
  %102 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iov_len.i, align 4
  %add.i105 = add i32 %101, -3297
  %104 = add i32 %add.i105, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %104)
  %cmp29.i = icmp ult i32 %104, -4097
  br i1 %cmp29.i, label %if.end22.i.out_err_crit_edge, label %if.end46.i

if.end22.i.out_err_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end46.i:                                       ; preds = %if.end22.i
  %add.ptr35.i = getelementptr i8, ptr %97, i32 400
  %105 = call ptr @memmove(ptr %add.ptr35.i, ptr %97, i32 %101)
  %106 = ptrtoint ptr %tail.i100 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tail.i100, align 4
  %add.ptr45.i = getelementptr i8, ptr %107, i32 400
  store ptr %add.ptr45.i, ptr %tail.i100, align 4
  %cmp50.i = icmp eq ptr %add.ptr45.i, null
  br i1 %cmp50.i, label %if.end46.i.if.then51.i_crit_edge, label %if.end46.i.if.end73.i_crit_edge

if.end46.i.if.end73.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end73.i

if.end46.i.if.then51.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then51.i

if.then51.i:                                      ; preds = %if.end46.i.if.then51.i_crit_edge, %if.end.i102.if.then51.i_crit_edge
  %108 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %iov_len.i, align 4
  %110 = add i32 %109, -3297
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %110)
  %cmp56.i = icmp ult i32 %110, -4097
  br i1 %cmp56.i, label %if.then51.i.out_err_crit_edge, label %if.end58.i

if.then51.i.out_err_crit_edge:                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end58.i:                                       ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #21
  %111 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rq_res, align 4
  %add.ptr65.i = getelementptr i8, ptr %112, i32 %109
  %add.ptr66.i = getelementptr i8, ptr %add.ptr65.i, i32 400
  %113 = ptrtoint ptr %tail.i100 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %add.ptr66.i, ptr %tail.i100, align 4
  %114 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %iov_len2.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.end58.i, %if.end46.i.if.end73.i_crit_edge
  %rsci.i106 = getelementptr inbounds %struct.gss_svc_data, ptr %79, i32 0, i32 2
  %115 = ptrtoint ptr %rsci.i106 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rsci.i106, align 4
  %mechctx.i107 = getelementptr inbounds %struct.rsc, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %mechctx.i107 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mechctx.i107, align 8
  %call74.i = tail call i32 @gss_wrap(ptr noundef %118, i32 noundef %sub.ptr.sub.i98, ptr noundef %rq_res, ptr noundef %95) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end73.i.out_err_crit_edge

if.end73.i.out_err_crit_edge:                     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_err

if.end77.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #21
  %119 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len, align 4
  %sub.i108 = sub i32 %120, %sub.ptr.sub.i98
  %121 = ptrtoint ptr %incdec.ptr8.i.i93 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub.i108, ptr %incdec.ptr8.i.i93, align 4
  %122 = load i32, ptr %len, align 4
  %123 = xor i32 %sub.ptr.sub.i98, -1
  %sub81.i = add i32 %122, %123
  %and.i109 = and i32 %sub81.i, 3
  %sub82.i = xor i32 %and.i109, 3
  %124 = ptrtoint ptr %tail.i100 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tail.i100, align 4
  %126 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %iov_len2.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %125, i32 %127
  %128 = call ptr @memset(ptr %add.ptr89.i, i32 0, i32 %sub82.i)
  %129 = load i32, ptr %iov_len2.i, align 4
  %add93.i110 = add i32 %129, %sub82.i
  store i32 %add93.i110, ptr %iov_len2.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end77.i, %if.end.i.i90.cleanup.sink.split.i_crit_edge
  %iov_len.i.sink144.i = phi ptr [ %len, %if.end77.i ], [ %iov_len.i, %if.end.i.i90.cleanup.sink.split.i_crit_edge ]
  %.sink143.i = phi i32 [ %sub82.i, %if.end77.i ], [ -8, %if.end.i.i90.cleanup.sink.split.i_crit_edge ]
  %130 = ptrtoint ptr %iov_len.i.sink144.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %iov_len.i.sink144.i, align 4
  %sub.i.i111 = add i32 %131, %.sink143.i
  store i32 %sub.i.i111, ptr %iov_len.i.sink144.i, align 4
  br label %out_err

out_err:                                          ; preds = %cleanup.sink.split.i, %if.end73.i.out_err_crit_edge, %if.then51.i.out_err_crit_edge, %if.end22.i.out_err_crit_edge, %if.then4.i.out_err_crit_edge, %svcauth_gss_prepare_to_wrap.exit.i95.out_err_crit_edge, %sw.bb13.out_err_crit_edge, %svcauth_gss_wrap_resp_integ.exit, %svcauth_gss_wrap_resp_integ.exit.thread, %if.end7.out_err_crit_edge, %if.end4.out_err_crit_edge, %if.end.out_err_crit_edge, %entry.out_err_crit_edge
  %stat.0 = phi i32 [ -22, %svcauth_gss_wrap_resp_integ.exit.thread ], [ 0, %cleanup.sink.split.i ], [ 0, %svcauth_gss_prepare_to_wrap.exit.i95.out_err_crit_edge ], [ 0, %sw.bb13.out_err_crit_edge ], [ 0, %svcauth_gss_wrap_resp_integ.exit ], [ 0, %if.end7.out_err_crit_edge ], [ 0, %if.end4.out_err_crit_edge ], [ 0, %if.end.out_err_crit_edge ], [ 0, %entry.out_err_crit_edge ], [ -12, %if.end73.i.out_err_crit_edge ], [ -12, %if.then51.i.out_err_crit_edge ], [ -12, %if.end22.i.out_err_crit_edge ], [ -22, %if.then4.i.out_err_crit_edge ]
  %rq_client = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %132 = ptrtoint ptr %rq_client to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rq_client, align 8
  %tobool18.not = icmp eq ptr %133, null
  br i1 %tobool18.not, label %out_err.if.end21_crit_edge, label %if.then19

out_err.if.end21_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.then19:                                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #21
  call void @auth_domain_put(ptr noundef nonnull %133) #19
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %out_err.if.end21_crit_edge
  %134 = ptrtoint ptr %rq_client to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %rq_client, align 8
  %rq_gssclient = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 44
  %135 = ptrtoint ptr %rq_gssclient to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rq_gssclient, align 4
  %tobool23.not = icmp eq ptr %136, null
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  call void @auth_domain_put(ptr noundef nonnull %136) #19
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %137 = ptrtoint ptr %rq_gssclient to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %rq_gssclient, align 4
  %cr_group_info = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 2
  %138 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cr_group_info, align 4
  %tobool28.not = icmp eq ptr %139, null
  br i1 %tobool28.not, label %if.end26.if.end37_crit_edge, label %do.body

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

do.body:                                          ; preds = %if.end26
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %139, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !115
  call void @llvm.prefetch.p0(ptr nonnull %139, i32 1, i32 3, i32 1) #19
  %140 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %139, ptr nonnull %139, i32 1, ptr nonnull elementtype(i32) %139) #19, !srcloc !116
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %140, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then33, label %do.body.if.end37_crit_edge

do.body.if.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %141 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cr_group_info, align 4
  call void @groups_free(ptr noundef %142) #19
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.body.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %143 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %cr_group_info, align 4
  br i1 %tobool2.not, label %if.end37.if.end45_crit_edge, label %land.lhs.true

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end37
  %rsci = getelementptr inbounds %struct.gss_svc_data, ptr %1, i32 0, i32 2
  %144 = ptrtoint ptr %rsci to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rsci, align 4
  %tobool41.not = icmp eq ptr %145, null
  br i1 %tobool41.not, label %land.lhs.true.if.end45_crit_edge, label %if.then42

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end45

if.then42:                                        ; preds = %land.lhs.true
  %rsc_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 3
  %146 = ptrtoint ptr %rsc_cache to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rsc_cache, align 4
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %145, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #19
  %148 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %149)
  %cmp.i112 = icmp ult i32 %149, 3
  br i1 %cmp.i112, label %land.lhs.true.i, label %if.then42.if.end.i113_crit_edge

if.then42.if.end.i113_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i113

land.lhs.true.i:                                  ; preds = %if.then42
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %145, i32 0, i32 1
  %150 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %147, i32 0, i32 18
  %152 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %151, i64 %153)
  %cmp1.i = icmp slt i64 %151, %153
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i113_crit_edge

land.lhs.true.i.if.end.i113_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i113

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %154 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %151, ptr %nextcheck.i, align 8
  br label %if.end.i113

if.end.i113:                                      ; preds = %if.then.i, %land.lhs.true.i.if.end.i113_crit_edge, %if.then42.if.end.i113_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %147, i32 0, i32 5
  %155 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !110
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #19
  %157 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #19, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %157, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cache_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.cache_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cache_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #19
  br label %cache_put.exit

if.then.i.i:                                      ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !113
  call void %156(ptr noundef %ref.i) #19
  br label %cache_put.exit

cache_put.exit:                                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cache_put.exit_crit_edge
  %158 = ptrtoint ptr %rsci to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %rsci, align 4
  br label %if.end45

if.end45:                                         ; preds = %cache_put.exit, %land.lhs.true.if.end45_crit_edge, %if.end37.if.end45_crit_edge
  ret i32 %stat.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svcauth_gss_domain_release(ptr noundef %dom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr inbounds %struct.auth_domain, ptr %dom, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @svcauth_gss_domain_release_rcu) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svcauth_gss_set_client(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_auth_data = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 37
  %0 = ptrtoint ptr %rq_auth_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_auth_data, align 8
  %rsci1 = getelementptr inbounds %struct.gss_svc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rsci1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsci1, align 4
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %4 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rq_auth_stat, align 4
  %mechctx = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %mechctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mechctx, align 8
  %gc_svc = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %gc_svc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gc_svc, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %call.i = tail call ptr @gss_service_to_auth_domain_name(ptr noundef %10, i32 noundef %8) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %find_gss_auth_domain.exit.thread, label %find_gss_auth_domain.exit

find_gss_auth_domain.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %rq_gssclient21 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 44
  %11 = ptrtoint ptr %rq_gssclient21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rq_gssclient21, align 4
  br label %cleanup

find_gss_auth_domain.exit:                        ; preds = %entry
  %call1.i = tail call ptr @auth_domain_find(ptr noundef nonnull %call.i) #19
  %rq_gssclient = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 44
  %12 = ptrtoint ptr %rq_gssclient to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i, ptr %rq_gssclient, align 4
  %cmp = icmp eq ptr %call1.i, null
  br i1 %cmp, label %find_gss_auth_domain.exit.cleanup_crit_edge, label %if.end

find_gss_auth_domain.exit.cleanup_crit_edge:      ; preds = %find_gss_auth_domain.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %find_gss_auth_domain.exit
  %call3 = tail call i32 @svcauth_unix_set_client(ptr noundef %rqstp) #19
  %13 = and i32 %call3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %switch = icmp eq i32 %13, 6
  br i1 %switch, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rq_auth_stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %find_gss_auth_domain.exit.cleanup_crit_edge, %find_gss_auth_domain.exit.thread
  %retval.0 = phi i32 [ 5, %if.end7 ], [ 8, %find_gss_auth_domain.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 8, %find_gss_auth_domain.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.5) #19
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !119
  %8 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @use_gss_proxy(ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %use_gss_proxy = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 17
  %1 = ptrtoint ptr %use_gss_proxy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %use_gss_proxy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %3 = load i32, ptr @sunrpc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %3) #19
  %use_gss_proxy.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_gss_proxy.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %use_gss_proxy.i, i32 1, i32 3, i32 1) #19
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %use_gss_proxy.i, i32 -1, i32 0) #19, !srcloc !121
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %set_gss_proxy.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i

set_gss_proxy.exit:                               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !122
  br label %if.end

if.end:                                           ; preds = %set_gss_proxy.exit, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %use_gss_proxy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use_gss_proxy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svcauth_gss_proxy_init(ptr noundef %rqstp, ptr nocapture noundef readonly %gc) unnamed_addr #2 align 64 {
entry:
  %rsci.i = alloca %struct.rsc, align 8
  %expiry.i = alloca i64, align 8
  %boot.i = alloca %struct.timespec64, align 8
  %cli_handle = alloca %struct.xdr_netobj, align 8
  %ud = alloca %struct.gssp_upcall_data, align 4
  %handle = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cli_handle) #19
  %0 = ptrtoint ptr %cli_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cli_handle, align 8, !annotation !114
  %1 = getelementptr inbounds %struct.xdr_netobj, ptr %cli_handle, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %ud) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %handle) #19
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %handle, align 8, !annotation !114
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %3 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %4, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %4, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %6 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %6)
  %7 = call ptr @memset(ptr %ud, i32 0, i32 116)
  %in_token = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 1
  %rq_arg.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rq_auth_stat.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %8 = ptrtoint ptr %rq_auth_stat.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %rq_auth_stat.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp.i.i = icmp ult i32 %10, 8
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %11 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_arg.i, align 4
  %incdec.ptr.i.i.i = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  store ptr %incdec.ptr.i.i.i, ptr %rq_arg.i, align 4
  %sub.i.i.i = add i32 %10, -4
  %15 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i.i.i, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp1.not.i.i, label %if.end3.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  %incdec.ptr.i22.i.i = getelementptr i32, ptr %12, i32 2
  %16 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %18 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %incdec.ptr.i22.i.i, ptr %rq_arg.i, align 4
  %sub.i24.i.i = add i32 %10, -8
  %19 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i24.i.i, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %if.end3.i.i.cleanup_crit_edge

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %20 = ptrtoint ptr %rq_auth_stat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %rq_auth_stat.i, align 4
  %gc_proc.i.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 1
  %21 = ptrtoint ptr %gc_proc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gc_proc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp8.i.i = icmp eq i32 %22, 1
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %if.end7.i.i.if.end11.i.i_crit_edge

if.end7.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i.i

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %gc_ctx.i.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 4
  %23 = ptrtoint ptr %gc_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gc_ctx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp9.not.i.i, label %land.lhs.true.i.i.if.end11.i.i_crit_edge, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i.i.if.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %land.lhs.true.i.i.if.end11.i.i_crit_edge, %if.end7.i.i.if.end11.i.i_crit_edge
  %gc_ctx12.i.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 4
  %data.i.i.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %27 = ptrtoint ptr %gc_ctx12.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gc_ctx12.i.i, align 4
  %29 = ptrtoint ptr %ud to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i.i, label %dup_netobj.exit.thread.i.i, label %dup_netobj.exit.i.i

dup_netobj.exit.thread.i.i:                       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %data.i.i26.i.i = getelementptr inbounds %struct.xdr_netobj, ptr %ud, i32 0, i32 1
  %30 = ptrtoint ptr %data.i.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %data.i.i26.i.i, align 4
  br label %if.end.i

dup_netobj.exit.i.i:                              ; preds = %if.end11.i.i
  %call.i.i.i.i = tail call ptr @kmemdup(ptr noundef %26, i32 noundef %28, i32 noundef 3264) #19
  %data.i.i.i.i = getelementptr inbounds %struct.xdr_netobj, ptr %ud, i32 0, i32 1
  %31 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tobool4.not.i.i.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool4.not.i.i.not.i.i, label %dup_netobj.exit.i.i.cleanup_crit_edge, label %dup_netobj.exit.i.i.if.end.i_crit_edge

dup_netobj.exit.i.i.if.end.i_crit_edge:           ; preds = %dup_netobj.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

dup_netobj.exit.i.i.cleanup_crit_edge:            ; preds = %dup_netobj.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %dup_netobj.exit.i.i.if.end.i_crit_edge, %dup_netobj.exit.thread.i.i
  %32 = ptrtoint ptr %rq_auth_stat.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %rq_auth_stat.i, align 4
  %33 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rq_arg.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %34, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  store ptr %incdec.ptr.i.i, ptr %rq_arg.i, align 4
  %37 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iov_len.i.i, align 4
  %sub.i.i = add i32 %38, -4
  store i32 %sub.i.i, ptr %iov_len.i.i, align 4
  %page_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %39 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %page_len.i, align 4
  %add.i = add i32 %40, %sub.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add.i)
  %cmp.i = icmp ugt i32 %36, %add.i
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %sub.i = add i32 %36, 4095
  %div115.i = lshr i32 %sub.i, 12
  %41 = shl nuw nsw i32 %div115.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #24
  %42 = ptrtoint ptr %in_token to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8.i.i.i, ptr %in_token, align 4
  %tobool9.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end11.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11.i:                                       ; preds = %if.end4.i
  %page_base.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %page_base.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %page_base.i, align 4
  %page_len12.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %page_len12.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %36, ptr %page_len12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %cmp13124.not.i = icmp ult i32 %sub.i, 4096
  br i1 %cmp13124.not.i, label %if.end11.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end11.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div115.i, i32 1) #19
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0125.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0125.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %45 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %in_token, align 4
  %arrayidx16.i = getelementptr ptr, ptr %46, i32 %i.0125.i
  %47 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call38.i.i.i.i, ptr %arrayidx16.i, align 4
  %48 = load ptr, ptr %in_token, align 4
  %arrayidx18.i = getelementptr ptr, ptr %48, i32 %i.0125.i
  %49 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %50, null
  br i1 %tobool19.not.i, label %if.then20.i, label %for.cond.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @gss_free_in_token_pages(ptr noundef %in_token) #19
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %51 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iov_len.i.i, align 4
  %53 = tail call i32 @llvm.umin.i32(i32 %36, i32 %52) #19
  %54 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %in_token, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call26.i = tail call ptr @page_address(ptr noundef %57) #19
  %58 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rq_arg.i, align 4
  %60 = call ptr @memcpy(ptr %call26.i, ptr %59, i32 %53)
  %sub27.i = sub i32 %36, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27.i)
  %tobool30.not126.i = icmp eq i32 %sub27.i, 0
  br i1 %tobool30.not126.i, label %for.end.i.if.end_crit_edge, label %while.body.lr.ph.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

while.body.lr.ph.i:                               ; preds = %for.end.i
  %page_base29.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 4
  %61 = ptrtoint ptr %page_base29.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %page_base29.i, align 8
  %pages51.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 3
  %63 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %in_token, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %from_offs.0129.i = phi i32 [ %62, %while.body.lr.ph.i ], [ %add56.i, %while.body.i.while.body.i_crit_edge ]
  %to_offs.0128.i = phi i32 [ %53, %while.body.lr.ph.i ], [ %add55.i, %while.body.i.while.body.i_crit_edge ]
  %inlen.0127.i = phi i32 [ %sub27.i, %while.body.lr.ph.i ], [ %sub57.i, %while.body.i.while.body.i_crit_edge ]
  %shr.i = lshr i32 %to_offs.0128.i, 12
  %shr31.i = lshr i32 %from_offs.0129.i, 12
  %and.i = and i32 %to_offs.0128.i, 4095
  %and32.i = and i32 %from_offs.0129.i, 4095
  %65 = tail call i32 @llvm.umax.i32(i32 %and32.i, i32 %and.i) #19
  %cond40.i = sub nuw nsw i32 4096, %65
  %66 = tail call i32 @llvm.umin.i32(i32 %inlen.0127.i, i32 %cond40.i) #19
  %arrayidx48.i = getelementptr ptr, ptr %64, i32 %shr.i
  %67 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx48.i, align 4
  %call49.i = tail call ptr @page_address(ptr noundef %68) #19
  %add.ptr.i = getelementptr i8, ptr %call49.i, i32 %and.i
  %69 = ptrtoint ptr %pages51.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pages51.i, align 4
  %arrayidx52.i = getelementptr ptr, ptr %70, i32 %shr31.i
  %71 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx52.i, align 4
  %call53.i = tail call ptr @page_address(ptr noundef %72) #19
  %add.ptr54.i = getelementptr i8, ptr %call53.i, i32 %and32.i
  %73 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr54.i, i32 %66)
  %add55.i = add i32 %66, %to_offs.0128.i
  %add56.i = add i32 %66, %from_offs.0129.i
  %sub57.i = sub i32 %inlen.0127.i, %66
  %tobool30.not.i = icmp eq i32 %sub57.i, 0
  br i1 %tobool30.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  %call4 = call i32 @gssp_accept_sec_context_upcall(ptr noundef %cond, ptr noundef nonnull %ud) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end7:                                          ; preds = %if.end
  %major_status = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 7
  %74 = ptrtoint ptr %major_status to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %major_status, align 4
  %minor_status = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 8
  %76 = ptrtoint ptr %minor_status to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %minor_status, align 4
  call fastcc void @trace_rpcgss_svc_accept_upcall(ptr noundef %rqstp, i32 noundef %75, i32 noundef %77)
  %78 = ptrtoint ptr %major_status to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %major_status, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %79, label %if.end7.out_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb9
  ]

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %out_handle = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 2
  %81 = ptrtoint ptr %out_handle to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %out_handle, align 4
  %83 = ptrtoint ptr %cli_handle to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %cli_handle, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  %rsc_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 3
  %84 = ptrtoint ptr %rsc_cache to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rsc_cache, align 4
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %rsci.i) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expiry.i) #19
  %86 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 -1, ptr %expiry.i, align 8, !annotation !114
  %87 = call ptr @memset(ptr %rsci.i, i32 0, i32 152)
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @gss_proxy_save_rsc.ctxhctr, i32 noundef 8) #19
  %call.i1.i.i = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull @gss_proxy_save_rsc.ctxhctr) #19
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %call.i1.i.i, ptr %handle, align 8
  %handle1.i = getelementptr inbounds %struct.rsc, ptr %rsci.i, i32 0, i32 1
  %89 = ptrtoint ptr %handle1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 8, ptr %handle1.i, align 8
  %call.i.i = call ptr @kmemdup(ptr noundef nonnull %handle, i32 noundef 8, i32 noundef 3264) #19
  %data.i.i = getelementptr inbounds %struct.rsc, ptr %rsci.i, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i.i, ptr %data.i.i, align 4
  %tobool4.not.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i.not.i, label %sw.bb9.out.thread.i_crit_edge, label %if.end.i46

sw.bb9.out.thread.i_crit_edge:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread.i

if.end.i46:                                       ; preds = %sw.bb9
  %91 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %handle1.i, align 8
  %call.i.i.i.i45 = call i32 @full_name_hash(ptr noundef null, ptr noundef nonnull %call.i.i, i32 noundef %92) #25
  %shr.i.i.i.i = lshr i32 %call.i.i.i.i45, 22
  %call1.i.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %85, ptr noundef nonnull %rsci.i, i32 noundef %shr.i.i.i.i) #19
  %tobool4.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool4.not.i, label %if.end.i46.out.thread.i_crit_edge, label %if.end6.i

if.end.i46.out.thread.i_crit_edge:                ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread.i

if.end6.i:                                        ; preds = %if.end.i46
  %found_creds.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 6
  %93 = ptrtoint ptr %found_creds.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %found_creds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool7.not.i = icmp eq i32 %94, 0
  br i1 %tobool7.not.i, label %if.end6.i.out.thread59.i_crit_edge, label %if.else.i

if.end6.i.out.thread59.i_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread59.i

if.else.i:                                        ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #19
  %95 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  %cred.i = getelementptr inbounds %struct.rsc, ptr %rsci.i, i32 0, i32 2
  %creds.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 5
  %96 = call ptr @memcpy(ptr %cred.i, ptr %creds.i, i32 32)
  %97 = call ptr @memset(ptr %creds.i, i32 0, i32 32)
  %mech_oid.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 4
  %call10.i = call ptr @gss_mech_get_by_OID(ptr noundef %mech_oid.i) #19
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.else.i.cleanup.thread.i_crit_edge, label %if.end13.i

if.else.i.cleanup.thread.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread.i

if.end13.i:                                       ; preds = %if.else.i
  %cr_gss_mech.i = getelementptr inbounds %struct.rsc, ptr %rsci.i, i32 0, i32 2, i32 7
  %98 = ptrtoint ptr %cr_gss_mech.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call10.i, ptr %cr_gss_mech.i, align 4
  %out_handle.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 2, i32 1
  %99 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i, align 4
  %101 = ptrtoint ptr %out_handle.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %out_handle.i, align 4
  %mechctx.i = getelementptr inbounds %struct.rsc, ptr %rsci.i, i32 0, i32 4
  %call16.i = call i32 @gss_import_sec_context(ptr noundef %100, i32 noundef %102, ptr noundef nonnull %call10.i, ptr noundef %mechctx.i, ptr noundef nonnull %expiry.i, i32 noundef 3264) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %out.i, label %if.end13.i.cleanup.thread.i_crit_edge

if.end13.i.cleanup.thread.i_crit_edge:            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end13.i.cleanup.thread.i_crit_edge, %if.else.i.cleanup.thread.i_crit_edge
  %status.0.ph.i = phi i32 [ %call16.i, %if.end13.i.cleanup.thread.i_crit_edge ], [ -95, %if.else.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #19
  br label %out.thread59.i

out.thread.i:                                     ; preds = %if.end.i46.out.thread.i_crit_edge, %sw.bb9.out.thread.i_crit_edge
  call fastcc void @rsc_free(ptr noundef nonnull %rsci.i) #19
  br label %gss_proxy_save_rsc.exit.thread

out.thread59.i:                                   ; preds = %cleanup.thread.i, %if.end6.i.out.thread59.i_crit_edge
  %status.1.ph.i = phi i32 [ %status.0.ph.i, %cleanup.thread.i ], [ -12, %if.end6.i.out.thread59.i_crit_edge ]
  call fastcc void @rsc_free(ptr noundef nonnull %rsci.i) #19
  br label %if.then23.i

out.i:                                            ; preds = %if.end13.i
  call void @getboottime64(ptr noundef nonnull %boot.i) #19
  %103 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %boot.i, align 8
  %105 = ptrtoint ptr %expiry.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %expiry.i, align 8
  %sub.i47 = sub i64 %106, %104
  store i64 %sub.i47, ptr %expiry.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #19
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %rsci.i, i32 0, i32 1
  %107 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %sub.i47, ptr %expiry_time.i, align 8
  %108 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i.i, align 4
  %110 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %handle1.i, align 8
  %call.i.i.i50.i = call i32 @full_name_hash(ptr noundef null, ptr noundef %109, i32 noundef %111) #25
  %shr.i.i.i51.i = lshr i32 %call.i.i.i50.i, 22
  %call2.i.i = call ptr @sunrpc_cache_update(ptr noundef %85, ptr noundef nonnull %rsci.i, ptr noundef nonnull %call1.i.i, i32 noundef %shr.i.i.i51.i) #19
  call fastcc void @rsc_free(ptr noundef nonnull %rsci.i) #19
  %tobool22.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool22.not.i, label %out.i.gss_proxy_save_rsc.exit.thread_crit_edge, label %out.i.if.then23.i_crit_edge

out.i.if.then23.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then23.i

out.i.gss_proxy_save_rsc.exit.thread_crit_edge:   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %gss_proxy_save_rsc.exit.thread

if.then23.i:                                      ; preds = %out.i.if.then23.i_crit_edge, %out.thread59.i
  %status.164.i = phi i32 [ %status.1.ph.i, %out.thread59.i ], [ 0, %out.i.if.then23.i_crit_edge ]
  %rscp.063.i = phi ptr [ %call1.i.i, %out.thread59.i ], [ %call2.i.i, %out.i.if.then23.i_crit_edge ]
  %ref.i.i = getelementptr inbounds %struct.cache_head, ptr %rscp.063.i, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i, i32 noundef 4) #19
  %112 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %113)
  %cmp.i.i48 = icmp ult i32 %113, 3
  br i1 %cmp.i.i48, label %land.lhs.true.i.i49, label %if.then23.i.if.end.i.i50_crit_edge

if.then23.i.if.end.i.i50_crit_edge:               ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i50

land.lhs.true.i.i49:                              ; preds = %if.then23.i
  %expiry_time.i.i = getelementptr inbounds %struct.cache_head, ptr %rscp.063.i, i32 0, i32 1
  %114 = ptrtoint ptr %expiry_time.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %expiry_time.i.i, align 8
  %nextcheck.i.i = getelementptr inbounds %struct.cache_detail, ptr %85, i32 0, i32 18
  %116 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %nextcheck.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %115, i64 %117)
  %cmp1.i.i = icmp slt i64 %115, %117
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i49.if.end.i.i50_crit_edge

land.lhs.true.i.i49.if.end.i.i50_crit_edge:       ; preds = %land.lhs.true.i.i49
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i50

if.then.i.i:                                      ; preds = %land.lhs.true.i.i49
  call void @__sanitizer_cov_trace_pc() #21
  %118 = ptrtoint ptr %nextcheck.i.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %115, ptr %nextcheck.i.i, align 8
  br label %if.end.i.i50

if.end.i.i50:                                     ; preds = %if.then.i.i, %land.lhs.true.i.i49.if.end.i.i50_crit_edge, %if.then23.i.if.end.i.i50_crit_edge
  %cache_put.i.i = getelementptr inbounds %struct.cache_detail, ptr %85, i32 0, i32 5
  %119 = ptrtoint ptr %cache_put.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cache_put.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !110
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #19
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #19, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.gss_proxy_save_rsc.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.i.gss_proxy_save_rsc.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %gss_proxy_save_rsc.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #19
  br label %gss_proxy_save_rsc.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !113
  call void %120(ptr noundef %ref.i.i) #19
  br label %gss_proxy_save_rsc.exit

gss_proxy_save_rsc.exit.thread:                   ; preds = %out.i.gss_proxy_save_rsc.exit.thread_crit_edge, %out.thread.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expiry.i) #19
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %rsci.i) #19
  br label %out

gss_proxy_save_rsc.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.gss_proxy_save_rsc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expiry.i) #19
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %rsci.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.164.i)
  %tobool11.not = icmp eq i32 %status.164.i, 0
  br i1 %tobool11.not, label %if.end13, label %gss_proxy_save_rsc.exit.out_crit_edge

gss_proxy_save_rsc.exit.out_crit_edge:            ; preds = %gss_proxy_save_rsc.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end13:                                         ; preds = %gss_proxy_save_rsc.exit
  call void @__sanitizer_cov_trace_pc() #21
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %handle, ptr %1, align 4
  %123 = ptrtoint ptr %cli_handle to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 8, ptr %cli_handle, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %sw.bb
  %rsc_cache14 = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 3
  %124 = ptrtoint ptr %rsc_cache14 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rsc_cache14, align 4
  %call16 = call fastcc i32 @gss_write_init_verf(ptr noundef %125, ptr noundef %rqstp, ptr noundef nonnull %cli_handle, ptr noundef %major_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end19:                                         ; preds = %sw.epilog
  %out_token = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 3
  %126 = ptrtoint ptr %major_status to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %major_status, align 4
  %128 = ptrtoint ptr %minor_status to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %minor_status, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %130 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %iov_len.i, align 4
  %132 = add i32 %131, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %132)
  %cmp.i51 = icmp ult i32 %132, -4097
  br i1 %cmp.i51, label %if.end19.out_crit_edge, label %if.end.i53

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i53:                                       ; preds = %if.end19
  %133 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rq_res, align 4
  %add.ptr.i.i = getelementptr i8, ptr %134, i32 %131
  %135 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %add.ptr.i.i, align 4
  %136 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %iov_len.i, align 4
  %add.i.i = add i32 %137, 4
  store i32 %add.i.i, ptr %iov_len.i, align 4
  %138 = add i32 %137, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %138)
  %cmp.i.i52 = icmp ult i32 %138, -4097
  br i1 %cmp.i.i52, label %if.end.i53.out_crit_edge, label %if.end.i.i54

if.end.i53.out_crit_edge:                         ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i.i54:                                     ; preds = %if.end.i53
  %139 = ptrtoint ptr %cli_handle to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cli_handle, align 8
  %141 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rq_res, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %142, i32 %add.i.i
  %143 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %140, ptr %add.ptr.i.i.i, align 4
  %144 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %iov_len.i, align 4
  %add.i.i.i = add i32 %145, 4
  %146 = load ptr, ptr %rq_res, align 4
  %add.i27.i.i = add i32 %140, 3
  %and.i.i.i = and i32 %add.i27.i.i, -4
  %add4.i.i = add i32 %add.i.i.i, %and.i.i.i
  store i32 %add4.i.i, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add4.i.i)
  %cmp6.i.i = icmp ugt i32 %add4.i.i, 4096
  br i1 %cmp6.i.i, label %if.end.i.i54.out_crit_edge, label %if.end2.i

if.end.i.i54.out_crit_edge:                       ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end2.i:                                        ; preds = %if.end.i.i54
  %add.ptr.i2.i = getelementptr i8, ptr %146, i32 %add.i.i.i
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %149 = call ptr @memcpy(ptr %add.ptr.i2.i, ptr %148, i32 %140)
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %140
  %sub.i.i56 = sub i32 %and.i.i.i, %140
  %150 = call ptr @memset(ptr %add.ptr11.i.i, i32 0, i32 %sub.i.i56)
  %151 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %iov_len.i, align 4
  %153 = add i32 %152, -4085
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %153)
  %cmp5.i = icmp ult i32 %153, -4097
  br i1 %cmp5.i, label %if.end2.i.out_crit_edge, label %if.end7.i

if.end2.i.out_crit_edge:                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end7.i:                                        ; preds = %if.end2.i
  %154 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rq_res, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %155, i32 %152
  %156 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %127, ptr %add.ptr.i4.i, align 4
  %157 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %iov_len.i, align 4
  %add.i5.i = add i32 %158, 4
  store i32 %add.i5.i, ptr %iov_len.i, align 4
  %159 = load ptr, ptr %rq_res, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %159, i32 %add.i5.i
  %160 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %129, ptr %add.ptr.i7.i, align 4
  %161 = load i32, ptr %iov_len.i, align 4
  %add.i8.i = add i32 %161, 4
  store i32 %add.i8.i, ptr %iov_len.i, align 4
  %162 = load ptr, ptr %rq_res, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %162, i32 %add.i8.i
  %163 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 128, ptr %add.ptr.i10.i, align 4
  %164 = load i32, ptr %iov_len.i, align 4
  %add.i11.i = add i32 %164, 4
  store i32 %add.i11.i, ptr %iov_len.i, align 4
  %165 = add i32 %164, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %165)
  %cmp.i13.i = icmp ult i32 %165, -4097
  br i1 %cmp.i13.i, label %if.end7.i.out_crit_edge, label %if.end.i20.i

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i20.i:                                     ; preds = %if.end7.i
  %166 = ptrtoint ptr %out_token to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %out_token, align 4
  %168 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rq_res, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %169, i32 %add.i11.i
  %170 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %167, ptr %add.ptr.i.i14.i, align 4
  %171 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %iov_len.i, align 4
  %add.i.i15.i = add i32 %172, 4
  %173 = load ptr, ptr %rq_res, align 4
  %174 = load i32, ptr %out_token, align 4
  %add.i27.i16.i = add i32 %174, 3
  %and.i.i17.i = and i32 %add.i27.i16.i, -4
  %add4.i18.i = add i32 %and.i.i17.i, %add.i.i15.i
  store i32 %add4.i18.i, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add4.i18.i)
  %cmp6.i19.i = icmp ugt i32 %add4.i18.i, 4096
  br i1 %cmp6.i19.i, label %if.end.i20.i.out_crit_edge, label %175

if.end.i20.i.out_crit_edge:                       ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

175:                                              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i21.i = getelementptr i8, ptr %173, i32 %add.i.i15.i
  %data.i22.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %ud, i32 0, i32 3, i32 1
  %176 = ptrtoint ptr %data.i22.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data.i22.i, align 4
  %178 = call ptr @memcpy(ptr %add.ptr.i21.i, ptr %177, i32 %174)
  %179 = ptrtoint ptr %out_token to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %out_token, align 4
  %add.ptr11.i23.i = getelementptr i8, ptr %add.ptr.i21.i, i32 %180
  %add.i28.i24.i = add i32 %180, 3
  %and.i29.i25.i = and i32 %add.i28.i24.i, -4
  %sub.i26.i = sub i32 %and.i29.i25.i, %180
  %181 = call ptr @memset(ptr %add.ptr11.i23.i, i32 0, i32 %sub.i26.i)
  br label %out

out:                                              ; preds = %175, %if.end.i20.i.out_crit_edge, %if.end7.i.out_crit_edge, %if.end2.i.out_crit_edge, %if.end.i.i54.out_crit_edge, %if.end.i53.out_crit_edge, %if.end19.out_crit_edge, %sw.epilog.out_crit_edge, %gss_proxy_save_rsc.exit.out_crit_edge, %gss_proxy_save_rsc.exit.thread, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 7, %if.end.out_crit_edge ], [ 7, %if.end7.out_crit_edge ], [ 7, %gss_proxy_save_rsc.exit.out_crit_edge ], [ 7, %sw.epilog.out_crit_edge ], [ 7, %gss_proxy_save_rsc.exit.thread ], [ 10, %175 ], [ 7, %if.end19.out_crit_edge ], [ 7, %if.end2.i.out_crit_edge ], [ 7, %if.end.i53.out_crit_edge ], [ 7, %if.end.i.i54.out_crit_edge ], [ 7, %if.end7.i.out_crit_edge ], [ 7, %if.end.i20.i.out_crit_edge ]
  call fastcc void @gss_free_in_token_pages(ptr noundef %in_token)
  call void @gssp_free_upcall_data(ptr noundef nonnull %ud) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then20.i, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %dup_netobj.exit.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end3.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 8, %entry.cleanup_crit_edge ], [ 8, %if.end.i.i.cleanup_crit_edge ], [ 8, %if.end3.i.i.cleanup_crit_edge ], [ 8, %land.lhs.true.i.i.cleanup_crit_edge ], [ 7, %dup_netobj.exit.i.i.cleanup_crit_edge ], [ 8, %if.end4.i.cleanup_crit_edge ], [ 8, %if.end.i.cleanup_crit_edge ], [ 8, %if.then20.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #19
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %ud) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cli_handle) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svcauth_gss_legacy_init(ptr noundef %rqstp, ptr nocapture noundef readonly %gc) unnamed_addr #2 align 64 {
entry:
  %rsikey = alloca %struct.rsi, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rsikey) #19
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %1, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %3 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %3)
  %4 = call ptr @memset(ptr %rsikey, i32 0, i32 80)
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %in_handle = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 1
  %in_token = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 2
  %5 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %rq_auth_stat, align 4
  %iov_len.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 8
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %8 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i.i.i = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  store ptr %incdec.ptr.i.i.i, ptr %rq_arg, align 4
  %sub.i.i.i = add i32 %7, -4
  %12 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i.i.i, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp1.not.i.i, label %if.end3.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  %incdec.ptr.i22.i.i = getelementptr i32, ptr %9, i32 2
  %13 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %15 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %incdec.ptr.i22.i.i, ptr %rq_arg, align 4
  %sub.i24.i.i = add i32 %7, -8
  %16 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i24.i.i, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %if.end3.i.i.cleanup_crit_edge

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %17 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %rq_auth_stat, align 4
  %gc_proc.i.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 1
  %18 = ptrtoint ptr %gc_proc.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gc_proc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp8.i.i = icmp eq i32 %19, 1
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %if.end7.i.i.if.end11.i.i_crit_edge

if.end7.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i.i

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %gc_ctx.i.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 4
  %20 = ptrtoint ptr %gc_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gc_ctx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp9.not.i.i, label %land.lhs.true.i.i.if.end11.i.i_crit_edge, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i.i.if.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %land.lhs.true.i.i.if.end11.i.i_crit_edge, %if.end7.i.i.if.end11.i.i_crit_edge
  %gc_ctx12.i.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 4
  %data.i.i.i = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %24 = ptrtoint ptr %gc_ctx12.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gc_ctx12.i.i, align 4
  %26 = ptrtoint ptr %in_handle to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %in_handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i, label %if.end11.i.i.if.end.i_crit_edge, label %dup_netobj.exit.i.i

if.end11.i.i.if.end.i_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

dup_netobj.exit.i.i:                              ; preds = %if.end11.i.i
  %call.i.i.i.i = tail call ptr @kmemdup(ptr noundef %23, i32 noundef %25, i32 noundef 3264) #19
  %data.i.i.i.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tobool4.not.i.i.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool4.not.i.i.not.i.i, label %dup_netobj.exit.i.i.cleanup_crit_edge, label %dup_netobj.exit.i.i.if.end.i_crit_edge

dup_netobj.exit.i.i.if.end.i_crit_edge:           ; preds = %dup_netobj.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

dup_netobj.exit.i.i.cleanup_crit_edge:            ; preds = %dup_netobj.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %dup_netobj.exit.i.i.if.end.i_crit_edge, %if.end11.i.i.if.end.i_crit_edge
  %28 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %rq_auth_stat, align 4
  %29 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i16.i = icmp ult i32 %30, 4
  br i1 %cmp.i16.i, label %if.end.i.if.then3.i_crit_edge, label %if.end.i19.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then3.i

if.end.i19.i:                                     ; preds = %if.end.i
  %31 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i.i17.i = getelementptr i32, ptr %32, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  store ptr %incdec.ptr.i.i17.i, ptr %rq_arg, align 4
  %sub.i.i18.i = add i32 %30, -4
  %35 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i.i18.i, ptr %iov_len.i.i, align 4
  %add.i.i.i = add i32 %34, 3
  %and.i.i.i = and i32 %add.i.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i18.i, i32 %and.i.i.i)
  %cmp4.i.i = icmp ult i32 %sub.i.i18.i, %and.i.i.i
  br i1 %cmp4.i.i, label %if.end.i19.i.if.then3.i_crit_edge, label %if.end4.i

if.end.i19.i.if.then3.i_crit_edge:                ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i19.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %data.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %37) #19
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i19.i
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i17.i, i32 %and.i.i.i
  %38 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i.i, ptr %rq_arg, align 4
  %sub.i.i = sub i32 %sub.i.i18.i, %and.i.i.i
  %39 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i.i, ptr %iov_len.i.i, align 4
  %40 = ptrtoint ptr %in_token to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %34, ptr %in_token, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i, label %dup_netobj.exit.thread.i, label %dup_netobj.exit.i

dup_netobj.exit.thread.i:                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  %data.i.i2230.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %data.i.i2230.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %data.i.i2230.i, align 4
  br label %if.end

dup_netobj.exit.i:                                ; preds = %if.end4.i
  %call.i.i.i = tail call ptr @kmemdup(ptr noundef %incdec.ptr.i.i17.i, i32 noundef %34, i32 noundef 3264) #19
  %data.i.i22.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %data.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i.i, ptr %data.i.i22.i, align 4
  %tobool4.not.i.i.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i.not.i, label %if.then7.i, label %dup_netobj.exit.i.if.end_crit_edge

dup_netobj.exit.i.if.end_crit_edge:               ; preds = %dup_netobj.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then7.i:                                       ; preds = %dup_netobj.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %data8.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %data8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data8.i, align 4
  tail call void @kfree(ptr noundef %44) #19
  br label %cleanup

if.end:                                           ; preds = %dup_netobj.exit.i.if.end_crit_edge, %dup_netobj.exit.thread.i
  %rsi_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 4
  %45 = ptrtoint ptr %rsi_cache to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rsi_cache, align 4
  %data.i.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %49 = ptrtoint ptr %in_handle to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %in_handle, align 8
  %call.i.i.i51 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %48, i32 noundef %50) #25
  %data2.i.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data2.i.i, align 4
  %53 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %in_token, align 8
  %call.i9.i.i = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %52, i32 noundef %54) #25
  %shr.i11.i.i = xor i32 %call.i9.i.i, %call.i.i.i51
  %xor.i.i = lshr i32 %shr.i11.i.i, 26
  %call1.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %46, ptr noundef nonnull %rsikey, i32 noundef %xor.i.i) #19
  %55 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i, align 4
  call void @kfree(ptr noundef %56) #19
  %57 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data2.i.i, align 4
  call void @kfree(ptr noundef %58) #19
  %data2.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data2.i, align 4
  call void @kfree(ptr noundef %60) #19
  %data3.i = getelementptr inbounds %struct.rsi, ptr %rsikey, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data3.i, align 4
  call void @kfree(ptr noundef %62) #19
  %tobool7.not = icmp eq ptr %call1.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %63 = ptrtoint ptr %rsi_cache to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rsi_cache, align 4
  %rq_chandle = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 42
  %call11 = call i32 @cache_check(ptr noundef %64, ptr noundef nonnull %call1.i, ptr noundef %rq_chandle) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %rsc_cache = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 3
  %65 = ptrtoint ptr %rsc_cache to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rsc_cache, align 4
  %out_handle = getelementptr inbounds %struct.rsi, ptr %call1.i, i32 0, i32 3
  %major_status = getelementptr inbounds %struct.rsi, ptr %call1.i, i32 0, i32 5
  %call14 = call fastcc i32 @gss_write_init_verf(ptr noundef %66, ptr noundef %rqstp, ptr noundef %out_handle, ptr noundef %major_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end17:                                         ; preds = %if.end13
  %out_token = getelementptr inbounds %struct.rsi, ptr %call1.i, i32 0, i32 4
  %67 = ptrtoint ptr %major_status to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %major_status, align 8
  %minor_status = getelementptr inbounds %struct.rsi, ptr %call1.i, i32 0, i32 6
  %69 = ptrtoint ptr %minor_status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %minor_status, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iov_len.i, align 4
  %73 = add i32 %72, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %73)
  %cmp.i = icmp ult i32 %73, -4097
  br i1 %cmp.i, label %if.end17.out_crit_edge, label %if.end.i55

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i55:                                       ; preds = %if.end17
  %74 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rq_res, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %75, i32 %72
  %76 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %add.ptr.i.i53, align 4
  %77 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iov_len.i, align 4
  %add.i.i = add i32 %78, 4
  store i32 %add.i.i, ptr %iov_len.i, align 4
  %79 = add i32 %78, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %79)
  %cmp.i.i54 = icmp ult i32 %79, -4097
  br i1 %cmp.i.i54, label %if.end.i55.out_crit_edge, label %if.end.i.i58

if.end.i55.out_crit_edge:                         ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i.i58:                                     ; preds = %if.end.i55
  %80 = ptrtoint ptr %out_handle to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %out_handle, align 4
  %82 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rq_res, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %83, i32 %add.i.i
  %84 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %81, ptr %add.ptr.i.i.i, align 4
  %85 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iov_len.i, align 4
  %add.i.i.i56 = add i32 %86, 4
  store i32 %add.i.i.i56, ptr %iov_len.i, align 4
  %87 = load ptr, ptr %rq_res, align 4
  %88 = load i32, ptr %out_handle, align 4
  %add.i27.i.i = add i32 %88, 3
  %and.i.i.i57 = and i32 %add.i27.i.i, -4
  %add4.i.i = add i32 %and.i.i.i57, %add.i.i.i56
  store i32 %add4.i.i, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add4.i.i)
  %cmp6.i.i = icmp ugt i32 %add4.i.i, 4096
  br i1 %cmp6.i.i, label %if.end.i.i58.out_crit_edge, label %if.end2.i

if.end.i.i58.out_crit_edge:                       ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end2.i:                                        ; preds = %if.end.i.i58
  %add.ptr.i2.i = getelementptr i8, ptr %87, i32 %add.i.i.i56
  %data.i.i59 = getelementptr inbounds %struct.rsi, ptr %call1.i, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %data.i.i59 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i59, align 4
  %91 = ptrtoint ptr %out_handle to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %out_handle, align 4
  %93 = call ptr @memcpy(ptr %add.ptr.i2.i, ptr %90, i32 %92)
  %94 = load i32, ptr %out_handle, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %94
  %add.i28.i.i = add i32 %94, 3
  %and.i29.i.i = and i32 %add.i28.i.i, -4
  %sub.i.i60 = sub i32 %and.i29.i.i, %94
  %95 = call ptr @memset(ptr %add.ptr11.i.i, i32 0, i32 %sub.i.i60)
  %96 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %iov_len.i, align 4
  %98 = add i32 %97, -4085
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %98)
  %cmp5.i = icmp ult i32 %98, -4097
  br i1 %cmp5.i, label %if.end2.i.out_crit_edge, label %if.end7.i

if.end2.i.out_crit_edge:                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end7.i:                                        ; preds = %if.end2.i
  %99 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rq_res, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %100, i32 %97
  %101 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %68, ptr %add.ptr.i4.i, align 4
  %102 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iov_len.i, align 4
  %add.i5.i = add i32 %103, 4
  store i32 %add.i5.i, ptr %iov_len.i, align 4
  %104 = load ptr, ptr %rq_res, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %104, i32 %add.i5.i
  %105 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %70, ptr %add.ptr.i7.i, align 4
  %106 = load i32, ptr %iov_len.i, align 4
  %add.i8.i = add i32 %106, 4
  store i32 %add.i8.i, ptr %iov_len.i, align 4
  %107 = load ptr, ptr %rq_res, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %107, i32 %add.i8.i
  %108 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 128, ptr %add.ptr.i10.i, align 4
  %109 = load i32, ptr %iov_len.i, align 4
  %add.i11.i = add i32 %109, 4
  store i32 %add.i11.i, ptr %iov_len.i, align 4
  %110 = add i32 %109, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %110)
  %cmp.i13.i = icmp ult i32 %110, -4097
  br i1 %cmp.i13.i, label %if.end7.i.out_crit_edge, label %if.end.i20.i

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i20.i:                                     ; preds = %if.end7.i
  %111 = ptrtoint ptr %out_token to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %out_token, align 4
  %113 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rq_res, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %114, i32 %add.i11.i
  %115 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %112, ptr %add.ptr.i.i14.i, align 4
  %116 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %iov_len.i, align 4
  %add.i.i15.i = add i32 %117, 4
  store i32 %add.i.i15.i, ptr %iov_len.i, align 4
  %118 = load ptr, ptr %rq_res, align 4
  %119 = load i32, ptr %out_token, align 4
  %add.i27.i16.i = add i32 %119, 3
  %and.i.i17.i = and i32 %add.i27.i16.i, -4
  %add4.i18.i = add i32 %and.i.i17.i, %add.i.i15.i
  store i32 %add4.i18.i, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add4.i18.i)
  %cmp6.i19.i = icmp ugt i32 %add4.i18.i, 4096
  br i1 %cmp6.i19.i, label %if.end.i20.i.out_crit_edge, label %120

if.end.i20.i.out_crit_edge:                       ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

120:                                              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i21.i = getelementptr i8, ptr %118, i32 %add.i.i15.i
  %data.i22.i = getelementptr inbounds %struct.rsi, ptr %call1.i, i32 0, i32 4, i32 1
  %121 = ptrtoint ptr %data.i22.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i22.i, align 4
  %123 = ptrtoint ptr %out_token to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %out_token, align 4
  %125 = call ptr @memcpy(ptr %add.ptr.i21.i, ptr %122, i32 %124)
  %126 = load i32, ptr %out_token, align 4
  %add.ptr11.i23.i = getelementptr i8, ptr %add.ptr.i21.i, i32 %126
  %add.i28.i24.i = add i32 %126, 3
  %and.i29.i25.i = and i32 %add.i28.i24.i, -4
  %sub.i26.i = sub i32 %and.i29.i25.i, %126
  %127 = call ptr @memset(ptr %add.ptr11.i23.i, i32 0, i32 %sub.i26.i)
  br label %out

out:                                              ; preds = %120, %if.end.i20.i.out_crit_edge, %if.end7.i.out_crit_edge, %if.end2.i.out_crit_edge, %if.end.i.i58.out_crit_edge, %if.end.i55.out_crit_edge, %if.end17.out_crit_edge, %if.end13.out_crit_edge
  %ret.0 = phi i32 [ 7, %if.end13.out_crit_edge ], [ 10, %120 ], [ 7, %if.end17.out_crit_edge ], [ 7, %if.end2.i.out_crit_edge ], [ 7, %if.end.i55.out_crit_edge ], [ 7, %if.end.i.i58.out_crit_edge ], [ 7, %if.end7.i.out_crit_edge ], [ 7, %if.end.i20.i.out_crit_edge ]
  %128 = ptrtoint ptr %rsi_cache to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rsi_cache, align 4
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %call1.i, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #19
  %130 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %cmp.i62 = icmp ult i32 %131, 3
  br i1 %cmp.i62, label %land.lhs.true.i, label %out.if.end.i63_crit_edge

out.if.end.i63_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i63

land.lhs.true.i:                                  ; preds = %out
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %call1.i, i32 0, i32 1
  %132 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %129, i32 0, i32 18
  %134 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %133, i64 %135)
  %cmp1.i = icmp slt i64 %133, %135
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i63_crit_edge

land.lhs.true.i.if.end.i63_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i63

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %136 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %133, ptr %nextcheck.i, align 8
  br label %if.end.i63

if.end.i63:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i63_crit_edge, %out.if.end.i63_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %129, i32 0, i32 5
  %137 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !110
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #19
  %139 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #19, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #19
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !113
  call void %138(ptr noundef %ref.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then7.i, %if.then3.i, %dup_netobj.exit.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end3.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 7, %if.end.cleanup_crit_edge ], [ 7, %if.end9.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i ], [ 8, %entry.cleanup_crit_edge ], [ 8, %if.end.i.i.cleanup_crit_edge ], [ 8, %if.end3.i.i.cleanup_crit_edge ], [ 8, %land.lhs.true.i.i.cleanup_crit_edge ], [ 7, %dup_netobj.exit.i.i.cleanup_crit_edge ], [ 7, %if.then7.i ], [ 8, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rsikey) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gss_svc_searchbyctx(ptr noundef %cd, ptr nocapture noundef readonly %handle) unnamed_addr #2 align 64 {
entry:
  %rsci = alloca %struct.rsc, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %rsci) #19
  %0 = call ptr @memset(ptr %rsci, i32 0, i32 152)
  %handle1 = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 1
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %handle, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle, align 4
  %5 = ptrtoint ptr %handle1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %handle1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %dup_to_netobj.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

dup_to_netobj.exit:                               ; preds = %entry
  %call.i = tail call ptr @kmemdup(ptr noundef %2, i32 noundef %4, i32 noundef 3264) #19
  %data.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %data.i, align 4
  %tobool4.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i.not, label %dup_to_netobj.exit.cleanup_crit_edge, label %dup_to_netobj.exit.if.end_crit_edge

dup_to_netobj.exit.if.end_crit_edge:              ; preds = %dup_to_netobj.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

dup_to_netobj.exit.cleanup_crit_edge:             ; preds = %dup_to_netobj.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %dup_to_netobj.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data.i.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %9 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle1, align 8
  %call.i.i.i = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %8, i32 noundef %10) #25
  %shr.i.i.i = lshr i32 %call.i.i.i, 22
  %call1.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %rsci, i32 noundef %shr.i.i.i) #19
  call fastcc void @rsc_free(ptr noundef nonnull %rsci)
  %tobool3.not = icmp eq ptr %call1.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call6 = call i32 @cache_check(ptr noundef %cd, ptr noundef nonnull %call1.i, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %call2. = select i1 %tobool7.not, ptr %call1.i, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %dup_to_netobj.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dup_to_netobj.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call2., %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %rsci) #19
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_verify_header(ptr noundef %rqstp, ptr noundef %rsci, ptr noundef %rpcstart, ptr nocapture noundef readonly %gc) unnamed_addr #2 align 64 {
entry:
  %rpchdr = alloca %struct.xdr_buf, align 4
  %checksum = alloca %struct.xdr_netobj, align 4
  %iov = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mechctx = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 4
  %0 = ptrtoint ptr %mechctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mechctx, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %rpchdr) #19
  %2 = call ptr @memset(ptr %rpchdr, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %checksum) #19
  %3 = getelementptr inbounds %struct.xdr_netobj, ptr %checksum, i32 0, i32 1
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #19
  %4 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %5 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rpcstart, ptr %iov, align 4
  %6 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_arg, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %rpcstart to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.ptr.sub, ptr %4, align 4
  call void @xdr_buf_from_iov(ptr noundef nonnull %iov, ptr noundef nonnull %rpchdr) #19
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %9 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %rq_auth_stat, align 4
  %iov_len2 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %iov_len2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iov_len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp ult i32 %11, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  store ptr %incdec.ptr.i, ptr %rq_arg, align 4
  %16 = ptrtoint ptr %iov_len2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_len2, align 4
  %sub.i = add i32 %17, -4
  store i32 %sub.i, ptr %iov_len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp3.not = icmp ne i32 %15, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 4
  %or.cond = select i1 %cmp3.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %incdec.ptr.i.i = getelementptr i32, ptr %13, i32 2
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.i, align 4
  %20 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr.i.i, ptr %rq_arg, align 4
  %sub.i.i = add i32 %17, -8
  %21 = ptrtoint ptr %iov_len2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.i.i, ptr %iov_len2, align 4
  %22 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %checksum, align 4
  %add.i.i = add i32 %19, 3
  %and.i.i = and i32 %add.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %and.i.i)
  %cmp4.i = icmp ult i32 %sub.i.i, %and.i.i
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end8

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %incdec.ptr.i.i, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 %and.i.i
  %24 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %rq_arg, align 4
  %sub.i45 = sub i32 %sub.i.i, %and.i.i
  %25 = ptrtoint ptr %iov_len2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i45, ptr %iov_len2, align 4
  %rq_deferred = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 13
  %26 = ptrtoint ptr %rq_deferred to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rq_deferred, align 8
  %tobool9.not = icmp eq ptr %27, null
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = call i32 @gss_verify_mic(ptr noundef %1, ptr noundef nonnull %rpchdr, ptr noundef nonnull %checksum) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 13, ptr %rq_auth_stat, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %gc_seq = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %gc, i32 0, i32 2
  %29 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gc_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %30)
  %cmp17 = icmp ugt i32 %30, -2147483648
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @trace_rpcgss_svc_seqno_large(ptr noundef %rqstp, i32 noundef %30)
  %31 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 14, ptr %rq_auth_stat, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  %call23 = call fastcc zeroext i1 @gss_check_seq_num(ptr noundef %rqstp, ptr noundef %rsci, i32 noundef %30)
  %. = select i1 %call23, i32 5, i32 6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then18, %if.then14, %if.end8.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %if.then14 ], [ 8, %if.then18 ], [ 8, %entry.cleanup_crit_edge ], [ 8, %if.end.cleanup_crit_edge ], [ 5, %if.end8.cleanup_crit_edge ], [ %., %if.end21 ], [ 8, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %checksum) #19
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %rpchdr) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_write_verf(ptr nocapture noundef %rqstp, ptr noundef %ctx_id, i32 noundef %seq) unnamed_addr #2 align 64 {
entry:
  %verf_data = alloca %struct.xdr_buf, align 4
  %mic = alloca %struct.xdr_netobj, align 4
  %iov = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %verf_data) #19
  %0 = call ptr @memset(ptr %verf_data, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #19
  %1 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mic, align 4, !annotation !114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #19
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %2 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_res, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %add.ptr.i, align 4
  %7 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %7, 4
  store i32 %add.i, ptr %iov_len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 4) #22
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %10 = getelementptr inbounds %struct.xdr_netobj, ptr %mic, i32 0, i32 1
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %seq, ptr %call7.i, align 8
  %12 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %iov, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %9, align 4
  call void @xdr_buf_from_iov(ptr noundef nonnull %iov, ptr noundef nonnull %verf_data) #19
  %14 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_res, align 8
  %16 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_len.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %add.ptr9 = getelementptr i32, ptr %add.ptr, i32 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr9, ptr %10, align 4
  %call10 = call i32 @gss_get_mic(ptr noundef %ctx_id, ptr noundef nonnull %verf_data, ptr noundef nonnull %mic) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end12, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %mic to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mic, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr, align 4
  %22 = load i32, ptr %mic, align 4
  %add.ptr14 = getelementptr i8, ptr %add.ptr9, i32 %22
  %add.i40 = add i32 %22, 3
  %and.i = and i32 %add.i40, -4
  %sub = sub i32 %and.i, %22
  %23 = call ptr @memset(ptr %add.ptr14, i32 0, i32 %sub)
  %24 = load i32, ptr %mic, align 4
  %add = add i32 %24, 3
  %shr = lshr i32 %add, 2
  %add.ptr19 = getelementptr i32, ptr %add.ptr9, i32 %shr
  %25 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rq_res, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %27 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.sub.i, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, 4096
  %spec.select = sext i1 %cmp.i to i32
  br label %out

out:                                              ; preds = %if.end12, %if.end.out_crit_edge
  %err.0 = phi i32 [ -1, %if.end.out_crit_edge ], [ %spec.select, %if.end12 ]
  call void @kfree(ptr noundef nonnull %call7.i) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #19
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %verf_data) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunrpc_cache_unhash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unwrap_integ_data(ptr noundef %rqstp, ptr noundef %buf, i32 noundef %seq, ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %raw.i = alloca i32, align 4
  %mic = alloca %struct.xdr_netobj, align 4
  %integ_buf = alloca %struct.xdr_buf, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #19
  %0 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mic, align 4, !annotation !114
  %1 = getelementptr inbounds %struct.xdr_netobj, ptr %mic, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %integ_buf) #19
  %2 = call ptr @memset(ptr %integ_buf, i32 255, i32 44)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %rq_flags) #19
  %rq_deferred = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 13
  %4 = ptrtoint ptr %rq_deferred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_deferred, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %incdec.ptr.i = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  store ptr %incdec.ptr.i, ptr %buf, align 4
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iov_len.i, align 4
  %sub.i = add i32 %11, -4
  store i32 %sub.i, ptr %iov_len.i, align 4
  %and = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.unwrap_failed_crit_edge

if.end.unwrap_failed_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %unwrap_failed

if.end3:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp = icmp ugt i32 %9, %13
  br i1 %cmp, label %if.end3.unwrap_failed_crit_edge, label %if.end5

if.end3.unwrap_failed_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %unwrap_failed

if.end5:                                          ; preds = %if.end3
  %call6 = call i32 @xdr_buf_subsegment(ptr noundef %buf, ptr noundef nonnull %integ_buf, i32 noundef 0, i32 noundef %9) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.unwrap_failed_crit_edge

if.end5.unwrap_failed_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %unwrap_failed

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw.i) #19
  %14 = ptrtoint ptr %raw.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %raw.i, align 4, !annotation !114
  %call.i = call i32 @read_bytes_from_xdr_buf(ptr noundef %buf, i32 noundef %9, ptr noundef nonnull %raw.i, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end14, label %read_u32_from_xdr_buf.exit

read_u32_from_xdr_buf.exit:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw.i) #19
  br label %unwrap_failed

if.end14:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %raw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %raw.i, align 4
  %17 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mic, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %16)
  %cmp16 = icmp ugt i32 %16, 400
  br i1 %cmp16, label %if.end14.unwrap_failed_crit_edge, label %if.end8.i

if.end14.unwrap_failed_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %unwrap_failed

if.end8.i:                                        ; preds = %if.end14
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #24
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i, ptr %1, align 4
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.end8.i.unwrap_failed_crit_edge, label %if.end25

if.end8.i.unwrap_failed_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %unwrap_failed

if.end25:                                         ; preds = %if.end8.i
  %add = add i32 %9, 4
  %19 = ptrtoint ptr %mic to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mic, align 4
  %call28 = call i32 @read_bytes_from_xdr_buf(ptr noundef %buf, i32 noundef %add, ptr noundef nonnull %call9.i, i32 noundef %20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.unwrap_failed_crit_edge

if.end25.unwrap_failed_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %unwrap_failed

if.end31:                                         ; preds = %if.end25
  %call32 = call i32 @gss_verify_mic(ptr noundef %ctx, ptr noundef nonnull %integ_buf, ptr noundef nonnull %mic) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end35, label %bad_mic

if.end35:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %incdec.ptr.i69 = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  store ptr %incdec.ptr.i69, ptr %buf, align 4
  %25 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iov_len.i, align 4
  %sub.i71 = add i32 %26, -4
  store i32 %sub.i71, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %seq)
  %cmp39.not = icmp eq i32 %24, %seq
  br i1 %cmp39.not, label %if.end41, label %bad_seqno

if.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  %27 = ptrtoint ptr %mic to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mic, align 4
  %29 = add i32 %28, 7
  %add44 = and i32 %29, -4
  call void @xdr_buf_trim(ptr noundef %buf, i32 noundef %add44) #19
  br label %out

out:                                              ; preds = %bad_mic, %bad_seqno, %unwrap_failed, %if.end41
  %stat.0 = phi i32 [ -22, %unwrap_failed ], [ -22, %bad_mic ], [ -22, %bad_seqno ], [ 0, %if.end41 ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  call void @kfree(ptr noundef %31) #19
  br label %cleanup

unwrap_failed:                                    ; preds = %if.end25.unwrap_failed_crit_edge, %if.end8.i.unwrap_failed_crit_edge, %if.end14.unwrap_failed_crit_edge, %read_u32_from_xdr_buf.exit, %if.end5.unwrap_failed_crit_edge, %if.end3.unwrap_failed_crit_edge, %if.end.unwrap_failed_crit_edge
  call fastcc void @trace_rpcgss_svc_unwrap_failed(ptr noundef %rqstp)
  br label %out

bad_seqno:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @trace_rpcgss_svc_seqno_bad(ptr noundef %rqstp, i32 noundef %seq, i32 noundef %24)
  br label %out

bad_mic:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @trace_rpcgss_svc_mic(ptr noundef %rqstp, i32 noundef %call32)
  br label %out

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %stat.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %integ_buf) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unwrap_priv_data(ptr noundef %rqstp, ptr noundef %buf, i32 noundef %seq, ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %rq_flags) #19
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %incdec.ptr.i = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  store ptr %incdec.ptr.i, ptr %buf, align 4
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len.i, align 4
  %sub.i = add i32 %5, -4
  store i32 %sub.i, ptr %iov_len.i, align 4
  %rq_deferred = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 13
  %6 = ptrtoint ptr %rq_deferred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_deferred, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %entry.out_seq_crit_edge

entry.out_seq_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_seq

if.end:                                           ; preds = %entry
  %page_len.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 5
  %8 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_len.i, align 4
  %add.i = add i32 %9, %sub.i
  %iov_len2.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %iov_len2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iov_len2.i, align 4
  %add3.i = add i32 %add.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %3)
  %cmp = icmp ult i32 %add3.i, %3
  br i1 %cmp, label %unwrap_failed, label %if.end3

if.end3:                                          ; preds = %if.end
  %sub = sub i32 %add3.i, %3
  %len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %sub4 = sub i32 %13, %sub
  store i32 %sub4, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.fix_priv_head.exit_crit_edge

if.end3.fix_priv_head.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %fix_priv_head.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i55 = sub i32 %sub.i, %sub
  %14 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i55, ptr %iov_len.i, align 4
  br label %fix_priv_head.exit

fix_priv_head.exit:                               ; preds = %if.then.i, %if.end3.fix_priv_head.exit_crit_edge
  %call5 = tail call i32 @gss_unwrap(ptr noundef %ctx, i32 noundef 0, i32 noundef %3, ptr noundef %buf) #19
  %15 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iov_len.i, align 4
  %add.i.i = add i32 %16, 3
  %and.i.i = and i32 %add.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %16)
  %tobool11.not = icmp eq i32 %and.i.i, %16
  br i1 %tobool11.not, label %fix_priv_head.exit.if.end13_crit_edge, label %if.then12

fix_priv_head.exit.if.end13_crit_edge:            ; preds = %fix_priv_head.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then12:                                        ; preds = %fix_priv_head.exit
  %sub.i56 = sub i32 %and.i.i, %16
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %buflen = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 7
  %19 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1048576, ptr %buflen, align 4
  tail call void @xdr_shift_buf(ptr noundef %buf, i32 noundef %sub.i56) #19
  %20 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i58 = icmp eq i32 %21, 0
  br i1 %cmp.i58, label %if.then.i61, label %if.then12.if.end13_crit_edge

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then.i61:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  %sub7.neg = sub i32 %18, %3
  %22 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iov_len.i, align 4
  %sub.i60 = add i32 %sub7.neg, %23
  store i32 %sub.i60, ptr %iov_len.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then.i61, %if.then12.if.end13_crit_edge, %fix_priv_head.exit.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp14.not = icmp eq i32 %call5, 0
  br i1 %cmp14.not, label %if.end13.out_seq_crit_edge, label %bad_unwrap

if.end13.out_seq_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_seq

out_seq:                                          ; preds = %if.end13.out_seq_crit_edge, %entry.out_seq_crit_edge
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 4
  %incdec.ptr.i63 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  store ptr %incdec.ptr.i63, ptr %buf, align 4
  %28 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iov_len.i, align 4
  %sub.i65 = add i32 %29, -4
  store i32 %sub.i65, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %seq)
  %cmp20.not = icmp eq i32 %27, %seq
  br i1 %cmp20.not, label %out_seq.cleanup_crit_edge, label %bad_seqno

out_seq.cleanup_crit_edge:                        ; preds = %out_seq
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

unwrap_failed:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @trace_rpcgss_svc_unwrap_failed(ptr noundef %rqstp)
  br label %cleanup

bad_seqno:                                        ; preds = %out_seq
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @trace_rpcgss_svc_seqno_bad(ptr noundef %rqstp, i32 noundef %seq, i32 noundef %27)
  br label %cleanup

bad_unwrap:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @trace_rpcgss_svc_unwrap(ptr noundef %rqstp, i32 noundef %call5)
  br label %cleanup

cleanup:                                          ; preds = %bad_unwrap, %bad_seqno, %unwrap_failed, %out_seq.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %bad_seqno ], [ -22, %unwrap_failed ], [ -22, %bad_unwrap ], [ 0, %out_seq.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cache_get(ptr noundef %h) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %ref = getelementptr inbounds %struct.cache_head, ptr %h, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #19
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #19, !srcloc !123
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !124

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #19
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_svc_to_pseudoflavor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_authenticate(ptr noundef %rqstp, ptr noundef %gc) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_authenticate, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_authenticate, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !126
  %call42 = tail call i32 @__traceiter_rpcgss_svc_authenticate(ptr noundef null, ptr noundef %rqstp, ptr noundef %gc) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !127
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_authenticate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_authenticate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_authenticate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_authenticate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 313, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_gss_proxy(ptr noundef %net, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %use_gss_proxy = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 17
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_gss_proxy, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %use_gss_proxy, i32 1, i32 3, i32 1) #19
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %use_gss_proxy, i32 -1, i32 %type) #19, !srcloc !121
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult1.i)
  %cmp57.not = icmp eq i32 %asmresult1.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %type)
  %cmp58.not = icmp eq i32 %asmresult1.i, %type
  %or.cond = or i1 %cmp57.not, %cmp58.not
  %retval.0 = select i1 %or.cond, i32 0, i32 -16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gssp_accept_sec_context_upcall(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_accept_upcall(ptr noundef %rqstp, i32 noundef %major_status, i32 noundef %minor_status) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_accept_upcall, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_accept_upcall, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !130
  %call42 = tail call i32 @__traceiter_rpcgss_svc_accept_upcall(ptr noundef null, ptr noundef %rqstp, i32 noundef %major_status, i32 noundef %minor_status) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !131
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_accept_upcall, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_accept_upcall, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_accept_upcall.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_accept_upcall.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 289, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_write_init_verf(ptr noundef %cd, ptr nocapture noundef %rqstp, ptr nocapture noundef readonly %out_handle, ptr nocapture noundef %major_status) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %major_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %major_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %rq_res.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %2 = ptrtoint ptr %rq_res.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_res.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %add.ptr.i.i, align 4
  %7 = load i32, ptr %iov_len.i.i, align 4
  %add.i.i = add i32 %7, 4
  %8 = load ptr, ptr %rq_res.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add.i.i
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %add.ptr.i, align 4
  %10 = load ptr, ptr %rq_res.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  store i32 %sub.ptr.sub.i.i, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 4096
  %..i = sext i1 %cmp.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @gss_svc_searchbyctx(ptr noundef %cd, ptr noundef %out_handle)
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %major_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 524288, ptr %major_status, align 4
  %rq_res.i14 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %12 = ptrtoint ptr %rq_res.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_res.i14, align 4
  %iov_len.i.i15 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len.i.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len.i.i15, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %13, i32 %15
  %16 = ptrtoint ptr %add.ptr.i.i16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %add.ptr.i.i16, align 4
  %17 = load i32, ptr %iov_len.i.i15, align 4
  %add.i.i17 = add i32 %17, 4
  %18 = load ptr, ptr %rq_res.i14, align 8
  %add.ptr.i18 = getelementptr i8, ptr %18, i32 %add.i.i17
  %incdec.ptr.i19 = getelementptr i32, ptr %add.ptr.i18, i32 1
  %19 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %add.ptr.i18, align 4
  %20 = load ptr, ptr %rq_res.i14, align 4
  %sub.ptr.lhs.cast.i.i20 = ptrtoint ptr %incdec.ptr.i19 to i32
  %sub.ptr.rhs.cast.i.i21 = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i22 = sub i32 %sub.ptr.lhs.cast.i.i20, %sub.ptr.rhs.cast.i.i21
  store i32 %sub.ptr.sub.i.i22, ptr %iov_len.i.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.ptr.sub.i.i22)
  %cmp.i.i23 = icmp ugt i32 %sub.ptr.sub.i.i22, 4096
  %..i24 = sext i1 %cmp.i.i23 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mechctx = getelementptr inbounds %struct.rsc, ptr %call1, i32 0, i32 4
  %21 = ptrtoint ptr %mechctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mechctx, align 8
  %call6 = tail call fastcc i32 @gss_write_verf(ptr noundef %rqstp, ptr noundef %22, i32 noundef 128)
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #19
  %23 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i = icmp ult i32 %24, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end5
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %call1, i32 0, i32 1
  %25 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 18
  %27 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp1.i = icmp slt i64 %26, %28
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %26, ptr %nextcheck.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 5
  %30 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #19
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #19, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #19
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !113
  tail call void %31(ptr noundef %ref.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %..i, %if.then ], [ %..i24, %if.then3 ], [ %call6, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call6, %if.then10.i.i.i.i.i ], [ %call6, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gss_free_in_token_pages(ptr nocapture noundef %in_token) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %page_len = getelementptr inbounds %struct.gssp_in_token, ptr %in_token, i32 0, i32 2
  %0 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not14 = icmp eq i32 %1, 0
  br i1 %tobool.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %inlen.015 = phi i32 [ %15, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_token, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %while.body
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !124

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %13 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.12) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #19, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #19
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #19, !srcloc !116
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gss_free_in_token_pages, %if.then.i.i.i.i.i)) #19
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !125

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #19
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__put_page(ptr noundef %10) #19
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %15 = tail call i32 @llvm.usub.sat.i32(i32 %inlen.015, i32 4096)
  %tobool.not = icmp ult i32 %inlen.015, 4097
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %16 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in_token, align 4
  tail call void @kfree(ptr noundef %17) #19
  %18 = ptrtoint ptr %in_token to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %in_token, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gssp_free_upcall_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_accept_upcall(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gss_mech_get_by_OID(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_import_sec_context(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsc_free(ptr noundef %rsci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #19
  %mechctx = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 4
  %2 = ptrtoint ptr %mechctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mechctx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 @gss_delete_sec_context(ptr noundef %mechctx) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cr_group_info.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cr_group_info.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.free_svc_cred.exit_crit_edge, label %do.body.i

if.end.free_svc_cred.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_svc_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #19
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #19, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then2.i, label %do.body.i.free_svc_cred.exit_crit_edge

do.body.i.free_svc_cred.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_svc_cred.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cr_group_info.i, align 4
  tail call void @groups_free(ptr noundef %8) #19
  br label %free_svc_cred.exit

free_svc_cred.exit:                               ; preds = %if.then2.i, %do.body.i.free_svc_cred.exit_crit_edge, %if.end.free_svc_cred.exit_crit_edge
  %cr_raw_principal.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %cr_raw_principal.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cr_raw_principal.i, align 4
  tail call void @kfree(ptr noundef %10) #19
  %cr_principal.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %cr_principal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cr_principal.i, align 4
  tail call void @kfree(ptr noundef %12) #19
  %cr_targ_princ.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %cr_targ_princ.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cr_targ_princ.i, align 4
  tail call void @kfree(ptr noundef %14) #19
  %cr_gss_mech.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %cr_gss_mech.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cr_gss_mech.i, align 4
  tail call void @gss_mech_put(ptr noundef %16) #19
  %17 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cr_group_info.i, align 4
  %18 = call ptr @memset(ptr %cr_raw_principal.i, i32 0, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_lookup_rcu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_delete_sec_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_mech_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_buf_from_iov(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_verify_mic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_seqno_large(ptr noundef %rqstp, i32 noundef %seqno) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_large, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_seqno_large, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !133
  %call42 = tail call i32 @__traceiter_rpcgss_svc_seqno_large(ptr noundef null, ptr noundef %rqstp, i32 noundef %seqno) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_large, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_large, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_seqno_large.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_seqno_large.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 497, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
define internal fastcc zeroext i1 @gss_check_seq_num(ptr noundef %rqstp, ptr noundef %rsci, i32 noundef %seq_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %seqdata = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 3
  %sd_lock = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 3, i32 2
  tail call void @_raw_spin_lock(ptr noundef %sd_lock) #19
  %0 = ptrtoint ptr %seqdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seqdata, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %seq_num)
  %cmp = icmp ult i32 %1, %seq_num
  br i1 %cmp, label %if.then, label %if.else14

if.then:                                          ; preds = %entry
  %add = add i32 %1, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %seq_num)
  %cmp2.not = icmp ugt i32 %add, %seq_num
  br i1 %cmp2.not, label %while.cond.preheader, label %if.then3

while.cond.preheader:                             ; preds = %if.then
  %2 = ptrtoint ptr %seqdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %seqdata.promoted = load i32, ptr %seqdata, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %seqdata.promoted, i32 %seq_num)
  %cmp663 = icmp ult i32 %seqdata.promoted, %seq_num
  br i1 %cmp663, label %while.body.lr.ph, label %while.cond.preheader.if.end_crit_edge

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sd_win9 = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 3, i32 1
  br label %while.body

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %sd_win = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 3, i32 1
  %3 = call ptr @memset(ptr %sd_win, i32 0, i32 16)
  br label %if.end.sink.split

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %inc6264 = phi i32 [ %seqdata.promoted, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %inc = add nuw i32 %inc6264, 1
  %rem.i = and i32 %inc, 31
  %shl.i = shl nuw i32 1, %rem.i
  %rem = lshr i32 %inc, 5
  %div2.i = and i32 %rem, 3
  %add.ptr.i = getelementptr i32, ptr %sd_win9, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %exitcond.not = icmp eq i32 %inc, %seq_num
  br i1 %exitcond.not, label %while.body.if.end.sink.split_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body.if.end.sink.split_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %while.body.if.end.sink.split_crit_edge, %if.then3
  %6 = ptrtoint ptr %seqdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %seq_num, ptr %seqdata, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %while.cond.preheader.if.end_crit_edge
  %sd_win12 = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 3, i32 1
  %rem.i54 = and i32 %seq_num, 31
  %shl.i55 = shl nuw i32 1, %rem.i54
  %rem11 = lshr i32 %seq_num, 5
  %div2.i56 = and i32 %rem11, 3
  %add.ptr.i57 = getelementptr i32, ptr %sd_win12, i32 %div2.i56
  %7 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i57, align 4
  %or.i = or i32 %8, %shl.i55
  store i32 %or.i, ptr %add.ptr.i57, align 4
  br label %out

if.else14:                                        ; preds = %entry
  %add15 = add i32 %seq_num, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %1)
  %cmp17.not = icmp ugt i32 %add15, %1
  br i1 %cmp17.not, label %if.end20, label %toolow

if.end20:                                         ; preds = %if.else14
  %sd_win22 = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 3, i32 1
  %rem.i58 = and i32 %seq_num, 31
  %shl.i59 = shl nuw i32 1, %rem.i58
  %rem21 = lshr i32 %seq_num, 5
  %div5.i = and i32 %rem21, 3
  %add.ptr.i60 = getelementptr i32, ptr %sd_win22, i32 %div5.i
  %9 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i60, align 4
  %or.i61 = or i32 %10, %shl.i59
  store i32 %or.i61, ptr %add.ptr.i60, align 4
  %11 = and i32 %10, %shl.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end20.out_crit_edge, label %alreadyseen

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

out:                                              ; preds = %alreadyseen, %toolow, %if.end20.out_crit_edge, %if.end
  %result.0.off0 = phi i1 [ false, %toolow ], [ false, %alreadyseen ], [ true, %if.end20.out_crit_edge ], [ true, %if.end ]
  tail call void @_raw_spin_unlock(ptr noundef %sd_lock) #19
  ret i1 %result.0.off0

toolow:                                           ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #21
  %sub = add i32 %1, -128
  tail call fastcc void @trace_rpcgss_svc_seqno_low(ptr noundef %rqstp, i32 noundef %seq_num, i32 noundef %sub, i32 noundef %1)
  br label %out

alreadyseen:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @trace_rpcgss_svc_seqno_seen(ptr noundef %rqstp, i32 noundef %seq_num)
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_seqno_large(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_seqno_low(ptr noundef %rqstp, i32 noundef %seqno, i32 noundef %min, i32 noundef %max) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_low, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_seqno_low, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !135
  %call42 = tail call i32 @__traceiter_rpcgss_svc_seqno_low(ptr noundef null, ptr noundef %rqstp, i32 noundef %seqno, i32 noundef %min, i32 noundef %max) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_low, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_low, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_seqno_low.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_seqno_low.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 526, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_seqno_seen(ptr noundef %rqstp, i32 noundef %seqno) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_seen, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_seqno_seen, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !137
  %call42 = tail call i32 @__traceiter_rpcgss_svc_seqno_seen(ptr noundef null, ptr noundef %rqstp, i32 noundef %seqno) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_seen, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_seen, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_seqno_seen.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_seqno_seen.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 498, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_seqno_low(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_seqno_seen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_get_mic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_subsegment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_bytes_from_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_buf_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_unwrap_failed(ptr noundef %rqstp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap_failed, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_unwrap_failed, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !139
  %call42 = tail call i32 @__traceiter_rpcgss_svc_unwrap_failed(ptr noundef null, ptr noundef %rqstp) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !140
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap_failed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_unwrap_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_unwrap_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 230, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_seqno_bad(ptr noundef %rqstp, i32 noundef %expected, i32 noundef %received) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_bad, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_seqno_bad, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !141
  %call42 = tail call i32 @__traceiter_rpcgss_svc_seqno_bad(ptr noundef null, ptr noundef %rqstp, i32 noundef %expected, i32 noundef %received) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_bad, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_bad, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_seqno_bad.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_seqno_bad.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 258, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_mic(ptr noundef %rqstp, i32 noundef %maj_stat) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_mic, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_mic, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !143
  %call42 = tail call i32 @__traceiter_rpcgss_svc_mic(ptr noundef null, ptr noundef %rqstp, i32 noundef %maj_stat) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_mic, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_mic, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_mic.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_mic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 210, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_unwrap_failed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_seqno_bad(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_mic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_unwrap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_shift_buf(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_unwrap(ptr noundef %rqstp, i32 noundef %maj_stat) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_svc_unwrap, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !145
  %call42 = tail call i32 @__traceiter_rpcgss_svc_unwrap(ptr noundef null, ptr noundef %rqstp, i32 noundef %maj_stat) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_svc_unwrap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_rpcgss_svc_unwrap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 209, ptr noundef nonnull @.str.5) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !129
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #19
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_unwrap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_authenticate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_wrap(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svcauth_gss_domain_release_rcu(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -20
  %name = getelementptr i8, ptr %head, i32 -8
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %1) #19
  tail call void @kfree(ptr noundef %add.ptr) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svcauth_unix_set_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gss_service_to_auth_domain_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_create_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_register_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_destroy_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsc_put(ptr noundef %ref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mechctx = getelementptr i8, ptr %ref, i32 112
  %0 = ptrtoint ptr %mechctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mechctx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 @gss_delete_sec_context(ptr noundef %mechctx) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cr_group_info.i = getelementptr i8, ptr %ref, i32 24
  %2 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cr_group_info.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.free_svc_cred.exit_crit_edge, label %do.body.i

if.end.free_svc_cred.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_svc_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #19
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #19, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then2.i, label %do.body.i.free_svc_cred.exit_crit_edge

do.body.i.free_svc_cred.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_svc_cred.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %5 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cr_group_info.i, align 4
  tail call void @groups_free(ptr noundef %6) #19
  br label %free_svc_cred.exit

free_svc_cred.exit:                               ; preds = %if.then2.i, %do.body.i.free_svc_cred.exit_crit_edge, %if.end.free_svc_cred.exit_crit_edge
  %cr_raw_principal.i = getelementptr i8, ptr %ref, i32 32
  %7 = ptrtoint ptr %cr_raw_principal.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cr_raw_principal.i, align 4
  tail call void @kfree(ptr noundef %8) #19
  %cr_principal.i = getelementptr i8, ptr %ref, i32 36
  %9 = ptrtoint ptr %cr_principal.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cr_principal.i, align 4
  tail call void @kfree(ptr noundef %10) #19
  %cr_targ_princ.i = getelementptr i8, ptr %ref, i32 40
  %11 = ptrtoint ptr %cr_targ_princ.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cr_targ_princ.i, align 4
  tail call void @kfree(ptr noundef %12) #19
  %cr_gss_mech.i = getelementptr i8, ptr %ref, i32 44
  %13 = ptrtoint ptr %cr_gss_mech.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cr_gss_mech.i, align 4
  tail call void @gss_mech_put(ptr noundef %14) #19
  %15 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cr_group_info.i, align 4
  %16 = call ptr @memset(ptr %cr_raw_principal.i, i32 0, i32 16)
  %callback_head = getelementptr i8, ptr %ref, i32 116
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @rsc_free_rcu) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsc_upcall(ptr nocapture noundef readnone %cd, ptr nocapture noundef readnone %h) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsc_parse(ptr noundef %cd, ptr noundef %mesg, i32 noundef %mlen) #2 align 64 {
entry:
  %buf.i176 = alloca [50 x i8], align 1
  %ep.i177 = alloca ptr, align 4
  %buf.i164 = alloca [50 x i8], align 1
  %ep.i165 = alloca ptr, align 4
  %buf.i = alloca [50 x i8], align 1
  %ep.i = alloca ptr, align 4
  %buf.i.i = alloca [50 x i8], align 1
  %ll.i.i = alloca i64, align 8
  %boot.i = alloca %struct.timespec64, align 8
  %mesg.addr = alloca ptr, align 4
  %rsci = alloca %struct.rsc, align 8
  %N = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mesg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mesg, ptr %mesg.addr, align 4
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %rsci) #19
  %1 = call ptr @memset(ptr %rsci, i32 0, i32 152)
  %call = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out.thread_crit_edge, label %if.end

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i, label %dup_to_netobj.exit.thread, label %dup_to_netobj.exit

dup_to_netobj.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %data.i199 = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %data.i199 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %data.i199, align 4
  br label %if.end3

dup_to_netobj.exit:                               ; preds = %if.end
  %call.i = call ptr @kmemdup(ptr noundef %mesg, i32 noundef %call, i32 noundef 3264) #19
  %data.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %data.i, align 4
  %tobool4.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i.not, label %dup_to_netobj.exit.out.thread_crit_edge, label %dup_to_netobj.exit.if.end3_crit_edge

dup_to_netobj.exit.if.end3_crit_edge:             ; preds = %dup_to_netobj.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end3

dup_to_netobj.exit.out.thread_crit_edge:          ; preds = %dup_to_netobj.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread

if.end3:                                          ; preds = %dup_to_netobj.exit.if.end3_crit_edge, %dup_to_netobj.exit.thread
  %flags = getelementptr inbounds %struct.cache_head, ptr %rsci, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #19
  %6 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i) #19
  %7 = call ptr @memset(ptr %buf.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ll.i.i) #19
  %8 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %ll.i.i, align 8, !annotation !114
  %call.i.i = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i.i, i32 noundef 50) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %9 = icmp slt i32 %call.i.i, 1
  br i1 %9, label %if.end3.get_time.exit.thread.i_crit_edge, label %if.end3.i.i

if.end3.get_time.exit.thread.i_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_time.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end3
  %call5.i.i = call i32 @kstrtoll(ptr noundef nonnull %buf.i.i, i32 noundef 0, ptr noundef nonnull %ll.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end3.i.i.get_time.exit.thread.i_crit_edge

if.end3.i.i.get_time.exit.thread.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_time.exit.thread.i

get_time.exit.thread.i:                           ; preds = %if.end3.i.i.get_time.exit.thread.i_crit_edge, %if.end3.get_time.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #19
  br label %get_expiry.exit.thread

if.end.i:                                         ; preds = %if.end3.i.i
  %10 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ll.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp.i = icmp slt i64 %11, 0
  br i1 %cmp.i, label %if.end.i.get_expiry.exit.thread_crit_edge, label %get_expiry.exit

if.end.i.get_expiry.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_expiry.exit.thread

get_expiry.exit.thread:                           ; preds = %if.end.i.get_expiry.exit.thread_crit_edge, %get_time.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #19
  br label %out.thread

get_expiry.exit:                                  ; preds = %if.end.i
  call void @getboottime64(ptr noundef nonnull %boot.i) #19
  %12 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %boot.i, align 8
  %sub.i = sub i64 %11, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #19
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp5 = icmp eq i64 %11, %13
  br i1 %cmp5, label %get_expiry.exit.out.thread_crit_edge, label %if.end7

get_expiry.exit.out.thread_crit_edge:             ; preds = %get_expiry.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread

if.end7:                                          ; preds = %get_expiry.exit
  %data.i.i = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle, align 8
  %call.i.i.i = call i32 @full_name_hash(ptr noundef null, ptr noundef %15, i32 noundef %17) #25
  %shr.i.i.i = lshr i32 %call.i.i.i, 22
  %call1.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %rsci, i32 noundef %shr.i.i.i) #19
  %tobool9.not = icmp eq ptr %call1.i, null
  br i1 %tobool9.not, label %if.end7.out.thread_crit_edge, label %if.end11

if.end7.out.thread_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread

if.end11:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #19
  %18 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i) #19
  %19 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i, align 4, !annotation !114
  %call.i159 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i, i32 noundef 50) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %cmp.i160 = icmp slt i32 %call.i159, 0
  br i1 %cmp.i160, label %if.end11.out.thread228_crit_edge, label %if.end.i161

if.end11.out.thread228_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread228

if.end.i161:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %cmp1.i = icmp eq i32 %call.i159, 0
  br i1 %cmp1.i, label %if.then17, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i161
  %call5.i = call i32 @simple_strtol(ptr noundef nonnull %buf.i, ptr noundef nonnull %ep.i, i32 noundef 0) #19
  %20 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i162 = icmp eq i8 %23, 0
  br i1 %tobool.not.i162, label %if.else, label %if.end3.i.out.thread228_crit_edge

if.end3.i.out.thread228_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread228

out.thread228:                                    ; preds = %if.end3.i.out.thread228_crit_edge, %if.end11.out.thread228_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #19
  call fastcc void @rsc_free(ptr noundef nonnull %rsci)
  br label %if.then118

if.then17:                                        ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #19
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #19
  br label %if.end114

if.else:                                          ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #19
  %24 = ptrtoint ptr %N to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %N, align 4, !annotation !114
  %cred = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2
  %25 = call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %cred23 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 99
  %29 = ptrtoint ptr %cred23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cred23, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns, align 4
  %call24 = call i32 @make_kuid(ptr noundef %32, i32 noundef %call5.i) #19
  %33 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call24, ptr %cred, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i164) #19
  %34 = call ptr @memset(ptr %buf.i164, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i165) #19
  %35 = ptrtoint ptr %ep.i165 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i165, align 4, !annotation !114
  %call.i166 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i164, i32 noundef 50) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i166)
  %36 = icmp slt i32 %call.i166, 1
  br i1 %36, label %if.else.get_int.exit175.thread_crit_edge, label %if.end3.i172

if.else.get_int.exit175.thread_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_int.exit175.thread

if.end3.i172:                                     ; preds = %if.else
  %call5.i170 = call i32 @simple_strtol(ptr noundef nonnull %buf.i164, ptr noundef nonnull %ep.i165, i32 noundef 0) #19
  %37 = ptrtoint ptr %ep.i165 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ep.i165, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i171 = icmp eq i8 %40, 0
  br i1 %tobool.not.i171, label %if.end28, label %if.end3.i172.get_int.exit175.thread_crit_edge

if.end3.i172.get_int.exit175.thread_crit_edge:    ; preds = %if.end3.i172
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_int.exit175.thread

get_int.exit175.thread:                           ; preds = %if.end3.i172.get_int.exit175.thread_crit_edge, %if.else.get_int.exit175.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i165) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i164) #19
  br label %cleanup110.thread

if.end28:                                         ; preds = %if.end3.i172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i165) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i164) #19
  %cr_gid = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %cred38 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 99
  %43 = ptrtoint ptr %cred38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cred38, align 16
  %user_ns39 = getelementptr inbounds %struct.cred, ptr %44, i32 0, i32 25
  %45 = ptrtoint ptr %user_ns39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %user_ns39, align 4
  %call40 = call i32 @make_kgid(ptr noundef %46, i32 noundef %call5.i170) #19
  %47 = ptrtoint ptr %cr_gid to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call40, ptr %cr_gid, align 4
  %call42 = call fastcc i32 @get_int(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %N)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end28.cleanup110.thread_crit_edge

if.end28.cleanup110.thread_crit_edge:             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

if.end45:                                         ; preds = %if.end28
  %48 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %N, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %49)
  %50 = icmp ugt i32 %49, 65536
  br i1 %50, label %if.end45.cleanup110.thread_crit_edge, label %if.end49

if.end45.cleanup110.thread_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

if.end49:                                         ; preds = %if.end45
  %call50 = call ptr @groups_alloc(i32 noundef %49) #19
  %cr_group_info = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call50, ptr %cr_group_info, align 8
  %cmp54 = icmp eq ptr %call50, null
  br i1 %cmp54, label %if.end49.cleanup110.thread_crit_edge, label %for.cond.preheader

if.end49.cleanup110.thread_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

for.cond.preheader:                               ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp57236.not = icmp eq i32 %49, 0
  br i1 %cmp57236.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0237 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i176) #19
  %52 = call ptr @memset(ptr %buf.i176, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep.i177) #19
  %53 = ptrtoint ptr %ep.i177 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep.i177, align 4, !annotation !114
  %call.i178 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i176, i32 noundef 50) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i178)
  %54 = icmp slt i32 %call.i178, 1
  br i1 %54, label %for.body.get_int.exit187.thread_crit_edge, label %if.end3.i184

for.body.get_int.exit187.thread_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_int.exit187.thread

if.end3.i184:                                     ; preds = %for.body
  %call5.i182 = call i32 @simple_strtol(ptr noundef nonnull %buf.i176, ptr noundef nonnull %ep.i177, i32 noundef 0) #19
  %55 = ptrtoint ptr %ep.i177 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ep.i177, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i183 = icmp eq i8 %58, 0
  br i1 %tobool.not.i183, label %if.end61, label %if.end3.i184.get_int.exit187.thread_crit_edge

if.end3.i184.get_int.exit187.thread_crit_edge:    ; preds = %if.end3.i184
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_int.exit187.thread

get_int.exit187.thread:                           ; preds = %if.end3.i184.get_int.exit187.thread_crit_edge, %for.body.get_int.exit187.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i177) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i176) #19
  br label %cleanup110.thread

if.end61:                                         ; preds = %if.end3.i184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep.i177) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i176) #19
  %59 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task, align 8
  %cred70 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 99
  %61 = ptrtoint ptr %cred70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cred70, align 16
  %user_ns71 = getelementptr inbounds %struct.cred, ptr %62, i32 0, i32 25
  %63 = ptrtoint ptr %user_ns71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %user_ns71, align 4
  %call72 = call i32 @make_kgid(ptr noundef %64, i32 noundef %call5.i182) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call72)
  %cmp.i188.not = icmp eq i32 %call72, -1
  br i1 %cmp.i188.not, label %if.end61.cleanup110.thread_crit_edge, label %for.inc

if.end61.cleanup110.thread_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

for.inc:                                          ; preds = %if.end61
  %65 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cr_group_info, align 8
  %arrayidx = getelementptr %struct.group_info, ptr %66, i32 0, i32 2, i32 %i.0237
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call72, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0237, 1
  %exitcond.not = icmp eq i32 %inc, %49
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %68 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cr_group_info, align 8
  call void @groups_sort(ptr noundef %69) #19
  %call82 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %for.end.cleanup110.thread_crit_edge, label %if.end85

for.end.cleanup110.thread_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

if.end85:                                         ; preds = %for.end
  %call86 = call ptr @gss_mech_get_by_name(ptr noundef %mesg) #19
  %cr_gss_mech = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 7
  %70 = ptrtoint ptr %cr_gss_mech to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call86, ptr %cr_gss_mech, align 4
  %tobool88.not = icmp eq ptr %call86, null
  br i1 %tobool88.not, label %if.end85.cleanup110.thread_crit_edge, label %if.end90

if.end85.cleanup110.thread_crit_edge:             ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

if.end90:                                         ; preds = %if.end85
  %call91 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.end90.cleanup110.thread_crit_edge, label %if.end94

if.end90.cleanup110.thread_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

if.end94:                                         ; preds = %if.end90
  %mechctx = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 4
  %call95 = call i32 @gss_import_sec_context(ptr noundef %mesg, i32 noundef %call91, ptr noundef nonnull %call86, ptr noundef %mechctx, ptr noundef null, i32 noundef 3264) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.cleanup110.thread_crit_edge

if.end94.cleanup110.thread_crit_edge:             ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

if.end98:                                         ; preds = %if.end94
  %call99 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp sgt i32 %call99, 0
  br i1 %cmp100, label %if.then101, label %if.end98.cleanup110_crit_edge

if.end98.cleanup110_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110

if.then101:                                       ; preds = %if.end98
  %call102 = call noalias ptr @kstrdup(ptr noundef %mesg, i32 noundef 3264) #19
  %cr_principal = getelementptr inbounds %struct.rsc, ptr %rsci, i32 0, i32 2, i32 5
  %71 = ptrtoint ptr %cr_principal to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call102, ptr %cr_principal, align 4
  %tobool106.not = icmp eq ptr %call102, null
  br i1 %tobool106.not, label %if.then101.cleanup110.thread_crit_edge, label %if.then101.cleanup110_crit_edge

if.then101.cleanup110_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110

if.then101.cleanup110.thread_crit_edge:           ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup110.thread

cleanup110.thread:                                ; preds = %if.then101.cleanup110.thread_crit_edge, %if.end94.cleanup110.thread_crit_edge, %if.end90.cleanup110.thread_crit_edge, %if.end85.cleanup110.thread_crit_edge, %for.end.cleanup110.thread_crit_edge, %if.end61.cleanup110.thread_crit_edge, %get_int.exit187.thread, %if.end49.cleanup110.thread_crit_edge, %if.end45.cleanup110.thread_crit_edge, %if.end28.cleanup110.thread_crit_edge, %get_int.exit175.thread
  %status.0.ph = phi i32 [ -22, %get_int.exit175.thread ], [ -12, %if.then101.cleanup110.thread_crit_edge ], [ %call95, %if.end94.cleanup110.thread_crit_edge ], [ -22, %if.end90.cleanup110.thread_crit_edge ], [ -95, %if.end85.cleanup110.thread_crit_edge ], [ -22, %for.end.cleanup110.thread_crit_edge ], [ -12, %if.end49.cleanup110.thread_crit_edge ], [ -22, %if.end45.cleanup110.thread_crit_edge ], [ -22, %if.end28.cleanup110.thread_crit_edge ], [ -22, %get_int.exit187.thread ], [ -22, %if.end61.cleanup110.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #19
  br label %out

cleanup110:                                       ; preds = %if.then101.cleanup110_crit_edge, %if.end98.cleanup110_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #19
  br label %if.end114

if.end114:                                        ; preds = %cleanup110, %if.then17
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %rsci, i32 0, i32 1
  %72 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %sub.i, ptr %expiry_time, align 8
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i, align 4
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %handle, align 8
  %call.i.i.i191 = call i32 @full_name_hash(ptr noundef null, ptr noundef %74, i32 noundef %76) #25
  %shr.i.i.i192 = lshr i32 %call.i.i.i191, 22
  %call2.i = call ptr @sunrpc_cache_update(ptr noundef %cd, ptr noundef nonnull %rsci, ptr noundef nonnull %call1.i, i32 noundef %shr.i.i.i192) #19
  br label %out

out.thread:                                       ; preds = %if.end7.out.thread_crit_edge, %get_expiry.exit.out.thread_crit_edge, %get_expiry.exit.thread, %dup_to_netobj.exit.out.thread_crit_edge, %entry.out.thread_crit_edge
  call fastcc void @rsc_free(ptr noundef nonnull %rsci)
  br label %cleanup122

out:                                              ; preds = %if.end114, %cleanup110.thread
  %status.1 = phi i32 [ 0, %if.end114 ], [ %status.0.ph, %cleanup110.thread ]
  %rscp.0 = phi ptr [ %call2.i, %if.end114 ], [ %call1.i, %cleanup110.thread ]
  call fastcc void @rsc_free(ptr noundef nonnull %rsci)
  %tobool117.not = icmp eq ptr %rscp.0, null
  br i1 %tobool117.not, label %out.cleanup122_crit_edge, label %out.if.then118_crit_edge

out.if.then118_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then118

out.cleanup122_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup122

if.then118:                                       ; preds = %out.if.then118_crit_edge, %out.thread228
  %rscp.0233 = phi ptr [ %call1.i, %out.thread228 ], [ %rscp.0, %out.if.then118_crit_edge ]
  %status.1232 = phi i32 [ -22, %out.thread228 ], [ %status.1, %out.if.then118_crit_edge ]
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %rscp.0233, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #19
  %77 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp.i193 = icmp ult i32 %78, 3
  br i1 %cmp.i193, label %land.lhs.true.i, label %if.then118.if.end.i195_crit_edge

if.then118.if.end.i195_crit_edge:                 ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i195

land.lhs.true.i:                                  ; preds = %if.then118
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %rscp.0233, i32 0, i32 1
  %79 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 18
  %81 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %82)
  %cmp1.i194 = icmp slt i64 %80, %82
  br i1 %cmp1.i194, label %if.then.i, label %land.lhs.true.i.if.end.i195_crit_edge

land.lhs.true.i.if.end.i195_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i195

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %83 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %80, ptr %nextcheck.i, align 8
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then.i, %land.lhs.true.i.if.end.i195_crit_edge, %if.then118.if.end.i195_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 5
  %84 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !110
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #19
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #19, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup122_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.cleanup122_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup122

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #19
  br label %cleanup122

if.then.i.i:                                      ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !113
  call void %85(ptr noundef %ref.i) #19
  br label %cleanup122

cleanup122:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup122_crit_edge, %out.cleanup122_crit_edge, %out.thread
  %retval.0 = phi i32 [ -12, %out.cleanup122_crit_edge ], [ -12, %out.thread ], [ %status.1232, %if.end5.i.i.i.i.i.cleanup122_crit_edge ], [ %status.1232, %if.then10.i.i.i.i.i ], [ %status.1232, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %rsci) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @rsc_alloc() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 152) #22
  ret ptr %call7.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsc_match(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.rsc, ptr %a, i32 0, i32 1
  %handle5 = getelementptr inbounds %struct.rsc, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle, align 4
  %2 = ptrtoint ptr %handle5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  br i1 %cmp.i, label %land.rhs.i, label %entry.netobj_equal.exit_crit_edge

entry.netobj_equal.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %netobj_equal.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %data.i = getelementptr inbounds %struct.rsc, ptr %a, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %data2.i = getelementptr inbounds %struct.rsc, ptr %b, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data2.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %5, ptr %7, i32 %1) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp4.i = icmp eq i32 %bcmp.i, 0
  %phi.cast.i = zext i1 %cmp4.i to i32
  br label %netobj_equal.exit

netobj_equal.exit:                                ; preds = %land.rhs.i, %entry.netobj_equal.exit_crit_edge
  %8 = phi i32 [ 0, %entry.netobj_equal.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rsc_init(ptr nocapture noundef writeonly %cnew, ptr nocapture noundef %ctmp) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.rsc, ptr %ctmp, i32 0, i32 1
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle, align 8
  %handle5 = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 1
  %2 = ptrtoint ptr %handle5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %handle5, align 8
  store i32 0, ptr %handle, align 8
  %data = getelementptr inbounds %struct.rsc, ptr %ctmp, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %data11 = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %data11, align 4
  store ptr null, ptr %data, align 4
  %mechctx = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 4
  %6 = ptrtoint ptr %mechctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mechctx, align 8
  %cr_group_info.i = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cr_group_info.i, align 4
  %cr_raw_principal.i = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 2, i32 4
  %8 = call ptr @memset(ptr %cr_raw_principal.i, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_rsc(ptr noundef %cnew, ptr nocapture noundef %ctmp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mechctx = getelementptr inbounds %struct.rsc, ptr %ctmp, i32 0, i32 4
  %0 = ptrtoint ptr %mechctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mechctx, align 8
  %mechctx5 = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 4
  %2 = ptrtoint ptr %mechctx5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %mechctx5, align 8
  store ptr null, ptr %mechctx, align 8
  %seqdata = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 3
  %3 = call ptr @memset(ptr %seqdata, i32 0, i32 64)
  %sd_lock = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %sd_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @update_rsc.__key, i16 noundef signext 3) #19
  %cred = getelementptr inbounds %struct.rsc, ptr %cnew, i32 0, i32 2
  %cred8 = getelementptr inbounds %struct.rsc, ptr %ctmp, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %cred, ptr %cred8, i32 32)
  %cr_group_info.i = getelementptr inbounds %struct.rsc, ptr %ctmp, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cr_group_info.i, align 4
  %cr_raw_principal.i = getelementptr inbounds %struct.rsc, ptr %ctmp, i32 0, i32 2, i32 4
  %6 = call ptr @memset(ptr %cr_raw_principal.i, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsc_free_rcu(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -140
  %data = getelementptr i8, ptr %head, i32 -104
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #19
  tail call void @kfree(ptr noundef %add.ptr) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qword_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_int(ptr noundef %bpp, ptr nocapture noundef writeonly %anint) unnamed_addr #7 align 64 {
entry:
  %buf = alloca [50 x i8], align 1
  %ep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #19
  %0 = call ptr @memset(ptr %buf, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #19
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !114
  %call = call i32 @qword_get(ptr noundef %bpp, ptr noundef nonnull %buf, i32 noundef 50) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = call i32 @simple_strtol(ptr noundef nonnull %buf, ptr noundef nonnull %ep, i32 noundef 0) #19
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %anint to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call5, ptr %anint, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gss_mech_get_by_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_put(ptr noundef %ref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr i8, ptr %ref, i32 48
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @rsi_free_rcu) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_upcall(ptr noundef %cd, ptr noundef %h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef %cd, ptr noundef %h) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_request(ptr nocapture noundef readnone %cd, ptr nocapture noundef readonly %h, ptr noundef %bpp, ptr noundef %blen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %in_handle = getelementptr inbounds %struct.rsi, ptr %h, i32 0, i32 1
  %data = getelementptr inbounds %struct.rsi, ptr %h, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %in_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_handle, align 8
  tail call void @qword_addhex(ptr noundef %bpp, ptr noundef %blen, ptr noundef %1, i32 noundef %3) #19
  %in_token = getelementptr inbounds %struct.rsi, ptr %h, i32 0, i32 2
  %data2 = getelementptr inbounds %struct.rsi, ptr %h, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %6 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_token, align 8
  tail call void @qword_addhex(ptr noundef %bpp, ptr noundef %blen, ptr noundef %5, i32 noundef %7) #19
  %8 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bpp, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 -1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %blen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @rsi_request.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end32_crit_edge, label %if.then, !prof !112

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end32

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rsi_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.18) #19
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_parse(ptr noundef %cd, ptr noundef %mesg, i32 noundef %mlen) #2 align 64 {
entry:
  %buf.i.i = alloca [50 x i8], align 1
  %ll.i.i = alloca i64, align 8
  %boot.i = alloca %struct.timespec64, align 8
  %mesg.addr = alloca ptr, align 4
  %ep = alloca ptr, align 4
  %rsii = alloca %struct.rsi, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mesg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mesg, ptr %mesg.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #19
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !114
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rsii) #19
  %2 = call ptr @memset(ptr %rsii, i32 0, i32 80)
  %call = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end:                                           ; preds = %entry
  %in_handle = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 1
  %3 = ptrtoint ptr %in_handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %in_handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i, label %dup_to_netobj.exit.thread, label %dup_to_netobj.exit

dup_to_netobj.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %data.i124 = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %data.i124 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data.i124, align 4
  br label %if.end3

dup_to_netobj.exit:                               ; preds = %if.end
  %call.i = call ptr @kmemdup(ptr noundef %mesg, i32 noundef %call, i32 noundef 3264) #19
  %data.i = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %data.i, align 4
  %tobool4.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i.not, label %dup_to_netobj.exit.out_crit_edge, label %dup_to_netobj.exit.if.end3_crit_edge

dup_to_netobj.exit.if.end3_crit_edge:             ; preds = %dup_to_netobj.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end3

dup_to_netobj.exit.out_crit_edge:                 ; preds = %dup_to_netobj.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end3:                                          ; preds = %dup_to_netobj.exit.if.end3_crit_edge, %dup_to_netobj.exit.thread
  %call4 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end7:                                          ; preds = %if.end3
  %in_token = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 2
  %6 = ptrtoint ptr %in_token to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %in_token, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i89 = icmp eq i32 %call4, 0
  br i1 %tobool.not.i89, label %dup_to_netobj.exit98.thread, label %dup_to_netobj.exit98

dup_to_netobj.exit98.thread:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %data.i93131 = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %data.i93131 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data.i93131, align 4
  br label %if.end11

dup_to_netobj.exit98:                             ; preds = %if.end7
  %call.i90 = call ptr @kmemdup(ptr noundef %mesg, i32 noundef %call4, i32 noundef 3264) #19
  %data.i93 = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %data.i93 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i90, ptr %data.i93, align 4
  %tobool4.not.i95.not = icmp eq ptr %call.i90, null
  br i1 %tobool4.not.i95.not, label %dup_to_netobj.exit98.out_crit_edge, label %dup_to_netobj.exit98.if.end11_crit_edge

dup_to_netobj.exit98.if.end11_crit_edge:          ; preds = %dup_to_netobj.exit98
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

dup_to_netobj.exit98.out_crit_edge:               ; preds = %dup_to_netobj.exit98
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end11:                                         ; preds = %dup_to_netobj.exit98.if.end11_crit_edge, %dup_to_netobj.exit98.thread
  %data.i.i = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %11 = ptrtoint ptr %in_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in_handle, align 8
  %call.i.i.i = call i32 @full_name_hash(ptr noundef null, ptr noundef %10, i32 noundef %12) #25
  %data2.i.i = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data2.i.i, align 4
  %15 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in_token, align 8
  %call.i9.i.i = call i32 @full_name_hash(ptr noundef null, ptr noundef %14, i32 noundef %16) #25
  %shr.i11.i.i = xor i32 %call.i9.i.i, %call.i.i.i
  %xor.i.i = lshr i32 %shr.i11.i.i, 26
  %call1.i = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %cd, ptr noundef nonnull %rsii, i32 noundef %xor.i.i) #19
  %tobool13.not = icmp eq ptr %call1.i, null
  br i1 %tobool13.not, label %if.end11.out_crit_edge, label %if.end15

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end15:                                         ; preds = %if.end11
  %flags = getelementptr inbounds %struct.cache_head, ptr %rsii, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot.i) #19
  %18 = call ptr @memset(ptr %boot.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i.i) #19
  %19 = call ptr @memset(ptr %buf.i.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ll.i.i) #19
  %20 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %ll.i.i, align 8, !annotation !114
  %call.i.i = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef nonnull %buf.i.i, i32 noundef 50) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %21 = icmp slt i32 %call.i.i, 1
  br i1 %21, label %if.end15.get_time.exit.thread.i_crit_edge, label %if.end3.i.i

if.end15.get_time.exit.thread.i_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_time.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end15
  %call5.i.i = call i32 @kstrtoll(ptr noundef nonnull %buf.i.i, i32 noundef 0, ptr noundef nonnull %ll.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end3.i.i.get_time.exit.thread.i_crit_edge

if.end3.i.i.get_time.exit.thread.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_time.exit.thread.i

get_time.exit.thread.i:                           ; preds = %if.end3.i.i.get_time.exit.thread.i_crit_edge, %if.end15.get_time.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #19
  br label %get_expiry.exit.thread

if.end.i:                                         ; preds = %if.end3.i.i
  %22 = ptrtoint ptr %ll.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ll.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ll.i.i) #19
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp.i = icmp slt i64 %23, 0
  br i1 %cmp.i, label %if.end.i.get_expiry.exit.thread_crit_edge, label %get_expiry.exit

if.end.i.get_expiry.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_expiry.exit.thread

get_expiry.exit.thread:                           ; preds = %if.end.i.get_expiry.exit.thread_crit_edge, %get_time.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #19
  br label %out

get_expiry.exit:                                  ; preds = %if.end.i
  call void @getboottime64(ptr noundef nonnull %boot.i) #19
  %24 = ptrtoint ptr %boot.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %boot.i, align 8
  %sub.i = sub i64 %23, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot.i) #19
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp17 = icmp eq i64 %23, %25
  br i1 %cmp17, label %get_expiry.exit.out_crit_edge, label %if.end19

get_expiry.exit.out_crit_edge:                    ; preds = %get_expiry.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end19:                                         ; preds = %get_expiry.exit
  %call20 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %if.end19.out_crit_edge, label %if.end23

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @simple_strtoul(ptr noundef %mesg, ptr noundef nonnull %ep, i32 noundef 10) #19
  %major_status = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 5
  %26 = ptrtoint ptr %major_status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call24, ptr %major_status, align 8
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not = icmp eq i8 %30, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end27:                                         ; preds = %if.end23
  %call28 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %if.end27.out_crit_edge, label %if.end31

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end31:                                         ; preds = %if.end27
  %call32 = call i32 @simple_strtoul(ptr noundef %mesg, ptr noundef nonnull %ep, i32 noundef 10) #19
  %minor_status = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 6
  %31 = ptrtoint ptr %minor_status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call32, ptr %minor_status, align 4
  %32 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool33.not = icmp eq i8 %35, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end35:                                         ; preds = %if.end31
  %call36 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end35.out_crit_edge, label %if.end39

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end39:                                         ; preds = %if.end35
  %out_handle = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 3
  %36 = ptrtoint ptr %out_handle to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call36, ptr %out_handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool.not.i100 = icmp eq i32 %call36, 0
  br i1 %tobool.not.i100, label %dup_to_netobj.exit109.thread, label %dup_to_netobj.exit109

dup_to_netobj.exit109.thread:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  %data.i104140 = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %data.i104140 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %data.i104140, align 4
  br label %if.end43

dup_to_netobj.exit109:                            ; preds = %if.end39
  %call.i101 = call ptr @kmemdup(ptr noundef %mesg, i32 noundef %call36, i32 noundef 3264) #19
  %data.i104 = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %data.i104 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i101, ptr %data.i104, align 4
  %tobool4.not.i106.not = icmp eq ptr %call.i101, null
  br i1 %tobool4.not.i106.not, label %dup_to_netobj.exit109.out_crit_edge, label %dup_to_netobj.exit109.if.end43_crit_edge

dup_to_netobj.exit109.if.end43_crit_edge:         ; preds = %dup_to_netobj.exit109
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43

dup_to_netobj.exit109.out_crit_edge:              ; preds = %dup_to_netobj.exit109
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end43:                                         ; preds = %dup_to_netobj.exit109.if.end43_crit_edge, %dup_to_netobj.exit109.thread
  %call44 = call i32 @qword_get(ptr noundef nonnull %mesg.addr, ptr noundef %mesg, i32 noundef %mlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.out_crit_edge, label %if.end47

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end47:                                         ; preds = %if.end43
  %out_token = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 4
  %39 = ptrtoint ptr %out_token to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call44, ptr %out_token, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool.not.i110 = icmp eq i32 %call44, 0
  br i1 %tobool.not.i110, label %dup_to_netobj.exit119.thread, label %dup_to_netobj.exit119

dup_to_netobj.exit119.thread:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #21
  %data.i114147 = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %data.i114147 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %data.i114147, align 4
  br label %if.end51

dup_to_netobj.exit119:                            ; preds = %if.end47
  %call.i111 = call ptr @kmemdup(ptr noundef %mesg, i32 noundef %call44, i32 noundef 3264) #19
  %data.i114 = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %data.i114 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i111, ptr %data.i114, align 4
  %tobool4.not.i116.not = icmp eq ptr %call.i111, null
  br i1 %tobool4.not.i116.not, label %dup_to_netobj.exit119.out_crit_edge, label %dup_to_netobj.exit119.if.end51_crit_edge

dup_to_netobj.exit119.if.end51_crit_edge:         ; preds = %dup_to_netobj.exit119
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end51

dup_to_netobj.exit119.out_crit_edge:              ; preds = %dup_to_netobj.exit119
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end51:                                         ; preds = %dup_to_netobj.exit119.if.end51_crit_edge, %dup_to_netobj.exit119.thread
  %expiry_time = getelementptr inbounds %struct.cache_head, ptr %rsii, i32 0, i32 1
  %42 = ptrtoint ptr %expiry_time to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %sub.i, ptr %expiry_time, align 8
  %call53 = call fastcc ptr @rsi_update(ptr noundef %cd, ptr noundef nonnull %rsii, ptr noundef nonnull %call1.i)
  br label %out

out:                                              ; preds = %if.end51, %dup_to_netobj.exit119.out_crit_edge, %if.end43.out_crit_edge, %dup_to_netobj.exit109.out_crit_edge, %if.end35.out_crit_edge, %if.end31.out_crit_edge, %if.end27.out_crit_edge, %if.end23.out_crit_edge, %if.end19.out_crit_edge, %get_expiry.exit.out_crit_edge, %get_expiry.exit.thread, %if.end11.out_crit_edge, %dup_to_netobj.exit98.out_crit_edge, %if.end3.out_crit_edge, %dup_to_netobj.exit.out_crit_edge, %entry.out_crit_edge
  %rsip.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %dup_to_netobj.exit.out_crit_edge ], [ null, %if.end3.out_crit_edge ], [ null, %dup_to_netobj.exit98.out_crit_edge ], [ %call1.i, %get_expiry.exit.out_crit_edge ], [ %call1.i, %if.end19.out_crit_edge ], [ %call1.i, %if.end23.out_crit_edge ], [ %call1.i, %if.end27.out_crit_edge ], [ %call1.i, %if.end31.out_crit_edge ], [ %call1.i, %if.end35.out_crit_edge ], [ %call1.i, %dup_to_netobj.exit109.out_crit_edge ], [ %call1.i, %if.end43.out_crit_edge ], [ %call1.i, %dup_to_netobj.exit119.out_crit_edge ], [ %call53, %if.end51 ], [ null, %if.end11.out_crit_edge ], [ %call1.i, %get_expiry.exit.thread ]
  %status.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -12, %dup_to_netobj.exit.out_crit_edge ], [ -22, %if.end3.out_crit_edge ], [ -12, %dup_to_netobj.exit98.out_crit_edge ], [ -22, %get_expiry.exit.out_crit_edge ], [ -22, %if.end19.out_crit_edge ], [ -22, %if.end23.out_crit_edge ], [ -22, %if.end27.out_crit_edge ], [ -22, %if.end31.out_crit_edge ], [ -22, %if.end35.out_crit_edge ], [ -12, %dup_to_netobj.exit109.out_crit_edge ], [ -22, %if.end43.out_crit_edge ], [ -12, %dup_to_netobj.exit119.out_crit_edge ], [ 0, %if.end51 ], [ -12, %if.end11.out_crit_edge ], [ -22, %get_expiry.exit.thread ]
  %data.i120 = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %data.i120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i120, align 4
  call void @kfree(ptr noundef %44) #19
  %data1.i = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data1.i, align 4
  call void @kfree(ptr noundef %46) #19
  %data2.i = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data2.i, align 4
  call void @kfree(ptr noundef %48) #19
  %data3.i = getelementptr inbounds %struct.rsi, ptr %rsii, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data3.i, align 4
  call void @kfree(ptr noundef %50) #19
  %tobool54.not = icmp eq ptr %rsip.0, null
  br i1 %tobool54.not, label %out.if.end57_crit_edge, label %if.then55

out.if.end57_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end57

if.then55:                                        ; preds = %out
  %ref.i = getelementptr inbounds %struct.cache_head, ptr %rsip.0, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #19
  %51 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp.i121 = icmp ult i32 %52, 3
  br i1 %cmp.i121, label %land.lhs.true.i, label %if.then55.if.end.i122_crit_edge

if.then55.if.end.i122_crit_edge:                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i122

land.lhs.true.i:                                  ; preds = %if.then55
  %expiry_time.i = getelementptr inbounds %struct.cache_head, ptr %rsip.0, i32 0, i32 1
  %53 = ptrtoint ptr %expiry_time.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %expiry_time.i, align 8
  %nextcheck.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 18
  %55 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %nextcheck.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %56)
  %cmp1.i = icmp slt i64 %54, %56
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end.i122_crit_edge

land.lhs.true.i.if.end.i122_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i122

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %57 = ptrtoint ptr %nextcheck.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %54, ptr %nextcheck.i, align 8
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.then.i, %land.lhs.true.i.if.end.i122_crit_edge, %if.then55.if.end.i122_crit_edge
  %cache_put.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 5
  %58 = ptrtoint ptr %cache_put.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cache_put.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !110
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #19
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #19, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end57_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.if.end57_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end57

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #19
  br label %if.end57

if.then.i.i:                                      ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !113
  call void %59(ptr noundef %ref.i) #19
  br label %if.end57

if.end57:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end57_crit_edge, %out.if.end57_crit_edge
  %status.1 = phi i32 [ -12, %out.if.end57_crit_edge ], [ %status.0, %if.end5.i.i.i.i.i.if.end57_crit_edge ], [ %status.0, %if.then10.i.i.i.i.i ], [ %status.0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rsii) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #19
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @rsi_alloc() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 80) #22
  ret ptr %call7.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_match(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %in_handle = getelementptr inbounds %struct.rsi, ptr %a, i32 0, i32 1
  %in_handle5 = getelementptr inbounds %struct.rsi, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %in_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_handle, align 4
  %2 = ptrtoint ptr %in_handle5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_handle5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  br i1 %cmp.i, label %netobj_equal.exit, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

netobj_equal.exit:                                ; preds = %entry
  %data.i = getelementptr inbounds %struct.rsi, ptr %a, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %data2.i = getelementptr inbounds %struct.rsi, ptr %b, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data2.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %5, ptr %7, i32 %1) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp4.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp4.i.not, label %land.rhs, label %netobj_equal.exit.land.end_crit_edge

netobj_equal.exit.land.end_crit_edge:             ; preds = %netobj_equal.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.rhs:                                         ; preds = %netobj_equal.exit
  %in_token = getelementptr inbounds %struct.rsi, ptr %a, i32 0, i32 2
  %in_token6 = getelementptr inbounds %struct.rsi, ptr %b, i32 0, i32 2
  %8 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_token, align 4
  %10 = ptrtoint ptr %in_token6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_token6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i11 = icmp eq i32 %9, %11
  br i1 %cmp.i11, label %land.rhs.i17, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.rhs.i17:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  %data.i12 = getelementptr inbounds %struct.rsi, ptr %a, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %data.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i12, align 4
  %data2.i13 = getelementptr inbounds %struct.rsi, ptr %b, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %data2.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data2.i13, align 4
  %bcmp.i14 = tail call i32 @bcmp(ptr %13, ptr %15, i32 %9) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i14)
  %cmp4.i15 = icmp eq i32 %bcmp.i14, 0
  %phi.cast20 = zext i1 %cmp4.i15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs.i17, %land.rhs.land.end_crit_edge, %netobj_equal.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i32 [ 0, %netobj_equal.exit.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ 0, %land.rhs.land.end_crit_edge ], [ %phi.cast20, %land.rhs.i17 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rsi_init(ptr nocapture noundef writeonly %cnew, ptr nocapture noundef %citem) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %out_handle = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 3
  %in_handle = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 1
  %0 = call ptr @memset(ptr %out_handle, i32 0, i32 16)
  %1 = ptrtoint ptr %in_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in_handle, align 8
  %in_handle9 = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 1
  %3 = ptrtoint ptr %in_handle9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %in_handle9, align 8
  store i32 0, ptr %in_handle, align 8
  %in_token = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 2
  %4 = ptrtoint ptr %in_token to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_token, align 8
  %in_token14 = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 2
  %6 = ptrtoint ptr %in_token14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %in_token14, align 8
  store i32 0, ptr %in_token, align 8
  %data19 = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data19, align 4
  %data21 = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %data21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %data21, align 4
  store ptr null, ptr %data19, align 4
  %data25 = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data25, align 4
  %data27 = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %data27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %data27, align 4
  store ptr null, ptr %data25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_rsi(ptr nocapture noundef %cnew, ptr nocapture noundef %citem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.rhs, label %entry.do.body8_crit_edge, !prof !112

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body8

lor.rhs:                                          ; preds = %entry
  %data4 = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end13, label %lor.rhs.do.body8_crit_edge, !prof !112

lor.rhs.do.body8_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body8

do.body8:                                         ; preds = %lor.rhs.do.body8_crit_edge, %entry.do.body8_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/svcauth_gss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #19, !srcloc !147
  unreachable

do.end13:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #21
  %out_handle = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 3
  %out_handle14 = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 3
  %4 = ptrtoint ptr %out_handle14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out_handle14, align 8
  %6 = ptrtoint ptr %out_handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %out_handle, align 8
  store i32 0, ptr %out_handle14, align 8
  %out_token19 = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 4
  %7 = ptrtoint ptr %out_token19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_token19, align 8
  %out_token21 = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 4
  %9 = ptrtoint ptr %out_token21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %out_token21, align 8
  store i32 0, ptr %out_token19, align 8
  %data26 = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data26, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %data, align 4
  store ptr null, ptr %data26, align 4
  %data32 = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data32, align 4
  %15 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %data4, align 4
  store ptr null, ptr %data32, align 4
  %major_status = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 5
  %16 = ptrtoint ptr %major_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %major_status, align 8
  %major_status37 = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 5
  %18 = ptrtoint ptr %major_status37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %major_status37, align 8
  %minor_status = getelementptr inbounds %struct.rsi, ptr %citem, i32 0, i32 6
  %19 = ptrtoint ptr %minor_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %minor_status, align 4
  %minor_status38 = getelementptr inbounds %struct.rsi, ptr %cnew, i32 0, i32 6
  %21 = ptrtoint ptr %minor_status38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %minor_status38, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_free_rcu(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -72
  %data.i = getelementptr i8, ptr %head, i32 -36
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %1) #19
  %data1.i = getelementptr i8, ptr %head, i32 -28
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  tail call void @kfree(ptr noundef %3) #19
  %data2.i = getelementptr i8, ptr %head, i32 -20
  %4 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2.i, align 4
  tail call void @kfree(ptr noundef %5) #19
  %data3.i = getelementptr i8, ptr %head, i32 -12
  %6 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3.i, align 4
  tail call void @kfree(ptr noundef %7) #19
  tail call void @kfree(ptr noundef %add.ptr) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_addhex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rsi_update(ptr noundef %cd, ptr noundef %new, ptr noundef %old) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %in_handle.i = getelementptr inbounds %struct.rsi, ptr %new, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.rsi, ptr %new, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %in_handle.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_handle.i, align 8
  %call.i.i = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %1, i32 noundef %3) #25
  %in_token.i = getelementptr inbounds %struct.rsi, ptr %new, i32 0, i32 2
  %data2.i = getelementptr inbounds %struct.rsi, ptr %new, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2.i, align 4
  %6 = ptrtoint ptr %in_token.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_token.i, align 8
  %call.i9.i = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %5, i32 noundef %7) #25
  %shr.i11.i = xor i32 %call.i9.i, %call.i.i
  %xor.i = lshr i32 %shr.i11.i, 26
  %call2 = tail call ptr @sunrpc_cache_update(ptr noundef %cd, ptr noundef %new, ptr noundef %old, i32 noundef %xor.i) #19
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_gssp_clnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_gssp(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  %tbuf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %4 = load i32, ptr @sunrpc_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %6 to i32
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %tbuf) #19
  %use_gss_proxy = getelementptr inbounds %struct.sunrpc_net, ptr %call2, i32 0, i32 17
  %7 = call ptr @memset(ptr %tbuf, i32 255, i32 10)
  %8 = ptrtoint ptr %use_gss_proxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_gss_proxy, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 10, ptr noundef nonnull @.str.20, i32 noundef %9)
  %call5 = call i32 @strlen(ptr noundef nonnull %tbuf) #27
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %conv)
  %cmp.not = icmp ugt i32 %call5, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %call5, %conv
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %add.ptr = getelementptr i8, ptr %tbuf, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.i.i = icmp slt i32 %10, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !112

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %10, i1 noundef zeroext true) #19
  call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #19
  %call.i.i = call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %10, i32 -1226833920) #28, !srcloc !148
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %10) #19
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %10) #19
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %10, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %10, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end14, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end14:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #21
  %conv15 = zext i32 %10 to i64
  %12 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ppos, align 8
  %add = add i64 %13, %conv15
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %tbuf) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_gssp(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #2 align 64 {
entry:
  %tbuf = alloca [20 x i8], align 1
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tbuf) #19
  %4 = call ptr @memset(ptr %tbuf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #19
  %5 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %i, align 4, !annotation !114
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp ne i64 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count)
  %cmp = icmp ugt i32 %count, 19
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %tbuf, i32 noundef %count, i1 noundef zeroext false) #19
  call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #19
  %call.i.i = call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #28, !srcloc !149
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !112

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbuf, i32 noundef %count) #19
  %9 = call i32 @llvm.read_register.i32(metadata !99) #19
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !150
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #19, !srcloc !151
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !152
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tbuf, ptr noundef %buf, i32 noundef %count) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #19, !srcloc !151
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !152
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.then11.i.i, !prof !112

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %tbuf, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [20 x i8], ptr %tbuf, i32 0, i32 %count
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %tbuf, i32 noundef 0, ptr noundef nonnull %i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp11.not = icmp eq i32 %15, 1
  br i1 %cmp11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call14 = call i32 @set_gssp_clnt(ptr noundef %3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = call fastcc i32 @set_gss_proxy(ptr noundef %3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %count.call18 = select i1 %tobool19.not, i32 %count, i32 %call18
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %count.call18, %if.end17 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tbuf) #19
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_gssp_clnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_unregister_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_gssp_clnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nobuiltin nounwind }
attributes #27 = { nobuiltin }
attributes #28 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !86, !88, !90, !92, !94, !95, !97}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__ksymtab_svcauth_gss_flavor, !1, !"__ksymtab_svcauth_gss_flavor", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 831, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 852, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @svcauth_gss_register_pseudoflavor._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @svcauth_gss_register_pseudoflavor._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_svcauth_gss_register_pseudoflavor, !9, !"__ksymtab_svcauth_gss_register_pseudoflavor", i1 false, i1 false}
!9 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 867, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 1905, i32 11}
!12 = !{ptr @svcauthops_gss, !13, !"svcauthops_gss", i1 false, i1 false}
!13 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 1904, i32 24}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 1414, i32 2}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/trace/events/rpcgss.h", i32 260, i32 1}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gss_proxy_save_rsc.ctxhctr, !37, !"ctxhctr", i1 false, i1 false}
!37 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 1280, i32 20}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 717, i32 2}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/trace/events/rpcgss.h", i32 497, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/trace/events/rpcgss.h", i32 500, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/trace/events/rpcgss.h", i32 498, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/rpcgss.h", i32 212, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/trace/events/rpcgss.h", i32 232, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/trace/events/rpcgss.h", i32 210, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/rpcgss.h", i32 209, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/rpcgss.h", i32 291, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 1734, i32 3}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 564, i32 11}
!68 = !{ptr @rsc_cache_template, !69, !"rsc_cache_template", i1 false, i1 false}
!69 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 561, i32 34}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 489, i32 32}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 494, i32 32}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 512, i32 21}
!76 = !{ptr @update_rsc.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 420, i32 2}
!78 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 286, i32 20}
!81 = !{ptr @rsi_cache_template, !82, !"rsi_cache_template", i1 false, i1 false}
!82 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 283, i32 34}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 197, i32 2}
!85 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 1495, i32 24}
!88 = !{ptr @use_gss_proxy_proc_ops, !89, !"use_gss_proxy_proc_ops", i1 false, i1 false}
!89 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 1483, i32 30}
!90 = !{ptr @.str.20, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/sunrpc/auth_gss/svcauth_gss.c", i32 1470, i32 31}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!94 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.22, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!97 = !{ptr @.str.23, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i64 2148629066, i64 2148629092, i64 2148629121, i64 2148629155, i64 2148629186, i64 2148629209}
!110 = !{i64 2148718621}
!111 = !{i64 2148633061, i64 2148633093, i64 2148633122, i64 2148633156, i64 2148633187, i64 2148633210}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2149916394}
!114 = !{!"auto-init"}
!115 = !{i64 2148717542}
!116 = !{i64 2148632251, i64 2148632283, i64 2148632312, i64 2148632346, i64 2148632377, i64 2148632400}
!117 = !{i64 2148717771}
!118 = !{i64 2149965937}
!119 = !{i64 2149966203}
!120 = !{i64 2158064724}
!121 = !{i64 1138558, i64 1138579, i64 1138602, i64 1138621, i64 1138640}
!122 = !{i64 2158065129}
!123 = !{i64 2148630596, i64 2148630628, i64 2148630657, i64 2148630691, i64 2148630722, i64 2148630745}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2148249792, i64 2148249797, i64 2148249810, i64 2148249854, i64 2148249888, i64 2148249909}
!126 = !{i64 2155472830}
!127 = !{i64 2155473057}
!128 = !{i64 2149974496}
!129 = !{i64 2149975532}
!130 = !{i64 2155450939}
!131 = !{i64 2155451216}
!132 = !{i64 2153445723, i64 2153446206, i64 2153445760, i64 2153445816, i64 2153445850, i64 2153445874, i64 2153445915, i64 2153445936, i64 2153445964, i64 2153445998}
!133 = !{i64 2155578319}
!134 = !{i64 2155578550}
!135 = !{i64 2155617183}
!136 = !{i64 2155617430}
!137 = !{i64 2155599766}
!138 = !{i64 2155599995}
!139 = !{i64 2155415651}
!140 = !{i64 2155415872}
!141 = !{i64 2155433123}
!142 = !{i64 2155433376}
!143 = !{i64 2155395012}
!144 = !{i64 2155395233}
!145 = !{i64 2155378070}
!146 = !{i64 2155378297}
!147 = !{i64 2158010435, i64 2158010933, i64 2158010472, i64 2158010528, i64 2158010562, i64 2158010586, i64 2158010627, i64 2158010648, i64 2158010676, i64 2158010710}
!148 = !{i64 2153092483, i64 2153092508}
!149 = !{i64 2153091802, i64 2153091827}
!150 = !{i64 5587357}
!151 = !{i64 5587554}
!152 = !{i64 2153072787}
