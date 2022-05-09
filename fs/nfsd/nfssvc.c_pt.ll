; ModuleID = '/llk/IR_all_yes/fs/nfsd/nfssvc.c_pt.bc'
source_filename = "../fs/nfsd/nfssvc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_serv_ops = type { ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.nfsd_stats = type { [82 x %struct.percpu_counter], %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.131 }
%union.anon.131 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.132 }
%union.anon.132 = type { ptr, [124 x i8] }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.rb_root = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.anon.137 = type { i32, i32 }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.timespec64 = type { i64, i32 }
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
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.svc_pool = type { i32, %struct.spinlock, %struct.list_head, i32, %struct.list_head, %struct.svc_pool_stats, i32, [40 x i8] }
%struct.svc_pool_stats = type { %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.139, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.140, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.141, ptr, %struct.address_space, %struct.list_head, %union.anon.142, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.139 = type { i32 }
%union.anon.140 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.141 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.142 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.143 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.157 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsd_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@nfsd_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nfsd_mutex, i64 52), ptr getelementptr (i8, ptr @nfsd_mutex, i64 52) }, ptr @nfsd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfsd_mutex\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfsd_drc_lock\00", [18 x i8] zeroinitializer }, align 32
@nfsd_drc_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nfsd_acl_program = internal global { %struct.svc_program, [48 x i8] } { %struct.svc_program { ptr null, i32 100227, i32 0, i32 0, i32 4, ptr @nfsd_acl_version, ptr @.str.7, ptr @.str.3, ptr @nfsd_acl_svcstats, ptr @svc_set_client, ptr @nfsd_acl_init_request, ptr @nfsd_acl_rpcbind_set }, [48 x i8] zeroinitializer }, align 32
@nfsd_version = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr null, ptr @nfsd_version2, ptr @nfsd_version3, ptr @nfsd_version4], [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nfsd\00", [27 x i8] zeroinitializer }, align 32
@nfsd_svcstats = external dso_local global %struct.svc_stat, align 4
@nfsd_program = dso_local global { %struct.svc_program, [48 x i8] } { %struct.svc_program { ptr @nfsd_acl_program, i32 100003, i32 0, i32 0, i32 5, ptr @nfsd_version, ptr @.str.3, ptr @.str.3, ptr @nfsd_svcstats, ptr @svc_set_client, ptr @nfsd_init_request, ptr @nfsd_rpcbind_set }, [48 x i8] zeroinitializer }, align 32
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nfsd/nfssvc.c\00", [47 x i8] zeroinitializer }, align 32
@nfsd_max_blksize = external dso_local local_unnamed_addr global i32, align 4
@nfsd_thread_sv_ops = internal constant { %struct.svc_serv_ops, [16 x i8] } { %struct.svc_serv_ops { ptr @nfsd_last_thread, ptr @nfsd, ptr @svc_xprt_do_enqueue, ptr null }, [16 x i8] zeroinitializer }, align 32
@nfsd_notifier_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nfsd_notifier_refcount = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@nfsd_inetaddr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nfsd_inetaddr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nfsd_inet6addr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nfsd_inet6addr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfsd: creating service\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfsd_svc\00", [23 x i8] zeroinitializer }, align 32
@nfsd_svc._entry_ptr = internal global ptr @nfsd_svc._entry, section ".printk_index", align 4
@nfsd_drc_max_mem = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@nfsd_drc_mem_used = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@nfsd_acl_version = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr null, ptr @nfsd_acl_version2, ptr @nfsd_acl_version3], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfsacl\00", [25 x i8] zeroinitializer }, align 32
@nfsd_acl_svcstats = internal global { %struct.svc_stat, [60 x i8] } { %struct.svc_stat { ptr @nfsd_acl_program, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nfsd_acl_version2 = external dso_local constant %struct.svc_version, align 4
@nfsd_acl_version3 = external dso_local constant %struct.svc_version, align 4
@nfsd_version2 = external dso_local constant %struct.svc_version, align 4
@nfsd_version3 = external dso_local constant %struct.svc_version, align 4
@nfsd_version4 = external dso_local constant %struct.svc_version, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfsd_last_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016nfsd: last server has exited, flushing export cache\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfsd_last_thread\00", [47 x i8] zeroinitializer }, align 32
@nfsd_last_thread._entry_ptr = internal global ptr @nfsd_last_thread._entry, section ".printk_index", align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfsd_notifier_lock\00", [45 x i8] zeroinitializer }, align 32
@set_max_drc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s nfsd_drc_max_mem %lu \0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_max_drc\00", [20 x i8] zeroinitializer }, align 32
@set_max_drc._entry_ptr = internal global ptr @set_max_drc._entry, section ".printk_index", align 4
@nfsd_inetaddr_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfsd_inetaddr_event: removed %pI4\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfsd_inetaddr_event\00", [44 x i8] zeroinitializer }, align 32
@nfsd_inetaddr_event._entry_ptr = internal global ptr @nfsd_inetaddr_event._entry, section ".printk_index", align 4
@nfsd_inet6addr_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfsd_inet6addr_event: removed %pI6\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsd_inet6addr_event\00", [43 x i8] zeroinitializer }, align 32
@nfsd_inet6addr_event._entry_ptr = internal global ptr @nfsd_inet6addr_event._entry, section ".printk_index", align 4
@nfsd_users = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udp\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@nfsd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to start nfsd thread: out of memory\0A\00", [52 x i8] zeroinitializer }, align 32
@nfsd._entry_ptr = internal global ptr @nfsd._entry, section ".printk_index", align 4
@nfsdstats = external dso_local global %struct.nfsd_stats, align 8
@__tracepoint_nfsd_garbage_args_err = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_garbage_args_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_cant_encode_err = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_cant_encode_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"nfsd_mutex\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 79, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"nfsd_drc_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 87, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"nfsd_acl_program\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 101, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"nfsd_version\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 118, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 138, i32 14 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"nfsd_program\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 131, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 652, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"nfsd_thread_sv_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 615, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"nfsd_notifier_lock\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [23 x i8] c"nfsd_notifier_refcount\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 526, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"nfsd_inetaddr_notifier\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 488, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [24 x i8] c"nfsd_inet6addr_notifier\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 520, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 802, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"nfsd_drc_max_mem\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 88, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"nfsd_drc_mem_used\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 89, i32 15 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"nfsd_acl_version\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 93, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 105, i32 14 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"nfsd_acl_svcstats\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 113, i32 24 }
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 45, i32 7 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 695, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 723, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 551, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 462, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 591, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 477, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 507, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"nfsd_users\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 309, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 296, i32 41 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 301, i32 41 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private constant [20 x i8] c"../fs/nfsd/nfssvc.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 952, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 77, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 108, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @nfsd._entry, ptr @nfsd._entry_ptr, ptr @nfsd_inet6addr_event._entry, ptr @nfsd_inet6addr_event._entry_ptr, ptr @nfsd_inetaddr_event._entry, ptr @nfsd_inetaddr_event._entry_ptr, ptr @nfsd_last_thread._entry, ptr @nfsd_last_thread._entry_ptr, ptr @nfsd_svc._entry, ptr @nfsd_svc._entry_ptr, ptr @set_max_drc._entry, ptr @set_max_drc._entry_ptr, ptr @.str, ptr @nfsd_mutex, ptr @.str.1, ptr @.str.2, ptr @nfsd_drc_lock, ptr @nfsd_acl_program, ptr @nfsd_version, ptr @.str.3, ptr @nfsd_program, ptr @.str.4, ptr @nfsd_thread_sv_ops, ptr @nfsd_notifier_lock, ptr @nfsd_notifier_refcount, ptr @nfsd_inetaddr_notifier, ptr @nfsd_inet6addr_notifier, ptr @.str.5, ptr @.str.6, ptr @nfsd_drc_max_mem, ptr @nfsd_drc_mem_used, ptr @nfsd_acl_version, ptr @.str.7, ptr @nfsd_acl_svcstats, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @nfsd_users, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_drc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_program to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_program to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_thread_sv_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_notifier_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_notifier_refcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_inetaddr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_inet6addr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_drc_max_mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_drc_mem_used to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_version to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_acl_svcstats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_last_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_max_drc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_inetaddr_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_inet6addr_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_users to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_set_client(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_init_request(ptr noundef %rqstp, ptr noundef %progp, ptr noundef %ret) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %3 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %3)
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %4 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_vers, align 4
  %6 = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %6)
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %entry.if.end.i45_crit_edge, label %if.end.i

entry.if.end.i45_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i45

if.end.i:                                         ; preds = %entry
  %nfsd_versions13.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 44
  %8 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i = icmp eq ptr %9, null
  br i1 %tobool14.not.i, label %nfsd_support_version.exit41.i, label %nfsd_vers.exit

nfsd_support_version.exit41.i:                    ; preds = %if.end.i
  %arrayidx.i37.i = getelementptr [5 x ptr], ptr @nfsd_version, i32 0, i32 %5
  %10 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i37.i, align 4
  %cmp2.i38.i.not = icmp eq ptr %11, null
  br i1 %cmp2.i38.i.not, label %nfsd_support_version.exit41.i.if.end.i45_crit_edge, label %nfsd_support_version.exit41.i.if.then_crit_edge, !prof !104

nfsd_support_version.exit41.i.if.then_crit_edge:  ; preds = %nfsd_support_version.exit41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

nfsd_support_version.exit41.i.if.end.i45_crit_edge: ; preds = %nfsd_support_version.exit41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i45

nfsd_vers.exit:                                   ; preds = %if.end.i
  %arrayidx17.i = getelementptr i8, ptr %9, i32 %5
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.i.not = icmp eq i8 %13, 0
  br i1 %tobool18.i.not, label %nfsd_vers.exit.if.end.i45_crit_edge, label %nfsd_vers.exit.if.then_crit_edge, !prof !104

nfsd_vers.exit.if.then_crit_edge:                 ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

nfsd_vers.exit.if.end.i45_crit_edge:              ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i45

if.then:                                          ; preds = %nfsd_vers.exit.if.then_crit_edge, %nfsd_support_version.exit41.i.if.then_crit_edge
  %call6 = tail call i32 @svc_generic_init_request(ptr noundef %rqstp, ptr noundef %progp, ptr noundef %ret) #15
  br label %cleanup

if.end.i45:                                       ; preds = %nfsd_vers.exit.if.end.i45_crit_edge, %nfsd_support_version.exit41.i.if.end.i45_crit_edge, %entry.if.end.i45_crit_edge
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %ret, align 4
  %nfsd_versions13.i46 = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 44
  %15 = ptrtoint ptr %nfsd_versions13.i46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nfsd_versions13.i46, align 8
  %tobool14.not.i47 = icmp eq ptr %16, null
  br i1 %tobool14.not.i47, label %nfsd_support_version.exit41.i53, label %nfsd_vers.exit56

nfsd_support_version.exit41.i53:                  ; preds = %if.end.i45
  %17 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 2), align 4
  %cmp2.i38.i52.not = icmp eq ptr %17, null
  br i1 %cmp2.i38.i52.not, label %nfsd_support_version.exit41.i53.nfsd_support_version.exit41.i53.1_crit_edge, label %nfsd_support_version.exit41.i53.for.end.thread_crit_edge

nfsd_support_version.exit41.i53.for.end.thread_crit_edge: ; preds = %nfsd_support_version.exit41.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_support_version.exit41.i53.nfsd_support_version.exit41.i53.1_crit_edge: ; preds = %nfsd_support_version.exit41.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i53.1

nfsd_vers.exit56:                                 ; preds = %if.end.i45
  %arrayidx17.i48 = getelementptr i8, ptr %16, i32 2
  %18 = ptrtoint ptr %arrayidx17.i48 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17.i48, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.i49.not = icmp eq i8 %19, 0
  br i1 %tobool18.i49.not, label %if.end.i45.1, label %nfsd_vers.exit56.for.end.thread_crit_edge

nfsd_vers.exit56.for.end.thread_crit_edge:        ; preds = %nfsd_vers.exit56
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

for.end.thread:                                   ; preds = %nfsd_vers.exit56.2.for.end.thread_crit_edge, %nfsd_support_version.exit41.i53.2.for.end.thread_crit_edge, %nfsd_vers.exit56.1.for.end.thread_crit_edge, %nfsd_support_version.exit41.i53.1.for.end.thread_crit_edge, %nfsd_vers.exit56.for.end.thread_crit_edge, %nfsd_support_version.exit41.i53.for.end.thread_crit_edge
  %i.081.lcssa = phi i32 [ 2, %nfsd_vers.exit56.for.end.thread_crit_edge ], [ 3, %nfsd_vers.exit56.1.for.end.thread_crit_edge ], [ 4, %nfsd_vers.exit56.2.for.end.thread_crit_edge ], [ 2, %nfsd_support_version.exit41.i53.for.end.thread_crit_edge ], [ 3, %nfsd_support_version.exit41.i53.1.for.end.thread_crit_edge ], [ 4, %nfsd_support_version.exit41.i53.2.for.end.thread_crit_edge ]
  %20 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.081.lcssa, ptr %ret, align 4
  br label %if.end.i57

if.end.i45.1:                                     ; preds = %nfsd_vers.exit56
  %21 = ptrtoint ptr %nfsd_versions13.i46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr87 = load ptr, ptr %nfsd_versions13.i46, align 8
  %tobool14.not.i47.1 = icmp eq ptr %.pr87, null
  br i1 %tobool14.not.i47.1, label %if.end.i45.1.nfsd_support_version.exit41.i53.1_crit_edge, label %nfsd_vers.exit56.1

if.end.i45.1.nfsd_support_version.exit41.i53.1_crit_edge: ; preds = %if.end.i45.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i53.1

nfsd_support_version.exit41.i53.1:                ; preds = %if.end.i45.1.nfsd_support_version.exit41.i53.1_crit_edge, %nfsd_support_version.exit41.i53.nfsd_support_version.exit41.i53.1_crit_edge
  %22 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 3), align 4
  %cmp2.i38.i52.1.not = icmp eq ptr %22, null
  br i1 %cmp2.i38.i52.1.not, label %nfsd_support_version.exit41.i53.1.if.end.i45.2_crit_edge, label %nfsd_support_version.exit41.i53.1.for.end.thread_crit_edge

nfsd_support_version.exit41.i53.1.for.end.thread_crit_edge: ; preds = %nfsd_support_version.exit41.i53.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_support_version.exit41.i53.1.if.end.i45.2_crit_edge: ; preds = %nfsd_support_version.exit41.i53.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i45.2

nfsd_vers.exit56.1:                               ; preds = %if.end.i45.1
  %arrayidx17.i48.1 = getelementptr i8, ptr %.pr87, i32 3
  %23 = ptrtoint ptr %arrayidx17.i48.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx17.i48.1, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.i49.1.not = icmp eq i8 %24, 0
  br i1 %tobool18.i49.1.not, label %nfsd_vers.exit56.1.if.end.i45.2_crit_edge, label %nfsd_vers.exit56.1.for.end.thread_crit_edge

nfsd_vers.exit56.1.for.end.thread_crit_edge:      ; preds = %nfsd_vers.exit56.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_vers.exit56.1.if.end.i45.2_crit_edge:        ; preds = %nfsd_vers.exit56.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i45.2

if.end.i45.2:                                     ; preds = %nfsd_vers.exit56.1.if.end.i45.2_crit_edge, %nfsd_support_version.exit41.i53.1.if.end.i45.2_crit_edge
  %25 = ptrtoint ptr %nfsd_versions13.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nfsd_versions13.i46, align 8
  %tobool14.not.i47.2 = icmp eq ptr %26, null
  br i1 %tobool14.not.i47.2, label %nfsd_support_version.exit41.i53.2, label %nfsd_vers.exit56.2

nfsd_support_version.exit41.i53.2:                ; preds = %if.end.i45.2
  %27 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i52.2.not = icmp eq ptr %27, null
  br i1 %cmp2.i38.i52.2.not, label %nfsd_support_version.exit41.i53.2.for.inc.2_crit_edge, label %nfsd_support_version.exit41.i53.2.for.end.thread_crit_edge

nfsd_support_version.exit41.i53.2.for.end.thread_crit_edge: ; preds = %nfsd_support_version.exit41.i53.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_support_version.exit41.i53.2.for.inc.2_crit_edge: ; preds = %nfsd_support_version.exit41.i53.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

nfsd_vers.exit56.2:                               ; preds = %if.end.i45.2
  %arrayidx17.i48.2 = getelementptr i8, ptr %26, i32 4
  %28 = ptrtoint ptr %arrayidx17.i48.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx17.i48.2, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool18.i49.2.not = icmp eq i8 %29, 0
  br i1 %tobool18.i49.2.not, label %nfsd_vers.exit56.2.for.inc.2_crit_edge, label %nfsd_vers.exit56.2.for.end.thread_crit_edge

