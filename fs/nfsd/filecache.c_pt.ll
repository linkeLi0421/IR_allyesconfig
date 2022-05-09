; ModuleID = '/llk/IR_all_yes/fs/nfsd/filecache.c_pt.bc'
source_filename = "../fs/nfsd/filecache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.120 }
%union.anon.120 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nfsd_file = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, ptr, i32, ptr, i32, %struct.refcount_struct, i8, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.126, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.127, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.128, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.127 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.128 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.131 = type { ptr }
%struct.nfsd_fcache_bucket = type { %struct.hlist_head, %struct.spinlock, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfsd_fcache_disposal = type { %struct.work_struct, %struct.spinlock, %struct.list_head }
%struct.nfsd_net = type { ptr, ptr, ptr, ptr, ptr, %struct.lock_manager, i8, i64, ptr, ptr, i32, ptr, %struct.rb_root, ptr, %struct.rb_root, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, %struct.spinlock, %struct.spinlock, ptr, i8, ptr, i64, i64, i8, i8, %struct.atomic_t, i8, i8, %struct.seqlock_t, [8 x i8], i32, i32, i32, i32, ptr, i32, i32, %struct.idr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [2 x %struct.percpu_counter], i32, i32, %struct.shrinker, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, [65 x i8], ptr, %struct.siphash_key_t }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.153 }
%union.anon.153 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.svc_fh = type { %struct.knfsd_fh, i32, ptr, ptr, i8, i8, i8, i8, i32, i8, i8, i64, %struct.timespec64, %struct.timespec64, i64, %struct.kstat, i64 }
%struct.knfsd_fh = type { i32, %union.anon.159 }
%union.anon.159 = type { %struct.anon.160, [124 x i8] }
%struct.anon.160 = type { i8, i8, i8, i8, [0 x i32] }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.134, %struct.list_head, %struct.list_head, %union.anon.135 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { %struct.spinlock, i32 }
%union.anon.134 = type { %struct.list_head }
%union.anon.135 = type { %struct.hlist_node }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.112, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.112 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.136 }
%union.anon.136 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.nfsd_file_mark = type { %struct.fsnotify_mark, %struct.refcount_struct }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.129 }
%union.anon.129 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }

@nfsd_filecache_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@nfsd_file_lru_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nfsd_file_hashtbl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfsd_filecache\00", [17 x i8] zeroinitializer }, align 32
@nfsd_filecache_wq = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@nfsd_file_cache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nfsd: unable to allocate nfsd_file_hashtbl\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfsd_file_cache_init\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nfsd/filecache.c\00", [44 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry_ptr = internal global ptr @nfsd_file_cache_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfsd_file\00", [22 x i8] zeroinitializer }, align 32
@nfsd_file_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nfsd_file_cache_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013nfsd: unable to create nfsd_file_slab\0A\00", [55 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry_ptr.7 = internal global ptr @nfsd_file_cache_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfsd_file_mark\00", [17 x i8] zeroinitializer }, align 32
@nfsd_file_mark_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nfsd_file_cache_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nfsd: unable to create nfsd_file_mark_slab\0A\00", [50 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry_ptr.11 = internal global ptr @nfsd_file_cache_init._entry.9, section ".printk_index", align 4
@nfsd_file_lru = internal global { %struct.list_lru, [44 x i8] } zeroinitializer, align 32
@nfsd_file_cache_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013nfsd: failed to init nfsd_file_lru: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry_ptr.14 = internal global ptr @nfsd_file_cache_init._entry.12, section ".printk_index", align 4
@nfsd_file_shrinker = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @nfsd_file_lru_count, ptr @nfsd_file_lru_scan, i32 0, i32 1, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nfsd: failed to register nfsd_file_shrinker: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry_ptr.17 = internal global ptr @nfsd_file_cache_init._entry.15, section ".printk_index", align 4
@nfsd_file_lease_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nfsd_file_lease_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nfsd: unable to register lease notifier: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry_ptr.20 = internal global ptr @nfsd_file_cache_init._entry.18, section ".printk_index", align 4
@nfsd_file_fsnotify_ops = internal constant { %struct.fsnotify_ops, [40 x i8] } { %struct.fsnotify_ops { ptr null, ptr @nfsd_file_fsnotify_handle_event, ptr null, ptr null, ptr null, ptr @nfsd_file_mark_free }, [40 x i8] zeroinitializer }, align 32
@nfsd_file_fsnotify_group = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nfsd_file_cache_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nfsd: unable to create fsnotify group: %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init._entry_ptr.23 = internal global ptr @nfsd_file_cache_init._entry.21, section ".printk_index", align 4
@nfsd_file_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&nfsd_file_hashtbl[i].nfb_lock\00", [33 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nfsd_filecache_laundrette = internal global { %struct.delayed_work, [60 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&nfsd_filecache_laundrette)->work)\00", [41 x i8] zeroinitializer }, align 32
@nfsd_file_cache_init.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&nfsd_filecache_laundrette)->timer\00", [59 x i8] zeroinitializer }, align 32
@nfsd_file_cache_purge.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfsd_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfsd_file_is_cached.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nfsd_file_cache_hits = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__pcpu_unique_nfsd_file_cache_hits = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__tracepoint_nfsd_file_put = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nfsd/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_nfsd_file_put.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_file_put_final = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_put_final.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__tracepoint_nfsd_file_unhash = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_unhash.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_file_close_inode_sync = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_close_inode_sync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfsd_file_fsnotify_handle_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfsd_file_fsnotify_handle_event.__already_done.33 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_nfsd_file_fsnotify_handle_event = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_fsnotify_handle_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_file_close_inode = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_close_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_file_unhash_and_release_locked = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_unhash_and_release_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@nfsd_alloc_fcache_disposal.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&l->work)\00", [36 x i8] zeroinitializer }, align 32
@nfsd_alloc_fcache_disposal.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&l->lock\00", [23 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_file_is_cached = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_is_cached.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfsd_file_find_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_nfsd_file_alloc = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_nfsd_file_acquire = external dso_local global %struct.tracepoint, align 4
@trace_nfsd_file_acquire.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@nfsd_mutex = external dso_local global %struct.mutex, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"total entries: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"longest chain: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cache hits:    %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"nfsd_filecache_count\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 60, i32 24 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"nfsd_file_lru_flags\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 58, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"nfsd_file_hashtbl\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 56, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 631, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 638, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 642, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"nfsd_file_slab\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 54, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 645, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 649, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"nfsd_file_mark_slab\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 55, i32 28 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 652, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"nfsd_file_lru\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 57, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 659, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"nfsd_file_shrinker\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 490, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 665, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [25 x i8] c"nfsd_file_lease_notifier\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 584, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 671, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"nfsd_file_fsnotify_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 615, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [25 x i8] c"nfsd_file_fsnotify_group\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 59, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 677, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 686, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"nfsd_filecache_laundrette\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 61, i32 29 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 689, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 882, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"../fs/nfsd/trace.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 754, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 108, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 45, i32 7 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 753, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 754, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 695, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 723, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 253, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 73, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1041, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1042, i32 16 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [23 x i8] c"../fs/nfsd/filecache.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1043, i32 16 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @nfsd_file_cache_init._entry, ptr @nfsd_file_cache_init._entry.12, ptr @nfsd_file_cache_init._entry.15, ptr @nfsd_file_cache_init._entry.18, ptr @nfsd_file_cache_init._entry.21, ptr @nfsd_file_cache_init._entry.5, ptr @nfsd_file_cache_init._entry.9, ptr @nfsd_file_cache_init._entry_ptr, ptr @nfsd_file_cache_init._entry_ptr.11, ptr @nfsd_file_cache_init._entry_ptr.14, ptr @nfsd_file_cache_init._entry_ptr.17, ptr @nfsd_file_cache_init._entry_ptr.20, ptr @nfsd_file_cache_init._entry_ptr.23, ptr @nfsd_file_cache_init._entry_ptr.7, ptr @nfsd_filecache_count, ptr @nfsd_file_lru_flags, ptr @nfsd_file_hashtbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nfsd_file_slab, ptr @.str.6, ptr @.str.8, ptr @nfsd_file_mark_slab, ptr @.str.10, ptr @nfsd_file_lru, ptr @.str.13, ptr @nfsd_file_shrinker, ptr @.str.16, ptr @nfsd_file_lease_notifier, ptr @.str.19, ptr @nfsd_file_fsnotify_ops, ptr @nfsd_file_fsnotify_group, ptr @.str.22, ptr @nfsd_file_cache_init.__key, ptr @.str.24, ptr @nfsd_file_cache_init.__key.25, ptr @nfsd_filecache_laundrette, ptr @.str.26, ptr @nfsd_file_cache_init.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @nfsd_alloc_fcache_disposal.__key, ptr @.str.35, ptr @nfsd_alloc_fcache_disposal.__key.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_filecache_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_lru_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_hashtbl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_mark_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_lru to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_lease_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_fsnotify_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_fsnotify_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_filecache_laundrette to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_file_cache_init.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_alloc_fcache_disposal.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_alloc_fcache_disposal.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_file_put(ptr noundef %nf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nf_flags = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %nf_flags) #11
  %nf_ref = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nf_ref, i32 noundef 4) #11
  %0 = ptrtoint ptr %nf_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %nf_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 3
  %2 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nf_file, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @nfsd_file_put_noref(ptr noundef %nf)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_mapping, align 4
  %call2 = tail call i32 @filemap_flush(ptr noundef %5) #11
  %6 = ptrtoint ptr %nf_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %nf_flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp5.not = icmp eq i32 %and1.i, 0
  tail call fastcc void @nfsd_file_put_noref(ptr noundef %nf)
  br i1 %cmp5.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i.i.i19 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nfsd_filecache_count, i32 noundef 4) #11
  %8 = load volatile i32, ptr @nfsd_filecache_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then7.if.end8_crit_edge, label %lor.lhs.false.i

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.then7
  %9 = load volatile i32, ptr @nfsd_file_lru_flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.if.end8_crit_edge

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i20 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef nonnull @nfsd_filecache_laundrette, i32 noundef 200) #11
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %lor.lhs.false.i.if.end8_crit_edge, %if.then7.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nfsd_filecache_count, i32 noundef 4) #11
  %12 = load volatile i32, ptr @nfsd_filecache_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %12)
  %cmp10 = icmp ugt i32 %12, 16383
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call fastcc i32 @nfsd_file_lru_walk_list(ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd_file_put_noref(ptr noundef %nf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_nfsd_file_put(ptr noundef %nf)
  %nf_ref = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nf_ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %nf_ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nf_ref, ptr %nf_ref, i32 1, ptr elementtype(i32) %nf_ref) #11, !srcloc !158
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i, !prof !159

if.end5.i.i.i.if.end23_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %nf_ref, i32 noundef 3) #11
  br label %if.end23

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %nf_flags = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 6
  %1 = ptrtoint ptr %nf_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %nf_flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end, !prof !159

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 289, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %call22 = tail call fastcc zeroext i1 @nfsd_file_free(ptr noundef %nf)
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfsd_file_get(ptr noundef %nf) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nf_ref = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nf_ref, i32 noundef 4) #11
  %0 = ptrtoint ptr %nf_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %nf_ref, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nf_ref, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %nf_ref, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %nf_ref, ptr %nf_ref, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %nf_ref) #11, !srcloc !161
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !159

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !159

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %nf_ref, i32 noundef 0) #11
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %nf. = select i1 %tobool12.i.i.i.not, ptr null, ptr %nf, !prof !162
  ret ptr %nf.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_file_close_inode_sync(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %mul.i.i = mul i32 %1, 1640531527
  %shr.i = lshr i32 %mul.i.i, 20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %3 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dispose, ptr %dispose, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dispose, ptr %2, align 4
  %5 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock.i = getelementptr %struct.nfsd_fcache_bucket, ptr %5, i32 %shr.i, i32 1
  call void @_raw_spin_lock(ptr noundef %nfb_lock.i) #11
  %6 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %arrayidx1.i = getelementptr %struct.nfsd_fcache_bucket, ptr %6, i32 %shr.i
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1.i, align 4
  %tobool4.not28.i = icmp eq ptr %8, null
  br i1 %tobool4.not28.i, label %entry.__nfsd_file_close_inode.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.__nfsd_file_close_inode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__nfsd_file_close_inode.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %nf.029.i = phi ptr [ %10, %for.inc.i.land.rhs.i_crit_edge ], [ %8, %entry.land.rhs.i_crit_edge ]
  %9 = ptrtoint ptr %nf.029.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nf.029.i, align 4
  %nf_inode.i = getelementptr inbounds %struct.nfsd_file, ptr %nf.029.i, i32 0, i32 7
  %11 = ptrtoint ptr %nf_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nf_inode.i, align 4
  %cmp.i = icmp eq ptr %12, %inode
  br i1 %cmp.i, label %if.then.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call fastcc zeroext i1 @nfsd_file_unhash_and_release_locked(ptr noundef nonnull %nf.029.i, ptr noundef nonnull %dispose) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.rhs.i.for.inc.i_crit_edge
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %for.inc.i.__nfsd_file_close_inode.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc.i.__nfsd_file_close_inode.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__nfsd_file_close_inode.exit

__nfsd_file_close_inode.exit:                     ; preds = %for.inc.i.__nfsd_file_close_inode.exit_crit_edge, %entry.__nfsd_file_close_inode.exit_crit_edge
  %13 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock18.i = getelementptr %struct.nfsd_fcache_bucket, ptr %13, i32 %shr.i, i32 1
  call void @_raw_spin_unlock(ptr noundef %nfb_lock18.i) #11
  %14 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dispose, align 4
  %cmp.i5 = icmp ne ptr %15, %dispose
  %lnot.ext = zext i1 %cmp.i5 to i32
  call fastcc void @trace_nfsd_file_close_inode_sync(ptr noundef %inode, i32 noundef %shr.i, i32 noundef %lnot.ext)
  %16 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not1315.i = icmp eq ptr %17, %dispose
  br i1 %cmp.i.not1315.i, label %__nfsd_file_close_inode.exit.nfsd_file_dispose_list_sync.exit_crit_edge, label %__nfsd_file_close_inode.exit.while.body.lr.ph.i_crit_edge

__nfsd_file_close_inode.exit.while.body.lr.ph.i_crit_edge: ; preds = %__nfsd_file_close_inode.exit
  br label %while.body.lr.ph.i

__nfsd_file_close_inode.exit.nfsd_file_dispose_list_sync.exit_crit_edge: ; preds = %__nfsd_file_close_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_dispose_list_sync.exit

while.body.lr.ph.i:                               ; preds = %if.end.i.while.body.lr.ph.i_crit_edge, %__nfsd_file_close_inode.exit.while.body.lr.ph.i_crit_edge
  %18 = phi ptr [ %32, %if.end.i.while.body.lr.ph.i_crit_edge ], [ %17, %__nfsd_file_close_inode.exit.while.body.lr.ph.i_crit_edge ]
  %flush.0.off0.ph16.i = phi i1 [ %spec.select.i, %if.end.i.while.body.lr.ph.i_crit_edge ], [ false, %__nfsd_file_close_inode.exit.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %refcount_dec_and_test.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %19 = phi ptr [ %18, %while.body.lr.ph.i ], [ %30, %refcount_dec_and_test.exit.i.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %nf_ref.i = getelementptr i8, ptr %19, i32 40
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nf_ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void @llvm.prefetch.p0(ptr %nf_ref.i, i32 1, i32 3, i32 1) #11
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nf_ref.i, ptr %nf_ref.i, i32 1, ptr elementtype(i32) %nf_ref.i) #11, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.refcount_dec_and_test.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !159

if.end5.i.i.i.i.refcount_dec_and_test.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_dec_and_test.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %nf_ref.i, i32 noundef 3) #11
  br label %refcount_dec_and_test.exit.i

refcount_dec_and_test.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.refcount_dec_and_test.exit.i_crit_edge
  %29 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not.i = icmp eq ptr %30, %dispose
  br i1 %cmp.i.not.i, label %refcount_dec_and_test.exit.i.while.end.i_crit_edge, label %refcount_dec_and_test.exit.i.while.body.i_crit_edge

refcount_dec_and_test.exit.i.while.body.i_crit_edge: ; preds = %refcount_dec_and_test.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

refcount_dec_and_test.exit.i.while.end.i_crit_edge: ; preds = %refcount_dec_and_test.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i:                                         ; preds = %list_del.exit.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %add.ptr.i = getelementptr i8, ptr %19, i32 -8
  %call2.i = call fastcc zeroext i1 @nfsd_file_free(ptr noundef %add.ptr.i) #11
  %spec.select.i = select i1 %call2.i, i1 true, i1 %flush.0.off0.ph16.i
  %31 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not13.i = icmp eq ptr %32, %dispose
  br i1 %cmp.i.not13.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.lr.ph.i_crit_edge

if.end.i.while.body.lr.ph.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %refcount_dec_and_test.exit.i.while.end.i_crit_edge
  %flush.0.off0.ph.lcssa.i = phi i1 [ %flush.0.off0.ph16.i, %refcount_dec_and_test.exit.i.while.end.i_crit_edge ], [ %spec.select.i, %if.end.i.while.end.i_crit_edge ]
  br i1 %flush.0.off0.ph.lcssa.i, label %if.then6.i, label %while.end.i.nfsd_file_dispose_list_sync.exit_crit_edge

while.end.i.nfsd_file_dispose_list_sync.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_dispose_list_sync.exit

if.then6.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @flush_delayed_fput() #11
  br label %nfsd_file_dispose_list_sync.exit

nfsd_file_dispose_list_sync.exit:                 ; preds = %if.then6.i, %while.end.i.nfsd_file_dispose_list_sync.exit_crit_edge, %__nfsd_file_close_inode.exit.nfsd_file_dispose_list_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_close_inode_sync(ptr noundef %inode, i32 noundef %hash, i32 noundef %found) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_close_inode_sync, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_close_inode_sync, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !164
  %call42 = tail call i32 @__traceiter_nfsd_file_close_inode_sync(ptr noundef null, ptr noundef %inode, i32 noundef %hash, i32 noundef %found) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !165
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_close_inode_sync, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_close_inode_sync, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_close_inode_sync.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_close_inode_sync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 818, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
define dso_local i32 @nfsd_file_cache_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @nfsd_file_lru_flags) #11
  %0 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #11
  store ptr %call, ptr @nfsd_filecache_wq, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 229376, i32 noundef 3520, i32 noundef 6) #14
  store ptr %call1.i.i.i.i, ptr @nfsd_file_hashtbl, align 4
  %tobool5.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %out_err