nfsd_vers.exit56.2.for.end.thread_crit_edge:      ; preds = %nfsd_vers.exit56.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_vers.exit56.2.for.inc.2_crit_edge:           ; preds = %nfsd_vers.exit56.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %nfsd_vers.exit56.2.for.inc.2_crit_edge, %nfsd_support_version.exit41.i53.2.for.inc.2_crit_edge
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr)
  %cmp13 = icmp eq i32 %.pr, 5
  br i1 %cmp13, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.if.end.i57_crit_edge

for.inc.2.if.end.i57_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i57

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i57:                                       ; preds = %for.inc.2.if.end.i57_crit_edge, %for.end.thread
  %hivers = getelementptr inbounds %struct.anon.137, ptr %ret, i32 0, i32 1
  %31 = ptrtoint ptr %hivers to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %hivers, align 4
  %32 = ptrtoint ptr %nfsd_versions13.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nfsd_versions13.i46, align 8
  %tobool14.not.i59 = icmp eq ptr %33, null
  br i1 %tobool14.not.i59, label %nfsd_support_version.exit41.i65, label %nfsd_vers.exit68

nfsd_support_version.exit41.i65:                  ; preds = %if.end.i57
  %34 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i64.not = icmp eq ptr %34, null
  br i1 %cmp2.i38.i64.not, label %nfsd_support_version.exit41.i65.nfsd_support_version.exit41.i65.1_crit_edge, label %nfsd_support_version.exit41.i65.if.then21_crit_edge

nfsd_support_version.exit41.i65.if.then21_crit_edge: ; preds = %nfsd_support_version.exit41.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

nfsd_support_version.exit41.i65.nfsd_support_version.exit41.i65.1_crit_edge: ; preds = %nfsd_support_version.exit41.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i65.1

nfsd_vers.exit68:                                 ; preds = %if.end.i57
  %arrayidx17.i60 = getelementptr i8, ptr %33, i32 4
  %35 = ptrtoint ptr %arrayidx17.i60 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx17.i60, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool18.i61.not = icmp eq i8 %36, 0
  br i1 %tobool18.i61.not, label %if.end.i57.1, label %nfsd_vers.exit68.if.then21_crit_edge

nfsd_vers.exit68.if.then21_crit_edge:             ; preds = %nfsd_vers.exit68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

if.then21:                                        ; preds = %nfsd_vers.exit68.2.if.then21_crit_edge, %nfsd_support_version.exit41.i65.2.if.then21_crit_edge, %nfsd_vers.exit68.1.if.then21_crit_edge, %nfsd_support_version.exit41.i65.1.if.then21_crit_edge, %nfsd_vers.exit68.if.then21_crit_edge, %nfsd_support_version.exit41.i65.if.then21_crit_edge
  %i.183.lcssa = phi i32 [ 4, %nfsd_vers.exit68.if.then21_crit_edge ], [ 3, %nfsd_vers.exit68.1.if.then21_crit_edge ], [ 2, %nfsd_vers.exit68.2.if.then21_crit_edge ], [ 4, %nfsd_support_version.exit41.i65.if.then21_crit_edge ], [ 3, %nfsd_support_version.exit41.i65.1.if.then21_crit_edge ], [ 2, %nfsd_support_version.exit41.i65.2.if.then21_crit_edge ]
  %37 = ptrtoint ptr %hivers to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %i.183.lcssa, ptr %hivers, align 4
  br label %cleanup

if.end.i57.1:                                     ; preds = %nfsd_vers.exit68
  %38 = ptrtoint ptr %nfsd_versions13.i46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr89 = load ptr, ptr %nfsd_versions13.i46, align 8
  %tobool14.not.i59.1 = icmp eq ptr %.pr89, null
  br i1 %tobool14.not.i59.1, label %if.end.i57.1.nfsd_support_version.exit41.i65.1_crit_edge, label %nfsd_vers.exit68.1

if.end.i57.1.nfsd_support_version.exit41.i65.1_crit_edge: ; preds = %if.end.i57.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i65.1

nfsd_support_version.exit41.i65.1:                ; preds = %if.end.i57.1.nfsd_support_version.exit41.i65.1_crit_edge, %nfsd_support_version.exit41.i65.nfsd_support_version.exit41.i65.1_crit_edge
  %39 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 3), align 4
  %cmp2.i38.i64.1.not = icmp eq ptr %39, null
  br i1 %cmp2.i38.i64.1.not, label %nfsd_support_version.exit41.i65.1.if.end.i57.2_crit_edge, label %nfsd_support_version.exit41.i65.1.if.then21_crit_edge

nfsd_support_version.exit41.i65.1.if.then21_crit_edge: ; preds = %nfsd_support_version.exit41.i65.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

nfsd_support_version.exit41.i65.1.if.end.i57.2_crit_edge: ; preds = %nfsd_support_version.exit41.i65.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i57.2

nfsd_vers.exit68.1:                               ; preds = %if.end.i57.1
  %arrayidx17.i60.1 = getelementptr i8, ptr %.pr89, i32 3
  %40 = ptrtoint ptr %arrayidx17.i60.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx17.i60.1, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool18.i61.1.not = icmp eq i8 %41, 0
  br i1 %tobool18.i61.1.not, label %nfsd_vers.exit68.1.if.end.i57.2_crit_edge, label %nfsd_vers.exit68.1.if.then21_crit_edge

nfsd_vers.exit68.1.if.then21_crit_edge:           ; preds = %nfsd_vers.exit68.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

nfsd_vers.exit68.1.if.end.i57.2_crit_edge:        ; preds = %nfsd_vers.exit68.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i57.2

if.end.i57.2:                                     ; preds = %nfsd_vers.exit68.1.if.end.i57.2_crit_edge, %nfsd_support_version.exit41.i65.1.if.end.i57.2_crit_edge
  %42 = ptrtoint ptr %nfsd_versions13.i46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nfsd_versions13.i46, align 8
  %tobool14.not.i59.2 = icmp eq ptr %43, null
  br i1 %tobool14.not.i59.2, label %nfsd_support_version.exit41.i65.2, label %nfsd_vers.exit68.2

nfsd_support_version.exit41.i65.2:                ; preds = %if.end.i57.2
  %44 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 2), align 4
  %cmp2.i38.i64.2.not = icmp eq ptr %44, null
  br i1 %cmp2.i38.i64.2.not, label %nfsd_support_version.exit41.i65.2.cleanup_crit_edge, label %nfsd_support_version.exit41.i65.2.if.then21_crit_edge

nfsd_support_version.exit41.i65.2.if.then21_crit_edge: ; preds = %nfsd_support_version.exit41.i65.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

nfsd_support_version.exit41.i65.2.cleanup_crit_edge: ; preds = %nfsd_support_version.exit41.i65.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nfsd_vers.exit68.2:                               ; preds = %if.end.i57.2
  %arrayidx17.i60.2 = getelementptr i8, ptr %43, i32 2
  %45 = ptrtoint ptr %arrayidx17.i60.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx17.i60.2, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool18.i61.2.not = icmp eq i8 %46, 0
  br i1 %tobool18.i61.2.not, label %nfsd_vers.exit68.2.cleanup_crit_edge, label %nfsd_vers.exit68.2.if.then21_crit_edge

nfsd_vers.exit68.2.if.then21_crit_edge:           ; preds = %nfsd_vers.exit68.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

nfsd_vers.exit68.2.cleanup_crit_edge:             ; preds = %nfsd_vers.exit68.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %nfsd_vers.exit68.2.cleanup_crit_edge, %nfsd_support_version.exit41.i65.2.cleanup_crit_edge, %if.then21, %for.inc.2.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ 1, %for.inc.2.cleanup_crit_edge ], [ 2, %if.then21 ], [ 2, %nfsd_support_version.exit41.i65.2.cleanup_crit_edge ], [ 2, %nfsd_vers.exit68.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_rpcbind_set(ptr noundef %net, ptr noundef %progp, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = add i32 %version, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %1)
  %2 = icmp ult i32 %1, -3
  br i1 %2, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i:                                         ; preds = %entry
  %nfsd_versions13.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 44
  %3 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i = icmp eq ptr %4, null
  br i1 %tobool14.not.i, label %nfsd_support_version.exit41.i, label %nfsd_vers.exit

nfsd_support_version.exit41.i:                    ; preds = %if.end.i
  %arrayidx.i37.i = getelementptr [5 x ptr], ptr @nfsd_version, i32 0, i32 %version
  %5 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i37.i, align 4
  %cmp2.i38.i.not = icmp eq ptr %6, null
  br i1 %cmp2.i38.i.not, label %nfsd_support_version.exit41.i.return_crit_edge, label %nfsd_support_version.exit41.i.if.end_crit_edge

nfsd_support_version.exit41.i.if.end_crit_edge:   ; preds = %nfsd_support_version.exit41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

nfsd_support_version.exit41.i.return_crit_edge:   ; preds = %nfsd_support_version.exit41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

nfsd_vers.exit:                                   ; preds = %if.end.i
  %arrayidx17.i = getelementptr i8, ptr %4, i32 %version
  %7 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx17.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.i.not = icmp eq i8 %8, 0
  br i1 %tobool18.i.not, label %nfsd_vers.exit.return_crit_edge, label %nfsd_vers.exit.if.end_crit_edge

nfsd_vers.exit.if.end_crit_edge:                  ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

nfsd_vers.exit.return_crit_edge:                  ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %nfsd_vers.exit.if.end_crit_edge, %nfsd_support_version.exit41.i.if.end_crit_edge
  %call2 = tail call i32 @svc_generic_rpcbind_set(ptr noundef %net, ptr noundef %progp, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port) #15
  br label %return

return:                                           ; preds = %if.end, %nfsd_vers.exit.return_crit_edge, %nfsd_support_version.exit41.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %nfsd_vers.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %nfsd_support_version.exit41.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_netns_free_versions(ptr nocapture noundef %nn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nfsd_versions = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %0 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfsd_versions, align 8
  tail call void @kfree(ptr noundef %1) #15
  %nfsd4_minorversions = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 45
  %2 = ptrtoint ptr %nfsd4_minorversions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nfsd4_minorversions, align 4
  tail call void @kfree(ptr noundef %3) #15
  %4 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %nfsd_versions, align 8
  %5 = ptrtoint ptr %nfsd4_minorversions to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %nfsd4_minorversions, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_vers(ptr nocapture noundef %nn, i32 noundef %vers, i32 noundef %change) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %vers, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %0)
  %1 = icmp ult i32 %0, -3
  br i1 %1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %change to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %change, label %if.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb12
    i32 3, label %if.end.nfsd_support_version.exit41_crit_edge
  ]

if.end.nfsd_support_version.exit41_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %if.end
  %nfsd_versions = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %3 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nfsd_versions, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %nfsd_support_version.exit

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

nfsd_support_version.exit:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr [5 x ptr], ptr @nfsd_version, i32 0, i32 %vers
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp ne ptr %6, null
  %arrayidx = getelementptr i8, ptr %4, i32 %vers
  %frombool = zext i1 %cmp2.i to i8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %arrayidx, align 1
  br label %return

sw.bb5:                                           ; preds = %if.end
  tail call fastcc void @nfsd_netns_init_versions(ptr noundef %nn)
  %nfsd_versions6 = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %8 = ptrtoint ptr %nfsd_versions6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nfsd_versions6, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %sw.bb5.return_crit_edge, label %if.then8

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx10 = getelementptr i8, ptr %9, i32 %vers
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx10, align 1
  br label %return

sw.bb12:                                          ; preds = %if.end
  %nfsd_versions13 = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %11 = ptrtoint ptr %nfsd_versions13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nfsd_versions13, align 8
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %sw.bb12.nfsd_support_version.exit41_crit_edge, label %if.then15

sw.bb12.nfsd_support_version.exit41_crit_edge:    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41

if.then15:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx17 = getelementptr i8, ptr %12, i32 %vers
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx17, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18 = icmp ne i8 %14, 0
  br label %return

nfsd_support_version.exit41:                      ; preds = %sw.bb12.nfsd_support_version.exit41_crit_edge, %if.end.nfsd_support_version.exit41_crit_edge
  %arrayidx.i37 = getelementptr [5 x ptr], ptr @nfsd_version, i32 0, i32 %vers
  %15 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i37, align 4
  %cmp2.i38 = icmp ne ptr %16, null
  br label %return

return:                                           ; preds = %nfsd_support_version.exit41, %if.then15, %if.then8, %sw.bb5.return_crit_edge, %nfsd_support_version.exit, %sw.bb.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0.shrunk = phi i1 [ %cmp2.i38, %nfsd_support_version.exit41 ], [ %tobool18, %if.then15 ], [ false, %entry.return_crit_edge ], [ false, %sw.bb5.return_crit_edge ], [ false, %if.then8 ], [ false, %sw.bb.return_crit_edge ], [ false, %nfsd_support_version.exit ], [ false, %if.end.return_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd_netns_init_versions(ptr nocapture noundef %nn) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nfsd_versions = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %0 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfsd_versions, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 5) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.nfsd_alloc_versions.exit_crit_edge, label %nfsd_support_version.exit.4.i

if.then.nfsd_alloc_versions.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_alloc_versions.exit

nfsd_support_version.exit.4.i:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call7.i.i.i, align 8
  %arrayidx.1.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx.1.i, align 1
  %5 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 2), align 4
  %cmp2.i.2.i = icmp ne ptr %5, null
  %arrayidx.2.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %frombool.2.i = zext i1 %cmp2.i.2.i to i8
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool.2.i, ptr %arrayidx.2.i, align 2
  %7 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 3), align 4
  %cmp2.i.3.i = icmp ne ptr %7, null
  %arrayidx.3.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %frombool.3.i = zext i1 %cmp2.i.3.i to i8
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.3.i, ptr %arrayidx.3.i, align 1
  %9 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i.4.i = icmp ne ptr %9, null
  %arrayidx.4.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %frombool.4.i = zext i1 %cmp2.i.4.i to i8
  %10 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool.4.i, ptr %arrayidx.4.i, align 4
  br label %nfsd_alloc_versions.exit

nfsd_alloc_versions.exit:                         ; preds = %nfsd_support_version.exit.4.i, %if.then.nfsd_alloc_versions.exit_crit_edge
  %11 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %nfsd_versions, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 3) #18
  %tobool.not.i15 = icmp eq ptr %call7.i.i.i14, null
  br i1 %tobool.not.i15, label %nfsd_alloc_minorversions.exit.thread, label %nfsd_alloc_minorversions.exit

nfsd_alloc_minorversions.exit.thread:             ; preds = %nfsd_alloc_versions.exit
  call void @__sanitizer_cov_trace_pc() #17
  %nfsd4_minorversions16 = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 45
  %13 = ptrtoint ptr %nfsd4_minorversions16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %nfsd4_minorversions16, align 4
  %14 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nfsd_versions, align 8
  br label %if.then7

nfsd_alloc_minorversions.exit:                    ; preds = %nfsd_alloc_versions.exit
  %16 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i.i = icmp ne ptr %16, null
  %frombool.i = zext i1 %cmp2.i.i to i8
  %17 = zext i8 %frombool.i to i32
  %18 = call ptr @memset(ptr %call7.i.i.i14, i32 %17, i32 3)
  %nfsd4_minorversions = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 45
  %19 = ptrtoint ptr %nfsd4_minorversions to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i14, ptr %nfsd4_minorversions, align 4
  %20 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nfsd_versions, align 8
  %tobool4.not = icmp eq ptr %21, null
  br i1 %tobool4.not, label %nfsd_alloc_minorversions.exit.if.then7_crit_edge, label %nfsd_alloc_minorversions.exit.if.end8_crit_edge

nfsd_alloc_minorversions.exit.if.end8_crit_edge:  ; preds = %nfsd_alloc_minorversions.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

nfsd_alloc_minorversions.exit.if.then7_crit_edge: ; preds = %nfsd_alloc_minorversions.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

if.then7:                                         ; preds = %nfsd_alloc_minorversions.exit.if.then7_crit_edge, %nfsd_alloc_minorversions.exit.thread
  %22 = phi ptr [ %15, %nfsd_alloc_minorversions.exit.thread ], [ null, %nfsd_alloc_minorversions.exit.if.then7_crit_edge ]
  %nfsd4_minorversions19 = phi ptr [ %nfsd4_minorversions16, %nfsd_alloc_minorversions.exit.thread ], [ %nfsd4_minorversions, %nfsd_alloc_minorversions.exit.if.then7_crit_edge ]
  tail call void @kfree(ptr noundef %22) #15
  %23 = ptrtoint ptr %nfsd4_minorversions19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nfsd4_minorversions19, align 4
  tail call void @kfree(ptr noundef %24) #15
  %25 = ptrtoint ptr %nfsd_versions to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %nfsd_versions, align 8
  %26 = ptrtoint ptr %nfsd4_minorversions19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %nfsd4_minorversions19, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %nfsd_alloc_minorversions.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_minorversion(ptr nocapture noundef %nn, i32 noundef %minorversion, i32 noundef %change) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %minorversion)
  %cmp = icmp ult i32 %minorversion, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %change)
  %cmp1.not = icmp eq i32 %change, 3
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %change to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %change, label %if.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb14
    i32 3, label %sw.bb23
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %if.end
  %nfsd4_minorversions = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 45
  %1 = ptrtoint ptr %nfsd4_minorversions to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd4_minorversions, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %if.then2

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then2:                                         ; preds = %sw.bb
  %nfsd_versions.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %3 = ptrtoint ptr %nfsd_versions.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nfsd_versions.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then2.nfsd_support_version.exit41.i_crit_edge, label %nfsd_vers.exit

if.then2.nfsd_support_version.exit41.i_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i

nfsd_vers.exit:                                   ; preds = %if.then2
  %5 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i.i = icmp ne ptr %5, null
  %arrayidx.i = getelementptr i8, ptr %4, i32 4
  %frombool.i = zext i1 %cmp2.i.i to i8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool.i, ptr %arrayidx.i, align 1
  %7 = ptrtoint ptr %nfsd_versions.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %nfsd_versions.i, align 8
  %tobool14.not.i = icmp eq ptr %.pr, null
  br i1 %tobool14.not.i, label %nfsd_vers.exit.nfsd_support_version.exit41.i_crit_edge, label %if.then15.i

nfsd_vers.exit.nfsd_support_version.exit41.i_crit_edge: ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i

if.then15.i:                                      ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx17.i = getelementptr i8, ptr %.pr, i32 4
  %8 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.i = icmp ne i8 %9, 0
  br label %nfsd_vers.exit45

nfsd_support_version.exit41.i:                    ; preds = %nfsd_vers.exit.nfsd_support_version.exit41.i_crit_edge, %if.then2.nfsd_support_version.exit41.i_crit_edge
  %10 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i = icmp ne ptr %10, null
  br label %nfsd_vers.exit45

nfsd_vers.exit45:                                 ; preds = %nfsd_support_version.exit41.i, %if.then15.i
  %retval.0.shrunk.i = phi i1 [ %cmp2.i38.i, %nfsd_support_version.exit41.i ], [ %tobool18.i, %if.then15.i ]
  %11 = ptrtoint ptr %nfsd4_minorversions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nfsd4_minorversions, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %minorversion
  %frombool = zext i1 %retval.0.shrunk.i to i8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %arrayidx, align 1
  br label %return

sw.bb7:                                           ; preds = %if.end
  tail call fastcc void @nfsd_netns_init_versions(ptr noundef %nn)
  %nfsd4_minorversions8 = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 45
  %14 = ptrtoint ptr %nfsd4_minorversions8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nfsd4_minorversions8, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %sw.bb7.return_crit_edge, label %if.then10

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then10:                                        ; preds = %sw.bb7
  %arrayidx12 = getelementptr i8, ptr %15, i32 %minorversion
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx12, align 1
  %17 = ptrtoint ptr %nfsd4_minorversions8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nfsd4_minorversions8, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i46 = icmp eq i8 %20, 0
  br i1 %tobool.not.i46, label %for.cond.i, label %if.then10.return_crit_edge

if.then10.return_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

for.cond.i:                                       ; preds = %if.then10
  %arrayidx.1.i = getelementptr i8, ptr %18, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.1.i = icmp eq i8 %22, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.return_crit_edge

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr i8, ptr %18, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.2.i = icmp eq i8 %24, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.return_crit_edge

for.cond.1.i.return_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call fastcc void @nfsd_netns_init_versions(ptr noundef %nn) #15
  %nfsd_versions6.i.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %25 = ptrtoint ptr %nfsd_versions6.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nfsd_versions6.i.i, align 8
  %tobool7.not.i.i = icmp eq ptr %26, null
  br i1 %tobool7.not.i.i, label %for.cond.2.i.return_crit_edge, label %if.then8.i.i

for.cond.2.i.return_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then8.i.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx10.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx10.i.i, align 1
  br label %return

sw.bb14:                                          ; preds = %if.end
  %nfsd4_minorversions15 = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 45
  %28 = ptrtoint ptr %nfsd4_minorversions15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nfsd4_minorversions15, align 4
  %tobool16.not = icmp eq ptr %29, null
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx19 = getelementptr i8, ptr %29, i32 %minorversion
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx19, align 1, !range !105
  %32 = zext i8 %31 to i32
  br label %return

if.end21:                                         ; preds = %sw.bb14
  %nfsd_versions13.i47 = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %33 = ptrtoint ptr %nfsd_versions13.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nfsd_versions13.i47, align 8
  %tobool14.not.i48 = icmp eq ptr %34, null
  br i1 %tobool14.not.i48, label %nfsd_support_version.exit41.i53, label %if.then15.i51

if.then15.i51:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx17.i49 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx17.i49 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx17.i49, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool18.i50 = icmp ne i8 %36, 0
  br label %nfsd_vers.exit56

nfsd_support_version.exit41.i53:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %37 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i52 = icmp ne ptr %37, null
  br label %nfsd_vers.exit56

nfsd_vers.exit56:                                 ; preds = %nfsd_support_version.exit41.i53, %if.then15.i51
  %retval.0.shrunk.i54 = phi i1 [ %cmp2.i38.i52, %nfsd_support_version.exit41.i53 ], [ %tobool18.i50, %if.then15.i51 ]
  %retval.0.i55 = zext i1 %retval.0.shrunk.i54 to i32
  br label %return

sw.bb23:                                          ; preds = %if.end
  br i1 %cmp, label %land.rhs, label %sw.bb23.return_crit_edge

sw.bb23.return_crit_edge:                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.rhs:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  %38 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i57 = icmp ne ptr %38, null
  %retval.0.i60 = zext i1 %cmp2.i38.i57 to i32
  br label %return

return:                                           ; preds = %land.rhs, %sw.bb23.return_crit_edge, %nfsd_vers.exit56, %if.then17, %if.then8.i.i, %for.cond.2.i.return_crit_edge, %for.cond.1.i.return_crit_edge, %for.cond.i.return_crit_edge, %if.then10.return_crit_edge, %sw.bb7.return_crit_edge, %nfsd_vers.exit45, %sw.bb.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %32, %if.then17 ], [ %retval.0.i55, %nfsd_vers.exit56 ], [ -1, %entry.return_crit_edge ], [ 0, %sw.bb23.return_crit_edge ], [ %retval.0.i60, %land.rhs ], [ 0, %sw.bb7.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %nfsd_vers.exit45 ], [ 0, %if.end.return_crit_edge ], [ 0, %if.then10.return_crit_edge ], [ 0, %for.cond.i.return_crit_edge ], [ 0, %for.cond.1.i.return_crit_edge ], [ 0, %for.cond.2.i.return_crit_edge ], [ 0, %if.then8.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_nrthreads(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #15
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %1 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_serv, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sv_nrthreads = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %sv_nrthreads to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sv_nrthreads, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rv.0 = phi i32 [ %4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #15
  ret i32 %rv.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 45, ptr noundef nonnull @.str.9) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !107
  %8 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_copy_write_verifier(ptr nocapture noundef writeonly %verf, ptr noundef %nn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %writeverf_lock = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 33
  %lock.i.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 33, i32 1
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 33, i32 0, i32 0, i32 1
  %writeverf = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 34
  br label %do.body

do.body:                                          ; preds = %need_seqretry.exit.do.body_crit_edge, %entry
  %seq.0 = phi i32 [ 0, %entry ], [ %seq.1, %need_seqretry.exit.do.body_crit_edge ]
  %and.i = and i32 %seq.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !108
  %and.i.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %1 = tail call ptr @llvm.returnaddress(i32 0) #15
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %2) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call ptr @llvm.returnaddress(i32 0) #15
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %4) #15
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !109
  %and.i.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !104

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !110
  %6 = ptrtoint ptr %writeverf_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %writeverf_lock, align 4
  %and18.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !111
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !112
  %8 = ptrtoint ptr %writeverf_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %writeverf_lock, align 4
  %and.i.i = and i32 %9, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %9, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !113
  br label %read_seqbegin_or_lock.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #15
  br label %read_seqbegin_or_lock.exit

read_seqbegin_or_lock.exit:                       ; preds = %if.else.i, %read_seqbegin.exit.i
  %seq.1 = phi i32 [ %.lcssa.i.i, %read_seqbegin.exit.i ], [ %seq.0, %if.else.i ]
  %10 = ptrtoint ptr %writeverf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writeverf, align 4
  %12 = ptrtoint ptr %verf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %verf, align 4
  %and.i6 = and i32 %seq.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %need_seqretry.exit, label %if.then.i11

need_seqretry.exit:                               ; preds = %read_seqbegin_or_lock.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !114
  %13 = ptrtoint ptr %writeverf_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %writeverf_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %14, %seq.1
  br i1 %cmp.i.i.i.i.not, label %need_seqretry.exit.done_seqretry.exit_crit_edge, label %need_seqretry.exit.do.body_crit_edge

need_seqretry.exit.do.body_crit_edge:             ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

need_seqretry.exit.done_seqretry.exit_crit_edge:  ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %done_seqretry.exit

if.then.i11:                                      ; preds = %read_seqbegin_or_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #15
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %if.then.i11, %need_seqretry.exit.done_seqretry.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_reset_write_verifier(ptr noundef %nn) local_unnamed_addr #1 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %writeverf_lock = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 33
  %lock.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 33, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  %0 = ptrtoint ptr %writeverf_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writeverf_lock, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %writeverf_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  %dep_map.i.i.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 33, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #15
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #15
  %4 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @ktime_get_raw_ts64(ptr noundef nonnull %now.i) #15
  %5 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %now.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %8 to i64
  %siphash_key.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 60
  %call.i = call i64 @siphash_2u64(i64 noundef %6, i64 noundef %conv.i, ptr noundef %siphash_key.i) #15
  %writeverf.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 34
  %9 = ptrtoint ptr %writeverf.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %call.i, ptr %writeverf.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #15
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !116
  %10 = ptrtoint ptr %writeverf_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writeverf_lock, align 4
  %inc.i.i.i = add i32 %11, 1
  store i32 %inc.i.i.i, ptr %writeverf_lock, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_reset_versions(ptr nocapture noundef readonly %nn) local_unnamed_addr #4 align 64 {
if.end.i.2:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nfsd_versions13.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 44
  %0 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i.2 = icmp eq ptr %1, null
  br i1 %tobool14.not.i.2, label %nfsd_support_version.exit41.i.2, label %nfsd_vers.exit.2

nfsd_support_version.exit41.i.2:                  ; preds = %if.end.i.2
  %2 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 2), align 4
  %cmp2.i38.i.2.not = icmp eq ptr %2, null
  br i1 %cmp2.i38.i.2.not, label %nfsd_support_version.exit41.i.2.nfsd_support_version.exit41.i.3_crit_edge, label %nfsd_support_version.exit41.i.2.cleanup_crit_edge

nfsd_support_version.exit41.i.2.cleanup_crit_edge: ; preds = %nfsd_support_version.exit41.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nfsd_support_version.exit41.i.2.nfsd_support_version.exit41.i.3_crit_edge: ; preds = %nfsd_support_version.exit41.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i.3

nfsd_vers.exit.2:                                 ; preds = %if.end.i.2
  %arrayidx17.i.2 = getelementptr i8, ptr %1, i32 2
  %3 = ptrtoint ptr %arrayidx17.i.2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx17.i.2, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool18.i.2.not = icmp eq i8 %4, 0
  br i1 %tobool18.i.2.not, label %if.end.i.3, label %nfsd_vers.exit.2.cleanup_crit_edge

nfsd_vers.exit.2.cleanup_crit_edge:               ; preds = %nfsd_vers.exit.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.3:                                       ; preds = %nfsd_vers.exit.2
  %5 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i.3 = icmp eq ptr %.pr, null
  br i1 %tobool14.not.i.3, label %if.end.i.3.nfsd_support_version.exit41.i.3_crit_edge, label %nfsd_vers.exit.3

if.end.i.3.nfsd_support_version.exit41.i.3_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i.3

nfsd_support_version.exit41.i.3:                  ; preds = %if.end.i.3.nfsd_support_version.exit41.i.3_crit_edge, %nfsd_support_version.exit41.i.2.nfsd_support_version.exit41.i.3_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 3), align 4
  %cmp2.i38.i.3.not = icmp eq ptr %6, null
  br i1 %cmp2.i38.i.3.not, label %nfsd_support_version.exit41.i.3.if.end.i.4_crit_edge, label %nfsd_support_version.exit41.i.3.cleanup_crit_edge

nfsd_support_version.exit41.i.3.cleanup_crit_edge: ; preds = %nfsd_support_version.exit41.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nfsd_support_version.exit41.i.3.if.end.i.4_crit_edge: ; preds = %nfsd_support_version.exit41.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.4

nfsd_vers.exit.3:                                 ; preds = %if.end.i.3
  %arrayidx17.i.3 = getelementptr i8, ptr %.pr, i32 3
  %7 = ptrtoint ptr %arrayidx17.i.3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx17.i.3, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.i.3.not = icmp eq i8 %8, 0
  br i1 %tobool18.i.3.not, label %nfsd_vers.exit.3.if.end.i.4_crit_edge, label %nfsd_vers.exit.3.cleanup_crit_edge

nfsd_vers.exit.3.cleanup_crit_edge:               ; preds = %nfsd_vers.exit.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nfsd_vers.exit.3.if.end.i.4_crit_edge:            ; preds = %nfsd_vers.exit.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %nfsd_vers.exit.3.if.end.i.4_crit_edge, %nfsd_support_version.exit41.i.3.if.end.i.4_crit_edge
  %9 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i.4 = icmp eq ptr %10, null
  br i1 %tobool14.not.i.4, label %nfsd_support_version.exit41.i.4, label %nfsd_vers.exit.4

nfsd_support_version.exit41.i.4:                  ; preds = %if.end.i.4
  %11 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i.4.not = icmp eq ptr %11, null
  br i1 %cmp2.i38.i.4.not, label %if.end.i23.2.thread, label %nfsd_support_version.exit41.i.4.cleanup_crit_edge

nfsd_support_version.exit41.i.4.cleanup_crit_edge: ; preds = %nfsd_support_version.exit41.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i23.2.thread:                              ; preds = %nfsd_support_version.exit41.i.4
  call void @__sanitizer_cov_trace_pc() #17
  %nfsd4_minorversions.i85 = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 45
  br label %if.end.i23.3

nfsd_vers.exit.4:                                 ; preds = %if.end.i.4
  %arrayidx17.i.4 = getelementptr i8, ptr %10, i32 4
  %12 = ptrtoint ptr %arrayidx17.i.4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17.i.4, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.i.4.not = icmp eq i8 %13, 0
  br i1 %tobool18.i.4.not, label %if.end.i23.2, label %nfsd_vers.exit.4.cleanup_crit_edge

nfsd_vers.exit.4.cleanup_crit_edge:               ; preds = %nfsd_vers.exit.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i23.2:                                     ; preds = %nfsd_vers.exit.4
  %14 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr84 = load ptr, ptr %nfsd_versions13.i, align 8
  %nfsd4_minorversions.i = getelementptr inbounds %struct.nfsd_net, ptr %nn, i32 0, i32 45
  %tobool.not.i.2 = icmp eq ptr %.pr84, null
  br i1 %tobool.not.i.2, label %if.end.i23.2.if.end.i27.preheader.4_crit_edge, label %nfsd_support_version.exit.i.2

if.end.i23.2.if.end.i27.preheader.4_crit_edge:    ; preds = %if.end.i23.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i27.preheader.4

nfsd_support_version.exit.i.2:                    ; preds = %if.end.i23.2
  call void @__sanitizer_cov_trace_pc() #17
  %15 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 2), align 4
  %cmp2.i.i.2 = icmp ne ptr %15, null
  %arrayidx.i.2 = getelementptr i8, ptr %.pr84, i32 2
  %frombool.i.2 = zext i1 %cmp2.i.i.2 to i8
  %16 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool.i.2, ptr %arrayidx.i.2, align 1
  br label %if.end.i23.3

if.end.i23.3:                                     ; preds = %nfsd_support_version.exit.i.2, %if.end.i23.2.thread
  %nfsd4_minorversions.i87.ph = phi ptr [ %nfsd4_minorversions.i, %nfsd_support_version.exit.i.2 ], [ %nfsd4_minorversions.i85, %if.end.i23.2.thread ]
  %17 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr90 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool.not.i.3 = icmp eq ptr %.pr90, null
  br i1 %tobool.not.i.3, label %if.end.i23.3.if.end.i27.preheader.4_crit_edge, label %nfsd_support_version.exit.i.3

if.end.i23.3.if.end.i27.preheader.4_crit_edge:    ; preds = %if.end.i23.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i27.preheader.4

nfsd_support_version.exit.i.3:                    ; preds = %if.end.i23.3
  call void @__sanitizer_cov_trace_pc() #17
  %18 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 3), align 4
  %cmp2.i.i.3 = icmp ne ptr %18, null
  %arrayidx.i.3 = getelementptr i8, ptr %.pr90, i32 3
  %frombool.i.3 = zext i1 %cmp2.i.i.3 to i8
  %19 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i.3, ptr %arrayidx.i.3, align 1
  br label %if.end.i27.preheader.4