if.end8:                                          ; preds = %if.end3
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 60, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call9, ptr @nfsd_file_slab, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %out_err

if.end17:                                         ; preds = %if.end8
  %call18 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 88, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call18, ptr @nfsd_file_mark_slab, align 4
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %out_err

if.end26:                                         ; preds = %if.end17
  %call27 = tail call i32 @__list_lru_init(ptr noundef nonnull @nfsd_file_lru, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call27) #15
  br label %out_err

if.end35:                                         ; preds = %if.end26
  %call36 = tail call i32 @register_shrinker(ptr noundef nonnull @nfsd_file_shrinker) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call36) #15
  br label %out_lru

if.end44:                                         ; preds = %if.end35
  %call45 = tail call i32 @lease_register_notifier(ptr noundef nonnull @nfsd_file_lease_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call45) #15
  br label %out_shrinker

if.end53:                                         ; preds = %if.end44
  %call54 = tail call ptr @fsnotify_alloc_group(ptr noundef nonnull @nfsd_file_fsnotify_ops) #11
  store ptr %call54, ptr @nfsd_file_fsnotify_group, align 4
  %cmp.i = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end59, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  br label %for.body

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call54 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %1) #15
  %2 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  %3 = ptrtoint ptr %2 to i32
  store ptr null, ptr @nfsd_file_fsnotify_group, align 4
  tail call void @lease_unregister_notifier(ptr noundef nonnull @nfsd_file_lease_notifier) #11
  br label %out_shrinker

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end53.for.body_crit_edge
  %i.089 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end53.for.body_crit_edge ]
  %4 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %arrayidx = getelementptr %struct.nfsd_fcache_bucket, ptr %4, i32 %i.089
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  %nfb_lock = getelementptr %struct.nfsd_fcache_bucket, ptr %4, i32 %i.089, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %nfb_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @nfsd_file_cache_init.__key, i16 noundef signext 3) #11
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 4096
  br i1 %exitcond.not, label %do.body71, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body71:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__init_work(ptr noundef nonnull @nfsd_filecache_laundrette, i32 noundef 0) #11
  store i32 -64, ptr @nfsd_filecache_laundrette, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @nfsd_filecache_laundrette, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.26, ptr noundef nonnull @nfsd_file_cache_init.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  store volatile ptr getelementptr inbounds (%struct.delayed_work, ptr @nfsd_filecache_laundrette, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @nfsd_filecache_laundrette, i32 0, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.delayed_work, ptr @nfsd_filecache_laundrette, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @nfsd_filecache_laundrette, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr @nfsd_file_gc_worker, ptr getelementptr inbounds (%struct.delayed_work, ptr @nfsd_filecache_laundrette, i32 0, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @nfsd_filecache_laundrette, i32 0, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @nfsd_file_cache_init.__key.27) #11
  br label %cleanup

out_shrinker:                                     ; preds = %do.end59, %do.end50
  %ret.1 = phi i32 [ %call45, %do.end50 ], [ %3, %do.end59 ]
  tail call void @unregister_shrinker(ptr noundef nonnull @nfsd_file_shrinker) #11
  br label %out_lru

out_lru:                                          ; preds = %out_shrinker, %do.end41
  %ret.2 = phi i32 [ %call36, %do.end41 ], [ %ret.1, %out_shrinker ]
  tail call void @list_lru_destroy(ptr noundef nonnull @nfsd_file_lru) #11
  br label %out_err

out_err:                                          ; preds = %out_lru, %do.end32, %do.end23, %do.end14, %do.end
  %ret.3 = phi i32 [ %call27, %do.end32 ], [ %ret.2, %out_lru ], [ -12, %do.end23 ], [ -12, %do.end14 ], [ -12, %do.end ]
  %6 = load ptr, ptr @nfsd_file_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #11
  store ptr null, ptr @nfsd_file_slab, align 4
  %7 = load ptr, ptr @nfsd_file_mark_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #11
  store ptr null, ptr @nfsd_file_mark_slab, align 4
  %8 = load ptr, ptr @nfsd_file_hashtbl, align 4
  tail call void @kfree(ptr noundef %8) #11
  store ptr null, ptr @nfsd_file_hashtbl, align 4
  %9 = load ptr, ptr @nfsd_filecache_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #11
  store ptr null, ptr @nfsd_filecache_wq, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.body71, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.3, %out_err ], [ 0, %do.body71 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lease_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_alloc_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd_file_gc_worker(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @nfsd_file_lru_walk_list(ptr noundef null) #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nfsd_filecache_count, i32 noundef 4) #11
  %0 = load volatile i32, ptr @nfsd_filecache_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %entry.nfsd_file_schedule_laundrette.exit_crit_edge, label %lor.lhs.false.i

entry.nfsd_file_schedule_laundrette.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_schedule_laundrette.exit

lor.lhs.false.i:                                  ; preds = %entry
  %1 = load volatile i32, ptr @nfsd_file_lru_flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.nfsd_file_schedule_laundrette.exit_crit_edge

lor.lhs.false.i.nfsd_file_schedule_laundrette.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_schedule_laundrette.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef nonnull @nfsd_filecache_laundrette, i32 noundef 200) #11
  br label %nfsd_file_schedule_laundrette.exit

nfsd_file_schedule_laundrette.exit:               ; preds = %if.end.i, %lor.lhs.false.i.nfsd_file_schedule_laundrette.exit_crit_edge, %entry.nfsd_file_schedule_laundrette.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lease_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_file_cache_purge(ptr noundef readnone %net) local_unnamed_addr #0 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %3 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tobool10.not = icmp eq ptr %net, null
  br label %for.body

for.body:                                         ; preds = %nfsd_file_dispose_list.exit.for.body_crit_edge, %for.cond.preheader
  %i.092 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %nfsd_file_dispose_list.exit.for.body_crit_edge ]
  %4 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %arrayidx = getelementptr %struct.nfsd_fcache_bucket, ptr %4, i32 %i.092
  %nfb_lock = getelementptr %struct.nfsd_fcache_bucket, ptr %4, i32 %i.092, i32 1
  call void @_raw_spin_lock(ptr noundef %nfb_lock) #11
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool5.not89 = icmp eq ptr %6, null
  br i1 %tobool5.not89, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %nf.090 = phi ptr [ %8, %for.inc.land.rhs_crit_edge ], [ %6, %for.body.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %nf.090 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nf.090, align 4
  br i1 %tobool10.not, label %land.rhs.if.end13_crit_edge, label %land.lhs.true

land.rhs.if.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %land.rhs
  %nf_net = getelementptr inbounds %struct.nfsd_file, ptr %nf.090, i32 0, i32 5
  %9 = ptrtoint ptr %nf_net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nf_net, align 4
  %cmp11.not = icmp eq ptr %10, %net
  br i1 %cmp11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %land.rhs.if.end13_crit_edge
  %call = call fastcc zeroext i1 @nfsd_file_unhash_and_release_locked(ptr noundef nonnull %nf.090, ptr noundef nonnull %dispose)
  br i1 %call, label %if.end13.for.inc_crit_edge, label %land.rhs19

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.rhs19:                                       ; preds = %if.end13
  %.b87 = load i1, ptr @nfsd_file_cache_purge.__already_done, align 1
  br i1 %.b87, label %land.rhs19.for.inc_crit_edge, label %if.then26, !prof !159

land.rhs19.for.inc_crit_edge:                     ; preds = %land.rhs19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then26:                                        ; preds = %land.rhs19
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfsd_file_cache_purge.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 738, i32 noundef 9, ptr noundef null) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %land.rhs19.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %nfb_lock) #11
  %11 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not3.i = icmp eq ptr %12, %dispose
  br i1 %cmp.i.not3.i, label %for.end.nfsd_file_dispose_list.exit_crit_edge, label %for.end.while.body.i_crit_edge