if.end.i27.preheader.4:                           ; preds = %nfsd_support_version.exit.i.3, %if.end.i23.3.if.end.i27.preheader.4_crit_edge, %if.end.i23.2.if.end.i27.preheader.4_crit_edge
  %nfsd4_minorversions.i8793 = phi ptr [ %nfsd4_minorversions.i87.ph, %nfsd_support_version.exit.i.3 ], [ %nfsd4_minorversions.i87.ph, %if.end.i23.3.if.end.i27.preheader.4_crit_edge ], [ %nfsd4_minorversions.i, %if.end.i23.2.if.end.i27.preheader.4_crit_edge ]
  %20 = ptrtoint ptr %nfsd4_minorversions.i8793 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nfsd4_minorversions.i8793, align 4
  %tobool.not.i28.4 = icmp eq ptr %21, null
  br i1 %tobool.not.i28.4, label %if.end.i27.preheader.4.cleanup_crit_edge, label %if.then2.i.4

if.end.i27.preheader.4.cleanup_crit_edge:         ; preds = %if.end.i27.preheader.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.i.4:                                     ; preds = %if.end.i27.preheader.4
  %22 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool.not.i.i.4 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.4, label %if.then2.i.4.nfsd_support_version.exit41.i.i.4_crit_edge, label %nfsd_vers.exit.i.4

if.then2.i.4.nfsd_support_version.exit41.i.i.4_crit_edge: ; preds = %if.then2.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i.i.4

nfsd_vers.exit.i.4:                               ; preds = %if.then2.i.4
  %24 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i.i.i.4 = icmp ne ptr %24, null
  %arrayidx.i.i29.4 = getelementptr i8, ptr %23, i32 4
  %frombool.i.i.4 = zext i1 %cmp2.i.i.i.4 to i8
  %25 = ptrtoint ptr %arrayidx.i.i29.4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool.i.i.4, ptr %arrayidx.i.i29.4, align 1
  %26 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i.4 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i.i.4 = icmp eq ptr %.pr.i.4, null
  br i1 %tobool14.not.i.i.4, label %nfsd_vers.exit.i.4.nfsd_support_version.exit41.i.i.4_crit_edge, label %if.then15.i.i.4

nfsd_vers.exit.i.4.nfsd_support_version.exit41.i.i.4_crit_edge: ; preds = %nfsd_vers.exit.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i.i.4

if.then15.i.i.4:                                  ; preds = %nfsd_vers.exit.i.4
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx17.i.i.4 = getelementptr i8, ptr %.pr.i.4, i32 4
  %27 = ptrtoint ptr %arrayidx17.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx17.i.i.4, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool18.i.i.4 = icmp ne i8 %28, 0
  br label %while.body.4

nfsd_support_version.exit41.i.i.4:                ; preds = %nfsd_vers.exit.i.4.nfsd_support_version.exit41.i.i.4_crit_edge, %if.then2.i.4.nfsd_support_version.exit41.i.i.4_crit_edge
  %29 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i.i.4 = icmp ne ptr %29, null
  br label %while.body.4

while.body.4:                                     ; preds = %nfsd_support_version.exit41.i.i.4, %if.then15.i.i.4
  %retval.0.shrunk.i.i.4 = phi i1 [ %cmp2.i38.i.i.4, %nfsd_support_version.exit41.i.i.4 ], [ %tobool18.i.i.4, %if.then15.i.i.4 ]
  %30 = ptrtoint ptr %nfsd4_minorversions.i8793 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nfsd4_minorversions.i8793, align 4
  %frombool.i31.4 = zext i1 %retval.0.shrunk.i.i.4 to i8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool.i31.4, ptr %31, align 1
  %.pr94 = load ptr, ptr %nfsd4_minorversions.i8793, align 4
  %tobool.not.i28.1.4 = icmp eq ptr %.pr94, null
  br i1 %tobool.not.i28.1.4, label %while.body.4.cleanup_crit_edge, label %if.then2.i.1.4

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.i.1.4:                                   ; preds = %while.body.4
  %33 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool.not.i.i.1.4 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.1.4, label %if.then2.i.1.4.nfsd_support_version.exit41.i.i.1.4_crit_edge, label %nfsd_vers.exit.i.1.4

if.then2.i.1.4.nfsd_support_version.exit41.i.i.1.4_crit_edge: ; preds = %if.then2.i.1.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i.i.1.4

nfsd_vers.exit.i.1.4:                             ; preds = %if.then2.i.1.4
  %35 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i.i.i.1.4 = icmp ne ptr %35, null
  %arrayidx.i.i29.1.4 = getelementptr i8, ptr %34, i32 4
  %frombool.i.i.1.4 = zext i1 %cmp2.i.i.i.1.4 to i8
  %36 = ptrtoint ptr %arrayidx.i.i29.1.4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool.i.i.1.4, ptr %arrayidx.i.i29.1.4, align 1
  %37 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i.1.4 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i.i.1.4 = icmp eq ptr %.pr.i.1.4, null
  br i1 %tobool14.not.i.i.1.4, label %nfsd_vers.exit.i.1.4.nfsd_support_version.exit41.i.i.1.4_crit_edge, label %if.then15.i.i.1.4

nfsd_vers.exit.i.1.4.nfsd_support_version.exit41.i.i.1.4_crit_edge: ; preds = %nfsd_vers.exit.i.1.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i.i.1.4

if.then15.i.i.1.4:                                ; preds = %nfsd_vers.exit.i.1.4
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx17.i.i.1.4 = getelementptr i8, ptr %.pr.i.1.4, i32 4
  %38 = ptrtoint ptr %arrayidx17.i.i.1.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx17.i.i.1.4, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool18.i.i.1.4 = icmp ne i8 %39, 0
  br label %while.body.1.4

nfsd_support_version.exit41.i.i.1.4:              ; preds = %nfsd_vers.exit.i.1.4.nfsd_support_version.exit41.i.i.1.4_crit_edge, %if.then2.i.1.4.nfsd_support_version.exit41.i.i.1.4_crit_edge
  %40 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i.i.1.4 = icmp ne ptr %40, null
  br label %while.body.1.4

while.body.1.4:                                   ; preds = %nfsd_support_version.exit41.i.i.1.4, %if.then15.i.i.1.4
  %retval.0.shrunk.i.i.1.4 = phi i1 [ %cmp2.i38.i.i.1.4, %nfsd_support_version.exit41.i.i.1.4 ], [ %tobool18.i.i.1.4, %if.then15.i.i.1.4 ]
  %41 = ptrtoint ptr %nfsd4_minorversions.i8793 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nfsd4_minorversions.i8793, align 4
  %arrayidx.i30.1.4 = getelementptr i8, ptr %42, i32 1
  %frombool.i31.1.4 = zext i1 %retval.0.shrunk.i.i.1.4 to i8
  %43 = ptrtoint ptr %arrayidx.i30.1.4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool.i31.1.4, ptr %arrayidx.i30.1.4, align 1
  %.pr97 = load ptr, ptr %nfsd4_minorversions.i8793, align 4
  %tobool.not.i28.2.4 = icmp eq ptr %.pr97, null
  br i1 %tobool.not.i28.2.4, label %while.body.1.4.cleanup_crit_edge, label %if.then2.i.2.4

while.body.1.4.cleanup_crit_edge:                 ; preds = %while.body.1.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.i.2.4:                                   ; preds = %while.body.1.4
  %44 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool.not.i.i.2.4 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.2.4, label %if.then2.i.2.4.nfsd_support_version.exit41.i.i.2.4_crit_edge, label %nfsd_vers.exit.i.2.4

if.then2.i.2.4.nfsd_support_version.exit41.i.i.2.4_crit_edge: ; preds = %if.then2.i.2.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i.i.2.4

nfsd_vers.exit.i.2.4:                             ; preds = %if.then2.i.2.4
  %46 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i.i.i.2.4 = icmp ne ptr %46, null
  %arrayidx.i.i29.2.4 = getelementptr i8, ptr %45, i32 4
  %frombool.i.i.2.4 = zext i1 %cmp2.i.i.i.2.4 to i8
  %47 = ptrtoint ptr %arrayidx.i.i29.2.4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %frombool.i.i.2.4, ptr %arrayidx.i.i29.2.4, align 1
  %48 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i.2.4 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i.i.2.4 = icmp eq ptr %.pr.i.2.4, null
  br i1 %tobool14.not.i.i.2.4, label %nfsd_vers.exit.i.2.4.nfsd_support_version.exit41.i.i.2.4_crit_edge, label %if.then15.i.i.2.4

nfsd_vers.exit.i.2.4.nfsd_support_version.exit41.i.i.2.4_crit_edge: ; preds = %nfsd_vers.exit.i.2.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_version.exit41.i.i.2.4

if.then15.i.i.2.4:                                ; preds = %nfsd_vers.exit.i.2.4
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx17.i.i.2.4 = getelementptr i8, ptr %.pr.i.2.4, i32 4
  %49 = ptrtoint ptr %arrayidx17.i.i.2.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx17.i.i.2.4, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool18.i.i.2.4 = icmp ne i8 %50, 0
  br label %nfsd_vers.exit45.i.2.4

nfsd_support_version.exit41.i.i.2.4:              ; preds = %nfsd_vers.exit.i.2.4.nfsd_support_version.exit41.i.i.2.4_crit_edge, %if.then2.i.2.4.nfsd_support_version.exit41.i.i.2.4_crit_edge
  %51 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 4), align 4
  %cmp2.i38.i.i.2.4 = icmp ne ptr %51, null
  br label %nfsd_vers.exit45.i.2.4

nfsd_vers.exit45.i.2.4:                           ; preds = %nfsd_support_version.exit41.i.i.2.4, %if.then15.i.i.2.4
  %retval.0.shrunk.i.i.2.4 = phi i1 [ %cmp2.i38.i.i.2.4, %nfsd_support_version.exit41.i.i.2.4 ], [ %tobool18.i.i.2.4, %if.then15.i.i.2.4 ]
  %52 = ptrtoint ptr %nfsd4_minorversions.i8793 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nfsd4_minorversions.i8793, align 4
  %arrayidx.i30.2.4 = getelementptr i8, ptr %53, i32 2
  %frombool.i31.2.4 = zext i1 %retval.0.shrunk.i.i.2.4 to i8
  %54 = ptrtoint ptr %arrayidx.i30.2.4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool.i31.2.4, ptr %arrayidx.i30.2.4, align 1
  br label %cleanup

cleanup:                                          ; preds = %nfsd_vers.exit45.i.2.4, %while.body.1.4.cleanup_crit_edge, %while.body.4.cleanup_crit_edge, %if.end.i27.preheader.4.cleanup_crit_edge, %nfsd_vers.exit.4.cleanup_crit_edge, %nfsd_support_version.exit41.i.4.cleanup_crit_edge, %nfsd_vers.exit.3.cleanup_crit_edge, %nfsd_support_version.exit41.i.3.cleanup_crit_edge, %nfsd_vers.exit.2.cleanup_crit_edge, %nfsd_support_version.exit41.i.2.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_shutdown_threads(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #15
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %1 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_serv, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #15, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !104

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.svc_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !118

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.svc_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %svc_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %svc_get.exit

svc_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.svc_get.exit_crit_edge
  %call2 = tail call i32 @svc_set_num_threads(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #15
  tail call void @nfsd_put(ptr noundef %net)
  br label %cleanup

cleanup:                                          ; preds = %svc_get.exit, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_set_num_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_put(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %1 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_serv, align 4
  %sv_refcnt = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt, ptr %sv_refcnt, i32 1, ptr elementtype(i32) %sv_refcnt) #15, !srcloc !120
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !118

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt, i32 noundef 3) #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !121
  %4 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nfsd_serv, align 4
  tail call void @svc_shutdown_net(ptr noundef %5, ptr noundef %net) #15
  %6 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nfsd_serv, align 4
  %sv_refcnt4 = getelementptr inbounds %struct.svc_serv, ptr %7, i32 0, i32 3
  tail call void @svc_destroy(ptr noundef %sv_refcnt4) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfsd_notifier_lock) #15
  %8 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %nfsd_serv, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nfsd_notifier_lock) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @i_am_nfsd() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call ptr @kthread_func(ptr noundef %3) #15
  %cmp = icmp eq ptr %call1, @nfsd
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_func(ptr noundef) local_unnamed_addr #0

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd(ptr noundef %vrqstp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %vrqstp, i32 0, i32 7
  %0 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_server, align 4
  %sv_permsocks = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sv_permsocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sv_permsocks, align 4
  %xpt_net = getelementptr i8, ptr %3, i32 512
  %4 = ptrtoint ptr %xpt_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xpt_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  %call1 = tail call i32 @unshare_fs_struct() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #19
  br label %out

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 107
  %11 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs, align 128
  %umask = getelementptr inbounds %struct.fs_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %umask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %umask, align 4
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i32 2 to ptr)) #15
  tail call void @kernel_sigaction(i32 noundef 1, ptr noundef nonnull inttoptr (i32 2 to ptr)) #15
  tail call void @kernel_sigaction(i32 noundef 2, ptr noundef nonnull inttoptr (i32 2 to ptr)) #15
  tail call void @kernel_sigaction(i32 noundef 3, ptr noundef nonnull inttoptr (i32 2 to ptr)) #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1), i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1), i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1), ptr getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1)) #15, !srcloc !122
  %call5 = tail call zeroext i1 @set_freezable() #15
  %max_connections = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 35
  br label %for.cond

for.cond:                                         ; preds = %do.body12, %if.end
  %15 = ptrtoint ptr %max_connections to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_connections, align 4
  %17 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rq_server, align 4
  %sv_maxconn = getelementptr inbounds %struct.svc_serv, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %sv_maxconn to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %sv_maxconn, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.cond
  %call7 = tail call i32 @svc_recv(ptr noundef %vrqstp, i32 noundef 360000) #15
  %20 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call7, label %do.body12 [
    i32 -11, label %while.cond.while.cond_crit_edge
    i32 -4, label %for.end
  ]

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

do.body12:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %22, ptr noundef nonnull @.str.4, i32 noundef 986) #15
  %call17 = tail call i32 @svc_process(ptr noundef %vrqstp) #15
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %24, ptr noundef nonnull @.str.4, i32 noundef 988) #15
  br label %for.cond

for.end:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  tail call void @flush_signals(ptr noundef %26) #15
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1), i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1), i32 1, i32 3, i32 1) #15
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1), ptr getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.nfsd_stats, ptr @nfsdstats, i32 0, i32 1)) #15, !srcloc !123
  br label %out

out:                                              ; preds = %for.end, %do.end
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %28 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nfsd_serv, align 4
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #15
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #15, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %out.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !104

out.if.end15.sink.split.i.i.i.i.i_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %out
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.svc_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !118

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.svc_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %svc_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %out.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %out.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %svc_get.exit

svc_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.svc_get.exit_crit_edge
  tail call void @svc_exit_thread(ptr noundef %vrqstp) #15
  %32 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nfsd_serv, align 4
  %sv_refcnt.i4243 = getelementptr inbounds %struct.svc_serv, ptr %33, i32 0, i32 3
  %call.i44 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %sv_refcnt.i4243) #15
  br i1 %call.i44, label %svc_get.exit.while.end33_crit_edge, label %svc_get.exit.while.body29_crit_edge

svc_get.exit.while.body29_crit_edge:              ; preds = %svc_get.exit
  br label %while.body29

svc_get.exit.while.end33_crit_edge:               ; preds = %svc_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end33

while.body29:                                     ; preds = %if.end32.while.body29_crit_edge, %svc_get.exit.while.body29_crit_edge
  %call30 = tail call i32 @mutex_trylock(ptr noundef nonnull @nfsd_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfsd_put(ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #15
  br label %while.end33

if.end32:                                         ; preds = %while.body29
  tail call void @msleep(i32 noundef 20) #15
  %34 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nfsd_serv, align 4
  %sv_refcnt.i42 = getelementptr inbounds %struct.svc_serv, ptr %35, i32 0, i32 3
  %call.i = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %sv_refcnt.i42) #15
  br i1 %call.i, label %if.end32.while.end33_crit_edge, label %if.end32.while.body29_crit_edge

if.end32.while.body29_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body29

if.end32.while.end33_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end33

while.end33:                                      ; preds = %if.end32.while.end33_crit_edge, %if.then31, %svc_get.exit.while.end33_crit_edge
  call void @__asan_handle_no_return()
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #20
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_create_serv(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  %now.i.i = alloca %struct.timespec64, align 8
  %i.i = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @nfsd_mutex) #15
  br i1 %call1, label %entry.if.end_crit_edge, label %do.end, !prof !118

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 652, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %1 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_serv, align 4
  %tobool21.not = icmp eq ptr %2, null
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #15, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then22.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !104

if.then22.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then22
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !118

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then22.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then22.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_max_blksize to i32))
  %5 = load i32, ptr @nfsd_max_blksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then26, label %if.end25.if.end28_crit_edge

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then26:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %i.i) #15
  %6 = call ptr @memset(ptr %i.i, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %i.i) #15
  %totalram.i = getelementptr inbounds %struct.sysinfo, ptr %i.i, i32 0, i32 2
  %7 = ptrtoint ptr %totalram.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %totalram.i, align 4
  %totalhigh.i = getelementptr inbounds %struct.sysinfo, ptr %i.i, i32 0, i32 10
  %9 = ptrtoint ptr %totalhigh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %totalhigh.i, align 4
  %sub.i = sub i32 %8, %10
  %shl.i = and i32 %sub.i, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl.i)
  %cmp.i.1 = icmp ult i32 %shl.i, 524288
  br i1 %cmp.i.1, label %while.cond.i.2, label %if.then26.nfsd_get_default_max_blksize.exit_crit_edge