for.end.while.body.i_crit_edge:                   ; preds = %for.end
  br label %while.body.i

for.end.nfsd_file_dispose_list.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_dispose_list.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %for.end.while.body.i_crit_edge
  %13 = phi ptr [ %23, %list_del.exit.i.while.body.i_crit_edge ], [ %12, %for.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %13, i32 -8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call fastcc void @nfsd_file_put_noref(ptr noundef %add.ptr.i) #11
  %22 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not.i = icmp eq ptr %23, %dispose
  br i1 %cmp.i.not.i, label %list_del.exit.i.nfsd_file_dispose_list.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.nfsd_file_dispose_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_dispose_list.exit

nfsd_file_dispose_list.exit:                      ; preds = %list_del.exit.i.nfsd_file_dispose_list.exit_crit_edge, %for.end.nfsd_file_dispose_list.exit_crit_edge
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 4096
  br i1 %exitcond.not, label %nfsd_file_dispose_list.exit.cleanup_crit_edge, label %nfsd_file_dispose_list.exit.for.body_crit_edge

nfsd_file_dispose_list.exit.for.body_crit_edge:   ; preds = %nfsd_file_dispose_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

nfsd_file_dispose_list.exit.cleanup_crit_edge:    ; preds = %nfsd_file_dispose_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %nfsd_file_dispose_list.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nfsd_file_unhash_and_release_locked(ptr noundef %nf, ptr noundef %dispose) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nf_hashval = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 8
  %2 = ptrtoint ptr %nf_hashval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nf_hashval, align 4
  %dep_map = getelementptr %struct.nfsd_fcache_bucket, ptr %1, i32 %3, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !162

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 270, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @trace_nfsd_file_unhash_and_release_locked(ptr noundef %nf)
  %nf_flags.i = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 6
  %call.i35 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %nf_flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.then.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call fastcc void @nfsd_file_do_unhash(ptr noundef %nf) #11
  %nf_lru.i = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 1
  %4 = ptrtoint ptr %nf_lru.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %nf_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %nf_lru.i
  br i1 %cmp.i.not.i, label %if.then.i.if.end26_crit_edge, label %if.then3.i

if.then.i.if.end26_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @nfsd_file_lru, ptr noundef %nf_lru.i) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then3.i, %if.then.i.if.end26_crit_edge
  %nf_ref = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 9
  %call27 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %nf_ref) #11
  br i1 %call27, label %if.end26.return_crit_edge, label %if.end29

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end29:                                         ; preds = %if.end26
  %6 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dispose, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %nf_lru.i, ptr noundef %dispose, ptr noundef %7) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.return_crit_edge

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nf_lru.i, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %nf_lru.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %nf_lru.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dispose, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %nf_lru.i, ptr %dispose, align 4
  br label %return

return:                                           ; preds = %if.end.i.i, %if.end29.return_crit_edge, %if.end26.return_crit_edge, %if.end.return_crit_edge
  %12 = xor i1 %tobool.not.i, true
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_file_cache_start_net(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 96) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.nfsd_alloc_fcache_disposal.exit_crit_edge, label %do.body.i

entry.nfsd_alloc_fcache_disposal.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_alloc_fcache_disposal.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #11
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @nfsd_alloc_fcache_disposal.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nfsd_file_delayed_close, ptr %func.i, align 4
  %lock.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @nfsd_alloc_fcache_disposal.__key.36, i16 noundef signext 3) #11
  %freeme.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %freeme.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %freeme.i, ptr %freeme.i, align 8
  %prev.i18.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i18.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %freeme.i, ptr %prev.i18.i, align 4
  br label %nfsd_alloc_fcache_disposal.exit

nfsd_alloc_fcache_disposal.exit:                  ; preds = %do.body.i, %entry.nfsd_alloc_fcache_disposal.exit_crit_edge
  %cond = phi i32 [ -12, %entry.nfsd_alloc_fcache_disposal.exit_crit_edge ], [ 0, %do.body.i ]
  %fcache_disposal = getelementptr inbounds %struct.nfsd_net, ptr %call, i32 0, i32 59
  %8 = ptrtoint ptr %fcache_disposal to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %fcache_disposal, align 8
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 45, ptr noundef nonnull @.str.31) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !169
  %8 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_file_cache_shutdown_net(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfsd_file_cache_purge(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %0 = load i32, ptr @nfsd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #11
  %fcache_disposal.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 59
  %1 = ptrtoint ptr %fcache_disposal.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcache_disposal.i, align 8
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #11
  %freeme.i.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %freeme.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %freeme.i.i, align 4
  %cmp.i.not3.i.i.i = icmp eq ptr %4, %freeme.i.i
  br i1 %cmp.i.not3.i.i.i, label %entry.nfsd_free_fcache_disposal_net.exit_crit_edge, label %entry.while.body.i.i.i_crit_edge

entry.while.body.i.i.i_crit_edge:                 ; preds = %entry
  br label %while.body.i.i.i

entry.nfsd_free_fcache_disposal_net.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_free_fcache_disposal_net.exit

while.body.i.i.i:                                 ; preds = %list_del.exit.i.i.i.while.body.i.i.i_crit_edge, %entry.while.body.i.i.i_crit_edge
  %5 = phi ptr [ %15, %list_del.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %4, %entry.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -8
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %while.body.i.i.i.list_del.exit.i.i.i_crit_edge

while.body.i.i.i.list_del.exit.i.i.i_crit_edge:   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %while.body.i.i.i.list_del.exit.i.i.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call fastcc void @nfsd_file_put_noref(ptr noundef %add.ptr.i.i.i) #11
  %14 = ptrtoint ptr %freeme.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %freeme.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %15, %freeme.i.i
  br i1 %cmp.i.not.i.i.i, label %list_del.exit.i.i.i.nfsd_free_fcache_disposal_net.exit_crit_edge, label %list_del.exit.i.i.i.while.body.i.i.i_crit_edge

list_del.exit.i.i.i.while.body.i.i.i_crit_edge:   ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

list_del.exit.i.i.i.nfsd_free_fcache_disposal_net.exit_crit_edge: ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_free_fcache_disposal_net.exit

nfsd_free_fcache_disposal_net.exit:               ; preds = %list_del.exit.i.i.i.nfsd_free_fcache_disposal_net.exit_crit_edge, %entry.nfsd_free_fcache_disposal_net.exit_crit_edge
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfsd_file_cache_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @nfsd_file_lru_flags) #11
  tail call void @lease_unregister_notifier(ptr noundef nonnull @nfsd_file_lease_notifier) #11
  tail call void @unregister_shrinker(ptr noundef nonnull @nfsd_file_shrinker) #11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @nfsd_filecache_laundrette) #11
  tail call void @nfsd_file_cache_purge(ptr noundef null)
  tail call void @list_lru_destroy(ptr noundef nonnull @nfsd_file_lru) #11
  tail call void @rcu_barrier() #11
  %0 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  tail call void @fsnotify_put_group(ptr noundef %0) #11
  store ptr null, ptr @nfsd_file_fsnotify_group, align 4
  %1 = load ptr, ptr @nfsd_file_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  store ptr null, ptr @nfsd_file_slab, align 4
  tail call void @fsnotify_wait_marks_destroyed() #11
  %2 = load ptr, ptr @nfsd_file_mark_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #11
  store ptr null, ptr @nfsd_file_mark_slab, align 4
  %3 = load ptr, ptr @nfsd_file_hashtbl, align 4
  tail call void @kfree(ptr noundef %3) #11
  store ptr null, ptr @nfsd_file_hashtbl, align 4
  %4 = load ptr, ptr @nfsd_filecache_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #11
  store ptr null, ptr @nfsd_filecache_wq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_wait_marks_destroyed() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfsd_file_is_cached(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %mul.i.i = mul i32 %1, 1640531527
  %shr.i = lshr i32 %mul.i.i, 20
  %2 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @nfsd_file_is_cached.__warned, align 1
  br i1 %.b42, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfsd_file_is_cached.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 883, ptr noundef nonnull @.str.29) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %6 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %arrayidx = getelementptr %struct.nfsd_fcache_bucket, ptr %6, i32 %shr.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %nf.0.in = phi ptr [ %arrayidx, %do.end ], [ %nf.0, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %nf.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %nf.0 = load volatile ptr, ptr %nf.0.in, align 4
  %tobool13.not = icmp eq ptr %nf.0, null
  br i1 %tobool13.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %nf_inode = getelementptr inbounds %struct.nfsd_file, ptr %nf.0, i32 0, i32 7
  %8 = ptrtoint ptr %nf_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nf_inode, align 4
  %cmp = icmp eq ptr %9, %inode
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i44, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %for.end
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  %10 = xor i1 %tobool13.not, true
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !169
  %11 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i.i51 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %conv = zext i1 %10 to i32
  tail call fastcc void @trace_nfsd_file_is_cached(ptr noundef %inode, i32 noundef %shr.i, i32 noundef %conv)
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_is_cached(ptr noundef %inode, i32 noundef %hash, i32 noundef %found) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_is_cached, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_is_cached, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !170
  %call42 = tail call i32 @__traceiter_nfsd_file_is_cached(ptr noundef null, ptr noundef %inode, i32 noundef %hash, i32 noundef %found) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !171
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_is_cached, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_is_cached, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_is_cached.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_is_cached.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 820, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
define dso_local i32 @nfsd_file_acquire(ptr noundef %rqstp, ptr noundef %fhp, i32 noundef %may_flags, ptr nocapture noundef writeonly %pnf) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %or = or i32 %may_flags, 64
  %call = tail call i32 @fh_verify(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext -32768, i32 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh_dentry = getelementptr inbounds %struct.svc_fh, ptr %fhp, i32 0, i32 2
  %3 = ptrtoint ptr %fh_dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fh_dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %mul.i.i = mul i32 %8, 1640531527
  %shr.i243 = lshr i32 %mul.i.i, 20
  %9 = trunc i32 %may_flags to i8
  %conv.i = and i8 %9, 6
  %and3.i = and i32 %may_flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %and6.i = and i32 %may_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %and10.i = and i32 %may_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br label %retry4

retry4:                                           ; preds = %if.end26, %if.end
  %retry.0.off0 = phi i1 [ true, %if.end ], [ false, %if.end26 ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %retry4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

retry4.rcu_read_lock.exit_crit_edge:              ; preds = %retry4
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %retry4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %retry4.rcu_read_lock.exit_crit_edge
  %call5 = tail call fastcc ptr @nfsd_file_find_locked(ptr noundef %6, i32 noundef %may_flags, i32 noundef %shr.i243, ptr noundef %cond)
  %call.i244 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i244, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i247

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i247:                               ; preds = %rcu_read_lock.exit
  %call1.i245 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i245)
  %tobool.not.i246 = icmp eq i32 %call1.i245, 0
  br i1 %tobool.not.i246, label %land.lhs.true.i247.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i249

land.lhs.true.i247.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i249:                              ; preds = %land.lhs.true.i247
  %.b4.i248 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i248, label %land.lhs.true2.i249.rcu_read_unlock.exit_crit_edge, label %if.then.i250

land.lhs.true2.i249.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i249
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i250:                                     ; preds = %land.lhs.true2.i249
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i250, %land.lhs.true2.i249.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i247.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !169
  %14 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i.i251 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i251 to ptr
  %preempt_count.i.i.i.i252 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i252, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i252, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %rcu_read_unlock.exit.wait_for_construction_crit_edge

rcu_read_unlock.exit.wait_for_construction_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_for_construction

if.end8:                                          ; preds = %rcu_read_unlock.exit
  %18 = load ptr, ptr @nfsd_file_slab, align 4
  %call.i253 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 3264) #11
  %tobool.not.i254 = icmp eq ptr %call.i253, null
  br i1 %tobool.not.i254, label %if.then11, label %if.then.i255

if.then.i255:                                     ; preds = %if.end8
  %19 = ptrtoint ptr %call.i253 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %call.i253, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i253, i32 0, i32 1
  %20 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pprev.i.i, align 4
  %nf_lru.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 1
  %21 = ptrtoint ptr %nf_lru.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %nf_lru.i, ptr %nf_lru.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %nf_lru.i, ptr %prev.i.i, align 4
  %nf_file.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 3
  %23 = ptrtoint ptr %nf_file.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %nf_file.i, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred.i, align 16
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.then.i255.get_cred.exit.i_crit_edge, label %do.body.i.i

if.then.i255.get_cred.exit.i_crit_edge:           ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_cred.exit.i

do.body.i.i:                                      ; preds = %if.then.i255
  %call.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %29) #11
  br i1 %call.i.i.i, label %if.then.i.i.i, label %do.body.i.i.__validate_creds.exit.i.i_crit_edge, !prof !162

do.body.i.i.__validate_creds.exit.i.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %29, ptr noundef nonnull @.str.42, i32 noundef 253) #11
  br label %__validate_creds.exit.i.i

__validate_creds.exit.i.i:                        ; preds = %if.then.i.i.i, %do.body.i.i.__validate_creds.exit.i.i_crit_edge
  %30 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 28
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %30, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %29, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %29, i32 1, i32 3, i32 1) #11
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %29, ptr nonnull %29, i32 1, ptr nonnull elementtype(i32) %29) #11, !srcloc !172
  br label %get_cred.exit.i

get_cred.exit.i:                                  ; preds = %__validate_creds.exit.i.i, %if.then.i255.get_cred.exit.i_crit_edge
  %nf_cred.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 4
  %33 = ptrtoint ptr %nf_cred.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %nf_cred.i, align 4
  %nf_net.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 5
  %34 = ptrtoint ptr %nf_net.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cond, ptr %nf_net.i, align 8
  %nf_flags.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 6
  %35 = ptrtoint ptr %nf_flags.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nf_flags.i, align 4
  %nf_inode.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 7
  %36 = ptrtoint ptr %nf_inode.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %6, ptr %nf_inode.i, align 8
  %nf_hashval.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 8
  %37 = ptrtoint ptr %nf_hashval.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr.i243, ptr %nf_hashval.i, align 4
  %nf_ref.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nf_ref.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %nf_ref.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 1, ptr %nf_ref.i, align 8
  %nf_may.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 10
  %39 = ptrtoint ptr %nf_may.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %nf_may.i, align 4
  br i1 %tobool4.not.i, label %get_cred.exit.i.if.end12_crit_edge, label %if.then5.i

get_cred.exit.i.if.end12_crit_edge:               ; preds = %get_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then5.i:                                       ; preds = %get_cred.exit.i
  br i1 %tobool7.not.i, label %if.then5.i.if.end.i_crit_edge, label %if.then8.i

if.then5.i.if.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %nf_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nf_flags.i, align 4
  %or.i.i = or i32 %41, 8
  store i32 %or.i.i, ptr %nf_flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then5.i.if.end.i_crit_edge
  br i1 %tobool11.not.i, label %if.end.i.if.end12_crit_edge, label %if.then12.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %nf_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nf_flags.i, align 4
  %or.i35.i = or i32 %43, 4
  store i32 %or.i35.i, ptr %nf_flags.i, align 4
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_nfsd_file_acquire(ptr noundef %rqstp, i32 noundef %shr.i243, ptr noundef %6, i32 noundef %may_flags, ptr noundef null, i32 noundef 10008)
  br label %cleanup

if.end12:                                         ; preds = %if.then12.i, %if.end.i.if.end12_crit_edge, %get_cred.exit.i.if.end12_crit_edge
  %nf_mark.i = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 11
  %44 = ptrtoint ptr %nf_mark.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %nf_mark.i, align 8
  tail call fastcc void @trace_nfsd_file_alloc(ptr noundef nonnull %call.i253) #11
  %45 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock = getelementptr %struct.nfsd_fcache_bucket, ptr %45, i32 %shr.i243, i32 1
  tail call void @_raw_spin_lock(ptr noundef %nfb_lock) #11
  %call13 = tail call fastcc ptr @nfsd_file_find_locked(ptr noundef %6, i32 noundef %may_flags, i32 noundef %shr.i243, ptr noundef %cond)
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %open_file, label %if.end16

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %46 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock18 = getelementptr %struct.nfsd_fcache_bucket, ptr %46, i32 %shr.i243, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %nfb_lock18) #11
  %nf_rcu = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 2
  tail call void @nfsd_file_slab_free(ptr noundef %nf_rcu)
  br label %wait_for_construction

wait_for_construction:                            ; preds = %if.end16, %rcu_read_unlock.exit.wait_for_construction_crit_edge
  %nf.0 = phi ptr [ %call5, %rcu_read_unlock.exit.wait_for_construction_crit_edge ], [ %call13, %if.end16 ]
  %nf_flags = getelementptr inbounds %struct.nfsd_file, ptr %nf.0, i32 0, i32 6
  tail call void @__might_sleep(ptr noundef nonnull @.str.43, i32 noundef 73) #11
  %47 = ptrtoint ptr %nf_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %nf_flags, align 4
  %49 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i256 = icmp eq i32 %49, 0
  br i1 %tobool.not.i256, label %wait_for_construction.wait_on_bit.exit_crit_edge, label %if.end.i257

wait_for_construction.wait_on_bit.exit_crit_edge: ; preds = %wait_for_construction
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_on_bit.exit

if.end.i257:                                      ; preds = %wait_for_construction
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %nf_flags, i32 noundef 1, ptr noundef nonnull @bit_wait, i32 noundef 2) #11
  br label %wait_on_bit.exit

wait_on_bit.exit:                                 ; preds = %if.end.i257, %wait_for_construction.wait_on_bit.exit_crit_edge
  %50 = ptrtoint ptr %nf_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %nf_flags, align 4
  %and1.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool22.not = icmp eq i32 %and1.i, 0
  br i1 %tobool22.not, label %if.then23, label %do.body28

if.then23:                                        ; preds = %wait_on_bit.exit
  br i1 %retry.0.off0, label %if.end26, label %if.then23.if.else_crit_edge

if.then23.if.else_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end26:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nfsd_file_put_noref(ptr noundef nonnull %nf.0)
  br label %retry4

do.body28:                                        ; preds = %wait_on_bit.exit
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !173
  %53 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu, align 4
  %arrayidx43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx43, align 4
  %add = add i32 %58, ptrtoint (ptr @nfsd_file_cache_hits to i32)
  %59 = inttoptr i32 %add to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add44 = add i32 %61, 1
  store i32 %add44, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !174
  %and.i.i258 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i258)
  %tobool55.not = icmp eq i32 %and.i.i258, 0
  br i1 %tobool55.not, label %if.then59, label %do.body28.do.end62_crit_edge, !prof !162

do.body28.do.end62_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

if.then59:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body28.do.end62_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #11, !srcloc !175
  br i1 %tobool4.not.i, label %if.then70, label %do.end62.if.then98_crit_edge

do.end62.if.then98_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98

if.then70:                                        ; preds = %do.end62
  %63 = ptrtoint ptr %nf_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %nf_flags, align 4
  %65 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool75.not = icmp eq i32 %65, 0
  br i1 %tobool75.not, label %lor.lhs.false, label %if.then70.if.then81_crit_edge

if.then70.if.then81_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

lor.lhs.false:                                    ; preds = %if.then70
  %66 = ptrtoint ptr %nf_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %nf_flags, align 4
  %68 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool78.not = icmp eq i32 %68, 0
  %brmerge = or i1 %tobool7.not.i, %tobool78.not
  br i1 %brmerge, label %lor.lhs.false.if.then98_crit_edge, label %lor.lhs.false.if.then81_crit_edge

lor.lhs.false.if.then81_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98

if.then81:                                        ; preds = %lor.lhs.false.if.then81_crit_edge, %if.then70.if.then81_crit_edge
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %nf.0, i32 0, i32 3
  %69 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nf_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %f_inode.i, align 8
  %call83 = tail call i32 @nfsd_open_break_lease(ptr noundef %72, i32 noundef %may_flags) #11
  %call84 = tail call i32 @nfserrno(i32 noundef %call83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then87, label %if.then81.if.else_crit_edge

if.then81.if.else_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then87:                                        ; preds = %if.then81
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %nf_flags) #11
  br i1 %tobool7.not.i, label %if.then87.if.then98_crit_edge, label %if.then90

if.then87.if.then98_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98

if.then90:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %nf_flags) #11
  br label %if.then98

out.critedge:                                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  %73 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock143.c = getelementptr %struct.nfsd_fcache_bucket, ptr %73, i32 %shr.i243, i32 1
  call void @_raw_spin_unlock(ptr noundef %nfb_lock143.c) #11
  br label %out

out:                                              ; preds = %if.then145, %lor.lhs.false134.out_crit_edge, %out.critedge
  %status.2299 = phi i32 [ 0, %lor.lhs.false134.out_crit_edge ], [ %status.2300, %if.then145 ], [ %status.2300, %out.critedge ]
  %call.i.i276 = call zeroext i1 @__kasan_check_write(ptr noundef %nf_flags.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  call void @llvm.prefetch.p0(ptr %nf_flags.i, i32 1, i32 3, i32 1) #11
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nf_flags.i, ptr %nf_flags.i, i32 2, ptr elementtype(i32) %nf_flags.i) #11, !srcloc !177
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @wake_up_bit(ptr noundef %nf_flags.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2299)
  %cmp96 = icmp eq i32 %status.2299, 0
  br i1 %cmp96, label %out.if.then98_crit_edge, label %out.if.else_crit_edge

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

out.if.then98_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98

if.then98:                                        ; preds = %out.if.then98_crit_edge, %if.then90, %if.then87.if.then98_crit_edge, %lor.lhs.false.if.then98_crit_edge, %do.end62.if.then98_crit_edge
  %nf.1280 = phi ptr [ %call.i253, %out.if.then98_crit_edge ], [ %nf.0, %do.end62.if.then98_crit_edge ], [ %nf.0, %if.then90 ], [ %nf.0, %if.then87.if.then98_crit_edge ], [ %nf.0, %lor.lhs.false.if.then98_crit_edge ]
  %75 = ptrtoint ptr %pnf to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %nf.1280, ptr %pnf, align 4
  br label %if.end99

if.else:                                          ; preds = %out.if.else_crit_edge, %if.then81.if.else_crit_edge, %if.then23.if.else_crit_edge
  %status.1289 = phi i32 [ %status.2299, %out.if.else_crit_edge ], [ %call84, %if.then81.if.else_crit_edge ], [ 10008, %if.then23.if.else_crit_edge ]
  %nf.1288 = phi ptr [ %call.i253, %out.if.else_crit_edge ], [ %nf.0, %if.then81.if.else_crit_edge ], [ %nf.0, %if.then23.if.else_crit_edge ]
  call void @nfsd_file_put(ptr noundef %nf.1288)
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then98
  %status.1281 = phi i32 [ 0, %if.then98 ], [ %status.1289, %if.else ]
  %nf.2 = phi ptr [ %nf.1280, %if.then98 ], [ null, %if.else ]
  call fastcc void @trace_nfsd_file_acquire(ptr noundef %rqstp, i32 noundef %shr.i243, ptr noundef %6, i32 noundef %may_flags, ptr noundef %nf.2, i32 noundef %status.1281)
  br label %cleanup

open_file:                                        ; preds = %if.end12
  %pprev.i.i.le = getelementptr inbounds %struct.hlist_node, ptr %call.i253, i32 0, i32 1
  %nf_file.i.le = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 3
  %nf_inode.i.le = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 7
  %nf_mark.i.le = getelementptr inbounds %struct.nfsd_file, ptr %call.i253, i32 0, i32 11
  %call.i.i.i.i.i259 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nf_ref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nf_ref.i, i32 1, i32 3, i32 1) #11
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nf_ref.i, ptr %nf_ref.i, i32 1, ptr elementtype(i32) %nf_ref.i) #11, !srcloc !179
  %asmresult.i.i.i.i.i260 = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i260)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i260, 0
  br i1 %tobool1.not.i.i.i, label %open_file.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !162