if.then26.nfsd_get_default_max_blksize.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_get_default_max_blksize.exit

while.cond.i.2:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %shl.i)
  %cmp.i.2 = icmp ult i32 %shl.i, 262144
  br i1 %cmp.i.2, label %while.cond.i.3, label %while.cond.i.2.nfsd_get_default_max_blksize.exit_crit_edge

while.cond.i.2.nfsd_get_default_max_blksize.exit_crit_edge: ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_get_default_max_blksize.exit

while.cond.i.3:                                   ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %shl.i)
  %cmp.i.3 = icmp ult i32 %shl.i, 131072
  br i1 %cmp.i.3, label %while.cond.i.4, label %while.cond.i.3.nfsd_get_default_max_blksize.exit_crit_edge

while.cond.i.3.nfsd_get_default_max_blksize.exit_crit_edge: ; preds = %while.cond.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_get_default_max_blksize.exit

while.cond.i.4:                                   ; preds = %while.cond.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i)
  %cmp.i.4 = icmp ult i32 %shl.i, 65536
  br i1 %cmp.i.4, label %while.cond.i.5, label %while.cond.i.4.nfsd_get_default_max_blksize.exit_crit_edge

while.cond.i.4.nfsd_get_default_max_blksize.exit_crit_edge: ; preds = %while.cond.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_get_default_max_blksize.exit

while.cond.i.5:                                   ; preds = %while.cond.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %shl.i)
  %cmp.i.5 = icmp ult i32 %shl.i, 32768
  br i1 %cmp.i.5, label %while.cond.i.6, label %while.cond.i.5.nfsd_get_default_max_blksize.exit_crit_edge

while.cond.i.5.nfsd_get_default_max_blksize.exit_crit_edge: ; preds = %while.cond.i.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_get_default_max_blksize.exit

while.cond.i.6:                                   ; preds = %while.cond.i.5
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %shl.i)
  %cmp.i.6 = icmp ult i32 %shl.i, 16384
  %spec.select = select i1 %cmp.i.6, i32 8192, i32 16384
  br label %nfsd_get_default_max_blksize.exit

nfsd_get_default_max_blksize.exit:                ; preds = %while.cond.i.6, %while.cond.i.5.nfsd_get_default_max_blksize.exit_crit_edge, %while.cond.i.4.nfsd_get_default_max_blksize.exit_crit_edge, %while.cond.i.3.nfsd_get_default_max_blksize.exit_crit_edge, %while.cond.i.2.nfsd_get_default_max_blksize.exit_crit_edge, %if.then26.nfsd_get_default_max_blksize.exit_crit_edge
  %ret.0.i.lcssa = phi i32 [ 524288, %if.then26.nfsd_get_default_max_blksize.exit_crit_edge ], [ 262144, %while.cond.i.2.nfsd_get_default_max_blksize.exit_crit_edge ], [ 131072, %while.cond.i.3.nfsd_get_default_max_blksize.exit_crit_edge ], [ 65536, %while.cond.i.4.nfsd_get_default_max_blksize.exit_crit_edge ], [ 32768, %while.cond.i.5.nfsd_get_default_max_blksize.exit_crit_edge ], [ %spec.select, %while.cond.i.6 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %i.i) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nfsd_max_blksize to i32))
  store i32 %ret.0.i.lcssa, ptr @nfsd_max_blksize, align 4
  br label %if.end28

if.end28:                                         ; preds = %nfsd_get_default_max_blksize.exit, %if.end25.if.end28_crit_edge
  call void @nfsd_reset_versions(ptr noundef %call)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_max_blksize to i32))
  %11 = load i32, ptr @nfsd_max_blksize, align 4
  %call29 = call ptr @svc_create_pooled(ptr noundef nonnull @nfsd_program, i32 noundef %11, ptr noundef nonnull @nfsd_thread_sv_ops) #15
  %cmp30 = icmp eq ptr %call29, null
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %max_connections = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 35
  %12 = ptrtoint ptr %max_connections to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_connections, align 4
  %sv_maxconn = getelementptr inbounds %struct.svc_serv, ptr %call29, i32 0, i32 5
  %14 = ptrtoint ptr %sv_maxconn to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sv_maxconn, align 4
  %call33 = call i32 @svc_bind(ptr noundef nonnull %call29, ptr noundef %net) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  %sv_refcnt.i58 = getelementptr inbounds %struct.svc_serv, ptr %call29, i32 0, i32 3
  %call.i.i.i.i.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i58, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  call void @llvm.prefetch.p0(ptr %sv_refcnt.i58, i32 1, i32 3, i32 1) #15
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i58, ptr %sv_refcnt.i58, i32 1, ptr elementtype(i32) %sv_refcnt.i58) #15, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i60 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i60, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !118

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i58, i32 noundef 3) #15
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !121
  call void @svc_destroy(ptr noundef %sv_refcnt.i58) #15, !callees !124
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @_raw_spin_lock(ptr noundef nonnull @nfsd_notifier_lock) #15
  %16 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %nfsd_serv, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @nfsd_notifier_lock) #15
  %call.i = call i32 @nr_free_buffer_pages() #15
  %17 = shl i32 %call.i, 5
  %mul.i = and i32 %17, -4096
  store i32 %mul.i, ptr @nfsd_drc_max_mem, align 4
  store i32 0, ptr @nfsd_drc_mem_used, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %18 = load i32, ptr @nfsd_debug, align 4
  %and.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end36.set_max_drc.exit_crit_edge, label %do.end.i

if.end36.set_max_drc.exit_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_max_drc.exit

do.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %mul.i) #19
  br label %set_max_drc.exit

set_max_drc.exit:                                 ; preds = %do.end.i, %if.end36.set_max_drc.exit_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfsd_notifier_refcount, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void @llvm.prefetch.p0(ptr nonnull @nfsd_notifier_refcount, i32 1, i32 3, i32 1) #15
  %19 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfsd_notifier_refcount, ptr nonnull @nfsd_notifier_refcount, i32 1, ptr nonnull elementtype(i32) @nfsd_notifier_refcount) #15, !srcloc !126
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %19, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp39 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp39, label %if.then40, label %set_max_drc.exit.if.end43_crit_edge

set_max_drc.exit.if.end43_crit_edge:              ; preds = %set_max_drc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then40:                                        ; preds = %set_max_drc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call41 = call i32 @register_inetaddr_notifier(ptr noundef nonnull @nfsd_inetaddr_notifier) #15
  %call42 = call i32 @register_inet6addr_notifier(ptr noundef nonnull @nfsd_inet6addr_notifier) #15
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %set_max_drc.exit.if.end43_crit_edge
  %writeverf_lock.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 33
  %lock.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 33, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #15
  %20 = ptrtoint ptr %writeverf_lock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writeverf_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i.i, ptr %writeverf_lock.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  %dep_map.i.i.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 33, i32 0, i32 0, i32 1
  %22 = call ptr @llvm.returnaddress(i32 0) #15
  %23 = ptrtoint ptr %22 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %23) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i.i) #15
  %24 = call ptr @memset(ptr %now.i.i, i32 255, i32 16)
  call void @ktime_get_raw_ts64(ptr noundef nonnull %now.i.i) #15
  %25 = ptrtoint ptr %now.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %now.i.i, align 8
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %now.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %28 to i64
  %siphash_key.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 60
  %call.i.i61 = call i64 @siphash_2u64(i64 noundef %26, i64 noundef %conv.i.i, ptr noundef %siphash_key.i.i) #15
  %writeverf.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 34
  %29 = ptrtoint ptr %writeverf.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %call.i.i61, ptr %writeverf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i.i) #15
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %23) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !116
  %30 = ptrtoint ptr %writeverf_lock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %writeverf_lock.i, align 4
  %inc.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i, ptr %writeverf_lock.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -12, %if.end28.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ], [ %call33, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call33, %if.then10.i.i.i.i.i ], [ %call33, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_create_pooled(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_bind(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_nrpools(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %1 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_serv, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sv_nrpools = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %sv_nrpools to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sv_nrpools, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_get_nrthreads(i32 noundef %n, ptr nocapture noundef writeonly %nthreads, ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %1 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_serv, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nfsd_serv, align 4
  %sv_nrpools12 = getelementptr inbounds %struct.svc_serv, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %sv_nrpools12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sv_nrpools12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp213 = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp314 = icmp sgt i32 %n, 0
  %or.cond15 = and i1 %cmp314, %cmp213
  br i1 %or.cond15, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %7 = phi ptr [ %14, %for.body.for.body_crit_edge ], [ %4, %for.cond.preheader.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %sv_pools = getelementptr inbounds %struct.svc_serv, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %sv_pools to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sv_pools, align 4
  %sp_nrthreads = getelementptr %struct.svc_pool, ptr %9, i32 %i.016, i32 3
  %10 = ptrtoint ptr %sp_nrthreads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sp_nrthreads, align 8
  %arrayidx5 = getelementptr i32, ptr %nthreads, i32 %i.016
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %i.016, 1
  %13 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nfsd_serv, align 4
  %sv_nrpools = getelementptr inbounds %struct.svc_serv, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %sv_nrpools to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sv_nrpools, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp2 = icmp ult i32 %inc, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %n)
  %cmp3 = icmp slt i32 %inc, %n
  %or.cond = and i1 %cmp3, %cmp2
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_shutdown_net(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_set_nrthreads(i32 noundef %n, ptr nocapture noundef %nthreads, ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @nfsd_mutex) #15
  br i1 %call1, label %entry.if.end_crit_edge, label %do.end, !prof !118

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 742, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %1 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfsd_serv, align 4
  %cmp = icmp eq ptr %2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp21 = icmp slt i32 %n, 1
  %or.cond = or i1 %cmp21, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %sv_nrpools = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %sv_nrpools to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sv_nrpools, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp30135 = icmp ne i32 %5, 0
  br i1 %cmp30135, label %if.end23.for.body_crit_edge, label %if.end23.if.end59_crit_edge

if.end23.if.end59_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.0137 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %tot.0136 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %nthreads, i32 %i.0137
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 8192)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %add = add i32 %8, %tot.0136
  %inc = add nuw nsw i32 %i.0137, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %add)
  %cmp35 = icmp slt i32 %add, 8193
  %cmp30135.not = xor i1 %cmp30135, true
  %brmerge = select i1 %cmp35, i1 true, i1 %cmp30135.not
  br i1 %brmerge, label %for.end.if.end59_crit_edge, label %for.end.for.body40_crit_edge

for.end.for.body40_crit_edge:                     ; preds = %for.end
  br label %for.body40

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

for.cond48.preheader:                             ; preds = %for.body40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43)
  %cmp51145 = icmp sgt i32 %sub43, 0
  %or.cond134146 = select i1 %cmp30135, i1 %cmp51145, i1 false
  br i1 %or.cond134146, label %for.cond48.preheader.for.body53_crit_edge, label %for.cond48.preheader.if.end59_crit_edge

for.cond48.preheader.if.end59_crit_edge:          ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

for.cond48.preheader.for.body53_crit_edge:        ; preds = %for.cond48.preheader
  br label %for.body53

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.end.for.body40_crit_edge
  %i.1142 = phi i32 [ %inc46, %for.body40.for.body40_crit_edge ], [ 0, %for.end.for.body40_crit_edge ]
  %tot.1141 = phi i32 [ %sub43, %for.body40.for.body40_crit_edge ], [ %add, %for.end.for.body40_crit_edge ]
  %arrayidx41 = getelementptr i32, ptr %nthreads, i32 %i.1142
  %10 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx41, align 4
  %mul = shl i32 %11, 13
  %div = sdiv i32 %mul, %tot.1141
  %sub.neg = sub i32 %tot.1141, %11
  %sub43 = add i32 %sub.neg, %div
  store i32 %div, ptr %arrayidx41, align 4
  %inc46 = add nuw nsw i32 %i.1142, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc46, i32 %5)
  %cmp38 = icmp slt i32 %inc46, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43)
  %cmp39 = icmp sgt i32 %sub43, 0
  %or.cond133 = select i1 %cmp38, i1 %cmp39, i1 false
  br i1 %or.cond133, label %for.body40.for.body40_crit_edge, label %for.cond48.preheader

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body40

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.cond48.preheader.for.body53_crit_edge
  %i.2148 = phi i32 [ %inc57, %for.body53.for.body53_crit_edge ], [ 0, %for.cond48.preheader.for.body53_crit_edge ]
  %tot.2147 = phi i32 [ %dec55, %for.body53.for.body53_crit_edge ], [ %sub43, %for.cond48.preheader.for.body53_crit_edge ]
  %arrayidx54 = getelementptr i32, ptr %nthreads, i32 %i.2148
  %12 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx54, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %arrayidx54, align 4
  %dec55 = add nsw i32 %tot.2147, -1
  %inc57 = add nuw nsw i32 %i.2148, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc57, i32 %5)
  %cmp49 = icmp slt i32 %inc57, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tot.2147)
  %cmp51 = icmp ugt i32 %tot.2147, 1
  %or.cond134 = select i1 %cmp49, i1 %cmp51, i1 false
  br i1 %or.cond134, label %for.body53.for.body53_crit_edge, label %for.body53.if.end59_crit_edge

for.body53.if.end59_crit_edge:                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body53

if.end59:                                         ; preds = %for.body53.if.end59_crit_edge, %for.cond48.preheader.if.end59_crit_edge, %for.end.if.end59_crit_edge, %if.end23.if.end59_crit_edge
  %14 = ptrtoint ptr %nthreads to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nthreads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp61 = icmp eq i32 %15, 0
  br i1 %cmp61, label %if.then62, label %if.end59.if.end64_crit_edge

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %nthreads to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nthreads, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  %17 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nfsd_serv, align 4
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #15, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end64.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !104

if.end64.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end64
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.svc_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !118

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.svc_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %svc_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end64.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end64.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %svc_get.exit

svc_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.svc_get.exit_crit_edge
  br i1 %cmp30135, label %svc_get.exit.for.body69_crit_edge, label %svc_get.exit.for.end80_crit_edge

svc_get.exit.for.end80_crit_edge:                 ; preds = %svc_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end80

svc_get.exit.for.body69_crit_edge:                ; preds = %svc_get.exit
  br label %for.body69

for.cond67:                                       ; preds = %for.body69
  %inc79 = add nuw nsw i32 %i.3150, 1
  %exitcond153.not = icmp eq i32 %inc79, %5
  br i1 %exitcond153.not, label %for.cond67.for.end80_crit_edge, label %for.cond67.for.body69_crit_edge

for.cond67.for.body69_crit_edge:                  ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body69

for.cond67.for.end80_crit_edge:                   ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end80

for.body69:                                       ; preds = %for.cond67.for.body69_crit_edge, %svc_get.exit.for.body69_crit_edge
  %i.3150 = phi i32 [ %inc79, %for.cond67.for.body69_crit_edge ], [ 0, %svc_get.exit.for.body69_crit_edge ]
  %21 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nfsd_serv, align 4
  %sv_pools = getelementptr inbounds %struct.svc_serv, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %sv_pools to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sv_pools, align 4
  %arrayidx72 = getelementptr %struct.svc_pool, ptr %24, i32 %i.3150
  %arrayidx73 = getelementptr i32, ptr %nthreads, i32 %i.3150
  %25 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx73, align 4
  %call74 = tail call i32 @svc_set_num_threads(ptr noundef %22, ptr noundef %arrayidx72, i32 noundef %26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %for.cond67, label %for.body69.for.end80_crit_edge

for.body69.for.end80_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end80

for.end80:                                        ; preds = %for.body69.for.end80_crit_edge, %for.cond67.for.end80_crit_edge, %svc_get.exit.for.end80_crit_edge
  %err.1 = phi i32 [ 0, %svc_get.exit.for.end80_crit_edge ], [ %call74, %for.body69.for.end80_crit_edge ], [ 0, %for.cond67.for.end80_crit_edge ]
  tail call void @nfsd_put(ptr noundef %net)
  br label %cleanup

cleanup:                                          ; preds = %for.end80, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %for.end80 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_svc(i32 noundef %nrservs, ptr noundef %net, ptr noundef %cred) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %1 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #19
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %2 = tail call i32 @llvm.smax.i32(i32 %nrservs, i32 0)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp eq i32 %3, 0
  br i1 %cmp12, label %land.lhs.true, label %do.end4.if.end15_crit_edge

do.end4.if.end15_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true:                                    ; preds = %do.end4
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %4 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nfsd_serv, align 4
  %cmp13 = icmp eq ptr %5, null
  br i1 %cmp13, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %do.end4.if.end15_crit_edge
  %nfsd_name = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 58
  %6 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 110
  %10 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uts_ns.i, align 4
  %nodename = getelementptr inbounds %struct.new_utsname, ptr %13, i32 0, i32 1
  %call18 = tail call i32 @strlcpy(ptr noundef %nfsd_name, ptr noundef %nodename, i32 noundef 65) #15
  %call19 = tail call i32 @nfsd_create_serv(ptr noundef %net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end22:                                         ; preds = %if.end15
  %nfsd_net_up = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 31
  %14 = ptrtoint ptr %nfsd_net_up to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nfsd_net_up, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp ne i8 %15, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %16 = load i32, ptr @nfsd_net_id, align 4
  %call.i83 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %16) #15
  %nfsd_net_up.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i83, i32 0, i32 31
  %17 = ptrtoint ptr %nfsd_net_up.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nfsd_net_up.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end.i:                                         ; preds = %if.end22
  %19 = load i32, ptr @nfsd_users, align 4
  %inc.i.i = add i32 %19, 1
  store i32 %inc.i.i, ptr @nfsd_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.end.i.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @nfsd_file_cache_init() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.nfsd_startup_net.exit.thread86_crit_edge

if.end.i.i.nfsd_startup_net.exit.thread86_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_startup_net.exit.thread86

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = tail call i32 @nfs4_state_start() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end3.i.i.if.end4.i_crit_edge, label %out_file_cache.i.i

if.end3.i.i.if.end4.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

out_file_cache.i.i:                               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfsd_file_cache_shutdown() #15
  br label %nfsd_startup_net.exit.thread86

nfsd_startup_net.exit.thread86:                   ; preds = %out_file_cache.i.i, %if.end.i.i.nfsd_startup_net.exit.thread86_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.end.i.i.nfsd_startup_net.exit.thread86_crit_edge ], [ %call4.i.i, %out_file_cache.i.i ]
  %20 = load i32, ptr @nfsd_users, align 4
  %dec.i.i = add i32 %20, -1
  store i32 %dec.i.i, ptr @nfsd_users, align 4
  br label %out_put

if.end4.i:                                        ; preds = %if.end3.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %21 = load i32, ptr @nfsd_net_id, align 4
  %call.i53.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %21) #15
  %nfsd_serv.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i53.i, i32 0, i32 39
  %22 = ptrtoint ptr %nfsd_serv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nfsd_serv.i.i, align 4
  %sv_permsocks.i.i = getelementptr inbounds %struct.svc_serv, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %sv_permsocks.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %sv_permsocks.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %25, %sv_permsocks.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i54.i, label %if.end4.i.if.end8.i_crit_edge

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.end.i54.i:                                     ; preds = %if.end4.i
  %call3.i.i = tail call i32 @svc_create_xprt(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef %net, i32 noundef 2, i16 noundef zeroext 2049, i32 noundef 0, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end.i54.i.out_socks.i_crit_edge, label %nfsd_init_socks.exit.i

if.end.i54.i.out_socks.i_crit_edge:               ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_socks.i

nfsd_init_socks.exit.i:                           ; preds = %if.end.i54.i
  %26 = ptrtoint ptr %nfsd_serv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nfsd_serv.i.i, align 4
  %call7.i.i = tail call i32 @svc_create_xprt(ptr noundef %27, ptr noundef nonnull @.str.23, ptr noundef %net, i32 noundef 2, i16 noundef zeroext 2049, i32 noundef 0, ptr noundef %cred) #15
  %28 = tail call i32 @llvm.smin.i32(i32 %call7.i.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i.i)
  %tobool6.not.i = icmp sgt i32 %call7.i.i, -1
  br i1 %tobool6.not.i, label %nfsd_init_socks.exit.i.if.end8.i_crit_edge, label %nfsd_init_socks.exit.i.out_socks.i_crit_edge

nfsd_init_socks.exit.i.out_socks.i_crit_edge:     ; preds = %nfsd_init_socks.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_socks.i

nfsd_init_socks.exit.i.if.end8.i_crit_edge:       ; preds = %nfsd_init_socks.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.end8.i:                                        ; preds = %nfsd_init_socks.exit.i.if.end8.i_crit_edge, %if.end4.i.if.end8.i_crit_edge
  %nfsd_versions13.i.i.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i83, i32 0, i32 44
  %29 = ptrtoint ptr %nfsd_versions13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nfsd_versions13.i.i.i, align 8
  %tobool14.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool14.not.i.i.i, label %nfsd_vers.exit.i.i, label %nfsd_vers.exit.thread.i.i

nfsd_vers.exit.i.i:                               ; preds = %if.end8.i
  %31 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 2), align 4
  %cmp2.i38.i.not.i.i = icmp eq ptr %31, null
  br i1 %cmp2.i38.i.not.i.i, label %nfsd_support_version.exit41.i10.i.i, label %nfsd_vers.exit.i.i.land.lhs.true.i_crit_edge

nfsd_vers.exit.i.i.land.lhs.true.i_crit_edge:     ; preds = %nfsd_vers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

nfsd_vers.exit.thread.i.i:                        ; preds = %if.end8.i
  %arrayidx17.i.i.i = getelementptr i8, ptr %30, i32 2
  %32 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx17.i.i.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not16.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not16.i.i, label %nfsd_needs_lockd.exit.i, label %nfsd_vers.exit.thread.i.i.land.lhs.true.i_crit_edge

nfsd_vers.exit.thread.i.i.land.lhs.true.i_crit_edge: ; preds = %nfsd_vers.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

nfsd_support_version.exit41.i10.i.i:              ; preds = %nfsd_vers.exit.i.i
  %34 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 3), align 4
  %cmp2.i38.i9.i.not.i = icmp eq ptr %34, null
  br i1 %cmp2.i38.i9.i.not.i, label %nfsd_support_version.exit41.i10.i.i.if.end17.i_crit_edge, label %nfsd_support_version.exit41.i10.i.i.land.lhs.true.i_crit_edge

nfsd_support_version.exit41.i10.i.i.land.lhs.true.i_crit_edge: ; preds = %nfsd_support_version.exit41.i10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

nfsd_support_version.exit41.i10.i.i.if.end17.i_crit_edge: ; preds = %nfsd_support_version.exit41.i10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

nfsd_needs_lockd.exit.i:                          ; preds = %nfsd_vers.exit.thread.i.i
  %arrayidx17.i6.i.i = getelementptr i8, ptr %30, i32 3
  %35 = ptrtoint ptr %arrayidx17.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx17.i6.i.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool18.i7.i.not.i = icmp eq i8 %36, 0
  br i1 %tobool18.i7.i.not.i, label %nfsd_needs_lockd.exit.i.if.end17.i_crit_edge, label %nfsd_needs_lockd.exit.i.land.lhs.true.i_crit_edge

nfsd_needs_lockd.exit.i.land.lhs.true.i_crit_edge: ; preds = %nfsd_needs_lockd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

nfsd_needs_lockd.exit.i.if.end17.i_crit_edge:     ; preds = %nfsd_needs_lockd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %nfsd_needs_lockd.exit.i.land.lhs.true.i_crit_edge, %nfsd_support_version.exit41.i10.i.i.land.lhs.true.i_crit_edge, %nfsd_vers.exit.thread.i.i.land.lhs.true.i_crit_edge, %nfsd_vers.exit.i.i.land.lhs.true.i_crit_edge
  %lockd_up.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i83, i32 0, i32 32
  %37 = ptrtoint ptr %lockd_up.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lockd_up.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool10.not.i = icmp eq i8 %38, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  %call12.i = tail call i32 @lockd_up(ptr noundef %net, ptr noundef %cred) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then11.i.out_socks.i_crit_edge

if.then11.i.out_socks.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_socks.i

if.end15.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %lockd_up.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %lockd_up.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end15.i, %land.lhs.true.i.if.end17.i_crit_edge, %nfsd_needs_lockd.exit.i.if.end17.i_crit_edge, %nfsd_support_version.exit41.i10.i.i.if.end17.i_crit_edge
  %call18.i = tail call i32 @nfsd_file_cache_start_net(ptr noundef %net) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.out_lockd.i_crit_edge

if.end17.i.out_lockd.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_lockd.i

if.end21.i:                                       ; preds = %if.end17.i
  %call22.i = tail call i32 @nfs4_state_start_net(ptr noundef %net) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %out_filecache.i

if.end25.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfsd4_ssc_init_umount_work(ptr noundef %call.i83) #15
  %40 = ptrtoint ptr %nfsd_net_up.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %nfsd_net_up.i, align 8
  br label %if.end27

out_filecache.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfsd_file_cache_shutdown_net(ptr noundef %net) #15
  br label %out_lockd.i

out_lockd.i:                                      ; preds = %out_filecache.i, %if.end17.i.out_lockd.i_crit_edge
  %ret.0.i = phi i32 [ %call18.i, %if.end17.i.out_lockd.i_crit_edge ], [ %call22.i, %out_filecache.i ]
  %lockd_up27.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i83, i32 0, i32 32
  %41 = ptrtoint ptr %lockd_up27.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lockd_up27.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool28.not.i = icmp eq i8 %42, 0
  br i1 %tobool28.not.i, label %out_lockd.i.out_socks.i_crit_edge, label %if.then29.i

out_lockd.i.out_socks.i_crit_edge:                ; preds = %out_lockd.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_socks.i

if.then29.i:                                      ; preds = %out_lockd.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lockd_down(ptr noundef %net) #15
  %43 = ptrtoint ptr %lockd_up27.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %lockd_up27.i, align 1
  br label %out_socks.i

out_socks.i:                                      ; preds = %if.then29.i, %out_lockd.i.out_socks.i_crit_edge, %if.then11.i.out_socks.i_crit_edge, %nfsd_init_socks.exit.i.out_socks.i_crit_edge, %if.end.i54.i.out_socks.i_crit_edge
  %ret.1.i = phi i32 [ %28, %nfsd_init_socks.exit.i.out_socks.i_crit_edge ], [ %ret.0.i, %if.then29.i ], [ %ret.0.i, %out_lockd.i.out_socks.i_crit_edge ], [ %call12.i, %if.then11.i.out_socks.i_crit_edge ], [ %call3.i.i, %if.end.i54.i.out_socks.i_crit_edge ]
  %44 = load i32, ptr @nfsd_users, align 4
  %dec.i56.i = add i32 %44, -1
  store i32 %dec.i56.i, ptr @nfsd_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i56.i)
  %tobool.not.i57.i = icmp eq i32 %dec.i56.i, 0
  br i1 %tobool.not.i57.i, label %if.end.i58.i, label %out_socks.i.nfsd_startup_net.exit_crit_edge

out_socks.i.nfsd_startup_net.exit_crit_edge:      ; preds = %out_socks.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_startup_net.exit

if.end.i58.i:                                     ; preds = %out_socks.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs4_state_shutdown() #15
  tail call void @nfsd_file_cache_shutdown() #15
  br label %nfsd_startup_net.exit

nfsd_startup_net.exit:                            ; preds = %if.end.i58.i, %out_socks.i.nfsd_startup_net.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool25.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool25.not, label %nfsd_startup_net.exit.if.end27_crit_edge, label %nfsd_startup_net.exit.out_put_crit_edge

nfsd_startup_net.exit.out_put_crit_edge:          ; preds = %nfsd_startup_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put

nfsd_startup_net.exit.if.end27_crit_edge:         ; preds = %nfsd_startup_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end27:                                         ; preds = %nfsd_startup_net.exit.if.end27_crit_edge, %if.end25.i, %if.end22.if.end27_crit_edge
  %nfsd_serv28 = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %45 = ptrtoint ptr %nfsd_serv28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nfsd_serv28, align 4
  %call29 = tail call i32 @svc_set_num_threads(ptr noundef %46, ptr noundef null, i32 noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.out_shutdown_crit_edge

if.end27.out_shutdown_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_shutdown

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %nfsd_serv28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nfsd_serv28, align 4
  %sv_nrthreads = getelementptr inbounds %struct.svc_serv, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %sv_nrthreads to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sv_nrthreads, align 4
  br label %out_shutdown

out_shutdown:                                     ; preds = %if.end32, %if.end27.out_shutdown_crit_edge
  %error.0 = phi i32 [ %call29, %if.end27.out_shutdown_crit_edge ], [ %50, %if.end32 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %error.0)
  %cmp34 = icmp sgt i32 %error.0, -1
  %brmerge = select i1 %cmp34, i1 true, i1 %tobool23.not
  br i1 %brmerge, label %out_shutdown.out_put_crit_edge, label %if.then37

out_shutdown.out_put_crit_edge:                   ; preds = %out_shutdown
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put

if.then37:                                        ; preds = %out_shutdown
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @nfsd_shutdown_net(ptr noundef %net)
  br label %out_put

out_put:                                          ; preds = %if.then37, %out_shutdown.out_put_crit_edge, %nfsd_startup_net.exit.out_put_crit_edge, %nfsd_startup_net.exit.thread86
  %error.1 = phi i32 [ %ret.1.i, %nfsd_startup_net.exit.out_put_crit_edge ], [ %error.0, %if.then37 ], [ %error.0, %out_shutdown.out_put_crit_edge ], [ %ret.0.i.i, %nfsd_startup_net.exit.thread86 ]
  %keep_active = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 40
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %keep_active, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %keep_active, i32 1, i32 3, i32 1) #15
  %51 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %keep_active) #15, !srcloc !129
  %asmresult.i = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool58.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool58.not, label %out_put.if.end60_crit_edge, label %if.then59

out_put.if.end60_crit_edge:                       ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then59:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfsd_put(ptr noundef %net)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %out_put.if.end60_crit_edge
  tail call void @nfsd_put(ptr noundef %net)
  br label %out