open_file.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %open_file
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %open_file
  %add.i.i.i261 = add i32 %asmresult.i.i.i.i.i260, 1
  %77 = or i32 %add.i.i.i261, %asmresult.i.i.i.i.i260
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %.not.i.i.i = icmp sgt i32 %77, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !159

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %open_file.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %open_file.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %nf_ref.i, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %78 = ptrtoint ptr %nf_flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nf_flags.i, align 4
  %or.i242 = or i32 %79, 3
  store i32 %or.i242, ptr %nf_flags.i, align 4
  %call102 = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @nfsd_file_lru, ptr noundef %nf_lru.i) #11
  %80 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %arrayidx103 = getelementptr %struct.nfsd_fcache_bucket, ptr %80, i32 %shr.i243
  %81 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx103, align 4
  %83 = ptrtoint ptr %call.i253 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %call.i253, align 8
  %84 = ptrtoint ptr %pprev.i.i.le to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %arrayidx103, ptr %pprev.i.i.le, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !180
  %85 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call.i253, ptr %arrayidx103, align 4
  %tobool.not.i262 = icmp eq ptr %82, null
  br i1 %tobool.not.i262, label %refcount_inc.exit.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

refcount_inc.exit.hlist_add_head_rcu.exit_crit_edge: ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %82, i32 0, i32 1
  %86 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %call.i253, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %refcount_inc.exit.hlist_add_head_rcu.exit_crit_edge
  %87 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_count = getelementptr %struct.nfsd_fcache_bucket, ptr %87, i32 %shr.i243, i32 2
  %88 = ptrtoint ptr %nfb_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nfb_count, align 4
  %inc = add i32 %89, 1
  store i32 %inc, ptr %nfb_count, align 4
  %nfb_maxcount = getelementptr %struct.nfsd_fcache_bucket, ptr %87, i32 %shr.i243, i32 3
  %90 = ptrtoint ptr %nfb_maxcount to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nfb_maxcount, align 4
  %92 = tail call i32 @llvm.umax.i32(i32 %91, i32 %inc)
  %93 = ptrtoint ptr %nfb_maxcount to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %nfb_maxcount, align 4
  %nfb_lock118 = getelementptr %struct.nfsd_fcache_bucket, ptr %87, i32 %shr.i243, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %nfb_lock118) #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfsd_filecache_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr nonnull @nfsd_filecache_count, i32 1, i32 3, i32 1) #11
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfsd_filecache_count, ptr nonnull @nfsd_filecache_count, i32 1, ptr nonnull elementtype(i32) @nfsd_filecache_count) #11, !srcloc !182
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %94, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %asmresult.i.i.i.i.i)
  %cmp120 = icmp ugt i32 %asmresult.i.i.i.i.i, 4095
  br i1 %cmp120, label %if.then122, label %hlist_add_head_rcu.exit.if.end123_crit_edge

hlist_add_head_rcu.exit.if.end123_crit_edge:      ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then122:                                       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i263 = tail call fastcc i32 @nfsd_file_lru_walk_list(ptr noundef null) #11
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %hlist_add_head_rcu.exit.if.end123_crit_edge
  %95 = ptrtoint ptr %nf_inode.i.le to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %nf_inode.i.le, align 8
  %i_fsnotify_marks.i = getelementptr inbounds %struct.inode, ptr %96, i32 0, i32 51
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end123
  %97 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  %mark_mutex.i = getelementptr inbounds %struct.fsnotify_group, ptr %97, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mark_mutex.i, i32 noundef 0) #11
  %98 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  %call.i265 = call ptr @fsnotify_find_mark(ptr noundef %i_fsnotify_marks.i, ptr noundef %98) #11
  %tobool.not.i266 = icmp eq ptr %call.i265, null
  br i1 %tobool.not.i266, label %if.else.i, label %if.then.i267

if.then.i267:                                     ; preds = %do.body.i
  %nfm_ref.i.i = getelementptr inbounds %struct.nfsd_file_mark, ptr %call.i265, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nfm_ref.i.i, i32 noundef 4) #11
  %99 = ptrtoint ptr %nfm_ref.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %nfm_ref.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then.i267
  %101 = phi i32 [ %100, %if.then.i267 ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %102 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i.i.i.i.i = icmp eq i32 %101, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %101, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nfm_ref.i.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #11
  %103 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %nfm_ref.i.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %105 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %nfm_ref.i.i, ptr %nfm_ref.i.i, i32 %104, i32 %add.i.i.i.i.i, ptr elementtype(i32) %nfm_ref.i.i) #11, !srcloc !161
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %105, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %105, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %104
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !159

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %106 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %107, 1
  %108 = or i32 %add5.i.i.i.i.i, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %.not.i.i.i.i.i = icmp sgt i32 %108, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.nfsd_file_mark_get.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !159

if.end4.i.i.i.i.i.nfsd_file_mark_get.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_mark_get.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %nfm_ref.i.i, i32 noundef 0) #11
  %109 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %nfsd_file_mark_get.exit.i

nfsd_file_mark_get.exit.i:                        ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.nfsd_file_mark_get.exit.i_crit_edge
  %110 = phi i32 [ %107, %if.end4.i.i.i.i.i.nfsd_file_mark_get.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %110, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  %111 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  %mark_mutex2.i = getelementptr inbounds %struct.fsnotify_group, ptr %111, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %mark_mutex2.i) #11
  br i1 %tobool12.i.i.i.not.i.i, label %if.end.i268, label %nfsd_file_mark_find_or_create.exit

if.end.i268:                                      ; preds = %nfsd_file_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  call void @fsnotify_destroy_mark(ptr noundef nonnull %call.i265, ptr noundef %112) #11
  call void @fsnotify_put_mark(ptr noundef nonnull %call.i265) #11
  br label %if.end6.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %113 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  %mark_mutex5.i = getelementptr inbounds %struct.fsnotify_group, ptr %113, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %mark_mutex5.i) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.end.i268
  %114 = load ptr, ptr @nfsd_file_mark_slab, align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %114, i32 noundef 3264) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.nfsd_file_mark_find_or_create.exit.thread_crit_edge, label %if.end10.i

if.end6.i.nfsd_file_mark_find_or_create.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_mark_find_or_create.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  %115 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  call void @fsnotify_init_mark(ptr noundef nonnull %call7.i, ptr noundef %115) #11
  %116 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1028, ptr %call7.i, align 8
  %nfm_ref.i = getelementptr inbounds %struct.nfsd_file_mark, ptr %call7.i, i32 0, i32 1
  %call.i.i.i.i269 = call zeroext i1 @__kasan_check_write(ptr noundef %nfm_ref.i, i32 noundef 4) #11
  %117 = ptrtoint ptr %nfm_ref.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 1, ptr %nfm_ref.i, align 4
  %call.i.i270 = call i32 @fsnotify_add_mark(ptr noundef nonnull %call7.i, ptr noundef %i_fsnotify_marks.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i270)
  %tobool14.not.i = icmp eq i32 %call.i.i270, 0
  br i1 %tobool14.not.i, label %if.end10.i.if.end131_crit_edge, label %do.cond.i, !prof !159

if.end10.i.if.end131_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

do.cond.i:                                        ; preds = %if.end10.i
  call void @fsnotify_put_mark(ptr noundef nonnull %call7.i) #11
  %cmp.i = icmp eq i32 %call.i.i270, -17
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.nfsd_file_mark_find_or_create.exit.thread_crit_edge, !prof !162

do.cond.i.nfsd_file_mark_find_or_create.exit.thread_crit_edge: ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_mark_find_or_create.exit.thread

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

nfsd_file_mark_find_or_create.exit.thread:        ; preds = %do.cond.i.nfsd_file_mark_find_or_create.exit.thread_crit_edge, %if.end6.i.nfsd_file_mark_find_or_create.exit.thread_crit_edge
  %118 = ptrtoint ptr %nf_mark.i.le to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %nf_mark.i.le, align 8
  br label %if.then137

nfsd_file_mark_find_or_create.exit:               ; preds = %nfsd_file_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @fsnotify_put_mark(ptr noundef nonnull %call.i265) #11
  br label %if.end131

if.end131:                                        ; preds = %nfsd_file_mark_find_or_create.exit, %if.end10.i.if.end131_crit_edge
  %storemerge = phi ptr [ %call.i265, %nfsd_file_mark_find_or_create.exit ], [ %call7.i, %if.end10.i.if.end131_crit_edge ]
  %119 = ptrtoint ptr %nf_mark.i.le to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %storemerge, ptr %nf_mark.i.le, align 8
  %call129 = call i32 @nfsd_open_verified(ptr noundef %rqstp, ptr noundef %fhp, i16 noundef zeroext -32768, i32 noundef %may_flags, ptr noundef %nf_file.i.le) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp132.not = icmp eq i32 %call129, 0
  br i1 %cmp132.not, label %lor.lhs.false134, label %if.end131.if.then137_crit_edge

if.end131.if.then137_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then137

lor.lhs.false134:                                 ; preds = %if.end131
  %120 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 12
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp135 = icmp eq i32 %122, 0
  br i1 %cmp135, label %lor.lhs.false134.if.then137_crit_edge, label %lor.lhs.false134.out_crit_edge

lor.lhs.false134.out_crit_edge:                   ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false134.if.then137_crit_edge:            ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then137

if.then137:                                       ; preds = %lor.lhs.false134.if.then137_crit_edge, %if.end131.if.then137_crit_edge, %nfsd_file_mark_find_or_create.exit.thread
  %status.2300 = phi i32 [ 0, %lor.lhs.false134.if.then137_crit_edge ], [ %call129, %if.end131.if.then137_crit_edge ], [ 10008, %nfsd_file_mark_find_or_create.exit.thread ]
  %123 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock139 = getelementptr %struct.nfsd_fcache_bucket, ptr %123, i32 %shr.i243, i32 1
  call void @_raw_spin_lock(ptr noundef %nfb_lock139) #11
  %call.i272 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %nf_flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %tobool.not.i273 = icmp eq i32 %call.i272, 0
  br i1 %tobool.not.i273, label %out.critedge, label %if.then.i275

if.then.i275:                                     ; preds = %if.then137
  call fastcc void @nfsd_file_do_unhash(ptr noundef %call.i253) #11
  %124 = ptrtoint ptr %nf_lru.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %nf_lru.i, align 8
  %cmp.i.not.i = icmp eq ptr %125, %nf_lru.i
  br i1 %cmp.i.not.i, label %if.then.i275.if.then145_crit_edge, label %if.then3.i

if.then.i275.if.then145_crit_edge:                ; preds = %if.then.i275
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then145

if.then3.i:                                       ; preds = %if.then.i275
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = call zeroext i1 @list_lru_del(ptr noundef nonnull @nfsd_file_lru, ptr noundef %nf_lru.i) #11
  br label %if.then145

if.then145:                                       ; preds = %if.then3.i, %if.then.i275.if.then145_crit_edge
  %126 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock143.c303 = getelementptr %struct.nfsd_fcache_bucket, ptr %126, i32 %shr.i243, i32 1
  call void @_raw_spin_unlock(ptr noundef %nfb_lock143.c303) #11
  call fastcc void @nfsd_file_put_noref(ptr noundef nonnull %call.i253)
  br label %out

cleanup:                                          ; preds = %if.end99, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1281, %if.end99 ], [ 10008, %if.then11 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fh_verify(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfsd_file_find_locked(ptr noundef readnone %inode, i32 noundef %may_flags, i32 noundef %hashval, ptr noundef readnone %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = and i32 %may_flags, 6
  %0 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %dep_map = getelementptr %struct.nfsd_fcache_bucket, ptr %0, i32 %hashval, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b75 = load i1, ptr @nfsd_file_find_locked.__warned, align 1
  br i1 %.b75, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfsd_file_find_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 848, ptr noundef nonnull @.str.29) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %1 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %arrayidx11 = getelementptr %struct.nfsd_fcache_bucket, ptr %1, i32 %hashval
  %2 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %nf.081 = load volatile ptr, ptr %arrayidx11, align 4
  %tobool16.not82 = icmp eq ptr %nf.081, null
  br i1 %tobool16.not82, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %nf.083 = phi ptr [ %nf.0, %for.inc.for.body_crit_edge ], [ %nf.081, %do.end.for.body_crit_edge ]
  %nf_may = getelementptr inbounds %struct.nfsd_file, ptr %nf.083, i32 0, i32 10
  %3 = ptrtoint ptr %nf_may to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nf_may, align 4
  %conv17 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv17)
  %cmp.not = icmp eq i32 %conv, %conv17
  br i1 %cmp.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %nf_inode = getelementptr inbounds %struct.nfsd_file, ptr %nf.083, i32 0, i32 7
  %5 = ptrtoint ptr %nf_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nf_inode, align 4
  %cmp22.not = icmp eq ptr %6, %inode
  br i1 %cmp22.not, label %if.end25, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end25:                                         ; preds = %if.end21
  %nf_net = getelementptr inbounds %struct.nfsd_file, ptr %nf.083, i32 0, i32 5
  %7 = ptrtoint ptr %nf_net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nf_net, align 4
  %cmp26.not = icmp eq ptr %8, %net
  br i1 %cmp26.not, label %if.end29, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end29:                                         ; preds = %if.end25
  %nf_cred = getelementptr inbounds %struct.nfsd_file, ptr %nf.083, i32 0, i32 4
  %9 = ptrtoint ptr %nf_cred to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nf_cred, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 10
  %fsuid1.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %fsuid.i, align 4
  %18 = ptrtoint ptr %fsuid1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack49.i = load i32, ptr %fsuid1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack49.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack49.i
  br i1 %cmp.i.i, label %if.end.i, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i:                                         ; preds = %if.end29
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 11
  %fsgid3.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack50.i = load i32, ptr %fsgid.i, align 4
  %20 = ptrtoint ptr %fsgid3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack51.i = load i32, ptr %fsgid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack50.i, i32 %.unpack51.i)
  %cmp.i54.i = icmp eq i32 %.unpack50.i, %.unpack51.i
  br i1 %cmp.i54.i, label %if.end8.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8.i:                                        ; preds = %if.end.i
  %group_info.i = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 27
  %21 = ptrtoint ptr %group_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %group_info.i, align 4
  %cmp.i = icmp eq ptr %22, null
  br i1 %cmp.i, label %if.end8.i.nfsd_match_cred.exit_crit_edge, label %lor.lhs.false.i