out:                                              ; preds = %if.end60, %if.end15.out_crit_edge, %land.lhs.true.out_crit_edge
  %error.2 = phi i32 [ 0, %land.lhs.true.out_crit_edge ], [ %call19, %if.end15.out_crit_edge ], [ %error.1, %if.end60 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #15
  ret i32 %error.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd_shutdown_net(ptr noundef %net) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @nfsd_file_cache_shutdown_net(ptr noundef %net) #15
  tail call void @nfs4_state_shutdown_net(ptr noundef %net) #15
  %lockd_up = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 32
  %1 = ptrtoint ptr %lockd_up to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lockd_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lockd_down(ptr noundef %net) #15
  %3 = ptrtoint ptr %lockd_up to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %lockd_up, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nfsd_net_up = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 31
  %4 = ptrtoint ptr %nfsd_net_up to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %nfsd_net_up, align 8
  %5 = load i32, ptr @nfsd_users, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr @nfsd_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.nfsd_shutdown_generic.exit_crit_edge

if.end.nfsd_shutdown_generic.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_shutdown_generic.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nfs4_state_shutdown() #15
  tail call void @nfsd_file_cache_shutdown() #15
  br label %nfsd_shutdown_generic.exit

nfsd_shutdown_generic.exit:                       ; preds = %if.end.i, %if.end.nfsd_shutdown_generic.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_dispatch(ptr noundef %rqstp, ptr noundef %statp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_procinfo = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 9
  %0 = ptrtoint ptr %rq_procinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_procinfo, align 4
  %pc_cachetype = getelementptr inbounds %struct.svc_procedure, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pc_cachetype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pc_cachetype, align 4
  %rq_cachetype = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 32
  %4 = ptrtoint ptr %rq_cachetype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rq_cachetype, align 8
  %rq_arg_stream.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16
  %rq_arg.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %5 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq_arg.i, align 4
  tail call void @xdr_init_decode(ptr noundef %rq_arg_stream.i, ptr noundef %rq_arg.i, ptr noundef %6, ptr noundef null) #15
  %rq_scratch_page.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 18
  %7 = ptrtoint ptr %rq_scratch_page.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rq_scratch_page.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %8) #15
  %scratch.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16, i32 4
  %9 = ptrtoint ptr %scratch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %scratch.i.i.i, align 4
  %iov_len.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16, i32 4, i32 1
  %10 = ptrtoint ptr %iov_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %iov_len.i.i.i, align 4
  %pc_decode = getelementptr inbounds %struct.svc_procedure, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pc_decode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pc_decode, align 4
  %call = tail call zeroext i1 %12(ptr noundef %rqstp, ptr noundef %rq_arg_stream.i) #15
  br i1 %call, label %if.end, label %out_decode_err

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfsd_cache_lookup(ptr noundef %rqstp) #15
  %13 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call1, label %sw.epilog [
    i32 0, label %if.end.out_dropit_crit_edge
    i32 1, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.out_dropit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_dropit

sw.epilog:                                        ; preds = %if.end
  %rq_res_stream.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17
  %rq_res.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %scratch.i.i.i34 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 4
  %14 = ptrtoint ptr %scratch.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %scratch.i.i.i34, align 4
  %iov_len.i.i.i35 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 4, i32 1
  %15 = ptrtoint ptr %iov_len.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %iov_len.i.i.i35, align 4
  %buf1.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rq_res.i, ptr %buf1.i, align 4
  %iov.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 3
  %17 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rq_res.i, ptr %iov.i, align 4
  %18 = ptrtoint ptr %rq_res.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rq_res.i, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %rq_res_stream.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %rq_res_stream.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %19, i32 4096
  %rq_auth_slack.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 39
  %23 = ptrtoint ptr %rq_auth_slack.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rq_auth_slack.i, align 8
  %idx.neg.i = sub i32 0, %24
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %idx.neg.i
  %end.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr4.i, ptr %end.i, align 4
  %len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 8
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %len.i, align 4
  %pages.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 3
  %27 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i, align 4
  %add.ptr6.i = getelementptr ptr, ptr %28, i32 -1
  %page_ptr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 5
  %29 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr6.i, ptr %page_ptr.i, align 4
  %rq_page_end.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 23
  %30 = ptrtoint ptr %rq_page_end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rq_page_end.i, align 4
  %add.ptr7.i = getelementptr ptr, ptr %31, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr7.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %mul.i = shl i32 %sub.ptr.sub.i, 10
  %buflen.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 7
  %sub.i = sub i32 %mul.i, %24
  %32 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i, ptr %buflen.i, align 4
  %rqst.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 7
  %33 = ptrtoint ptr %rqst.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rqst.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call3 = tail call i32 %35(ptr noundef %rqstp) #15
  %36 = ptrtoint ptr %statp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call3, ptr %statp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %call3)
  %cmp = icmp eq i32 %call3, 60000
  br i1 %cmp, label %sw.epilog.out_update_drop_crit_edge, label %lor.lhs.false

sw.epilog.out_update_drop_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_update_drop

lor.lhs.false:                                    ; preds = %sw.epilog
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  %37 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %rq_flags, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %if.end6, label %lor.lhs.false.out_update_drop_crit_edge

lor.lhs.false.out_update_drop_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_update_drop

if.end6:                                          ; preds = %lor.lhs.false
  %pc_encode = getelementptr inbounds %struct.svc_procedure, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %pc_encode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pc_encode, align 4
  %call7 = tail call zeroext i1 %41(ptr noundef %rqstp, ptr noundef %rq_res_stream.i) #15
  br i1 %call7, label %if.end9, label %out_encode_err

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %rq_cachetype to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rq_cachetype, align 8
  %add.ptr = getelementptr i32, ptr %statp, i32 1
  tail call void @nfsd_cache_update(ptr noundef %rqstp, i32 noundef %43, ptr noundef %add.ptr) #15
  br label %cleanup

out_decode_err:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_nfsd_garbage_args_err(ptr noundef %rqstp)
  %44 = ptrtoint ptr %statp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %statp, align 4
  br label %cleanup

out_update_drop:                                  ; preds = %lor.lhs.false.out_update_drop_crit_edge, %sw.epilog.out_update_drop_crit_edge
  tail call void @nfsd_cache_update(ptr noundef %rqstp, i32 noundef 0, ptr noundef null) #15
  br label %out_dropit

out_dropit:                                       ; preds = %out_update_drop, %if.end.out_dropit_crit_edge
  br label %cleanup

out_encode_err:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_nfsd_cant_encode_err(ptr noundef %rqstp)
  tail call void @nfsd_cache_update(ptr noundef %rqstp, i32 noundef 0, ptr noundef null) #15
  %45 = ptrtoint ptr %statp to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 5, ptr %statp, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_encode_err, %out_dropit, %out_decode_err, %if.end9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_dropit ], [ 1, %out_encode_err ], [ 1, %out_decode_err ], [ %call1, %if.end.cleanup_crit_edge ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_cache_lookup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_cache_update(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_garbage_args_err(ptr noundef %rqstp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_garbage_args_err, i32 0, i32 1), ptr blockaddress(@trace_nfsd_garbage_args_err, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !118

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !132
  %call42 = tail call i32 @__traceiter_nfsd_garbage_args_err(ptr noundef null, ptr noundef %rqstp) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !133
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !118

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_garbage_args_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_garbage_args_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_garbage_args_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_nfsd_garbage_args_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 77, ptr noundef nonnull @.str.9) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #15
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
define internal fastcc void @trace_nfsd_cant_encode_err(ptr noundef %rqstp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cant_encode_err, i32 0, i32 1), ptr blockaddress(@trace_nfsd_cant_encode_err, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !131

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !94) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !118

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !136
  %call42 = tail call i32 @__traceiter_nfsd_cant_encode_err(ptr noundef null, ptr noundef %rqstp) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !137
  %13 = tail call i32 @llvm.read_register.i32(metadata !94) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !94) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !118

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !94) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cant_encode_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_cant_encode_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_cant_encode_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_nfsd_cant_encode_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 78, ptr noundef nonnull @.str.9) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !94) #15
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfssvc_decode_voidarg(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %xdr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfssvc_encode_voidres(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %xdr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_pool_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %4 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #15
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 39
  %5 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nfsd_serv, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #15, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !104

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.svc_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !118

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.svc_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %svc_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %svc_get.exit

svc_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.svc_get.exit_crit_edge
  %9 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nfsd_serv, align 4
  %call4 = tail call i32 @svc_pool_stats_open(ptr noundef %10, ptr noundef %file) #15
  br label %cleanup

cleanup:                                          ; preds = %svc_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %svc_get.exit ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_pool_stats_open(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_pool_stats_release(ptr noundef %inode, ptr noundef %file) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #15
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #15
  tail call void @nfsd_put(ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_acl_init_request(ptr noundef %rqstp, ptr noundef %progp, ptr noundef %ret) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %3 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %3)
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %4 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_vers, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %nfsd_support_acl_version.exit, label %entry.if.end_crit_edge, !prof !138

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

nfsd_support_acl_version.exit:                    ; preds = %entry
  %arrayidx.i = getelementptr [4 x ptr], ptr @nfsd_acl_version, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i.not = icmp eq ptr %9, null
  br i1 %cmp2.i.not, label %nfsd_support_acl_version.exit.if.end_crit_edge, label %if.end.i, !prof !104

nfsd_support_acl_version.exit.if.end_crit_edge:   ; preds = %nfsd_support_acl_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %nfsd_support_acl_version.exit
  %nfsd_versions13.i = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 44
  %10 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i = icmp eq ptr %11, null
  br i1 %tobool14.not.i, label %nfsd_support_version.exit41.i, label %nfsd_vers.exit

nfsd_support_version.exit41.i:                    ; preds = %if.end.i
  %arrayidx.i37.i = getelementptr [5 x ptr], ptr @nfsd_version, i32 0, i32 %5
  %12 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i37.i, align 4
  %cmp2.i38.i.not = icmp eq ptr %13, null
  br i1 %cmp2.i38.i.not, label %nfsd_support_version.exit41.i.if.end_crit_edge, label %nfsd_support_version.exit41.i.if.then_crit_edge, !prof !104

nfsd_support_version.exit41.i.if.then_crit_edge:  ; preds = %nfsd_support_version.exit41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

nfsd_support_version.exit41.i.if.end_crit_edge:   ; preds = %nfsd_support_version.exit41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

nfsd_vers.exit:                                   ; preds = %if.end.i
  %arrayidx17.i = getelementptr i8, ptr %11, i32 %5
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.i.not = icmp eq i8 %15, 0
  br i1 %tobool18.i.not, label %nfsd_vers.exit.if.end_crit_edge, label %nfsd_vers.exit.if.then_crit_edge, !prof !104

nfsd_vers.exit.if.then_crit_edge:                 ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

nfsd_vers.exit.if.end_crit_edge:                  ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %nfsd_vers.exit.if.then_crit_edge, %nfsd_support_version.exit41.i.if.then_crit_edge
  %call8 = tail call i32 @svc_generic_init_request(ptr noundef %rqstp, ptr noundef %progp, ptr noundef %ret) #15
  br label %cleanup

if.end:                                           ; preds = %nfsd_vers.exit.if.end_crit_edge, %nfsd_support_version.exit41.i.if.end_crit_edge, %nfsd_support_acl_version.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %ret, align 4
  %17 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rq_vers, align 4
  %19 = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %20 = icmp eq i32 %19, 2
  %arrayidx.i56 = getelementptr [4 x ptr], ptr @nfsd_acl_version, i32 0, i32 %18
  %nfsd_versions13.i62 = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 44
  br i1 %20, label %nfsd_support_acl_version.exit60, label %if.end.for.inc.1_crit_edge

if.end.for.inc.1_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

nfsd_support_acl_version.exit60:                  ; preds = %if.end
  %21 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i56, align 4
  %cmp2.i57 = icmp eq ptr %22, null
  br i1 %cmp2.i57, label %nfsd_support_acl_version.exit60.for.inc.1_crit_edge, label %if.end.i61

nfsd_support_acl_version.exit60.for.inc.1_crit_edge: ; preds = %nfsd_support_acl_version.exit60
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end.i61:                                       ; preds = %nfsd_support_acl_version.exit60
  %23 = ptrtoint ptr %nfsd_versions13.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nfsd_versions13.i62, align 8
  %tobool14.not.i63 = icmp eq ptr %24, null
  br i1 %tobool14.not.i63, label %nfsd_support_version.exit41.i69, label %nfsd_vers.exit72

nfsd_support_version.exit41.i69:                  ; preds = %if.end.i61
  %25 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 2), align 4
  %cmp2.i38.i68.not = icmp eq ptr %25, null
  br i1 %cmp2.i38.i68.not, label %nfsd_support_version.exit41.i69.nfsd_support_acl_version.exit60.1_crit_edge, label %nfsd_support_version.exit41.i69.for.end.thread_crit_edge

nfsd_support_version.exit41.i69.for.end.thread_crit_edge: ; preds = %nfsd_support_version.exit41.i69
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_support_version.exit41.i69.nfsd_support_acl_version.exit60.1_crit_edge: ; preds = %nfsd_support_version.exit41.i69
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_acl_version.exit60.1

nfsd_vers.exit72:                                 ; preds = %if.end.i61
  %arrayidx17.i64 = getelementptr i8, ptr %24, i32 2
  %26 = ptrtoint ptr %arrayidx17.i64 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17.i64, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool18.i65.not = icmp eq i8 %27, 0
  br i1 %tobool18.i65.not, label %nfsd_vers.exit72.nfsd_support_acl_version.exit60.1_crit_edge, label %nfsd_vers.exit72.for.end.thread_crit_edge

nfsd_vers.exit72.for.end.thread_crit_edge:        ; preds = %nfsd_vers.exit72
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_vers.exit72.nfsd_support_acl_version.exit60.1_crit_edge: ; preds = %nfsd_vers.exit72
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_acl_version.exit60.1

for.end.thread:                                   ; preds = %nfsd_vers.exit72.1.for.end.thread_crit_edge, %nfsd_support_version.exit41.i69.1.for.end.thread_crit_edge, %nfsd_vers.exit72.for.end.thread_crit_edge, %nfsd_support_version.exit41.i69.for.end.thread_crit_edge
  %i.0106.lcssa = phi i32 [ 2, %nfsd_vers.exit72.for.end.thread_crit_edge ], [ 3, %nfsd_vers.exit72.1.for.end.thread_crit_edge ], [ 2, %nfsd_support_version.exit41.i69.for.end.thread_crit_edge ], [ 3, %nfsd_support_version.exit41.i69.1.for.end.thread_crit_edge ]
  %28 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.0106.lcssa, ptr %ret, align 4
  br label %if.end19

nfsd_support_acl_version.exit60.1:                ; preds = %nfsd_vers.exit72.nfsd_support_acl_version.exit60.1_crit_edge, %nfsd_support_version.exit41.i69.nfsd_support_acl_version.exit60.1_crit_edge
  %29 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr112 = load ptr, ptr %arrayidx.i56, align 4
  %cmp2.i57.1 = icmp eq ptr %.pr112, null
  br i1 %cmp2.i57.1, label %nfsd_support_acl_version.exit60.1.for.inc.1_crit_edge, label %if.end.i61.1

nfsd_support_acl_version.exit60.1.for.inc.1_crit_edge: ; preds = %nfsd_support_acl_version.exit60.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end.i61.1:                                     ; preds = %nfsd_support_acl_version.exit60.1
  %30 = ptrtoint ptr %nfsd_versions13.i62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nfsd_versions13.i62, align 8
  %tobool14.not.i63.1 = icmp eq ptr %31, null
  br i1 %tobool14.not.i63.1, label %nfsd_support_version.exit41.i69.1, label %nfsd_vers.exit72.1

nfsd_support_version.exit41.i69.1:                ; preds = %if.end.i61.1
  %32 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 3), align 4
  %cmp2.i38.i68.1.not = icmp eq ptr %32, null
  br i1 %cmp2.i38.i68.1.not, label %nfsd_support_version.exit41.i69.1.for.inc.1_crit_edge, label %nfsd_support_version.exit41.i69.1.for.end.thread_crit_edge

nfsd_support_version.exit41.i69.1.for.end.thread_crit_edge: ; preds = %nfsd_support_version.exit41.i69.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_support_version.exit41.i69.1.for.inc.1_crit_edge: ; preds = %nfsd_support_version.exit41.i69.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

nfsd_vers.exit72.1:                               ; preds = %if.end.i61.1
  %arrayidx17.i64.1 = getelementptr i8, ptr %31, i32 3
  %33 = ptrtoint ptr %arrayidx17.i64.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx17.i64.1, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool18.i65.1.not = icmp eq i8 %34, 0
  br i1 %tobool18.i65.1.not, label %nfsd_vers.exit72.1.for.inc.1_crit_edge, label %nfsd_vers.exit72.1.for.end.thread_crit_edge

nfsd_vers.exit72.1.for.end.thread_crit_edge:      ; preds = %nfsd_vers.exit72.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

nfsd_vers.exit72.1.for.inc.1_crit_edge:           ; preds = %nfsd_vers.exit72.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %nfsd_vers.exit72.1.for.inc.1_crit_edge, %nfsd_support_version.exit41.i69.1.for.inc.1_crit_edge, %nfsd_support_acl_version.exit60.1.for.inc.1_crit_edge, %nfsd_support_acl_version.exit60.for.inc.1_crit_edge, %if.end.for.inc.1_crit_edge
  %35 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp17 = icmp eq i32 %.pr, 4
  br i1 %cmp17, label %for.inc.1.cleanup_crit_edge, label %for.inc.1.if.end19_crit_edge

for.inc.1.if.end19_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %for.inc.1.if.end19_crit_edge, %for.end.thread
  %hivers = getelementptr inbounds %struct.anon.137, ptr %ret, i32 0, i32 1
  %36 = ptrtoint ptr %hivers to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %hivers, align 4
  %37 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_vers, align 4
  %39 = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %40 = icmp eq i32 %39, 2
  %arrayidx.i73 = getelementptr [4 x ptr], ptr @nfsd_acl_version, i32 0, i32 %38
  br i1 %40, label %nfsd_support_acl_version.exit77, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nfsd_support_acl_version.exit77:                  ; preds = %if.end19
  %41 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i73, align 4
  %cmp2.i74 = icmp eq ptr %42, null
  br i1 %cmp2.i74, label %nfsd_support_acl_version.exit77.cleanup_crit_edge, label %if.end.i78

nfsd_support_acl_version.exit77.cleanup_crit_edge: ; preds = %nfsd_support_acl_version.exit77
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i78:                                       ; preds = %nfsd_support_acl_version.exit77
  %43 = ptrtoint ptr %nfsd_versions13.i62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nfsd_versions13.i62, align 8
  %tobool14.not.i80 = icmp eq ptr %44, null
  br i1 %tobool14.not.i80, label %nfsd_support_version.exit41.i86, label %nfsd_vers.exit89

nfsd_support_version.exit41.i86:                  ; preds = %if.end.i78
  %45 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 3), align 4
  %cmp2.i38.i85.not = icmp eq ptr %45, null
  br i1 %cmp2.i38.i85.not, label %nfsd_support_version.exit41.i86.nfsd_support_acl_version.exit77.1_crit_edge, label %nfsd_support_version.exit41.i86.if.then28_crit_edge

nfsd_support_version.exit41.i86.if.then28_crit_edge: ; preds = %nfsd_support_version.exit41.i86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

nfsd_support_version.exit41.i86.nfsd_support_acl_version.exit77.1_crit_edge: ; preds = %nfsd_support_version.exit41.i86
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_acl_version.exit77.1

nfsd_vers.exit89:                                 ; preds = %if.end.i78
  %arrayidx17.i81 = getelementptr i8, ptr %44, i32 3
  %46 = ptrtoint ptr %arrayidx17.i81 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx17.i81, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool18.i82.not = icmp eq i8 %47, 0
  br i1 %tobool18.i82.not, label %nfsd_vers.exit89.nfsd_support_acl_version.exit77.1_crit_edge, label %nfsd_vers.exit89.if.then28_crit_edge

nfsd_vers.exit89.if.then28_crit_edge:             ; preds = %nfsd_vers.exit89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

nfsd_vers.exit89.nfsd_support_acl_version.exit77.1_crit_edge: ; preds = %nfsd_vers.exit89
  call void @__sanitizer_cov_trace_pc() #17
  br label %nfsd_support_acl_version.exit77.1

if.then28:                                        ; preds = %nfsd_vers.exit89.1.if.then28_crit_edge, %nfsd_support_version.exit41.i86.1.if.then28_crit_edge, %nfsd_vers.exit89.if.then28_crit_edge, %nfsd_support_version.exit41.i86.if.then28_crit_edge
  %i.1108.lcssa = phi i32 [ 3, %nfsd_vers.exit89.if.then28_crit_edge ], [ 2, %nfsd_vers.exit89.1.if.then28_crit_edge ], [ 3, %nfsd_support_version.exit41.i86.if.then28_crit_edge ], [ 2, %nfsd_support_version.exit41.i86.1.if.then28_crit_edge ]
  %48 = ptrtoint ptr %hivers to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.1108.lcssa, ptr %hivers, align 4
  br label %cleanup

nfsd_support_acl_version.exit77.1:                ; preds = %nfsd_vers.exit89.nfsd_support_acl_version.exit77.1_crit_edge, %nfsd_support_version.exit41.i86.nfsd_support_acl_version.exit77.1_crit_edge
  %49 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr114 = load ptr, ptr %arrayidx.i73, align 4
  %cmp2.i74.1 = icmp eq ptr %.pr114, null
  br i1 %cmp2.i74.1, label %nfsd_support_acl_version.exit77.1.cleanup_crit_edge, label %if.end.i78.1

nfsd_support_acl_version.exit77.1.cleanup_crit_edge: ; preds = %nfsd_support_acl_version.exit77.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i78.1:                                     ; preds = %nfsd_support_acl_version.exit77.1
  %50 = ptrtoint ptr %nfsd_versions13.i62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nfsd_versions13.i62, align 8
  %tobool14.not.i80.1 = icmp eq ptr %51, null
  br i1 %tobool14.not.i80.1, label %nfsd_support_version.exit41.i86.1, label %nfsd_vers.exit89.1

nfsd_support_version.exit41.i86.1:                ; preds = %if.end.i78.1
  %52 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @nfsd_version, i32 0, i32 2), align 4
  %cmp2.i38.i85.1.not = icmp eq ptr %52, null
  br i1 %cmp2.i38.i85.1.not, label %nfsd_support_version.exit41.i86.1.cleanup_crit_edge, label %nfsd_support_version.exit41.i86.1.if.then28_crit_edge

nfsd_support_version.exit41.i86.1.if.then28_crit_edge: ; preds = %nfsd_support_version.exit41.i86.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

nfsd_support_version.exit41.i86.1.cleanup_crit_edge: ; preds = %nfsd_support_version.exit41.i86.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nfsd_vers.exit89.1:                               ; preds = %if.end.i78.1
  %arrayidx17.i81.1 = getelementptr i8, ptr %51, i32 2
  %53 = ptrtoint ptr %arrayidx17.i81.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx17.i81.1, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool18.i82.1.not = icmp eq i8 %54, 0
  br i1 %tobool18.i82.1.not, label %nfsd_vers.exit89.1.cleanup_crit_edge, label %nfsd_vers.exit89.1.if.then28_crit_edge

nfsd_vers.exit89.1.if.then28_crit_edge:           ; preds = %nfsd_vers.exit89.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

nfsd_vers.exit89.1.cleanup_crit_edge:             ; preds = %nfsd_vers.exit89.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %nfsd_vers.exit89.1.cleanup_crit_edge, %nfsd_support_version.exit41.i86.1.cleanup_crit_edge, %nfsd_support_acl_version.exit77.1.cleanup_crit_edge, %if.then28, %nfsd_support_acl_version.exit77.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call8, %if.then ], [ 1, %for.inc.1.cleanup_crit_edge ], [ 2, %if.then28 ], [ 2, %nfsd_support_version.exit41.i86.1.cleanup_crit_edge ], [ 2, %if.end19.cleanup_crit_edge ], [ 2, %nfsd_vers.exit89.1.cleanup_crit_edge ], [ 2, %nfsd_support_acl_version.exit77.1.cleanup_crit_edge ], [ 2, %nfsd_support_acl_version.exit77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_acl_rpcbind_set(ptr noundef %net, ptr noundef %progp, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %version, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp eq i32 %0, 2
  br i1 %1, label %nfsd_support_acl_version.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

nfsd_support_acl_version.exit:                    ; preds = %entry
  %arrayidx.i = getelementptr [4 x ptr], ptr @nfsd_acl_version, i32 0, i32 %version
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i.not = icmp eq ptr %3, null
  br i1 %cmp2.i.not, label %nfsd_support_acl_version.exit.return_crit_edge, label %if.end.i

nfsd_support_acl_version.exit.return_crit_edge:   ; preds = %nfsd_support_acl_version.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i:                                         ; preds = %nfsd_support_acl_version.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %4 = load i32, ptr @nfsd_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4)
  %nfsd_versions13.i = getelementptr inbounds %struct.nfsd_net, ptr %call1, i32 0, i32 44
  %5 = ptrtoint ptr %nfsd_versions13.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nfsd_versions13.i, align 8
  %tobool14.not.i = icmp eq ptr %6, null
  br i1 %tobool14.not.i, label %nfsd_support_version.exit41.i, label %nfsd_vers.exit

nfsd_support_version.exit41.i:                    ; preds = %if.end.i
  %arrayidx.i37.i = getelementptr [5 x ptr], ptr @nfsd_version, i32 0, i32 %version
  %7 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i37.i, align 4
  %cmp2.i38.i.not = icmp eq ptr %8, null
  br i1 %cmp2.i38.i.not, label %nfsd_support_version.exit41.i.return_crit_edge, label %nfsd_support_version.exit41.i.if.end_crit_edge

nfsd_support_version.exit41.i.if.end_crit_edge:   ; preds = %nfsd_support_version.exit41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

nfsd_support_version.exit41.i.return_crit_edge:   ; preds = %nfsd_support_version.exit41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

nfsd_vers.exit:                                   ; preds = %if.end.i
  %arrayidx17.i = getelementptr i8, ptr %6, i32 %version
  %9 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx17.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool18.i.not = icmp eq i8 %10, 0
  br i1 %tobool18.i.not, label %nfsd_vers.exit.return_crit_edge, label %nfsd_vers.exit.if.end_crit_edge

nfsd_vers.exit.if.end_crit_edge:                  ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

nfsd_vers.exit.return_crit_edge:                  ; preds = %nfsd_vers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %nfsd_vers.exit.if.end_crit_edge, %nfsd_support_version.exit41.i.if.end_crit_edge
  %call3 = tail call i32 @svc_generic_rpcbind_set(ptr noundef %net, ptr noundef %progp, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port) #15
  br label %return

return:                                           ; preds = %if.end, %nfsd_vers.exit.return_crit_edge, %nfsd_support_version.exit41.i.return_crit_edge, %nfsd_support_acl_version.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %nfsd_vers.exit.return_crit_edge ], [ 0, %nfsd_support_acl_version.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %nfsd_support_version.exit41.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_init_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_rpcbind_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_2u64(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd_last_thread(ptr noundef %serv, ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfsd_notifier_refcount, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr nonnull @nfsd_notifier_refcount, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfsd_notifier_refcount, ptr nonnull @nfsd_notifier_refcount, i32 1, ptr nonnull elementtype(i32) @nfsd_notifier_refcount) #15, !srcloc !140
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @nfsd_inetaddr_notifier) #15
  %call3 = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @nfsd_inet6addr_notifier) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @svc_rpcb_cleanup(ptr noundef %serv, ptr noundef %net) #15
  %nfsd_net_up = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 31
  %2 = ptrtoint ptr %nfsd_net_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nfsd_net_up, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @nfsd_shutdown_net(ptr noundef %net)
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #19
  tail call void @nfsd_export_flush(ptr noundef %net) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_do_enqueue(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rpcb_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_export_flush(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_free_buffer_pages() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_inetaddr_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  %sin = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin) #15
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  %8 = call ptr @memset(ptr %sin, i32 255, i32 16)
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call2, i32 0, i32 39
  %9 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nfsd_serv, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfsd_notifier_lock) #15
  %11 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nfsd_serv, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %do.body

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %13 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %ifa_local = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %ifa_local) #19
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %14 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %sin, align 4
  %ifa_local13 = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 4
  %15 = ptrtoint ptr %ifa_local13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ifa_local13, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %7, align 4
  %18 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nfsd_serv, align 4
  call void @svc_age_temp_xprts_now(ptr noundef %19, ptr noundef nonnull %sin) #15
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.end.if.end15_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @nfsd_notifier_lock) #15
  br label %out

out:                                              ; preds = %if.end15, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_age_temp_xprts_now(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_inet6addr_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  %sin6 = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %ptr, i32 0, i32 16
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %6 = load i32, ptr @nfsd_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6) #15
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  %9 = call ptr @memset(ptr %sin6, i32 255, i32 28)
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %nfsd_serv = getelementptr inbounds %struct.nfsd_net, ptr %call2, i32 0, i32 39
  %10 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nfsd_serv, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfsd_notifier_lock) #15
  %12 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nfsd_serv, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.if.end23_crit_edge, label %do.body

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %14 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %ptr) #19
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %15 = ptrtoint ptr %sin6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 10, ptr %sin6, align 4
  %16 = call ptr @memcpy(ptr %7, ptr %ptr, i32 16)
  %call.i = call i32 @__ipv6_addr_type(ptr noundef %7) #15
  %and16 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end12.if.end21_crit_edge, label %if.then18

do.end12.if.end21_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then18:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %idev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %8, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.end12.if.end21_crit_edge
  %24 = ptrtoint ptr %nfsd_serv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nfsd_serv, align 4
  call void @svc_age_temp_xprts_now(ptr noundef %25, ptr noundef nonnull %sin6) #15
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end.if.end23_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @nfsd_notifier_lock) #15
  br label %out

out:                                              ; preds = %if.end23, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockd_up(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_file_cache_start_net(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_state_start_net(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd4_ssc_init_umount_work(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_file_cache_shutdown_net(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockd_down(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_file_cache_init() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_state_start() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfsd_file_cache_shutdown() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_create_xprt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_state_shutdown() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_state_shutdown_net(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_fs_struct() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_recv(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__validate_process_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_exit_thread(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_garbage_args_err(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_cant_encode_err(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93}
!llvm.named.register.sp = !{!94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/nfssvc.c", i32 79, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nfsd_mutex, !1, !"nfsd_mutex", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfsd/nfssvc.c", i32 87, i32 1}
!6 = !{ptr @nfsd_drc_lock, !5, !"nfsd_drc_lock", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nfsd/nfssvc.c", i32 138, i32 14}
!9 = !{ptr @nfsd_program, !10, !"nfsd_program", i1 false, i1 false}
!10 = !{!"../fs/nfsd/nfssvc.c", i32 131, i32 21}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nfsd/nfssvc.c", i32 652, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nfsd/nfssvc.c", i32 802, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nfsd_svc._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfsd_svc._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @nfsd_drc_max_mem, !19, !"nfsd_drc_max_mem", i1 false, i1 false}
!19 = !{!"../fs/nfsd/nfssvc.c", i32 88, i32 15}
!20 = !{ptr @nfsd_drc_mem_used, !21, !"nfsd_drc_mem_used", i1 false, i1 false}
!21 = !{!"../fs/nfsd/nfssvc.c", i32 89, i32 15}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfsd/nfssvc.c", i32 105, i32 14}
!24 = !{ptr @nfsd_acl_program, !25, !"nfsd_acl_program", i1 false, i1 false}
!25 = !{!"../fs/nfsd/nfssvc.c", i32 101, i32 27}
!26 = !{ptr @nfsd_acl_version, !27, !"nfsd_acl_version", i1 false, i1 false}
!27 = !{!"../fs/nfsd/nfssvc.c", i32 93, i32 34}
!28 = !{ptr @nfsd_acl_svcstats, !29, !"nfsd_acl_svcstats", i1 false, i1 false}
!29 = !{!"../fs/nfsd/nfssvc.c", i32 113, i32 24}
!30 = !{ptr @nfsd_version, !31, !"nfsd_version", i1 false, i1 false}
!31 = !{!"../fs/nfsd/nfssvc.c", i32 118, i32 34}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nfsd_thread_sv_ops, !44, !"nfsd_thread_sv_ops", i1 false, i1 false}
!44 = !{!"../fs/nfsd/nfssvc.c", i32 615, i32 34}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/nfsd/nfssvc.c", i32 551, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nfsd_last_thread._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nfsd_last_thread._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nfsd/nfssvc.c", i32 462, i32 8}
!52 = !{ptr @nfsd_notifier_lock, !51, !"nfsd_notifier_lock", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/nfsd/nfssvc.c", i32 591, i32 2}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @set_max_drc._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @set_max_drc._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @nfsd_notifier_refcount, !59, !"nfsd_notifier_refcount", i1 false, i1 false}
!59 = !{!"../fs/nfsd/nfssvc.c", i32 526, i32 17}
!60 = !{ptr @nfsd_inetaddr_notifier, !61, !"nfsd_inetaddr_notifier", i1 false, i1 false}
!61 = !{!"../fs/nfsd/nfssvc.c", i32 488, i32 30}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/nfsd/nfssvc.c", i32 477, i32 3}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nfsd_inetaddr_event._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @nfsd_inetaddr_event._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @nfsd_inet6addr_notifier, !68, !"nfsd_inet6addr_notifier", i1 false, i1 false}
!68 = !{!"../fs/nfsd/nfssvc.c", i32 520, i32 30}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nfsd/nfssvc.c", i32 507, i32 3}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nfsd_inet6addr_event._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @nfsd_inet6addr_event._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @nfsd_users, !75, !"nfsd_users", i1 false, i1 false}
!75 = !{!"../fs/nfsd/nfssvc.c", i32 309, i32 12}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/nfsd/nfssvc.c", i32 296, i32 41}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/nfsd/nfssvc.c", i32 301, i32 41}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/nfsd/nfssvc.c", i32 952, i32 3}
!82 = !{ptr @nfsd._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @nfsd._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../fs/nfsd/trace.h", i32 77, i32 1}
!86 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!90 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../fs/nfsd/trace.h", i32 78, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = !{!"sp"}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i8 0, i8 2}
!106 = !{i64 2149211573}
!107 = !{i64 2149211839}
!108 = !{i64 806792, i64 806853}
!109 = !{i64 809524}
!110 = !{i64 809809}
!111 = !{i64 2150283148}
!112 = !{i64 2150282990}
!113 = !{i64 2150283318}
!114 = !{i64 2150268389}
!115 = !{i64 2150268714}
!116 = !{i64 2150269039}
!117 = !{i64 2148344573, i64 2148344605, i64 2148344634, i64 2148344668, i64 2148344699, i64 2148344722}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i64 2148432598}
!120 = !{i64 2148347038, i64 2148347070, i64 2148347099, i64 2148347133, i64 2148347164, i64 2148347187}
!121 = !{i64 2149648813}
!122 = !{i64 2148343043, i64 2148343069, i64 2148343098, i64 2148343132, i64 2148343163, i64 2148343186}
!123 = !{i64 2148345508, i64 2148345534, i64 2148345563, i64 2148345597, i64 2148345628, i64 2148345651}
!124 = distinct !{null, ptr @svc_destroy}
!125 = !{i64 2148428478}
!126 = !{i64 2148343763, i64 2148343795, i64 2148343824, i64 2148343858, i64 2148343889, i64 2148343912}
!127 = !{i64 2148428707}
!128 = !{i64 2159237107}
!129 = !{i64 849811, i64 849828, i64 849852, i64 849878, i64 849896}
!130 = !{i64 2159237450}
!131 = !{i64 2148808522, i64 2148808527, i64 2148808540, i64 2148808584, i64 2148808618, i64 2148808639}
!132 = !{i64 2157757897}
!133 = !{i64 2157758112}
!134 = !{i64 2149220132}
!135 = !{i64 2149221168}
!136 = !{i64 2157774683}
!137 = !{i64 2157774896}
!138 = !{!"branch_weights", i32 2146410443, i32 1073205}
!139 = !{i64 2148431519}
!140 = !{i64 2148346228, i64 2148346260, i64 2148346289, i64 2148346323, i64 2148346354, i64 2148346377}
!141 = !{i64 2148431748}