if.end8.i.nfsd_match_cred.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_match_cred.exit

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %group_info9.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 27
  %23 = ptrtoint ptr %group_info9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group_info9.i, align 4
  %cmp10.i = icmp eq ptr %24, null
  br i1 %cmp10.i, label %lor.lhs.false.i.nfsd_match_cred.exit_crit_edge, label %if.end15.i

lor.lhs.false.i.nfsd_match_cred.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_match_cred.exit

if.end15.i:                                       ; preds = %lor.lhs.false.i
  %ngroups.i = getelementptr inbounds %struct.group_info, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ngroups.i, align 4
  %ngroups18.i = getelementptr inbounds %struct.group_info, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %ngroups18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ngroups18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp19.not.i = icmp eq i32 %26, %28
  br i1 %cmp19.not.i, label %for.cond.preheader.i, label %if.end15.i.for.inc_crit_edge

if.end15.i.for.inc_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2456.i = icmp sgt i32 %26, 0
  br i1 %cmp2456.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end37_crit_edge

for.cond.preheader.i.if.end37_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.cond.i.if.end37_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.if.end37_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.057.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.group_info, ptr %22, i32 0, i32 2, i32 %i.057.i
  %arrayidx28.i = getelementptr %struct.group_info, ptr %24, i32 0, i32 2, i32 %i.057.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack52.i = load i32, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack53.i = load i32, ptr %arrayidx28.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack52.i, i32 %.unpack53.i)
  %cmp.i55.i = icmp eq i32 %.unpack52.i, %.unpack53.i
  br i1 %cmp.i55.i, label %for.cond.i, label %for.body.i.for.inc_crit_edge

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

nfsd_match_cred.exit:                             ; preds = %lor.lhs.false.i.nfsd_match_cred.exit_crit_edge, %if.end8.i.nfsd_match_cred.exit_crit_edge
  %group_info13.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 27
  %31 = ptrtoint ptr %group_info13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %group_info13.i, align 4
  %cmp14.i = icmp eq ptr %22, %32
  br i1 %cmp14.i, label %nfsd_match_cred.exit.if.end37_crit_edge, label %nfsd_match_cred.exit.for.inc_crit_edge

nfsd_match_cred.exit.for.inc_crit_edge:           ; preds = %nfsd_match_cred.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

nfsd_match_cred.exit.if.end37_crit_edge:          ; preds = %nfsd_match_cred.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end37:                                         ; preds = %nfsd_match_cred.exit.if.end37_crit_edge, %for.cond.i.if.end37_crit_edge, %for.cond.preheader.i.if.end37_crit_edge
  %nf_flags = getelementptr inbounds %struct.nfsd_file, ptr %nf.083, i32 0, i32 6
  %33 = ptrtoint ptr %nf_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %nf_flags, align 4
  %and1.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool39.not = icmp eq i32 %and1.i, 0
  br i1 %tobool39.not, label %if.end37.for.inc_crit_edge, label %if.end41

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end41:                                         ; preds = %if.end37
  %call42 = tail call ptr @nfsd_file_get(ptr noundef nonnull %nf.083)
  %cmp43.not = icmp eq ptr %call42, null
  br i1 %cmp43.not, label %if.end41.for.inc_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end41.for.inc_crit_edge, %if.end37.for.inc_crit_edge, %nfsd_match_cred.exit.for.inc_crit_edge, %for.body.i.for.inc_crit_edge, %if.end15.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.end29.for.inc_crit_edge, %if.end25.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %35 = ptrtoint ptr %nf.083 to i32
  call void @__asan_load4_noabort(i32 %35)
  %nf.0 = load volatile ptr, ptr %nf.083, align 4
  %tobool16.not = icmp eq ptr %nf.0, null
  br i1 %tobool16.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %nf.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %nf.083, %if.end41.cleanup_crit_edge ]
  ret ptr %nf.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_acquire(ptr noundef %rqstp, i32 noundef %hash, ptr noundef %inode, i32 noundef %may_flags, ptr noundef %nf, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_acquire, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_acquire, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !184
  %call42 = tail call i32 @__traceiter_nfsd_file_acquire(ptr noundef null, ptr noundef %rqstp, i32 noundef %hash, ptr noundef %inode, i32 noundef %may_flags, ptr noundef %nf, i32 noundef %status) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !185
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_acquire, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_acquire, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_acquire.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_acquire.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 794, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
define internal void @nfsd_file_slab_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nf_cred = getelementptr i8, ptr %rcu, i32 12
  %0 = ptrtoint ptr %nf_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nf_cred, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %1) #11
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !162

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %1, ptr noundef nonnull @.str.42, i32 noundef 286) #11
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #11, !srcloc !187
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_cred(ptr noundef nonnull %1) #11
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -16
  %3 = load ptr, ptr @nfsd_file_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_open_break_lease(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd_open_verified(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_file_cache_stats_open(ptr nocapture noundef readnone %inode, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nfsd_file_cache_stats_show, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_file_cache_stats_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfsd_mutex, i32 noundef 0) #11
  %0 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %count.027 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %longest.026 = phi i32 [ %3, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nfb_count = getelementptr %struct.nfsd_fcache_bucket, ptr %0, i32 %i.028, i32 2
  %1 = ptrtoint ptr %nfb_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nfb_count, align 4
  %add = add i32 %2, %count.027
  %3 = tail call i32 @llvm.umax.i32(i32 %longest.026, i32 %2)
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 4096
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %longest.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %3, %for.body.if.end_crit_edge ]
  %count.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %add, %for.body.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfsd_mutex) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call29 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %4)
  %cmp530 = icmp ult i32 %call29, %4
  br i1 %cmp530, label %if.end.do.body_crit_edge, label %if.end.for.end12_crit_edge

if.end.for.end12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %call32 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call29, %if.end.do.body_crit_edge ]
  %hits.031 = phi i32 [ %add11, %do.body.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %arrayidx9 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call32
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %6, ptrtoint (ptr @nfsd_file_cache_hits to i32)
  %7 = inttoptr i32 %add10 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add11 = add i32 %9, %hits.031
  %call = tail call i32 @cpumask_next(i32 noundef %call32, ptr noundef nonnull @__cpu_possible_mask) #17
  %cmp5 = icmp ult i32 %call, %4
  br i1 %cmp5, label %do.body.do.body_crit_edge, label %do.body.for.end12_crit_edge

do.body.for.end12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end12:                                        ; preds = %do.body.for.end12_crit_edge, %if.end.for.end12_crit_edge
  %hits.0.lcssa = phi i32 [ 0, %if.end.for.end12_crit_edge ], [ %add11, %do.body.for.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef %count.1) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %longest.1) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %hits.0.lcssa) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_put(ptr noundef %nf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_put, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_put, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !189
  %call42 = tail call i32 @__traceiter_nfsd_file_put(ptr noundef null, ptr noundef %nf) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_put, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_put, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_put.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_put.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 754, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
define internal fastcc zeroext i1 @nfsd_file_free(ptr noundef %nf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_nfsd_file_put_final(ptr noundef %nf)
  %nf_mark = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 11
  %0 = ptrtoint ptr %nf_mark to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nf_mark, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %nfm_ref.i = getelementptr inbounds %struct.nfsd_file_mark, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfm_ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %nfm_ref.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfm_ref.i, ptr %nfm_ref.i, i32 1, ptr elementtype(i32) %nfm_ref.i) #11, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !159

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %nfm_ref.i, i32 noundef 3) #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %3 = load ptr, ptr @nfsd_file_fsnotify_group, align 4
  tail call void @fsnotify_destroy_mark(ptr noundef nonnull %1, ptr noundef %3) #11
  tail call void @fsnotify_put_mark(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 3
  %4 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nf_file, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %f_count.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #11, !srcloc !172
  %7 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nf_file, align 4
  %call6 = tail call i32 @filp_close(ptr noundef %8, ptr noundef null) #11
  %9 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nf_file, align 4
  tail call void @fput(ptr noundef %10) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %11 = xor i1 %tobool2.not, true
  %nf_rcu = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %nf_rcu, ptr noundef nonnull @nfsd_file_slab_free) #11
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_file_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_put_final(ptr noundef %nf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_put_final, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_put_final, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  %call42 = tail call i32 @__traceiter_nfsd_file_put_final(ptr noundef null, ptr noundef %nf) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_put_final, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_put_final, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_put_final.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_put_final.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 752, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_file_put_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd_file_lru_walk_list(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  %nr_to_walk.addr.i = alloca i32, align 4
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %tobool.not = icmp eq ptr %sc, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %5 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memcg.i, align 4
  %nr_to_scan.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %call.i = call i32 @list_lru_walk_one(ptr noundef nonnull @nfsd_file_lru, i32 noundef %4, ptr noundef %6, ptr noundef nonnull @nfsd_file_lru_cb, ptr noundef nonnull %head, ptr noundef %nr_to_scan.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_to_walk.addr.i)
  %7 = ptrtoint ptr %nr_to_walk.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2147483647, ptr %nr_to_walk.addr.i, align 4
  %call.i16 = call i32 @list_lru_walk_node(ptr noundef nonnull @nfsd_file_lru, i32 noundef 0, ptr noundef nonnull @nfsd_file_lru_cb, ptr noundef nonnull %head, ptr noundef nonnull %nr_to_walk.addr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_to_walk.addr.i)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call.i, %if.then ], [ %call.i16, %if.else ]
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn17 = load ptr, ptr %head, align 4
  %cmp.not18 = icmp eq ptr %.pn17, %head
  br i1 %cmp.not18, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn19 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn17, %if.end.for.body_crit_edge ]
  %nf.0 = getelementptr i8, ptr %.pn19, i32 -8
  %9 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nf_hashval = getelementptr i8, ptr %.pn19, i32 36
  %10 = ptrtoint ptr %nf_hashval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nf_hashval, align 4
  %nfb_lock = getelementptr %struct.nfsd_fcache_bucket, ptr %9, i32 %11, i32 1
  call void @_raw_spin_lock(ptr noundef %nfb_lock) #11
  call fastcc void @nfsd_file_do_unhash(ptr noundef %nf.0)
  %12 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %13 = ptrtoint ptr %nf_hashval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nf_hashval, align 4
  %nfb_lock5 = getelementptr %struct.nfsd_fcache_bucket, ptr %12, i32 %14, i32 1
  call void @_raw_spin_unlock(ptr noundef %nfb_lock5) #11
  %15 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn19, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call fastcc void @nfsd_file_dispose_list_delayed(ptr noundef nonnull %head)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_file_lru_cb(ptr noundef %item, ptr noundef %lru, ptr nocapture noundef readnone %lock, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nf_ref = getelementptr i8, ptr %item, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nf_ref, i32 noundef 4) #11
  %0 = ptrtoint ptr %nf_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %nf_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nf_file.i = getelementptr i8, ptr %item, i32 16
  %2 = ptrtoint ptr %nf_file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nf_file.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %lor.lhs.false.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

lor.lhs.false.i:                                  ; preds = %if.end
  %f_mode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end3_crit_edge, label %if.end.i

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.i:                                         ; preds = %lor.lhs.false.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_mapping.i, align 4
  %xa_flags.i.i.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xa_flags.i.i.i, align 4
  %10 = and i32 %9, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %if.end.i.if.end3_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %if.end.i.if.end3_crit_edge, %lor.lhs.false.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %nf_flags = getelementptr i8, ptr %item, i32 28
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %nf_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %nf_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @list_lru_isolate_move(ptr noundef %lru, ptr noundef %item, ptr noundef %arg) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 3, %if.end6.cleanup_crit_edge ], [ 3, %if.end3.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd_file_do_unhash(ptr noundef %nf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nf_hashval = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 8
  %2 = ptrtoint ptr %nf_hashval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nf_hashval, align 4
  %dep_map = getelementptr %struct.nfsd_fcache_bucket, ptr %1, i32 %3, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !162

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @trace_nfsd_file_unhash(ptr noundef %nf)
  %nf_file.i = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 3
  %4 = ptrtoint ptr %nf_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nf_file.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.if.end28_crit_edge, label %lor.lhs.false.i

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

lor.lhs.false.i:                                  ; preds = %if.end
  %f_mode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end28_crit_edge, label %nfsd_file_check_write_error.exit

lor.lhs.false.i.if.end28_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

nfsd_file_check_write_error.exit:                 ; preds = %lor.lhs.false.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_mapping.i, align 4
  %f_wb_err.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 19
  %10 = ptrtoint ptr %f_wb_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %f_wb_err.i, align 8
  %wb_err.i.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 11
  %call.i.i37 = tail call i32 @errseq_check(ptr noundef %wb_err.i.i, i32 noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %tobool25.not = icmp eq i32 %call.i.i37, 0
  br i1 %tobool25.not, label %nfsd_file_check_write_error.exit.if.end28_crit_edge, label %if.then26

nfsd_file_check_write_error.exit.if.end28_crit_edge: ; preds = %nfsd_file_check_write_error.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %nfsd_file_check_write_error.exit
  call void @__sanitizer_cov_trace_pc() #13
  %nf_net = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 5
  %12 = ptrtoint ptr %nf_net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nf_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %14 = load i32, ptr @nfsd_net_id, align 4
  %call27 = tail call fastcc ptr @net_generic(ptr noundef %13, i32 noundef %14)
  tail call void @nfsd_reset_write_verifier(ptr noundef %call27) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %nfsd_file_check_write_error.exit.if.end28_crit_edge, %lor.lhs.false.i.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %15 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nf_hashval29 = getelementptr inbounds %struct.nfsd_file, ptr %nf, i32 0, i32 8
  %16 = ptrtoint ptr %nf_hashval29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nf_hashval29, align 4
  %nfb_count = getelementptr %struct.nfsd_fcache_bucket, ptr %15, i32 %17, i32 2
  %18 = ptrtoint ptr %nfb_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nfb_count, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %nfb_count, align 4
  %20 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nf, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %nf, i32 0, i32 1
  %22 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev2.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %21, ptr %23, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end28.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end28.hlist_del_rcu.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end28.hlist_del_rcu.exit_crit_edge
  %26 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nfsd_filecache_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @nfsd_filecache_count, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfsd_filecache_count, ptr nonnull @nfsd_filecache_count, i32 1, ptr nonnull elementtype(i32) @nfsd_filecache_count) #11, !srcloc !193
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfsd_file_dispose_list_delayed(ptr noundef %dispose) unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %3 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %dispose, align 4
  %cmp.i6 = icmp eq ptr %4, %dispose
  br i1 %cmp.i6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %nfsd_file_list_add_disposal.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %5 = phi ptr [ %40, %nfsd_file_list_add_disposal.exit.while.body_crit_edge ], [ %4, %entry.while.body_crit_edge ]
  %nf_net = getelementptr i8, ptr %5, i32 24
  %6 = ptrtoint ptr %nf_net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nf_net, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body
  %.pn.in22.i = phi ptr [ %.pn24.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %while.body ]
  %8 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn24.i = load ptr, ptr %.pn.in22.i, align 4
  %nf_net.i = getelementptr i8, ptr %.pn.in22.i, i32 24
  %9 = ptrtoint ptr %nf_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nf_net.i, align 4
  %cmp7.i = icmp eq ptr %10, %7
  br i1 %cmp7.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in22.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in22.i, ptr noundef %18, ptr noundef nonnull %list) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn.in22.i, ptr %0, align 4
  %20 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %.pn.in22.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn.in22.i, ptr %18, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn24.i, %dispose
  br i1 %cmp.not.i, label %nfsd_file_list_add_pernet.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

nfsd_file_list_add_pernet.exit:                   ; preds = %for.inc.i
  %23 = ptrtoint ptr %nf_net to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nf_net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_net_id to i32))
  %25 = load i32, ptr @nfsd_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %24, i32 noundef %25) #11
  %fcache_disposal.i = getelementptr inbounds %struct.nfsd_net, ptr %call.i, i32 0, i32 59
  %26 = ptrtoint ptr %fcache_disposal.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fcache_disposal.i, align 8
  %lock.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %27, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %28 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i.i = icmp eq ptr %29, %list
  br i1 %cmp.i.not.i.i, label %nfsd_file_list_add_pernet.exit.nfsd_file_list_add_disposal.exit_crit_edge, label %if.then.i.i

nfsd_file_list_add_pernet.exit.nfsd_file_list_add_disposal.exit_crit_edge: ; preds = %nfsd_file_list_add_pernet.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_list_add_disposal.exit

if.then.i.i:                                      ; preds = %nfsd_file_list_add_pernet.exit
  call void @__sanitizer_cov_trace_pc() #13
  %freeme.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %27, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %27, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %29, ptr %31, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %freeme.i, ptr %33, align 4
  store ptr %33, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list, ptr %list, align 4
  store ptr %list, ptr %0, align 4
  br label %nfsd_file_list_add_disposal.exit

nfsd_file_list_add_disposal.exit:                 ; preds = %if.then.i.i, %nfsd_file_list_add_pernet.exit.nfsd_file_list_add_disposal.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  %38 = load ptr, ptr @nfsd_filecache_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %27) #11
  %39 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %dispose, align 4
  %cmp.i = icmp eq ptr %40, %dispose
  br i1 %cmp.i, label %nfsd_file_list_add_disposal.exit.while.end_crit_edge, label %nfsd_file_list_add_disposal.exit.while.body_crit_edge

nfsd_file_list_add_disposal.exit.while.body_crit_edge: ; preds = %nfsd_file_list_add_disposal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

nfsd_file_list_add_disposal.exit.while.end_crit_edge: ; preds = %nfsd_file_list_add_disposal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %nfsd_file_list_add_disposal.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate_move(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_unhash(ptr noundef %nf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_unhash, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_unhash, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !194
  %call42 = tail call i32 @__traceiter_nfsd_file_unhash(ptr noundef null, ptr noundef %nf) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !195
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_unhash, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_unhash, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_unhash.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_unhash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 753, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
declare dso_local void @nfsd_reset_write_verifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_file_unhash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_file_close_inode_sync(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_delayed_fput() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_file_lru_count(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @list_lru_count_node(ptr noundef nonnull @nfsd_file_lru, i32 noundef 0) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_file_lru_scan(ptr nocapture noundef readnone %s, ptr noundef %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfsd_file_lru_walk_list(ptr noundef %sc)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_node(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_file_lease_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %arg, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fl_flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fl_file = getelementptr inbounds %struct.file_lock, ptr %data, i32 0, i32 11
  %2 = ptrtoint ptr %fl_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fl_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  tail call void @nfsd_file_close_inode_sync(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd_file_fsnotify_handle_event(ptr nocapture noundef readnone %mark, i32 noundef %mask, ptr noundef %inode, ptr nocapture noundef readnone %dir, ptr nocapture noundef readnone %name, i32 noundef %cookie) #0 align 64 {
entry:
  %dispose.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b110 = load i1, ptr @nfsd_file_fsnotify_handle_event.__already_done, align 1
  br i1 %.b110, label %land.rhs.return_crit_edge, label %if.then, !prof !159

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfsd_file_fsnotify_handle_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 593, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end39:                                         ; preds = %entry
  tail call fastcc void @trace_nfsd_file_fsnotify_handle_event(ptr noundef nonnull %inode, i32 noundef %mask)
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.end91, label %land.end49

land.end49:                                       ; preds = %if.end39
  %.b108109 = load i1, ptr @nfsd_file_fsnotify_handle_event.__already_done.33, align 1
  br i1 %.b108109, label %land.end49.return_crit_edge, label %if.then56, !prof !159

land.end49.return_crit_edge:                      ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then56:                                        ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfsd_file_fsnotify_handle_event.__already_done.33, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 600, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end91:                                         ; preds = %if.end39
  %and92 = and i32 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end98_crit_edge, label %if.then94

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then94:                                        ; preds = %if.end91
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool95.not = icmp eq i32 %5, 0
  br i1 %tobool95.not, label %if.then94.if.end98_crit_edge, label %if.then94.return_crit_edge

if.then94.return_crit_edge:                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then94.if.end98_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.end98:                                         ; preds = %if.then94.if.end98_crit_edge, %if.end91.if.end98_crit_edge
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino.i, align 8
  %mul.i.i.i = mul i32 %7, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose.i) #11
  %8 = getelementptr inbounds %struct.list_head, ptr %dispose.i, i32 0, i32 1
  %9 = ptrtoint ptr %dispose.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dispose.i, ptr %dispose.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dispose.i, ptr %8, align 4
  %11 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock.i.i = getelementptr %struct.nfsd_fcache_bucket, ptr %11, i32 %shr.i.i, i32 1
  call void @_raw_spin_lock(ptr noundef %nfb_lock.i.i) #11
  %12 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %arrayidx1.i.i = getelementptr %struct.nfsd_fcache_bucket, ptr %12, i32 %shr.i.i
  %13 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool4.not28.i.i = icmp eq ptr %14, null
  br i1 %tobool4.not28.i.i, label %if.end98.nfsd_file_close_inode.exit_crit_edge, label %if.end98.land.rhs.i.i_crit_edge

if.end98.land.rhs.i.i_crit_edge:                  ; preds = %if.end98
  br label %land.rhs.i.i

if.end98.nfsd_file_close_inode.exit_crit_edge:    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_close_inode.exit

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.end98.land.rhs.i.i_crit_edge
  %nf.029.i.i = phi ptr [ %16, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %14, %if.end98.land.rhs.i.i_crit_edge ]
  %15 = ptrtoint ptr %nf.029.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nf.029.i.i, align 4
  %nf_inode.i.i = getelementptr inbounds %struct.nfsd_file, ptr %nf.029.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %nf_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nf_inode.i.i, align 4
  %cmp.i.i = icmp eq ptr %18, %inode
  br i1 %cmp.i.i, label %if.then.i.i, label %land.rhs.i.i.for.inc.i.i_crit_edge

land.rhs.i.i.for.inc.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call fastcc zeroext i1 @nfsd_file_unhash_and_release_locked(ptr noundef nonnull %nf.029.i.i, ptr noundef nonnull %dispose.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %land.rhs.i.i.for.inc.i.i_crit_edge
  %tobool4.not.i.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i.i, label %for.inc.i.i.nfsd_file_close_inode.exit_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

for.inc.i.i.nfsd_file_close_inode.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_close_inode.exit

nfsd_file_close_inode.exit:                       ; preds = %for.inc.i.i.nfsd_file_close_inode.exit_crit_edge, %if.end98.nfsd_file_close_inode.exit_crit_edge
  %19 = load ptr, ptr @nfsd_file_hashtbl, align 4
  %nfb_lock18.i.i = getelementptr %struct.nfsd_fcache_bucket, ptr %19, i32 %shr.i.i, i32 1
  call void @_raw_spin_unlock(ptr noundef %nfb_lock18.i.i) #11
  %20 = ptrtoint ptr %dispose.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %dispose.i, align 4
  %cmp.i5.i = icmp ne ptr %21, %dispose.i
  %lnot.ext.i = zext i1 %cmp.i5.i to i32
  call fastcc void @trace_nfsd_file_close_inode(ptr noundef nonnull %inode, i32 noundef %shr.i.i, i32 noundef %lnot.ext.i) #11
  call fastcc void @nfsd_file_dispose_list_delayed(ptr noundef nonnull %dispose.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose.i) #11
  br label %return

return:                                           ; preds = %nfsd_file_close_inode.exit, %if.then94.return_crit_edge, %if.then56, %land.end49.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd_file_mark_free(ptr noundef %mark) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nfsd_file_mark_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %mark) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_fsnotify_handle_event(ptr noundef %inode, i32 noundef %mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_fsnotify_handle_event, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_fsnotify_handle_event, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !196
  %call42 = tail call i32 @__traceiter_nfsd_file_fsnotify_handle_event(ptr noundef null, ptr noundef %inode, i32 noundef %mask) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_fsnotify_handle_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_fsnotify_handle_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_fsnotify_handle_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_fsnotify_handle_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 839, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
declare dso_local i32 @__traceiter_nfsd_file_fsnotify_handle_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_close_inode(ptr noundef %inode, i32 noundef %hash, i32 noundef %found) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_close_inode, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_close_inode, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %call42 = tail call i32 @__traceiter_nfsd_file_close_inode(ptr noundef null, ptr noundef %inode, i32 noundef %hash, i32 noundef %found) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !199
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_close_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_close_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_close_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_close_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 819, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
declare dso_local i32 @__traceiter_nfsd_file_close_inode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_unhash_and_release_locked(ptr noundef %nf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_unhash_and_release_locked, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_unhash_and_release_locked, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !200
  %call42 = tail call i32 @__traceiter_nfsd_file_unhash_and_release_locked(ptr noundef null, ptr noundef %nf) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_unhash_and_release_locked, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_unhash_and_release_locked, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_unhash_and_release_locked.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_unhash_and_release_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 755, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_file_unhash_and_release_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd_file_delayed_close(ptr noundef %work) #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %work, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %freeme.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %work, i32 0, i32 2
  %3 = ptrtoint ptr %freeme.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %freeme.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %freeme.i
  br i1 %cmp.i.not.i.i, label %entry.nfsd_file_list_remove_disposal.exit_crit_edge, label %if.then.i.i

entry.nfsd_file_list_remove_disposal.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_list_remove_disposal.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.nfsd_fcache_disposal, ptr %work, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %prev3.i.i.i, align 4
  store ptr %4, ptr %head, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i.i, align 4
  %12 = ptrtoint ptr %freeme.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %freeme.i, ptr %freeme.i, align 4
  store ptr %freeme.i, ptr %prev2.i.i.i, align 4
  br label %nfsd_file_list_remove_disposal.exit

nfsd_file_list_remove_disposal.exit:              ; preds = %if.then.i.i, %entry.nfsd_file_list_remove_disposal.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head, align 4
  %cmp.i.not3.i = icmp eq ptr %14, %head
  br i1 %cmp.i.not3.i, label %nfsd_file_list_remove_disposal.exit.nfsd_file_dispose_list.exit_crit_edge, label %nfsd_file_list_remove_disposal.exit.while.body.i_crit_edge

nfsd_file_list_remove_disposal.exit.while.body.i_crit_edge: ; preds = %nfsd_file_list_remove_disposal.exit
  br label %while.body.i

nfsd_file_list_remove_disposal.exit.nfsd_file_dispose_list.exit_crit_edge: ; preds = %nfsd_file_list_remove_disposal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_dispose_list.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %nfsd_file_list_remove_disposal.exit.while.body.i_crit_edge
  %15 = phi ptr [ %25, %list_del.exit.i.while.body.i_crit_edge ], [ %14, %nfsd_file_list_remove_disposal.exit.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %15, i32 -8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call fastcc void @nfsd_file_put_noref(ptr noundef %add.ptr.i) #11
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %head, align 4
  %cmp.i.not.i = icmp eq ptr %25, %head
  br i1 %cmp.i.not.i, label %list_del.exit.i.nfsd_file_dispose_list.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.nfsd_file_dispose_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfsd_file_dispose_list.exit

nfsd_file_dispose_list.exit:                      ; preds = %list_del.exit.i.nfsd_file_dispose_list.exit_crit_edge, %nfsd_file_list_remove_disposal.exit.nfsd_file_dispose_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_file_is_cached(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfsd_file_alloc(ptr noundef %nf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_alloc, i32 0, i32 1), ptr blockaddress(@trace_nfsd_file_alloc, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !163

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !159

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %call42 = tail call i32 @__traceiter_nfsd_file_alloc(ptr noundef null, ptr noundef %nf) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !159

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfsd_file_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfsd_file_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_nfsd_file_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 751, ptr noundef nonnull @.str.31) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #11
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
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_file_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfsd_file_acquire(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_find_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_init_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_add_mark(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !119, !121, !122, !124, !125, !127, !129, !131, !133, !135, !136, !138, !139, !141, !143, !145}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/filecache.c", i32 631, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfsd/filecache.c", i32 638, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfsd_file_cache_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfsd_file_cache_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfsd/filecache.c", i32 642, i32 37}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/filecache.c", i32 645, i32 3}
!12 = !{ptr @nfsd_file_cache_init._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfsd_file_cache_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfsd/filecache.c", i32 649, i32 42}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nfsd/filecache.c", i32 652, i32 3}
!18 = !{ptr @nfsd_file_cache_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfsd_file_cache_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfsd/filecache.c", i32 659, i32 3}
!22 = !{ptr @nfsd_file_cache_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfsd_file_cache_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfsd/filecache.c", i32 665, i32 3}
!26 = !{ptr @nfsd_file_cache_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfsd_file_cache_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/nfsd/filecache.c", i32 671, i32 3}
!30 = !{ptr @nfsd_file_cache_init._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nfsd_file_cache_init._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nfsd/filecache.c", i32 677, i32 3}
!34 = !{ptr @nfsd_file_cache_init._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nfsd_file_cache_init._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @nfsd_file_cache_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../fs/nfsd/filecache.c", i32 686, i32 3}
!38 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nfsd_file_cache_init.__key.25, !40, !"__key", i1 false, i1 false}
!40 = !{!"../fs/nfsd/filecache.c", i32 689, i32 2}
!41 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nfsd_file_cache_init.__key.27, !40, !"__key", i1 false, i1 false}
!43 = !{ptr @.str.28, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/nfsd/filecache.c", i32 738, i32 4}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../fs/nfsd/filecache.c", i32 882, i32 2}
!48 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__pcpu_unique_nfsd_file_cache_hits, !50, !"__pcpu_unique_nfsd_file_cache_hits", i1 false, i1 false}
!50 = !{!"../fs/nfsd/filecache.c", i32 44, i32 8}
!51 = !{ptr @nfsd_file_cache_hits, !50, !"nfsd_file_cache_hits", i1 false, i1 false}
!52 = !{ptr @nfsd_filecache_wq, !53, !"nfsd_filecache_wq", i1 false, i1 false}
!53 = !{!"../fs/nfsd/filecache.c", i32 52, i32 33}
!54 = !{ptr @nfsd_file_slab, !55, !"nfsd_file_slab", i1 false, i1 false}
!55 = !{!"../fs/nfsd/filecache.c", i32 54, i32 28}
!56 = !{ptr @nfsd_file_mark_slab, !57, !"nfsd_file_mark_slab", i1 false, i1 false}
!57 = !{!"../fs/nfsd/filecache.c", i32 55, i32 28}
!58 = !{ptr @nfsd_file_hashtbl, !59, !"nfsd_file_hashtbl", i1 false, i1 false}
!59 = !{!"../fs/nfsd/filecache.c", i32 56, i32 35}
!60 = !{ptr @nfsd_file_lru, !61, !"nfsd_file_lru", i1 false, i1 false}
!61 = !{!"../fs/nfsd/filecache.c", i32 57, i32 26}
!62 = !{ptr @nfsd_file_lru_flags, !63, !"nfsd_file_lru_flags", i1 false, i1 false}
!63 = !{!"../fs/nfsd/filecache.c", i32 58, i32 16}
!64 = !{ptr @nfsd_file_fsnotify_group, !65, !"nfsd_file_fsnotify_group", i1 false, i1 false}
!65 = !{!"../fs/nfsd/filecache.c", i32 59, i32 32}
!66 = !{ptr @nfsd_filecache_count, !67, !"nfsd_filecache_count", i1 false, i1 false}
!67 = !{!"../fs/nfsd/filecache.c", i32 60, i32 24}
!68 = !{ptr @nfsd_filecache_laundrette, !69, !"nfsd_filecache_laundrette", i1 false, i1 false}
!69 = !{!"../fs/nfsd/filecache.c", i32 61, i32 29}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../fs/nfsd/trace.h", i32 754, i32 1}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!74 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/nfsd/trace.h", i32 752, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/nfsd/trace.h", i32 753, i32 1}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../fs/nfsd/trace.h", i32 818, i32 1}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = !{ptr @nfsd_file_shrinker, !88, !"nfsd_file_shrinker", i1 false, i1 false}
!88 = !{!"../fs/nfsd/filecache.c", i32 490, i32 24}
!89 = !{ptr @nfsd_file_lease_notifier, !90, !"nfsd_file_lease_notifier", i1 false, i1 false}
!90 = !{!"../fs/nfsd/filecache.c", i32 584, i32 30}
!91 = !{ptr @nfsd_file_fsnotify_ops, !92, !"nfsd_file_fsnotify_ops", i1 false, i1 false}
!92 = !{!"../fs/nfsd/filecache.c", i32 615, i32 34}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../fs/nfsd/filecache.c", i32 593, i32 6}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../fs/nfsd/filecache.c", i32 600, i32 3}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../fs/nfsd/trace.h", i32 822, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../fs/nfsd/trace.h", i32 819, i32 1}
!102 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../fs/nfsd/trace.h", i32 755, i32 1}
!105 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!108 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @nfsd_alloc_fcache_disposal.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../fs/nfsd/filecache.c", i32 753, i32 2}
!111 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @nfsd_alloc_fcache_disposal.__key.36, !113, !"__key", i1 false, i1 false}
!113 = !{!"../fs/nfsd/filecache.c", i32 754, i32 2}
!114 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!117 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!121 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../fs/nfsd/trace.h", i32 820, i32 1}
!124 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../fs/nfsd/filecache.c", i32 847, i32 2}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../fs/nfsd/filecache.c", i32 855, i32 37}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../fs/nfsd/filecache.c", i32 178, i32 17}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/cred.h", i32 253, i32 2}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../fs/nfsd/trace.h", i32 751, i32 1}
!135 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../fs/nfsd/trace.h", i32 757, i32 1}
!138 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!139 = !{ptr @.str.43, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!141 = !{ptr @.str.44, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/nfsd/filecache.c", i32 1041, i32 16}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/nfsd/filecache.c", i32 1042, i32 16}
!145 = !{ptr @.str.46, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/nfsd/filecache.c", i32 1043, i32 16}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 2148698834}
!158 = !{i64 2148613274, i64 2148613306, i64 2148613335, i64 2148613369, i64 2148613400, i64 2148613423}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 2149896607}
!161 = !{i64 1094792, i64 1094816, i64 1094837, i64 1094854, i64 1094871}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{i64 2148230005, i64 2148230010, i64 2148230023, i64 2148230067, i64 2148230101, i64 2148230122}
!164 = !{i64 2158863295}
!165 = !{i64 2158863546}
!166 = !{i64 2149954709}
!167 = !{i64 2149955745}
!168 = !{i64 2149946150}
!169 = !{i64 2149946416}
!170 = !{i64 2158902350}
!171 = !{i64 2158902587}
!172 = !{i64 2148609279, i64 2148609305, i64 2148609334, i64 2148609368, i64 2148609399, i64 2148609422}
!173 = !{i64 1013959, i64 1014020}
!174 = !{i64 1016691}
!175 = !{i64 1016976}
!176 = !{i64 2148706129}
!177 = !{i64 2148616524, i64 2148616556, i64 2148616585, i64 2148616619, i64 2148616650, i64 2148616673}
!178 = !{i64 2159277104}
!179 = !{i64 2148610809, i64 2148610841, i64 2148610870, i64 2148610904, i64 2148610935, i64 2148610958}
!180 = !{i64 2151529062}
!181 = !{i64 2148694714}
!182 = !{i64 2148609999, i64 2148610031, i64 2148610060, i64 2148610094, i64 2148610125, i64 2148610148}
!183 = !{i64 2148694943}
!184 = !{i64 2158845571}
!185 = !{i64 2158845850}
!186 = !{i64 2148697755}
!187 = !{i64 2148612464, i64 2148612496, i64 2148612525, i64 2148612559, i64 2148612590, i64 2148612613}
!188 = !{i64 2148697984}
!189 = !{i64 2158805806}
!190 = !{i64 2158805999}
!191 = !{i64 2158773471}
!192 = !{i64 2158773676}
!193 = !{i64 2148611744, i64 2148611770, i64 2148611799, i64 2148611833, i64 2148611864, i64 2148611887}
!194 = !{i64 2158789778}
!195 = !{i64 2158789977}
!196 = !{i64 2158919514}
!197 = !{i64 2158919761}
!198 = !{i64 2158885027}
!199 = !{i64 2158885268}
!200 = !{i64 2158826591}
!201 = !{i64 2158826828}
!202 = !{i64 2158757263}
!203 = !{i64 2158757460}
